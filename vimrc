"         _                                         
"        (_)                                        
"  __   ___ _ __ ___  _ __ ___                      
"  \ \ / / | '_ ` _ \| '__/ __|                     
"   \ V /| | | | | | | | | (__                      
"  (_)_/ |_|_| |_| |_|_|  \___|                     
"                     _     _ _             _       
"                    | |   (_) |           (_)      
"  __      _____  ___| |__  _| | __ _ _ __  _ _ __  
"  \ \ /\ / / _ \/ __| '_ \| | |/ _` | '_ \| | '_ \ 
"   \ V  V / (_) \__ \ | | | | | (_| | |_) | | | | |
"    \_/\_/ \___/|___/_| |_|_|_|\__,_| .__/|_|_| |_|
"                                    | |            
"                                    |_|            
"
" ASCII art generated on
" http://www.patorjk.com/software/taag/#p=display&h=2&v=1&c=bash&f=Doom&t=.vimrc%0Awoshilapin

" Vim configuration file
" Language: Vim (ft=vim)
" Last Change: Mon 22 Oct 2012 (09:35)
" Version: 0.1
" Maintainer: woshilapin <woshilapin@gmail.com>
" License: This file is placed in the public domain.

"" Activate the pathogen plugin to rule all other plugin
set nocompatible
call pathogen#infect()
call pathogen#helptags()

"" Activer les différents greffons
" Autoriser le chargement des greffons généraux
set loadplugins
" Activer la coloration syntaxique
syntax on
" Activer la détection des types de fichiers
filetype on
" Activer les greffons pour les types de fichier
filetype plugin on
" Activer les fichiers d'indentation
filetype indent on

"""" MAPPAGES
"" Les préfixes de mappages
" Définition de la chaîne pour les mappages locaux
let mapleader="@"
" Définition de la chaîne pour les mappages locaux
let maplocalleader="="

"" Définition de mappages
" Afficher l'explorateur
nmap <Leader>e :NERDTree<Enter>
" Afficher l'explorateur en précisant le répertoire racine
nmap <Leader>E :NERDTree 
" Afficher les tampons ouverts
nmap <Leader>b :BufExplore<Enter>
" Afficher l'aide
noremap <F1> <Esc>:help 
" Changer de fenêtre
noremap <F2> <C-W><C-W>

"""" OPTIONS
" Set the mouse abilities in the terminal
set mouse=a
behave xterm
" Set the clipboard option to copy each selected and yanked text into the 
" clipboard of the system
set clipboard=autoselect
" Replace all occurences in a line by default
set gdefault
" Autosave the file on the call of some command (':quit', ':edit', ...)
set autowriteall
" normally don't automatically format `text' as it is typed, IE only do this
" with comments, at 79 characters:
set formatoptions=tcrowanl
set textwidth=80
" Have % bounce between angled brackets, as well as the other kinds:
set matchpairs=(:),{:},[:],<:>
" Allow <BkSpc> to delete line breaks, beyond the start of the current insertion, and over indentations:
set backspace=eol,start,indent
"" DISPLAY
" Print the line numbers
set number
" Don't make it look like there are line breaks where there aren't:
set wrap
" Display long lines on 2 lines
set linebreak
" Define the beginning of a breaking line
set showbreak=>
" Display the current mode and partially-typed commands in the status line:
set showmode
" Display the status line
set laststatus=2
" Display the current typing command
set showcmd
" Print the current line and column number
set ruler
" when using list, keep tabs at their full width and display `arrows':
set listchars=eol:$,tab:>-,trail:=,extends:>,precedes:<
"" INDENTATION
" use indents of 2 spaces, and have them copied down lines:
" Size of the tabulation display
set tabstop=4
" Number of spaces for a tabulation (0: desactivated)
set softtabstop=0
" Value used to indent ('=', '>>', '<<', ...)
set shiftwidth=4
" Make indentation a multiple of 'shiftwidth' value
set shiftround
" Do not replace tabulation with a number of spaces
set noexpandtab
" Do an automatic indentation if possible
set autoindent
"" ENCODING
" Encoding for the file
set fileencoding=utf8
" What encoding is used to print the file
set printencoding=utf8
" Default encoding
set encoding=utf8
" Height of the help 'split' window
set helpheight=20
" Activate the detection of the filetype
filetype on
" Activate the coloration of the file depending on filetype
syntax on
"" SEARCH
" Highlight the search pattern
set hlsearch
" Move the cursor in the file during the search
set incsearch
" make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
" Ignore 'ignorecase' in case search pattern use cap letter
set smartcase
"" COMPLETION
" Auto-completion list priorities
set complete=.,w,b,t,k,s
set infercase

"""" COLORS
" Change the panel of colors to 16 (instead of 8)
set t_Co=16
" Change from white to 'Gray' the color of normal text
highlight Normal ctermfg=Gray
" Change the default colors for the search mode
highlight Search ctermfg=DarkGray ctermbg=Yellow
" Change the default colors for diff mode
highlight DiffAdd cterm=none ctermfg=Black ctermbg=LightGreen
highlight DiffDelete cterm=none ctermfg=Black ctermbg=DarkGray
highlight DiffChange cterm=none ctermfg=Black ctermbg=DarkGray
highlight DiffText cterm=none ctermfg=Black ctermbg=LightRed
" Change the colors of pop-up menus
highlight Pmenu ctermbg=LightBlue ctermfg=Black cterm=NONE
highlight PmenuSel ctermbg=Gray ctermfg=DarkBlue cterm=bold
" Change the 'StatusLine' highlighting from 'White' to 'Dark' for the background
highlight StatusLine ctermbg=Gray ctermfg=Black cterm=NONE
highlight StatusLineB ctermbg=Gray ctermfg=Black cterm=bold
highlight StatusLineW ctermbg=Gray ctermfg=DarkRed cterm=bold
highlight StatusLineFile ctermbg=Gray ctermfg=DarkMagenta cterm=bold
highlight StatusLineGB ctermbg=Gray ctermfg=LightBlue cterm=bold
" To highlight the column and line of the current cursor position
highlight CursorLine term=reverse cterm=reverse
highlight CursorColumn term=reverse cterm=reverse
nmap <Leader>h :set cursorline! cursorcolumn!<bar>set cursorline? cursorcolumn?<CR><CR>

"""" STATUSLINE
" Use "[RO]" for "[readonly]" to save space in the message line:
set shortmess=rnm
" Set the display of the line at the bottom of the screen
set statusline=%#StatusLineFile#%f%#StatusLine# " The relative path filename
set statusline+=%m " For modified files, it prints [+] else, it prints nothing
set statusline+=%y " The filetype with brackets 
set statusline+=[%{&ff},%{&fenc}] " Print the type (dos, unix, etc.) and encoding of the file
set statusline+=%#StatusLineW#%r%#StatusLine# " Print [RO] for Read-Only files
set statusline+=%h " Print [help] for help pages
set statusline+=%w " Print [Preview] for preview pages
"set statusline+=\ %#StatusLineGB#<git:%{GitBranchInfoTokens()[0]}> " Print the Git branch of file
set statusline+=%= " Put the right/left separation
set statusline+=\ %< " To troncate the line if it is too long
set statusline+=char(%b,0x%B)\  " Print the decimal and hexadecimal encoding value of the character
set statusline+=pos(%c%V,%l)\  " Print the cursor position in the file
set statusline+=%#StatusLineB#%P%#StatusLine# " Print the position of buffer in the file

" Have fifty lines of command-line (etc) history:
set history=50
" Remember all of these between sessions, but only 10 search terms; also
" remember info for 10 files, but never any on removable disks, don't remember
" marks in files, don't rehighlight old search patterns, and only save up to
" 100 lines of registers; including @10 in there should restrict input buffer
" but it causes an error for me:
set viminfo=!,%,/256,'256,r/mnt/zip,r/mnt/floppy,f0,h,\"100

" * Keystrokes -- Moving Around

" Moving in an help file
nmap <Leader>n /\%(\|\zs[A-Za-z0-9_.:<>-]\{-}\ze\|\\|'\zs[A-Za-z0-9_]\{-}\ze'\)<Enter>:nohl<Enter>
nmap <Leader>N ?\%(\|\zs[A-Za-z0-9_.:<>-]\{-}\ze\|\\|'\zs[A-Za-z0-9_]\{-}\ze'\)<Enter>:nohl<Enter>

" Page down with <Space> (like in `Lynx', `Mutt', `Pine', `Netscape Navigator',
" `SLRN', `Less', and `More'); page up with - (like in `Lynx', `Mutt', `Pine'),
" or <BkSpc> (like in `Netscape Navigator'):
nmap <Space> 3<C-E>
nmap <S-Space> 3<C-Y>

" Use <F2> to cycle through split windows (and <Shift>+<F2> to cycle backwards,
" where possible):
nnoremap <F2> <C-W>w
nnoremap <S-F2> <C-W>W

" Have <F1> prompt for a help topic, rather than displaying the introduction
" page, and have it do this from any mode:
nnoremap <F1> :help<Space>
vmap <F1> <C-C><F1>
omap <F1> <C-C><F1>
map! <F1> <C-C><F1>

" To 'make' a project in one touch!
noremap <F5> :make<Enter>

" Have the usual indentation keystrokes still work in visual mode:
vnoremap <C-T> >
vnoremap <C-D> <LT>

" Have Y behave analogously to D and C rather than to dd and cc (which is already done by yy):
nnoremap Y y$

" To go and replace the following tag '<+TAG+>'
noremap <Leader>j /<+.\{-}+>/s<CR>:silent! foldopen!<CR>v/<+.\{-}+>/e<CR><C-g>
noremap <Leader>k ?<+.\{-}+>?e<CR>:silent! foldopen!<CR>v?<+.\{-}+>?s<CR><C-g>
snoremap <Leader>j <Esc>/<+.\{-}+>/s<CR>:silent! foldopen!<CR>v/<+.\{-}+>/e<CR><C-g>
snoremap <Leader>k <Esc>?<+.\{-}+>?e<CR>:silent! foldopen!<CR>v?<+.\{-}+>?s<CR><C-g>
inoremap <Leader>j <Esc>/<+.\{-}+>/s<CR>:silent! foldopen!<CR>v/<+.\{-}+>/e<CR><C-g>
inoremap <Leader>k <Esc>?<+.\{-}+>?e<CR>:silent! foldopen!<CR>v?<+.\{-}+>?s<CR><C-g>

"" About easytags
" Change the default name of the tag file
let g:easytags_file='tags'
" Disable the automatic update of tags file
let g:easytags_on_cursorhold=0

"" Edition of PO files
let g:po_translator="woshilapin <woshilapin@gmail.com>"
let g:po_lang_team="French"

"" About Git
" The message when there is no Git repository ('.git')on the current directory
let g:git_branch_status_nogit="nothing"
" Check the current branch if it's the same branch where the file was loaded, before saving the file.
let g:git_branch_check_write=1

" To have folding on XML files
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" To come back to the last edited line
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
				\| exe "normal! g'\"" | endif
endif
" The previous option should not happen when editing a commit of Git (always on top of the file)
autocmd BufReadPost COMMIT_EDITMSG exe "normal! ggO"
autocmd BufReadPost COMMIT_EDITMSG exe "startinsert"

" Change the look of the cursor when changing the mode (insert or normal)
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"" About searching selected text
" http://vim.wikia.com/wiki/VimTip171
let s:save_cpo = &cpo | set cpo&vim
" The 'g:search_exact_space_number' is about searching the exact number of spaces
" For example, if this variable is off, 'hello world', 'hello     world' and 'hello\n   \tworld' will be found for the same search.
if !exists('g:search_exact_space_number')
	let g:search_exact_space_number = 1
endif
function! s:VSetSearch(cmd)
	let old_reg = getreg('"')
	let old_regtype = getregtype('"')
	normal! gvy
	if @@ =~? '^[0-9a-z,_]*$' || @@ =~? '^[0-9a-z ,_]*$' && g:search_exact_space_number
		let @/ = @@
	else
		let pat = escape(@@, a:cmd.'\')
		if g:search_exact_space_number
			let pat = substitute(pat, '\n', '\\n', 'g')
		else
			let pat = substitute(pat, '^\_s\+', '\\s\\+', '')
			let pat = substitute(pat, '\_s\+$', '\\s\\*', '')
			let pat = substitute(pat, '\_s\+', '\\_s\\+', 'g')
		endif
		let @/ = '\V'.pat
	endif
	normal! gV
	call setreg('"', old_reg, old_regtype)
endfunction
vnoremap <silent> * :<C-U>call <SID>VSetSearch('/')<CR>/<C-R>/<CR>
vnoremap <silent> # :<C-U>call <SID>VSetSearch('?')<CR>?<C-R>/<CR>
vmap <kMultiply> *
" Toggle the 'g:search_exact_space_number' variable
nmap <silent> <Plug>VLToggle :let g:search_exact_space_number = !g:search_exact_space_number
			\\| echo "search_exact_space_number " . (g:search_exact_space_number ? "On" : "Off")<CR>
if !hasmapto("<Plug>VLToggle")
	nmap <unique> <Leader>vl <Plug>VLToggle
endif
let &cpo = s:save_cpo | unlet s:save_cpo

" To paste without setting 'paste' (it is automatic)
if &term =~ "xterm.*"
    let &t_ti = &t_ti . "\e[?2004h"
    let &t_te = "\e[?2004l" . &t_te
    function XTermPasteBegin(ret)
        set pastetoggle=<Esc>[201~
        set paste
        return a:ret
    endfunction
    map <expr> <Esc>[200~ XTermPasteBegin("i")
    imap <expr> <Esc>[200~ XTermPasteBegin("")
endif
" To load the Cscope database
if has("cscope")
	set cscopeprg=/usr/local/bin/cscope
	set cscopetagorder=0
	set cscopetag
	set cscopequickfix="s+,g+,d+,c+,t+,e+,f+,i+"
	set nocscopeverbose
	" Add the database from the current directory
	if filereadable("cstags")
			cs add cstags
	" Else, add the default database
	elseif $CSCOPE_DB != ""
			cs add $CSCOPE_DB
	endif
	set cscopeverbose
	noremap <C-]>s :cs find s <C-R>=expand("<cword>")<CR><CR>
	noremap <C-]>d :cs find g <C-R>=expand("<cword>")<CR><CR>
	noremap <C-]>l :cs find d <C-R>=expand("<cword>")<CR><CR>
	noremap <C-]>c :cs find c <C-R>=expand("<cword>")<CR><CR>
	noremap <C-]>t :cs find t <C-R>=expand("<cword>")<CR><CR>
	noremap <C-]>e :cs find e <C-R>=expand("<cword>")<CR><CR>
	noremap <C-]>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
	noremap <C-]>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>rmstrA3XX.dd.gz
endif

" When forgot to open the file in root
command Wroot silent execute 'write !sudo tee ' . shellescape(@%, 1) . ' >/dev/null'

" Read a '.vimrc' in the current directory of edition or in the local 
" directory of the edited file
let s:home_directory = expand("~")
let s:vim_directory = s:home_directory . "/.vim"
let s:conf_filename = ".vimrc"
let s:current_directory = getcwd()
let s:source_directory = expand("%:p:h")
let s:current_conf_filename = s:current_directory . "/" . s:conf_filename
let s:source_conf_filename = s:source_directory . "/" . s:conf_filename
" Do not forget to avoid loading the '.vimrc' in the HOME directory and in the 
" '~/.vim/' directory to prevent recursive loading of this file.
if filereadable(s:current_conf_filename) && s:current_directory != s:home_directory && s:current_directory != s:vim_directory
	exec "source " . substitute(s:current_conf_filename, ' ', '\\ ', 'g')
endif
" To read local directory '.vimrc' configuration file from the directory of the opened file
if filereadable(s:source_conf_filename) && s:source_directory != s:home_directory && s:source_directory != s:vim_directory
	exec "source " . substitute(s:source_conf_filename, ' ', '\\ ', 'g')
endif

" For persistent undo (write in a file)
set undodir=".undo"
set undofile
au BufReadPost * call ReadUndo()
au BufWritePost * call WriteUndo()
func ReadUndo()
	let undodir=".undo/"
	let undo_filename = undodir . expand('%:t')
	if filereadable(undo_filename)
		execute 'rundo ' . undo_filename
	endif
endfunc
func WriteUndo()
	let undodir=".undo/"
	let undo_filename = undodir . expand('%:t')
	if !isdirectory(undodir)
		call mkdir(undodir)
	endif
	execute 'wundo ' . undo_filename
endfunc

" Configuration of the vim-signature plugin
let g:SignaturePurgeConfirmation=1
if !hasmapto( '<Plug>SIG_NextLineByAlpha'  ) | nmap <buffer> ') <Plug>SIG_NextLineByAlpha| endif
if !hasmapto( '<Plug>SIG_PrevLineByAlpha'  ) | nmap <buffer> '( <Plug>SIG_PrevLineByAlpha| endif
if !hasmapto( '<Plug>SIG_NextSpotByAlpha'  ) | nmap <buffer> `) <Plug>SIG_NextSpotByAlpha| endif
if !hasmapto( '<Plug>SIG_PrevSpotByAlpha'  ) | nmap <buffer> `( <Plug>SIG_PrevSpotByAlpha| endif
if !hasmapto( '<Plug>SIG_NextLineByPos'    ) | nmap <buffer> '] <Plug>SIG_NextLineByPos| endif
if !hasmapto( '<Plug>SIG_PrevLineByPos'    ) | nmap <buffer> '[ <Plug>SIG_PrevLineByPos| endif
if !hasmapto( '<Plug>SIG_NextSpotByPos'    ) | nmap <buffer> `] <Plug>SIG_NextSpotByPos| endif
if !hasmapto( '<Plug>SIG_PrevSpotByPos'    ) | nmap <buffer> `[ <Plug>SIG_PrevSpotByPos| endif
if !hasmapto( '<Plug>SIG_NextMarkerByType' ) | nmap <buffer> '} <Plug>SIG_NextMarkerByType| endif
if !hasmapto( '<Plug>SIG_PrevMarkerByType' ) | nmap <buffer> '{ <Plug>SIG_PrevMarkerByType| endif

" End of woshilapin's .vimrc
