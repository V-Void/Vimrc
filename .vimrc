execute pathogen#infect()
:colorscheme mustang
set t_Co=256

:imap <F2> <ESC>:StripWhitespace<CR>a
:map <F2> :StripWhitespace<CR>
:map <F5> :make!<CR>
:imap <F7> <ESC>:NERDTreeToggle<CR>a
:nmap <F7> :NERDTreeToggle<CR>
:imap <F8> <ESC>:TagbarToggle<CR>a
:nmap <F8> :TagbarToggle<CR>

autocmd vimenter * NERDTree
:set modifiable

:nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
:nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>
:nnoremap <silent><leader><leader> :set paste<CR>0i////////////////////////////////////////////////////////////////////////////////<CR><Esc>0:set nopaste<CR>

set runtimepath+=~/.vim
set path+=/usr/src/linux-headers-3.19.0-25/include/
:set autochdir
filetype plugin on
:syntax on
:set mouse=a
set tabstop=4
set shiftwidth=4

:set si
set number
:set colorcolumn=81
:set cursorline
hi CursorLine   cterm=NONE ctermbg=237 ctermfg=NONE
:hi ColorColumn ctermbg=138

let g:NERDSpaceDelims=1
:noremap<C-n> :set hlsearch! hlsearch?<CR>
:map <C-C> "+y
:map <C-V> "+p
":map <F2> :setlocal foldmethod=syntax<CR>zR
"
let g:neocomplete#enable_at_startup = 1
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

    " imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
     " \ "\<Plug>(neosnippet_expand_or_jump)"
     " \: pumvisible() ? "\<C-n>" : "\<TAB>"
    " smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
     " \ "\<Plug>(neosnippet_expand_or_jump)"
     " \: "\<TAB>"

set viewoptions=cursor,folds

let g:skipview_files = ['*\.vim']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:clang_library_path='/usr/lib/llvm-3.8/lib'
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler_options = '-std=c++11'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1

let g:syntastic_c_no_default_include_dirs = 1
let g:syntastic_c_compiler_options = ''

let g:syntastic_c_config_file = '.syntastic_c_config'

let g:airline_theme = 'jellybeans'
let g:airline_skip_empty_sections = 1
let g:airline_left_sep = '▒'
let g:airline_right_sep = '▒'
let g:airline#extensions#whitespace#mixed_indent_algo = 1
let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing', 'long' ]

