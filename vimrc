runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

filetype on
syntax enable
set background=dark
colorscheme solarized

set lines=35 columns=150

set colorcolumn=90

set number

set hidden
set history=100

set hlsearch

set showmatch

set nobackup

set laststatus=2

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\
 
