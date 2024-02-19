" vim:ts=2:sw=2:et
""
" @usage {}
" Run Trivy against the current directory and populate the QuickFix list
command! Trivy call s:Trivy()

""
" @usage {}
" Install the latest version of Trivy to %GOPATH/bin/Trivy
command! TrivyInstall call s:TrivyInstall()

" Trivy runs Trivy and prints adds the results to the quick fix buffer
function! s:Trivy() abort
  try
    " capture the current error format
    let errorformat = &g:errorformat

    let s:template = '"@' . expand('<script>:p:h:h') . '/csv.tpl"'
    let s:command = 'trivy fs -q --scanners vuln,misconfig --exit-code 0 -f template --template ' . s:template . ' . | sort -u | sed -r "/^\s*$/d"'

    " set the error format for use with Trivy
    let &g:errorformat = '%f\,%l\,%m'
    " get the latest Trivy comments and open the quick fix window with them
    cgetexpr system(s:command) | cw
    call setqflist([], 'a', {'title' : ':Trivy'})
    copen
  finally
    " restore the errorformat value
    let &g:errorformat = errorformat
  endtry
endfunction

" TrivyInstall runs the go install command to get the latest version of Trivy
function! s:TrivyInstall() abort
  try
    echom "Downloading the latest version of Trivy"
    let installResult = system('curl https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh | bash')
    if v:shell_error != 0
      echom installResult
    else
      echom "Trivy downloaded successfully"
    endif
  endtry
endfunction
