"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important: 
"       This requries that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" => Load Vundle paths
""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

""set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.vim/bundle/')

"" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"" lints

"Handler files
Plugin 'MRU'            "Recent files used
Plugin 'ctrlp.vim'      "Recent files
Plugin 'ack.vim'        "searh in files
Plugin 'rking/ag.vim'   "seach in files

"Autocomplete code
Plugin 'snipMate'       "expant code
Plugin 'vim-scripts/Emmet.vim'  "Expent sintax html


"syntax/indentation 
Plugin 'jade.vim'
Plugin 'vim-stylus'
Plugin 'Markdown-syntax'
"check syntax code
Plugin 'scrooloose/syntastic'      "syntax checking


"handler edit
Plugin 'YankRing.vim'   "admin yank recent
Plugin 'The-NERD-Commenter'
"schemes
Plugin 'joshdick/onedark.vim'

"css
Plugin 'ap/vim-css-color'
"" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='ame'
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>


""""""""""""""""""""""""""""""
" => YankRing
""""""""""""""""""""""""""""""
if has("win16") || has("win32")
    " Don't do anything
else
    let g:yankring_history_dir = '~/.vim/temp_dirs/'
endif


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


""""""""""""""""""""""""""""""
" => ZenCoding
""""""""""""""""""""""""""""""
" Enable all functions in all modes
let g:user_zen_mode='a'


""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>


""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let g:syntastic_python_checkers=['pyflakes']
let g:syntastic_json_checkers=['jsonlint']
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_html_checkers=['tidy']
let g:syntastic_jade_checkers=['jade_lint']
let g:syntastic_stylus_checkers=['stylint']
let g:syntastic_sass_checkers=['sass']
let g:syntastic_css_checkers=['prettycss']
let g:syntastic_markdown_checkers=['mdl']



