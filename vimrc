" myVim {
"   Who: robbenmu (@126.com)
"   Ver: 1.0
" }


" Environment {
  set nocompatible
  filetype on
  filetype off
" }

" NeoBundles {
  if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
  endif

  call neobundle#rc(expand('~/.vim/bundle/'))
  
  source ~/.vim/vundle.vim
  
" }

" Config {
source ~/.vim/config.vim
source ~/.vim/plugin_config.vim

" }