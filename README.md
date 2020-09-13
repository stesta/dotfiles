dotfiles 
--------
 
my personal dotfiles and installation scripts  
originally forked from github.com/tomnomnom/dotfiles - thanks Tom!  

```bash
# desktop workstation installation
git clone https://github.com/stesta/dotfiles $HOME/.dotfiles \ 
    && sh $HOME/.dotfiles/ubuntu-install.sh --development --security-tools \ 
    && sh $HOME/.dotfiles/setup.sh
```

```bash
# terminal security tools installation
git clone https://github.com/stesta/dotfiles $HOME/.dotfiles && \ 
    sh $HOME/.dotfiles/ubuntu-install.sh --terminal-only --security-tools && \ 
    sh $HOME/.dotfiles/setup.sh
```


### `ubuntu-install.sh` flags
```bash
# excludes any graphical applcations 
--terminal-only

# includes programming languages and dev tools
--development

# includes security tools
--security-tools
```