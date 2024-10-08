" vimconf is not vi-compatible
set nocompatible

""" Vundle plugin manager {{{
    ""Automatically setting up Vundle {{{
        let has_vundle=1
        if !isdirectory($HOME."/.vim/bundle/Vundle.vim/.git")
            echo "Installing Vundle..."
            echo ""
            silent !mkdir -p $HOME/.vim/bundle
            silent !git clone https://github.com/gmarik/Vundle.vim $HOME/.vim/bundle/Vundle.vim
            let has_vundle=0
        endif
    """ }}}

    """ Initialize Vundle
        filetype off                              " required to init
        set rtp+=$HOME/.vim/bundle/Vundle.vim     " include vundle
        call vundle#begin()                       " init vundle
    """ }}}

    """ Required to include Vundle itself
    Plugin 'gmarik/Vundle.vim'

    " Glorious colorscheme
    Plugin 'nanotech/jellybeans.vim'

    " Airline
    Plugin 'bling/vim-airline'

    " Handle Ansible yml files
    Plugin 'chase/vim-ansible-yaml'

    " Syntax highlighting for Dockerfiles
    "Plugin 'docker/docker', {'rtp': '/contrib/syntax/vim/'}

    """ Finish Vundle init
    call vundle#end()

    """ Installing plugins the first time, quits when done {{{
        if has_vundle == 0
            :silent! PluginInstall
            :qa
        endif
    """ }}}
