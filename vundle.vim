" # NeoBundles Beginning #
NeoBundle 'L9'


" @ NeoBundle --- [ Style Custom ]
NeoBundle 'morhetz/gruvbox'
NeoBundle 'bling/vim-airline'
NeoBundle 'terryma/vim-smooth-scroll'
"NeoBundle 'Lokaltog/vim-powerline'


" @ NeoBundle --- [ Source Code Cheacker ]
"NeoBundle 'sjl/gundo.vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'hushicai/fecs.vim.git'


" NERDTree NeoBundles Collections
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'ryanoasis/vim-webdevicons'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
"NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'scrooloose/nerdcommenter'


" @ NeoBundle --- [ |Google| Geeks NeoBundle ]
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'marijnh/tern_for_vim'
NeoBundle 'Valloric/ListToggle'
NeoBundle 'Valloric/YouCompleteMe'
"NeoBundle 'Shougo/neocomplcache.vim'
"NeoBundle 'fatih/vim-go'


" @ NeoBundle --- [ Auto Complete ]
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'c9s/perlomni.vim'
NeoBundle 'gcmt/wildfire.vim'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-surround'


" @ NeoBundle --- [ CWD File Buffer Manager ]
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'Shougo/unite-session'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'tsukkee/unite-tag'
"NeoBundle 'thinca/vim-unite-history'
NeoBundle 'yegappan/mru'


" @ NeoBundle --- [ Git && Shell Tools ]
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }
NeoBundle 'Shougo/vimshell.vim'
"NeoBundle 'tpope/vim-fugitive'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'airblade/vim-gitgutter'


" @ NeoBundle --- [ Code BAT Sreach ]
NeoBundle 'rking/ag.vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'kien/ctrlp.vim'
"NeoBundle 'dyng/ctrlsf.vim'
"NeoBundle 'mklabs/grunt.vim'


" @ NeoBundle --- [ Web Development Tools ]
" NeoBundle 'pangloss/vim-javascript'
NeoBundle 'othree/yajs.vim'
NeoBundle 'othree/javascript-libraries-syntax.vim'
NeoBundle 'gorodinskiy/vim-coloresque'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'othree/html5.vim'
NeoBundle 'othree/html5-syntax.vim'
NeoBundle 'groenewege/vim-less'
" NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'elzr/vim-json'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'iakio/smarty3.vim'
NeoBundle 'matchit.zip'
NeoBundle 'maksimr/vim-jsbeautify'
NeoBundle 'millermedeiros/vim-esformatter'
NeoBundle 'einars/js-beautify'
NeoBundle 'heavenshell/vim-jsdoc'



" @ NeoBundle --- [ ADV Program Language ]
" NeoBundle 'octol/vim-cpp-enhanced-highlight'


" @ NeoBundle --- [ Code Format ]
NeoBundle 'godlygeek/tabular'

" @ NeoBundle --- [ File Motion ]
NeoBundle 'EasyMotion'


" Auto-Installation
if neobundle#exists_not_installed_bundles()
echomsg 'Automatically install the following bundles: ' .
  \ string(neobundle#get_not_installed_bundle_names())
execute ':NeoBundleInstall'
endif
