call plug#begin('~/.vim/plugged')

" Plug 'Valloric/YouCompleteMe'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'davidhalter/jedi-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lervag/vimtex' " latex toolkit
Plug 'ervandew/supertab'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'morhetz/gruvbox' " color-theme
Plug 'arcticicestudio/nord-vim'
Plug 'SirVer/ultisnips' " engine for snippets
Plug 'honza/vim-snippets' " adds built snippets
Plug 'mhinz/vim-startify' " start screen for vim
Plug 'yegappan/mru' " keeps tracks of most recent files
Plug 'terryma/vim-multiple-cursors' "multiple cursors for fast editing
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'kristijanhusak/vim-carbon-now-sh' " easy to use code sharing
Plug 'frazrepo/vim-rainbow'
Plug 'mileszs/ack.vim'
Plug 'jaredly/vim-debug'
Plug 'tpope/vim-fugitive'
Plug 'SirVer/ultisnips'

" Plug 'preservim/nerdtree'
" Plug 'kshenoy/vim-signature'

" Initialize plugin system
call plug#end()

" create message whenever starting vim
let g:startify_custom_header = [
\'       __        _          _         _   _      ',
\'      /\ \    _ / /\      /\ \      /\_\/\_\ _   ',
\'      \ \ \  /_/ / /      \ \ \    / / / / //\_\ ',
\'       \ \ \ \___\/       /\ \_\  /\ \/ \ \/ / / ', 
\'       / / /  \ \ \      / /\/_/ /  \____\__/ /  ',
\'       \ \ \   \_\ \    / / /   / /\/________/   ',
\'        \ \ \  / / /   / / /   / / /\/_// / /    ',
\'         \ \ \/ / /   / / /   / / /    / / /     ',
\'          \ \ \/ /___/ / /__ / / /    / / /      ',
\'           \ \  //\__\/_/___\\/_/    / / /       ',
\'            \_\/ \/_________/        \/_/        Welcome back'
\      ]

" Setting color scheme
colorscheme gruvbox

" Settings dark
:set bg=dark
let g:gruvbox_contrast_dark = 'hard'

" Settings light
":set bg=light
"let g:gruvbox_contrast_light = 'hard'

:set updatetime=300

" setting automatic bracket completion and movement
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

" Setting relative coordinates
:set rnu

" Set tabs width to 4, it is still \t
set tabstop=4

" Expand tabs into spaces
set expandtab

" Indent when moving to the next line while writing code
set autoindent

" Show the matching part of the pair for [] {} and ()
set showmatch

" Eliminate delay between INSERT and ESCAPE modes
set timeoutlen=1000 ttimeoutlen=0

" Highlight all search patterns
set hlsearch

" search while you enter the query, not after
set incsearch

" Ignore case for search
set ignorecase

" ... unless there's a capital letter in the query
set smartcase

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Get rid of default vim mode
set noshowmode

" Adds one more line for normal mode to go to
:set ve+=onemore

" Enable syntax highlighting
syntax enable

                                                                                                                                          
let g:airline_section_b = '%{getcwd()}' " in section B of the status line display the CWD                                                 
let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)      
let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab                                                    

" Removes bold letters
call airline#parts#define_accent('mode', 'none')
call airline#parts#define_accent('linenr', 'none')
call airline#parts#define_accent('maxlinenr', 'none')

" Enable all Python syntax highlighting features
let python_highlight_all = 1

" setting air-line color theme
let g:airline_theme = 'base16_gruvbox_dark_hard'

" air-line settings
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_section_error=0
let g:airline_setion_warning=0
let g:airline_detect_spell=0
let g:airline_section_y=0
let g:airline_detect_spelllang=0

" air-line symbols
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" air-line symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''

" inoremap jk <esc>l
" inoremap kj <esc>
" xnoremap kj <esc>

" inoremap <C-c> <esc>
" xnoremap <C-c> <esc>

" Remap esc to kj
inoremap kj <esc>
cnoremap kj <C-C>

let g:rainbow_active=1

" Default mapping for multi-cursors
let g:multi_cursor_use_default_mapping=0
" Start selections with ctrl+n
let g:multi_cursor_start_word_key      = '<C-n>'
" Select all with ctrl+b
let g:multi_cursor_select_all_word_key = '<C-b>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-m>'

" Allows you to exit multicursors by pressing 'jk' and then 'q'
let g:multi_cursor_exit_from_insert_mode=0
let g:multi_cursor_quit_key='q'
let g:multi_cursor_insert_maps={'k':1}
" let g:multi_cursor_quit_key            = '<Esc>'

" pres F5 in visual model to share code 
vnoremap <F5> :CarbonNowSh<CR>

" Build current c++ script and run main
nnoremap <buffer> <F5> :w <bar> :execute '!g++ % -lglfw -lGL -o main.out' <bar> :execute '!./main.out'<cr>

"Gets all rows and column characters from the given selection
function GetSelection()
    let [line_start, column_start] = getpos("'<")[1:2]
    let [line_end, column_end] = getpos("'>")[1:2]
    let lines = getline(line_start, line_end)
    if len(lines) == 0
        return ''
    endif
    return join(lines, "\n")
endfunction

" Writes given text into a file
function WriteText(text, filename)
    call writefile(split(a:text, "\n"), a:filename)
endfunction

" Creates temporal file
function GetTemporalFilename()
    return "/tmp/RunInIpythonVisual_12345.py"
endfunction

" Sends selection to an interactive ipython
vnoremap <silent> <F9> :<c-u>call RunInIpythonVisual()<CR>
function RunInIpythonVisual()
    silent execute "update | edit"
    let filename = GetTemporalFilename()
    let text = GetSelection()
    silent call WriteText(text, filename)
    silent execute '!st -e ipython3 -i' filename '&'
endfunction

" Sends complete file to an interactive ipython when pressing F9
nnoremap <silent> <F9> :call RunInIpythonNormal()<CR>
function RunInIpythonNormal()
    silent execute "update | edit"
    silent execute '!st -e ipython3 -i' shellescape(@%, 1) '&'
endfunction

" Deletes temporal file made for ipython function call
autocmd VimLeave * call delete(GetTemporalFilename())

" Added callback option to remove warning in latex
let g:vimtex_compiler_latexmk = {'callback' : 0}

" Setting default pdf viewer
let g:vimtex_view_general_viewer = 'zathura'

" needed so that the snippets recognize .tex files
let g:tex_flavor='latex'

" Jump to next errors using ctrl+j and ctrl+k
nmap <C-e> :ALENext<cr>
nmap <C-s> :ALEPrevious<cr>

" setting python linting and error ignores
let g:ale_fixers = {
\   'python': ['flake8', 'pylint'],
\}
" W605 for ignoring \d for latex writing
let g:ale_python_flake8_options='--ignore=E402,W504,W605'

"fzf search layout - down / up / left / right
" let g:fzf_layout = { 'up': '~15%' }
let g:fzf_preview_window = 'right:50%'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6  }  }

"write control f for using fuzzy file searching
map <C-g> :GFiles<CR>
map <C-f> :Files<CR>

" This is the default extra key bindings for fuzzy search
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Call snippets with tab
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" removes extra spaces latex snippets (shiftwidth?)
set sw=4

" set super-tab from top to bottom
let g:SuperTabDefaultCompletionType = "<c-n>"
" set super-tab to work with paths
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" Set spell check for given file types"
autocmd FileType latex,tex,md,markdown,text setlocal complete+=kspell
set spell spelllang=en_us

" Underlines misspelled words
:hi SpellBad cterm=underline

" Increase update dime
set updatetime=300

" Jedi-vim configuration
let g:jedi#force_py_version = 3
let g:jedi#popup_select_first=0
let g:jedi#completions_enabled = 1
let g:jedi#auto_vim_configuration = 1

" Set go to definition with ctrl-g
let g:jedi#goto_definitions_command = "<C-d>"

" allows for import auto-complete pop-up
let g:jedi#smart_auto_mappings = 1 

let g:jedi#popup_on_dot = 1

" this is kept with super-tab so it can do auto-complete with imports
let g:jedi#completions_command = "<C-N>"

" shows function arguments
let g:jedi#show_call_signatures = 2

" removes document strings pop-up
autocmd FileType python setlocal completeopt-=preview

" To open a new empty buffer
nmap <C-t> :enew<cr>
" Move to the next buffer
nmap <C-l> :bnext<cr>
" Move to the previous buffer
nmap <C-h> :bprevious<cr>
" Close the current buffer and move to the previous one
nmap <silent> <C-w> :bd<CR>

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>
set clipboard=unnamed

" Copy in the clipboard
vnoremap <C-c> "+y
" This is conflict with visual block entering
noremap <C-p> "+p

" Comment lines or blocks
" vnoremap <silent> # :s/^/#/<cr>:noh<cr>
" vnoremap <silent> @ :s/^#//<cr>:noh<cr>
vnoremap <silent> # :s/^/#/<cr>:noh<cr>
vnoremap <silent> -# :s/^#//<cr>:noh<cr>



" In visual mode (v), select several lines of code press ``>`` several times.
vnoremap < <gv  
vnoremap > >gv 


" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-F> :NERDTreeFind<CR>

" this will change identation from 2 to 4.
" :%s/^\s*/&&


" OLD COMMANDS

" Window
" nmap <leader>s<left>  :topleft  vnew<CR>
" nmap <leader>s<right> :botright vnew<CR>
" nmap <leader>s<up>    :topleft  new<CR>
" nmap <leader>s<down>  :botright new<CR>

" Move between spltis
" nmap <silent> <A-Up> :wincmd k<CR>
" nmap <silent> <A-Down> :wincmd j<CR>
" nmap <silent> <A-Left> :wincmd h<CR>
" nmap <silent> <A-Right> :wincmd l<CR>

" easier vim split navigation
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

"" Run blender python scripts
" nnoremap <buffer> <F8> :exec '!~/blender/blender -b -P' shellescape(@%, 1)<cr>

"Execute current selection in python 
" xnoremap <silent> <F10> :'<,'>w !'python' <cr>

"Save and execute all document in ipython using an external terminal 
" nnoremap <silent> <F9> :call ExecuteInIpythonHorizontal()<CR>
" function! ExecuteInIpythonHorizontal()
"   silent execute "update | edit"
"   execute ':below terminal ++close ipython3 -i' @%
" endfunction

"Save and execute all document in ipython using an external terminal 
"nnoremap <silent> <F8> :call ExecuteInIpythonVertical()<CR>
"function! ExecuteInIpythonVertical()
"   silent execute "update | edit"
"   execute ':vertical terminal ++close ipython3 -i' @%
"endfunction


" Command for sending current buffer/visual selection to interactive ipython
"command -range IpythonHorizontal <line1>,<line2>call ExecuteInIpythonHorizontal()
"  nnoremap <silent> <F9> :%IpythonHorizontal<CR>
"  vnoremap <silent> <F9> :'<,'>IpythonHorizontal<CR>
"  function! ExecuteInIpythonHorizontal()
"      let l:filename = '/tmp/ipython_horizontal_12345.py'
"      let l:text = getline(a:firstline, a:lastline)
"      call writefile(l:text, l:filename)
"      silent execute "update | edit"
"      execute ':below terminal ++close ipython3 -i ' l:filename
      " execute '!urxvt -e ipython3 -i' l:filename '&'
      " echo '!urxvt -e vim' l:filename '&'
      " echo ':below terminal ++close ipython3 -i ' l:filename
"  endfunction 

" Close the current buffer and move to the previous one
" nmap <silent> <C-w> :bd <BAR> bnext #<CR>c
