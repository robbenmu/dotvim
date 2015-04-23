" alrLine && PowerLine Config {
  let g:Powerline_symbols = 'fancy'
  let g:airline_powerline_fonts = 1
  "let Powerline_symbols = 'compatible
" }


" TagBar Config {
  " let g:tagbar_ctags_bin = "/usr/bin/ctags"
" }

" Syntastic Config
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  let g:syntastic_enable_signs=1
  let g:syntastic_auto_loc_list=1

  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list            = 1
  " 不建议首次打开文件时进行检查
  let g:syntastic_check_on_open            = 0
  " `:wq`时不进行检查，注意这跟`:w`不一样
  let g:syntastic_check_on_wq              = 0

  " set Syntastic Cheacker engine
  let g:syntastic_php_checkers        = ['php', 'phpcs', 'phpmd']
  " let g:syntastic_javascript_checkers = ['jshint']
  let g:syntastic_java_checkers       = ['java', 'jsp']
  let g:syntastic_c_checkers          = ['c', 'h']
  let g:syntastic_cpp_checkers        = ['cpp']

  " BAIDU FECS 代码检测
  let g:syntastic_javascript_checkers = ['fecs']
  let g:syntastic_javascript_fecs_args = "--reporter=baidu"
  let g:syntastic_error_symbol = "✗"
  let g:syntastic_warning_symbol = "⚠"

" }


" ListToggle QuickFix Config {
  let g:lt_location_list_toggle_map = '<leader>l'
  let g:lt_quickfix_list_toggle_map = '<leader>q'
" }


" YouCompleteMe Geek Config {
  set completeopt=longest,menu

  let g:ycm_global_ycm_extra_conf                         = '$VIM/vimfiles/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
  let g:ycm_confirm_extra_conf                            = 0
  let g:ycm_add_preview_to_completeopt          = 0

  let g:ycm_collect_identifiers_from_tags_files           = 1   " 开启 YCM 基于标签引擎
  let g:ycm_min_num_of_chars_for_completion               = 2   " 从第2个键入字符就开始罗列匹配项
  let g:ycm_cache_omnifunc                                = 1
  let g:ycm_seed_identifiers_with_syntax                  = 1   " 语法关键字补全
  let g:ycm_complete_in_comments                          = 1   " 在注释输入中也能补全
  let g:ycm_complete_in_strings                           = 0   " 在字符串输入中不能补全
  let g:ycm_collect_identifiers_from_comments_and_strings = 0   " 注释和字符串中的文字也会被收入补全

  let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
  let g:ycm_filetype_blacklist = {
        \ 'tagbar'    : 1,
        \ 'qf'        : 1,
        \ 'notes'     : 1,
        \ 'markdown'  : 1,
        \ 'unite'     : 1,
        \ 'text'      : 1,
        \ 'vimwiki'   : 1,
        \ 'gitcommit' : 1,
  \}


  nnoremap <F11> :YcmForceCompileAndDiagnostics <CR>
  nnoremap <F6>  :SyntasticToggleMode <CR>

" }

" UltiSnips Config {
  " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
  let g:UltiSnipsExpandTrigger       = "<c-k>"
  let g:UltiSnipsJumpForwardTrigger  = "<c-f>"
  let g:UltiSnipsJumpBackwardTrigger = "<c-b>"

  " If you want :UltiSnipsEdit to split your window.
  let g:UltiSnipsEditSplit="vertical"
" }

" Emmet Config {
  " change <Tab> config , if use [YouCompleteMe]
  let g:user_emmet_expandabbr_key ='<c-l>'
  let g:user_emmet_settings = {
  \ 'php'     : {
  \ 'extends' : 'html',
  \ 'filters' : 'c',
  \ },
  \ 'xml'     : {
  \ 'extends' : 'html',
  \ },
  \ 'haml'    : {
  \ 'extends' : 'html',
  \ },
  \}

" }


" JavaScript Lib Syntax {
  autocmd BufReadPre *.js let b:javascript_lib_use_jquery     = 1
  autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
  autocmd BufReadPre *.js let b:javascript_lib_use_backbone   = 1
  autocmd BufReadPre *.js let b:javascript_lib_use_prelude    = 1
  autocmd BufReadPre *.js let b:javascript_lib_use_angularjs  = 1

" }

" C++ Syntax HighLight {
  " let g:cpp_class_scope_highlight = 1
  " let g:cpp_experimental_template_highlight = 1
" }


" GitGutter Setting {
  hi clear SignColumn

" }

" c.vim Building Config for C/C++ Vim {
  " let g:C_UseTool_cmake='yes'
  " let g:C_UseTool_doxygen = 'yes'
  "let  g:C_LocalTemplateFile = $VIM.'/vimfiles/c-support/templates/Templates'

" }

" vim-smooth-scroll Config {
  noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
  noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
  noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
  noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" }

" VimFiler Settings {
"  let g:vimfiler_safe_mode_by_default=0
"  let g:vimfiler_as_default_explorer=1
"  let g:vimfiler_tree_opened_icon = "▼"
"  let g:vimfiler_tree_closed_icon = "▶"
"  let g:vimfiler_readonly_file_icon = "🔒" "♏
"  let g:vimfiler_ignore_pattern = '^\%(.git\|.idea\|.DS_Store\)$'


  " Start it in browser. Only for Linux Google Chrome
"  nnoremap <F8> :!google-chrome %<CR><CR>
" }



" NerdTree {
  map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
  map <leader>e :NERDTreeFind<CR>
  nmap <leader>nt :NERDTreeFind<CR>

  let NERDTreeShowBookmarks = 1
  let NERDTreeIgnore = ['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
  let NERDTreeChDirMode = 0
  let NERDTreeQuitOnOpen = 1
  let NERDTreeMouseMode = 2
  " let NERDTreeShowHidden = 1
  let NERDTreeKeepTreeInNewTab = 1
  let g:NERDTreeWinSize = 20
  let g:nerdtree_tabs_open_on_gui_startup = 0

  " open a NERDTree automatically when vim starts up if no files were specified
  autocmd vimenter * if !argc() | NERDTree | endif

" }

" vimScript {
  let g:html_indent_inctags = 'html,body,head,tbody'
  let g:html_indent_script1 = 'inc'
  let g:html_indent_style1 = 'inc'

" }


" nerdcommenter {
  nmap <leader>n<space> <plug>NERDCommenterToggle
  vmap <leader>n<space> <plug>NERDCommenterToggle


" }

" CtrlP {
  let g:ctrlp_map = '<c-p>'
  let g:ctrlp_cmd = 'CtrlP'
  let g:ctrlp_working_path_mode = 'ra'
  let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

  set wildignore+=*/tmp/*,*.so,*.swp,*.zip

  if has("gui_macvim")
    nnoremap <silent> <D-r> :CtrlPMRU<CR>
  endif

  nmap <silent> <leader>t :CtrlP<cr>
  nmap <silent> <leader>r :CtrlPMRU<cr>

" }

" Ack {
  " nnoremap <leader>/ :Ack
" }


" CSSColor {
  let g:cssColorVimDoNotMessMyUpdatetime = 1
" }

" Fugitive {
  nnoremap <silent> <leader>st :Gstatus<CR>
  nnoremap <silent> <leader>di :Gdiff<CR>
  autocmd QuickFixCmdPost *grep* cwindow
" }



" EasyMotion
  let g:EasyMotion_leader_key = '<Leader>'

  " Compatible with `solarized` colorscheme
  hi link EasyMotionTarget ErrorMsg
  hi link EasyMotionShade  Comment
" }

" Autocmd {
  autocmd! bufwritepost vimrc source ~/.vim/vimrc
" }

" pathogen {
  "call pathogen#infect()
" }

" vim-multiple-cursors {
  " let g:multi_cursor_use_default_mapping=0
" }

" vim-JsBeautify {
  " map <c-f> :call JsBeautify()<cr>
  " or
  autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
  " for html
  autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
  " for css or scss
  autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
" }

" Smarty3.vim {

  " Jump to {if}/{else}/{/if}, {foreach},{foreachelse},{/foreach} pair.
  runtime macros/matchit.vim

  " change delimiter
  let g:smarty_left_delimiter = '<{'
  let g:smarty_right_delimiter = '}>'

  au BufRead,BufNewFile *.tpl set filetype=smarty3
" }


" Tabularize {

  nmap <leader>a= :Tabularize /=<CR>
  vmap <leader>a= :Tabularize /=<CR>
  nmap <leader>a: :Tabularize /:\zs<CR>
  vmap <leader>a: :Tabularize /:\zs<CR>

  " https://gist.github.com/tpope/287147
  inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

  function! s:align()
    let p = '^\s*|\s.*\s|\s*$'
    if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
      let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
      let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
      Tabularize/|/l1
      normal! 0
      call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
    endif
  endfunction

" }
"
" JsDoc {
  let g:jsdoc_allow_input_prompt=1
  let g:jsdoc_additional_descriptions=1
  let g:jsdoc_access_descriptions=1
  let g:jsdoc_allow_shorthand=1
" }




" Functions {
  function! StripTrailingWhitespace()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line('.')
    let c = col('.')
    " do the business:
    %s/\s\+$//e
    " clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
  endfunction

  function! InitializeDirectories()
    let parent = $HOME
    let prefix = '.vim'
    let dir_list = {
          \ 'backup': 'backupdir',
          \ 'views': 'viewdir',
          \ 'swap': 'directory' }

    if has('persistent_undo')
      let dir_list['undo'] = 'undodir'
    endif

    for [dirname, settingname] in items(dir_list)
      let directory = parent . '/' . prefix . dirname . '/'
      if exists('*mkdir')
        if !isdirectory(directory)
          call mkdir(directory)
        endif
      endif
      if !isdirectory(directory)
        echo 'Warning: Unable to create backup directory: ' . directory
        echo 'Try: mkdir -p ' . directory
      else
        let directory = substitute(directory, ' ', '\\\\ ', 'g')
        exec 'set ' . settingname . '=' . directory
      endif
    endfor
  endfunction
  call InitializeDirectories()
" }
