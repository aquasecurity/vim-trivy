# vim-trivy

## What is it?

Vim plugin for trivy to install and run trivy.

## Install

1. add the plugin to our list of plugins

  ```
  Plug 'aquasecurity/vim-trivy'
  ```

2. restart vim and run `:PlugInstall` to install


## Usage

If you don't have `trivy` already install then you can run `:trivyInstall` to get the latest version.

If you already hav it, you can run `trivyUpdate` to get the latest version.

Run `:trivy` to get a list of the current trivy issues in your current directory. The issues will be added to the QuickFix list.


## Example usage


https://user-images.githubusercontent.com/3049157/167206039-4bd83274-5359-4e91-90d2-a9459172969e.mp4

