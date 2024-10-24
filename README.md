# Vim config

## Installation

```bash
cd ~
git clone git@github.com:aswen/dotvim.git
cd dotvim
./install
```

## Adding modules

Add the plugin with a line like `Plugin 'github_username/reponame'` to `vimrc` and then run `vim +PluginInstall +qall`

## Updating submodule

Run `vim +PluginInstall +qall`

## References

[vimcasts.org - Synchronizing plugins with git submodules and pathogen](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)
