" Pathogen
set nocompatible
" filetype off " Pathogen needs to run before plugin indent on
" call pathogen#runtime_append_all_bundles()
" call pathogen#helptags() " generate helptags for everything in 'runtimepath'
 filetype plugin indent on
 filetype on
 filetype plugin on
 filetype indent on
syntax on

" http://github.com/twerth/dotfiles/blob/master/etc/vim/vimrc
" very good vimrc (and well documented!)

" always do very magic search
:nnoremap / /\v
:cnoremap %s/ %s/\v

set history=50
set textwidth=80
set linebreak
"set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
"set complete-=k complete+=k
set number
set et
set sw=4
set smarttab
set incsearch
set hlsearch
set ignorecase
set smartcase
set cursorline
" set cursorcolumn
"set list " turn invisibles on by default
" show in title bar
set title
set ruler
set showmode
set showcmd
set ai " Automatically set the indent of a new line (local to buffer)
set si " smartindent    (local to buffer)
set tags=./tags;
set grepprg=ack
"set list

let jslint_command_options = '-conf ~/Dropbox/nix/bin/jsl.conf -nofilelisting -nocontext -nosummary -nologo -process'
"set equalalways " Multiple windows, when created, are equal in size
"set splitbelow splitright"

" Professor VIM says '87% of users prefer jj over esc', jj abrams disagrees
imap jj <esc>

""==================================start varun
" have vim jump to the last position when reopening a file
if has("autocmd")
  au bufreadpost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" have vim load indentation rules according to the detected filetype. per
" default debian vim only load filetype specific plugins.
if has("autocmd")
  filetype indent on
endif
set mouse=a

" move within paragraph
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk


" Make clipboard work with system clipboard
"set clipboard=unnamed
""==================================end varun

autocmd winenter * setlocal cursorline
autocmd winleave * setlocal nocursorline
autocmd bufread,bufnewfile,bufdelete * :syntax on

let g:minibufexplmapwindownavvim = 1
let g:minibufexplmapwindownavarrows = 1
let g:minibufexplmapctabswitchbufs = 1
let g:miniBufExplModSelTarget = 1

let g:pyflakes_use_quickfix = 0

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python setlocal list
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=html.django_template " For SnipMate

au BufRead,BufNewFile {Capfile,Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru,.caprc,.irbrc,irb_tempfile*} set ft=ruby

" fix backspace in vim 7
:set backspace=indent,eol,start
"nmap <buffer> <CR> gf
"nmap <buffer> <C-S-y> <Esc>yy<Esc>:bd<CR>:edit @"<CR>

" popout split buffer hack
" map <C-S-p>  <Esc>:hide<CR>:blast<CR>

" ctrl-p paste
imap <C-l> <C-r>"

" duplicate line"
" imap <C-D> <Esc>yyp
" nmap <C-D> <Esc>yyp

nmap ,bs :ConqueTermSplit bash<CR>
nmap ,bv :ConqueTermVSplit bash<CR>

" copy all to clipboard
nmap ,a ggVG"*y
" copy word to clipboard
nmap ,d "*yiw
" underline current line, markdown style
nmap ,u "zyy"zp:.s/./-/g<CR>:let @/ = ""<CR>

" delete inner xml tag
nmap ,dit dt<dT>
nmap ,cit dt<cT>

" Pathogen
set nocompatible
" filetype off " Pathogen needs to run before plugin indent on
" call pathogen#runtime_append_all_bundles()
" call pathogen#helptags() " generate helptags for everything in 'runtimepath'
 filetype plugin indent on
 filetype on
 filetype plugin on
 filetype indent on
syntax on

" http://github.com/twerth/dotfiles/blob/master/etc/vim/vimrc
" very good vimrc (and well documented!)

set nocompatible

" always do very magic search
:nnoremap / /\v
:cnoremap %s/ %s/\v

set history=50
set textwidth=80
set linebreak
"set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
"set complete-=k complete+=k

set number
set et
set sw=4
set smarttab
set incsearch
set hlsearch
set ignorecase
set smartcase
set cursorline
" set cursorcolumn
"set list " turn invisibles on by default
" show in title bar
set title
set ruler
set showmode
set showcmd
set ai " Automatically set the indent of a new line (local to buffer)
set si " smartindent    (local to buffer)
set tags=./tags;
set grepprg=ack
"set list

let jslint_command_options = '-conf ~/Dropbox/nix/bin/jsl.conf -nofilelisting -nocontext -nosummary -nologo -process'
"set equalalways " Multiple windows, when created, are equal in size
"set splitbelow splitright"

" Professor VIM says '87% of users prefer jj over esc', jj abrams disagrees
imap jj <esc>

""==================================start varun
" have vim jump to the last position when reopening a file
if has("autocmd")
  au bufreadpost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" have vim load indentation rules according to the detected filetype. per
" default debian vim only load filetype specific plugins.
if has("autocmd")
  filetype indent on
endif
set mouse=a

" move within paragraph
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk


" Make clipboard work with system clipboard
"set clipboard=unnamed
""==================================end varun


" move within paragraph
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk




""==end varun



autocmd winenter * setlocal cursorline
autocmd winleave * setlocal nocursorline
autocmd bufread,bufnewfile,bufdelete * :syntax on

let g:minibufexplmapwindownavvim = 1
let g:minibufexplmapwindownavarrows = 1
let g:minibufexplmapctabswitchbufs = 1
let g:miniBufExplModSelTarget = 1

let g:pyflakes_use_quickfix = 0

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python setlocal list
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=html.django_template " For SnipMate

au BufRead,BufNewFile {Capfile,Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru,.caprc,.irbrc,irb_tempfile*} set ft=ruby

" fix backspace in vim 7
:set backspace=indent,eol,start
"nmap <buffer> <CR> gf
"nmap <buffer> <C-S-y> <Esc>yy<Esc>:bd<CR>:edit @"<CR>

" popout split buffer hack
" map <C-S-p>  <Esc>:hide<CR>:blast<CR>

" ctrl-p paste
imap <C-l> <C-r>"

" duplicate line"
" imap <C-D> <Esc>yyp
" nmap <C-D> <Esc>yyp

nmap ,bs :ConqueTermSplit bash<CR>
nmap ,bv :ConqueTermVSplit bash<CR>

" copy all to clipboard
nmap ,a ggVG"*y
" copy word to clipboard
nmap ,d "*yiw
" underline current line, markdown style
nmap ,u "zyy"zp:.s/./-/g<CR>:let @/ = ""<CR>

" delete inner xml tag
nmap ,dit dt<dT>
nmap ,cit dt<cT>

" kortina - move note to the old-notes file
nmap ,kk ^"=strftime("%Y-%m-%d ")<CR>P<Esc>:,!~/Dropbox/nix/bin/note_archive.sh>/dev/null<CR>
nmap ,ll ^"=strftime("%Y-%m-%d ")<CR>P<Esc>:,!~/Dropbox/nix/bin/note_not_done.sh>/dev/null<CR>

nmap ,t <Leader>t

"clear the fucking search buffer, not just remove the highlight
map \c :let @/ = ""<CR>

" Revert the current buffer
nnoremap \r :e!<CR>

"Easy edit of vimrc
nmap \s :source $MYVIMRC<CR>
nmap \v :e $MYVIMRC<CR>

:runtime! ~/.vim/
":helptags ~/.vim/doc 


let g:pydiction_location = '~/.vim/bundle/pydiction/ftplugin/pydiction-1.2/complete-dict'
"##################################################
"# move through CamelCaseWords
"##################################################
" http://vim.wikia.com/wiki/Moving_through_camel_case_words
" Use one of the following to define the camel characters.
" Stop on capital letters.
let g:camelchar = "A-Z"
" Also stop on numbers.
let g:camelchar = "A-Z0-9"
" Include '.' for class member, ',' for separator, ';' end-statement,
" and <[< bracket starts and "'` quotes.
let g:camelchar = "A-Z0-9.,;:{([`'\""
nnoremap <silent><C-Left> :<C-u>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>
nnoremap <silent><C-Right> :<C-u>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>
inoremap <silent><C-Left> <C-o>:call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>
inoremap <silent><C-Right> <C-o>:call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>
vnoremap <silent><C-Left> :<C-U>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>v`>o
vnoremap <silent><C-Right> <Esc>`>:<C-U>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>v`<o

"##################################################

" https://wincent.com/blog/2-hours-with-vim
"function! AckGrep(command)
"    cexpr system("ack " . a:command)
"    cw " show quickfix window already
"endfunction
"command! -nargs=+ -complete=file Ack call AckGrep(<q-args>)
"map <leader>a :Ack<space>

" prevent comments from going to beginning of line
autocmd BufRead *.py inoremap # X<c-h>#


"##################################################
" markdown
"##################################################
 augroup mkd
  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;
 augroup END

"##################################################
" via http://www.vim.org/scripts/script.php?script_id=30
"##################################################

map  ,cm   :call PythonCommentSelection()<CR>
vmap ,cm   :call PythonCommentSelection()<CR>
map  ,cu   :call PythonUncommentSelection()<CR>
vmap ,cu   :call PythonUncommentSelection()<CR>
" Comment out selected lines
" commentString is inserted in non-empty lines, and should be aligned with
" the block
function! PythonCommentSelection()  range
  let commentString = "#"
  let cl = a:firstline
  let ind = 1000    " I hope nobody use so long lines! :)

  " Look for smallest indent
  while (cl <= a:lastline)
    if strlen(getline(cl))
      let cind = indent(cl)
      let ind = ((ind < cind) ? ind : cind)
    endif
    let cl = cl + 1
  endwhile
  if (ind == 1000)
    let ind = 1
  else
    let ind = ind + 1
  endif

  let cl = a:firstline
  execute ":".cl
  " Insert commentString in each non-empty line, in column ind
  while (cl <= a:lastline)
    if strlen(getline(cl))
      execute "normal ".ind."|i".commentString
    endif
    execute "normal \<Down>"
    let cl = cl + 1
  endwhile
endfunction

" Uncomment selected lines
function! PythonUncommentSelection()  range
  " commentString could be different than the one from CommentSelection()
  " For example, this could be "# \\="
  let commentString = "#"
  let cl = a:firstline
  while (cl <= a:lastline)
    let ul = substitute(getline(cl),
             \"\\(\\s*\\)".commentString."\\(.*\\)$", "\\1\\2", "")
    call setline(cl, ul)
    let cl = cl + 1
  endwhile
endfunction

"function! KortinaOpenQuickfix()
    "" open quickfix
    "exe "copen"
"endfunction
" autocmd BufWritePost,FileWritePost *.py call KortinaOpenQuickfix() " open quickfix on write
" autocmd BufWritePost,FileWritePost *.py call KortinaOpenQuickfix() " open quickfix on write

" kortina - move note to the old-notes file
nmap ,kk ^"=strftime("%Y-%m-%d ")<CR>P<Esc>:,!~/Dropbox/nix/bin/note_archive.sh>/dev/null<CR>
nmap ,ll ^"=strftime("%Y-%m-%d ")<CR>P<Esc>:,!~/Dropbox/nix/bin/note_not_done.sh>/dev/null<CR>

nmap ,t <Leader>t

"clear the fucking search buffer, not just remove the highlight
map \c :let @/ = ""<CR>

" Revert the current buffer
nnoremap \r :e!<CR>

"Easy edit of vimrc
nmap \s :source $MYVIMRC<CR>
nmap \v :e $MYVIMRC<CR>

:runtime! ~/.vim/
":helptags ~/.vim/doc 


let g:pydiction_location = '~/.vim/bundle/pydiction/ftplugin/pydiction-1.2/complete-dict'
"##################################################
"# move through CamelCaseWords
"##################################################
" http://vim.wikia.com/wiki/Moving_through_camel_case_words
" Use one of the following to define the camel characters.
" Stop on capital letters.
let g:camelchar = "A-Z"
" Also stop on numbers.
let g:camelchar = "A-Z0-9"
" Include '.' for class member, ',' for separator, ';' end-statement,
" and <[< bracket starts and "'` quotes.
let g:camelchar = "A-Z0-9.,;:{([`'\""
nnoremap <silent><C-Left> :<C-u>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>
nnoremap <silent><C-Right> :<C-u>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>
inoremap <silent><C-Left> <C-o>:call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>
inoremap <silent><C-Right> <C-o>:call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>
vnoremap <silent><C-Left> :<C-U>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%^','bW')<CR>v`>o
vnoremap <silent><C-Right> <Esc>`>:<C-U>call search('\C\<\<Bar>\%(^\<Bar>[^'.g:camelchar.']\@<=\)['.g:camelchar.']\<Bar>['.g:camelchar.']\ze\%([^'.g:camelchar.']\&\>\@!\)\<Bar>\%$','W')<CR>v`<o

"##################################################

" https://wincent.com/blog/2-hours-with-vim
"function! AckGrep(command)
"    cexpr system("ack " . a:command)
"    cw " show quickfix window already
"endfunction
"command! -nargs=+ -complete=file Ack call AckGrep(<q-args>)
"map <leader>a :Ack<space>

" prevent comments from going to beginning of line
autocmd BufRead *.py inoremap # X<c-h>#


"##################################################
" markdown
"##################################################
 augroup mkd
  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;
 augroup END

"##################################################
" via http://www.vim.org/scripts/script.php?script_id=30
"##################################################

map  ,cm   :call PythonCommentSelection()<CR>
vmap ,cm   :call PythonCommentSelection()<CR>
map  ,cu   :call PythonUncommentSelection()<CR>
vmap ,cu   :call PythonUncommentSelection()<CR>
" Comment out selected lines
" commentString is inserted in non-empty lines, and should be aligned with
" the block
function! PythonCommentSelection()  range
  let commentString = "#"
  let cl = a:firstline
  let ind = 1000    " I hope nobody use so long lines! :)

  " Look for smallest indent
  while (cl <= a:lastline)
    if strlen(getline(cl))
      let cind = indent(cl)
      let ind = ((ind < cind) ? ind : cind)
    endif
    let cl = cl + 1
  endwhile
  if (ind == 1000)
    let ind = 1
  else
    let ind = ind + 1
  endif

  let cl = a:firstline
  execute ":".cl
  " Insert commentString in each non-empty line, in column ind
  while (cl <= a:lastline)
    if strlen(getline(cl))
      execute "normal ".ind."|i".commentString
    endif
    execute "normal \<Down>"
    let cl = cl + 1
  endwhile
endfunction

" Uncomment selected lines
function! PythonUncommentSelection()  range
  " commentString could be different than the one from CommentSelection()
  " For example, this could be "# \\="
  let commentString = "#"
  let cl = a:firstline
  while (cl <= a:lastline)
    let ul = substitute(getline(cl),
             \"\\(\\s*\\)".commentString."\\(.*\\)$", "\\1\\2", "")
    call setline(cl, ul)
    let cl = cl + 1
  endwhile
endfunction

"function! KortinaOpenQuickfix()
    "" open quickfix
    "exe "copen"
"endfunction
" autocmd BufWritePost,FileWritePost *.py call KortinaOpenQuickfix() " open quickfix on write
" autocmd BufWritePost,FileWritePost *.py call KortinaOpenQuickfix() " open quickfix on write

