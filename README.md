# vim-trivy
## What is it?
Vim plugin for Trivy to install and run Trivy.

## Install

#### Vim `packload`:
```bash
mkdir -p ~/.vim/pack/git-plugins/start
git clone --depth 1 https://github.com/aquasecurity/vim-trivy.git ~/.vim/pack/git-plugins/start/vim-trivy
```

#### Neovim `packload`:
```bash
mkdir -p ~/.vim/pack/git-plugins/start
git clone --depth 1 https://github.com/aquasecurity/vim-trivy.git ~/.vim/pack/git-plugins/start/vim-trivy
```

##### Update Help `packload`:
After installing the plugin, run the following from vim to be able to view `:help Trivy`:
```vim
packloadall | silent! helptags ALL
```

#### [vim-plug](https://github.com/junegunn/vim-plug)
```vim
Plug 'aquasecurity/vim-trivy'
```

#### [Vundle](https://github.com/VundleVim/Vundle.vim)
```vim
Plugin 'aquasecurity/vim-trivy'
```

#### [Pathogen](https://github.com/tpope/vim-pathogen)
```vim
git clone --depth 1 https://github.com/aquasecurity/vim-trivy.git ~/.vim/bundle/vim-trivy
```

## Usage

If you don't have `Trivy` already install then you can run `:TrivyInstall` to get the latest version.

Run `:Trivy` to get a list of the current Trivy issues in your current directory. The issues will be added to the QuickFix list.

## Example usage

![Example](.github/example.gif)
