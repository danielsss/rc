set nocompatible
"{vim plugins/vim plugin settings
  call plug#begin('~/.vim/plugged/')
  "{ CtrlP
    Plug 'ctrlpvim/ctrlp.vim', { 'do': 'brew install ag' }
    Plug 'FelikZ/ctrlp-py-matcher'
    Plug 'lokikl/vim-ctrlp-ag'
    Plug 'tacahiroy/ctrlp-funky'
    Plug 'mattn/ctrlp-mark'
    Plug 'sgur/ctrlp-extensions.vim'
    Plug 'jeetsukumaran/ctrlp-pythonic.vim'
  "}
  "{
    Plug 'Shougo/denite.nvim'
  "}
  "{ NERDTree
    Plug 'scrooloose/nerdcommenter'
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
  "}
  "{ Search and display result in a user-friendly
    Plug 'dyng/ctrlsf.vim'
  "}
  "{ Workspace Sessions
    Plug 'airblade/vim-rooter'
  "}
  "{ git
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'junegunn/gv.vim'
  "}
  "{ insert mode auto-completion for quotes, parens, brackets, etc
    Plug 'jiangmiao/auto-pairs'
  "}
  "{ keyword completion system
    Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
  "}
  "{ buffer switch
    " ref: http://vim.wikia.com/wiki/Easier_buffer_switching
    Plug 'noscripter/bufexplorer.zip'
  "}
  "{ search helper
    Plug 'google/vim-searchindex'
  "}
  "{ snippet
    Plug 'Sirver/ultisnips'
    Plug 'Shougo/neosnippet-snippets'
  "}
  "{ web development
    Plug 'Valloric/MatchTagAlways'
    Plug 'elzr/vim-json'
    Plug 'docunext/closetag.vim'
    Plug 'mattn/emmet-vim'
    Plug 'gorodinskiy/vim-coloresque'
    Plug 'yuezk/xtpl.vim'
    Plug 'sheerun/vim-polyglot'
    Plug 'ekalinin/Dockerfile.vim'
  "}
  "{ utility
    Plug 'AndrewRadev/splitjoin.vim'
    Plug 'mhinz/vim-signify'
    Plug 'mhinz/vim-startify'
    Plug 'mileszs/ack.vim'
    Plug 'ddrscott/vim-side-search'
    Plug 'junegunn/vim-easy-align'
    Plug 'kshenoy/vim-signature'
    Plug 'godlygeek/tabular'
    Plug 'noscripter/tabman.vim'
    Plug 'easymotion/vim-easymotion'
    Plug 'haya14busa/incsearch.vim'
    Plug 'skywind3000/asyncrun.vim'
    " Async file running
    Plug 'pedsm/sprint'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-vinegar'
  "}
  "{ statusline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
  "}
  "{syntax checker/linters
    Plug 'w0rp/ale'
  "}
  "{ indent
    Plug 'Yggdroot/indentLine'
  "}
  "{ registers
    Plug 'junegunn/vim-peekaboo'
  "}
  "{markdown plugin
    Plug 'plasticboy/vim-markdown'
    Plug 'suan/vim-instant-markdown'
  "}
  "{refresh myself
    Plug 'ryanss/vim-hackernews'
    Plug 'itchyny/calendar.vim'
  "}
  "{editor-settings
    Plug 'editorconfig/editorconfig-vim'
  "}
  "{ javascript plugin
  " ref: https://davidosomething.com/blog/vim-for-javascript/
    Plug 'pangloss/vim-javascript'
    Plug 'maksimr/vim-jsbeautify', { 'do': 'tnpm install' }
    Plug 'moll/vim-node'
    Plug 'MaxMEllon/vim-jsx-pretty'
    Plug 'neoclide/vim-jsx-improve'
    Plug 'othree/javascript-libraries-syntax.vim'
    Plug 'jaxbot/semantic-highlight.vim'
    Plug 'ternjs/tern_for_vim'
  "}
  "{gui options
    Plug 'junegunn/limelight.vim'
    Plug 'junegunn/goyo.vim'
  "}
  "{color sthemes
    Plug 'raphamorim/lucario'
    Plug 'joshdick/onedark.vim'
    Plug 'rakr/vim-one'
    Plug 'flazz/vim-colorschemes'
  "}
  "{typescript
    Plug 'Shougo/vimproc.vim'
    Plug 'Quramy/tsuquyomi'
    Plug 'leafgarland/typescript-vim'
    Plug 'HerringtonDarkholme/yats.vim'
  "}
  "{vue
    Plug 'posva/vim-vue'
  "}
  "{scala
    Plug 'derekwyatt/vim-scala'
  "}
  call plug#end()
"}

"{Plugin settings
  "vim-startify
    let g:startify_files_number = 50
    let g:startify_list_order = [
          \ ['   Bookmarks'],
          \ 'bookmarks',
          \ ['   My most recently used files'],
          \ 'files',
          \ ]
    let g:startify_bookmarks = [
          \   '~/projects/',
          \   '~/projects/pm/' ,
          \   '~/projects/try-puppeteer/' ,
          \   '~/projects/node/' ,
          \   '~/projects/vue/' ,
          \   '~/projects/react/' ,
          \   '~/projects/ngraph.path.demo/',
          \   '~/projects/npmgraph.an/',
          \   '~/projects/tampermonkey/',
          \   '~/projects/scriptsafe/',
          \   '~/projects/service-worker-detector/',
          \   '~/projects/vimium/',
          \   '~/projects/npmrank/',
          \]

  "vim-easy-align
    " Start interactive EasyAlign in visual mode (e.g. vipga)
    xmap ga <Plug>(EasyAlign)
    " Start interactive EasyAlign for a motion/text object (e.g. gaip)
    nmap ga <Plug>(EasyAlign)

  "vim-airline
    if !exists('g:airline_symbols')
      let g:airline_symbols = {}
    endif
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.whitespace = 'Ξ'
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''
    let g:airline_left_sep = ''
    let g:airline_right_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_powerline_fonts=1
    let airline#extensions#tabline#show_buffers = 0
    let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])

  "SirVer/ultisnips
    let g:UltiSnipsUsePythonVersion    = 2
    let g:UltiSnipsExpandTrigger       = "<C-Tab>"
    let g:UltiSnipsListSnippets        = "<C-l>"
    let g:UltiSnipsJumpForwardTrigger  = "<C-j>"
    let g:UltiSnipsJumpBackwardTrigger = "<C-k>"
    let g:UltiSnipsEditSplit           = "vertical"
    let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']

  "scrooloose/nerdtree
    nnoremap <leader>ne :NERDTreeFind<CR>
    nnoremap <leader>nt :NERDTreeToggle<CR>
    let g:NERDTreeShowLineNumbers=1
    let NERDTreeWinPos="left"
    let NERDTreeIgnore=['\.pyc$', '\~$']

  "nerdtree-git-plugin
    let g:NERDTreeIndicatorMapCustom = {
      \ "Modified"  : "✹",
      \ "Staged"    : "✚",
      \ "Untracked" : "✭",
      \ "Renamed"   : "➜",
      \ "Unmerged"  : "═",
      \ "Deleted"   : "✖",
      \ "Dirty"     : "✗",
      \ "Clean"     : "✔︎",
      \ 'Ignored'   : '☒',
      \ "Unknown"   : "?"
      \ }

  "noscripter/tabman.vim
    let g:tabman_side="right"
    let g:tabman_specials=1
    let g:tabman_number = 1
    let g:tabman_toggle = '<leader>bm'
    let g:loaded_tabman = 0

  "ctrlpvim/ctrlp.vim
    " The Silver Searcher
    if executable('ag')
      " Use ag over grep
      set grepprg=ag\ --nogroup\ --nocolor

      " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
      let g:ctrlp_user_command = [
        \ '.git', 'cd %s && git ls-files -co --exclude-standard',
        \ 'ag %s -l --nocolor -g ""'
        \ ]

      " ag is fast enough that CtrlP doesn't need to cache
      let g:ctrlp_use_caching = 0
    endif
    if exists(':CtrlP')
      let g:ctrlp_custom_ignore = {
        \ 'dir': 'node_modules\|bower_components',
        \ 'file': '\v\.(exe|so|dll)$',
        \ 'link': 'some_bad_symbolic_links',
        \ }
      set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
      let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
      let g:ctrlp_working_path_mode='cra'
      let g:ctrlp_match_window="bottom,order:btt,min:1,max:25,results:25"
      let g:ctrlp_show_hidden=1
      let g:ctrlp_use_caching=1
      let g:ctrlp_cache_dir=$HOME.'/.cache/ctrlp'
    endif

  "Valloric/YouCompleteMe
    let g:ycm_min_num_of_chars_for_completion = 3
    let g:ycm_autoclose_preview_window_after_completion=1
    let g:ycm_complete_in_comments = 1
    let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
    let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
    let g:ycm_confirm_extra_conf = 0
    let g:ycm_global_ycm_extra_conf=
      \ '~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
    let g:ycm_key_list_select_completion=[]
    let g:ycm_key_list_previous_completion=[]
    let g:ycm_autoclose_preview_window_after_completion=1
    map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
    let g:ycm_filetype_blacklist = {
          \ 'tagbar' : 1,
          \ 'qf' : 1,
          \ 'notes' : 1,
          \ 'markdown' : 1,
          \ 'unite' : 1,
          \ 'text' : 1,
          \ 'vimwiki' : 1,
          \ 'pandoc' : 1,
          \ 'infolog' : 1,
          \ 'mail' : 1
          \}
    let g:ycm_semantic_triggers =  {
          \ 'c' : ['->', '.'],
          \ 'objc' : ['->', '.'],
          \ 'ocaml' : ['.', '#'],
          \ 'cpp,objcpp' : ['->', '.', '::'],
          \ 'perl' : ['->'],
          \ 'php' : ['->', '::'],
          \ 'cs,java,javascript,d,python,perl6,scala,vb,elixir,go' : ['.'],
          \ 'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
          \ 'ruby' : ['.', '::'],
          \ 'lua' : ['.', ':'],
          \ 'erlang' : [':'],
          \}

  "mileszs/ack.vim
    if executable('ag')
      set grepprg=ag\ --nogroup\ --nocolor
    endif

  "maksimr/vim-jsbeautify
    map <c-f> :call JsBeautify()<cr>
    autocmd! FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
    autocmd! FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
    autocmd! FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
    autocmd! FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
    autocmd! FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
    autocmd! FileType javascript vnoremap <buffer> <c-f> :call RangeJsBeautify()<cr>
    autocmd! FileType json vnoremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
    autocmd! FileType jsx vnoremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
    autocmd! FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
    autocmd! FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

  "elzr/vim-json
    let g:vim_json_syntax_conceal = 0

  "Yggdroot/indentLine
    let g:indentLine_showFirstIndentLevel = 1

  "FelikZ/ctrlp-py-matcher
    let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
    let g:ctrlp_lazy_update = 350
    let g:ctrlp_clear_cache_on_exit = 0
    let g:ctrlp_max_files = 0

  "moll/vim-node
    autocmd! User Node
      \ if &filetype == "javascript" |
      \   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
      \   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
      \ endif

  "othree/javascript-libraries-syntax.vim
    let g:used_javascript_libs = 'react,angularjs,flux'

  "tpope/vim-fugitive
    autocmd! BufReadPost fugitive://* set bufhidden=delete
    set statusline+=%{fugitive#statusline()}
    autocmd! User fugitive
      \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
      \   nnoremap <buffer> .. :edit %:h<CR> |
      \ endif
    " work with asyncrun
    "https://github.com/skywind3000/asyncrun.vim/wiki/Cooperate-with-famous-plugins
    command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>

  "pangloss/vim-javascript
    let g:javascript_plugin_jsdoc = 1
    let g:javascript_plugin_ngdoc = 1
    let g:javascript_plugin_flow = 1

  "plasticboy/vim-markdown
    let g:vim_markdown_folding_disabled = 1
    let g:vim_markdown_toc_autofit = 1
    let g:vim_markdown_emphasis_multiline = 0
    let g:vim_markdown_conceal = 0
    let g:vim_markdown_json_frontmatter = 1
    let g:vim_markdown_new_list_item_indent = 2

  "suan/vim-instant-markdown
    "trigger through command `:InstantMarkdownPreview`
    let g:instant_markdown_autostart = 0

  "skywind3000/asyncrun.vim
    augroup QuickfixStatus
      au! BufWinEnter quickfix setlocal
          \ statusline=%t\ [%{g:asyncrun_status}]\ %{exists('w:quickfix_title')?\ '\ '.w:quickfix_title\ :\ ''}\ %=%-15(%l,%c%V%)\ %P
    augroup END
    let g:asyncrun_last = 3
    let g:asyncrun_trim = 1
    let g:asyncrun_encs = 'utf-8'
    let g:asyncrun_rootmarks = ['.svn', '.git', '.root', '.bzr', '_darcs', 'build.xml']
    command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>

  " jaxbot/semantic-highlight.vim
    let g:semanticEnableFileTypes = ['javascript', 'vim']

  "junegunn/limelight.vim
    autocmd! User GoyoEnter Limelight

  "ctrlp-pythonic
    let g:ctrlp_extensions = ['pythonic']
    if has("autocmd")
        augroup CtrlPPythonic
            au!
            autocmd FileType python nnoremap <Leader><Leader> :CtrlPPythonic<CR>
        augroup END
    endif

  "tacahiroy/ctrlp-funky
    nnoremap <Leader>fu :CtrlPFunky<Cr>
    " narrow the list down with a word under cursor
    nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cWORD>')<Cr>

  "ddrscott/vim-side-search
    " How should we execute the search?
    " --heading and --stats are required!
    let g:side_search_prg = 'ag --word-regexp'
      \. " --ignore='*.js.map'"
      \. " --heading --stats -B 1 -A 4"
    " Can use `vnew` or `new`
    let g:side_search_splitter = 'vnew'
    " I like 40% splits, change it if you don't
    let g:side_search_split_pct = 0.4
    " SideSearch current word and return to original window
    nnoremap <Leader>sw :SideSearch <C-r><C-w><CR> | wincmd p

  " thaekh/vim-workspace
    let g:workspace_autosave_always = 1
    let g:workspace_autosave_ignore = ['gitcommit']

  "w0rp/ale
  let g:ale_fixers ={
    \ 'javascript': ['eslint'],
    \}
  let g:ale_completion_enabled = 1
  let g:ale_sign_column_always =1
  let g:ale_sign_error = '⚡'
  let g:ale_sign_warning = '⚑'
  let g:airline#extensions#ale#enabled = 1
  let g:lale_fix_on_save = 0
  nmap <silent> <C-k> <Plug>(ale_previous_wrap)
  nmap <silent> <C-j> <Plug>(ale_next_wrap)

  "dyng/ctrlsf.vim
    let g:ctrlsf_default_root = 'project+fw'
"}

"{Mappings
  "K normal command will lookup the keyword in man
  let mapleader=','
  nnoremap <leader>cw :pwd<CR>
  nnoremap <C-tab> :tabn<CR>
  nnoremap <S-C-tab> :tabp<CR>
  nnoremap <Leader>2  :set tabstop=2 softtabstop=2 shiftwidth=2<CR>
  nnoremap <Leader>4  :set tabstop=4 softtabstop=4 shiftwidth=4<CR>
  nnoremap <Leader>eg :e ++enc=gbk<CR>
  nnoremap <Leader>eu :e ++enc=utf-8<CR>
  nnoremap <Leader>h  :nohlsearch<CR>
  nnoremap <leader>l  :set list!<CR>
  nnoremap <leader>w  :set wrap!<CR>
  noremap  <Leader>W  :w !sudo tee % > /dev/null
  nnoremap <leader>fm  :%!js-beautify -j -q -B -f -<CR>
  nnoremap <leader>ev :tabe $MYVIMRC<CR>
  nnoremap <leader>e  :e $MYVIMRC<CR>
  nnoremap <Leader>xd :%!xxd<CR>
  nnoremap <Leader>xr :%!xxd -r<CR>
  nnoremap <leader>t  :tabe \| Startify<cr>
  nnoremap <leader>ft :echo strftime('%c')<cr>
  nnoremap <leader>v  :vnew \| Startify<cr>
  nnoremap <leader>to :tabonly<cr>
  nnoremap <leader>x  :q<cr>
  nnoremap <leader>tx :tabclose<cr>
  nnoremap <leader>d  :tabe ~/projects/daily.md<CR>
  nnoremap <leader>de :e ~/projects/daily.md<CR>
  nnoremap <leader>dt :windo diffthis<CR>
  nnoremap <leader>do :windo diffoff<CR>
  nnoremap <leader>;  :%s:::g<Left><Left><Left>
  nnoremap <leader>:  :%s:::cg<Left><Left><Left><Left>
  nnoremap <C-S>      :w<CR>
  nnoremap <space> za
  vnoremap <space> zf
  nnoremap <silent> <leader>sv :so $MYVIMRC<CR>
  if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?
              \ '<Bar>diffupdate':''<CR><CR><C-L>
  endif
  nnoremap <D-S-]> gt
  nnoremap <D-S-[> gT
  nnoremap <D-1> 1gt
  nnoremap <D-2> 2gt
  nnoremap <D-3> 3gt
  nnoremap <D-4> 4gt
  nnoremap <D-5> 5gt
  nnoremap <D-6> 6gt
  nnoremap <D-7> 7gt
  nnoremap <D-8> 8gt
  nnoremap <D-9> 9gt
  nnoremap <D-0> :tablast<CR>
  nnoremap [q :cprev<CR>
  nnoremap ]q :cnext<CR>
  nnoremap [Q :cfirst<CR>
  nnoremap ]Q :clast<CR>
  nnoremap <leader>fe :Ex<CR>
  nnoremap gp `[v`]

  "noscripter/bufexplorer.zip
  nnoremap <leader>be :BufExplorer<CR>

  "https://www.zhihu.com/question/60296892/answer/175402140
  noremap <M-u> <C-w>p<C-u><C-w>p
  noremap <M-d> <C-w>p<C-d><C-w>p

  " quickly move a line above or below
  nnoremap [e  :<c-u>execute 'move -1-'. v:count1<cr>
  nnoremap ]e  :<c-u>execute 'move +'. v:count1<cr>

  " quickly add empty lines
  nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
  nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>

  " smarter cursorline
  autocmd InsertLeave,WinEnter * set cursorline
  autocmd InsertEnter,WinLeave * set nocursorline

  " select last paste in visual mode
  nnoremap <expr> gb '`['. strpart(getregtype(), 0, 1) . '`]'

  "if exists(':FZF')
    nnoremap <leader>zf :FZF<CR>
    nnoremap <leader>zg :GFiles<CR>
  "endif
"}

"{helper functions
  "https://www.zhihu.com/question/60296892/answer/175402140
  function! Html_Prettify()
    if &ft != 'html'
      echo "not a html file"
      return
    endif
    silent! exec "s/<[^>]*>/\r&\r/g"
    silent! exec "g/^$/d"
    exec "normal ggVG="
  endfunc

  command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()
  " populate the arguments list with all of the file names in quickfix list
  function! QuickfixFilenames()
    " Building a hash ensures we get each buffer only once
    let buffer_numbers = {}
    for quickfix_item in getqflist()
      let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
    endfor
    return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
  endfunction

  " https://vi.stackexchange.com/questions/3832/why-doesnt-vimscript-provide-a-random-number-generator
  " generate random numbers while modulus max
  function! Random(max) abort
    return str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:]) % a:max
  endfunction

  command! -nargs=* Stab call Stab()
  function! Stab()
    let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
    if l:tabstop > 0
      let &l:sts = l:tabstop
      let &l:ts = l:tabstop
      let &l:sw = l:tabstop
    endif
    call SummarizeTabs()
  endfunction

  function! SummarizeTabs()
    try
      echohl ModeMsg
      echon 'tabstop='.&l:ts
      echon ' shiftwidth='.&l:sw
      echon ' softtabstop='.&l:sts
      if &l:et
        echon ' expandtab'
      else
        echon ' noexpandtab'
      endif
    finally
      echohl None
    endtry
  endfunction

  function! GuiTabLabel()
    let label = ''
    let bufnrlist = tabpagebuflist(v:lnum)
    for bufnr in bufnrlist
      if getbufvar(bufnr, "&modified")
        let label = '+'
        break
      endif
    endfor
    let label .= v:lnum.':'
    let name = bufname(bufnrlist[tabpagewinnr(v:lnum) - 1])
    if name == ''
      if &buftype=='quickfix'
        let name = '[Quickfix List]'
      else
        let name = '[New File]'
      endif
    else
      let name = fnamemodify(name,":t")
    endif
    let label .= name
    let wincount = tabpagewinnr(v:lnum, '$')
    return label . '  [' . wincount . ']'
  endfunction

  if exists("+showtabline")
    function! MyTabLine()
      let s = ''
      let t = tabpagenr()
      let i = 1
      while i <= tabpagenr('$')
        let buflist = tabpagebuflist(i)
        let winnr = tabpagewinnr(i)
        let s .= '%' . i . 'T'
        let s .= (i == t ? '%1*' : '%2*')
        let s .= ' '
        let s .= i . ':'
        let s .= ' %*'
        let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
        let file = bufname(buflist[winnr - 1])
        let file = fnamemodify(file, ':p:t')
        if file == ''
          let file = '[New File]'
        endif
        let s .= file
        let i = i + 1
      endwhile
      let s .= '%T%#TabLineFill#%='
      let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
      return s
    endfunction
    set stal=2
    set tabline=%!MyTabLine()
  endif

  function! Preserve(command)
    let _s=@/
    let l = line(".")
    let c = col(".")
    execute a:command
    let @/=_s
    call cursor(l, c)
  endfunction
  nnoremap _$ :call Preserve("%s/\\s\\+$//e")<CR>
  nnoremap _= :call Preserve("normal gg=G")<CR>

  function!  ToggleBG()
    let s:tbg = &background
    " Inversion
    if s:tbg == 'dark'
      set background=light
    else
      set background=dark
    endif
  endfunction
  noremap <leader>bg :call ToggleBG()<CR>

  " Add argument (can be negative, default 1) to global variable i.
  " Return value of i before the change.
  function! Inc(...)
    let result = g:i
    let g:i += a:0 > 0 ? a:1 : 1
    return result
  endfunction

  "close all tabs to the right
  function! TabCloseRight(bang)
    let cur=tabpagenr()
    while cur < tabpagenr('$')
      exe 'tabclose' . a:bang . ' ' . (cur + 1)
    endwhile
  endfunction

  " close tabs to the left
  function! TabCloseLeft(bang)
    while tabpagenr() > 1
      exe 'tabclose' . a:bang . ' 1'
    endwhile
  endfunction

  command! -bang Tabcloseright call TabCloseRight('<bang>')
  command! -bang Tabcloseleft call TabCloseLeft('<bang>')
"}

"{auto commands
  autocmd! BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
"}

"{Basic settings
  set nospell
  set nu
  set relativenumber
  set ffs=unix,dos,mac
  set hlsearch
  set incsearch
  set ignorecase
  set smartcase
  set encoding=utf-8 nobomb
  set binary
  set noeol
  set termencoding=utf-8
  set fileencodings=utf-8,gbk,utf-16le,cp1252,iso-8859-15,ucs-bom
  set fileformats=unix,dos,mac
  set linespace=0
  set showmatch
  set matchtime=0
  set winminheight=0
  set confirm
  if has('clipboard')
    if has('unnamedplus')
      set clipboard=unnamed,unnamedplus
    else
      set clipboard=unnamed
    endif
  endif
  set nobackup
  set noswapfile
  set noundofile
  set undodir=~/.undodir
  set nowritebackup
  set iskeyword-=_,.,=,-,:,#,
  set foldmethod=indent
  set foldnestmax=10
  "set guifont=Sauce\ Code\ Powerline:h16
  set guifont=Sauce\ Code\ Pro\ Nerd\ Font\ Complete:h16
  set autoread
  au CursorHold * checktime
  set lazyredraw
  set switchbuf=useopen
  set wildmenu
  set copyindent
  set backupskip+=/private/tmp/*
  set modeline
  set modelines=4
  set exrc
  set ruler
  set secure
  set wildmode=list:longest,full
  set whichwrap=b,s,h,l,<,>,>h,[,]
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class " Linux/MacOSX
  set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe " Windows
  if !&scrolloff
    set scrolloff=1
  endif
  if !&sidescrolloff
    set sidescrolloff=1
  endif
  set display+=lastline
  set nowrap
  set backspace=eol,start,indent
  set ttyfast
  set gdefault
  syntax enable
  set textwidth=78
  set colorcolumn=+1
  set autoindent
  set smartindent
  if has("gui_macvim")
    set fuoptions=maxvert,maxhorz
  endif
  set cursorcolumn
  set cursorline
  set autochdir
  set laststatus=2
  set title
  set showtabline=2
  set hidden
  " this prevents ultisnips expand from working
  filetype plugin indent on
  set smarttab
  set noerrorbells novisualbell t_vb=
  set t_vb=
  set visualbell t_vb=
  au GuiEnter * set visualbell t_vb=
  set autowrite
  set autowriteall
  set dictionary+=/usr/share/dict/words
  set dictionary+=~/.vim/dict/
  set shortmess+=filmnrxoOtT
  set showmode
  set showcmd
  set viewoptions=folds,options,cursor,unix,slash
  set virtualedit=onemore
  colorscheme onedark "lucario, gotham, onedark, papercolor
  set nofoldenable
  set foldlevel=1
  set foldlevelstart=99
  set mouse=a
  set history=100
  set undolevels=400
  set timeoutlen=500
  set formatoptions+=t
  if v:version > 703 || v:version == 703 && has("patch541")
    set formatoptions+=j
  endif
  set formatoptions-=l
  set wrapmargin=2
  set list
  set guioptions=
  syntax on
  set background=dark
  set t_Co=256
  set paste
  set splitbelow
  set splitright
  set tabstop=2  softtabstop=2 shiftwidth=2 expandtab
  set shiftround
  " unicode display
  " http://vim.wikia.com/wiki/Working_with_Unicode
  if has("multi_byte")
    if &termencoding == ""
      let &termencoding = &encoding
    endif
    set encoding=utf-8
    setglobal fileencoding=utf-8
    "setglobal bomb
    set fileencodings=ucs-bom,utf-8,latin1
  endif
  set cindent

  "set verbosefile=~/.vim/vimbenchmark
  nnoremap <leader>ne :NERDTreeFind<CR>
  noremap <Leader>su :sort u<CR>
  nnoremap <Leader>s :Startify<CR>
  set indentexpr=
  set expandtab

  "hand-made statusline like airline
  "https://www.v2ex.com/t/330610
  function! Buf_total_num()
    return len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
  endfunction
  function! File_size(f)
    let l:size = getfsize(expand(a:f))
    if l:size == 0 || l:size == -1 || l:size == -2
      return ''
    endif
    if l:size < 1024
      return l:size.' bytes'
    elseif l:size < 1024*1024
      return printf('%.1f', l:size/1024.0).'k'
    elseif l:size < 1024*1024*1024
      return printf('%.1f', l:size/1024.0/1024.0) . 'm'
    else
      return printf('%.1f', l:size/1024.0/1024.0/1024.0) . 'g'
    endif
  endfunction
  set list
  set list listchars+=tab:>-,nbsp:.,trail:.,extends:>,precedes:<
  let &showbreak = '^'

  " ref: http://vim.wikia.com/wiki/Highlight_unwanted_spaces
  highlight ExtraWhitespace ctermbg=red guibg=red
  match ExtraWhitespace /\s\+$/
  autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
  autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
  autocmd InsertLeave * match ExtraWhitespace /\s\+$/
  autocmd BufWinLeave * call clearmatches()

  set t_Co=256

  "automatically eslint current file and reload
  nnoremap <leader>el :AsyncRun eslint --fix %<CR><bar>:e!<CR><bar>:w<CR><bar>:e!<CR>

  " asynchronously search module info
  " IMPORTANT NOTE: KEEP THE END WHITESPACE OF THE FOLLOWING 3 MAPPINGS
  " #1
  nnoremap <leader>an  :AsyncRun! tnpm info 
  " #2
  nnoremap <leader>gc  :AsyncRun! git clone --depth 1 
  nnoremap <leader>aw  :AsyncRun! tnpm info <cWORD>
  " #3
  nnoremap <leader>gr  :AsyncRun! -cwd=<root> grep -R 
  nnoremap <leader>am  :AsyncRun make -f $(VIM_ROOT)/Makefile
  nnoremap <leader>cg  :AsyncRun go build "%:p:h"
  nnoremap <leader>grw :AsyncRun! grep -R <cWORD> <root>
  nnoremap <leader>ar  :AsyncRun<Space>
  nnoremap <leader>pr  :AsyncRun -raw python "%"
  nnoremap <leader>gcc :AsyncRun gcc "%" -o "%<"
  nnoremap <leader>g+  :AsyncRun g++ -O3 "%" -o "%<" -lpthread
  nnoremap <leader>p   :tabe ~/projects/
  nnoremap <leader>vp  :vsplit ~/projects/
  nnoremap <leader>sp  :split ~/projects/
  nnoremap <leader>c   :copen<CR>
  augroup AsyncRunGroup
    autocmd User AsyncRunStart call asyncrun#quickfix_toggle(8, 1)
    au! BufWinEnter quickfix setlocal
      \ statusline=%t\ [%{g:asyncrun_status}]\ %{exists('w:quickfix_title')?\ '\ '.w:quickfix_title\ :\ ''}\ %=%-15(%l,%c%V%)\ %P
  augroup END
"}
