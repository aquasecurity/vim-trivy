# vim-trivy

## What is it?

Vim plugin for Trivy to install and run Trivy.

## Install

1. add the plugin to our list of plugins

  ```
  Plug 'aquasecurity/vim-trivy'
  ```

2. restart vim and run `:PlugInstall` to install


## Usage

If you don't have `Trivy` already install then you can run `:TrivyInstall` to get the latest version.

Run `:Trivy` to get a list of the current Trivy issues in your current directory. The issues will be added to the QuickFix list.


## Example usage

![Example](.github/example.gif)

