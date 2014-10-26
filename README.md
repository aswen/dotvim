# Vim config

## Installation

```bash
cd ~
git clone --recurse-submodules git://github.com/aswen/dotvim.git
cd dotvim
./createlinks
```

## Adding modules

```bash
cd ~/dotvim
git submodule add <giturl> bundle/<modulename>
```

## Updating submodule

``` bash
cd bundle/<submodule to update>
git checkout master
git pull origin master
cd ..
git commit -am "updates <submodulename>"
```

## References

[vimcasts.org - Synchronizing plugins with git submodules and pathogen](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)
