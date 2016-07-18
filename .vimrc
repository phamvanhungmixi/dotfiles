syntax on
set number
set mouse=a
set clipboard=unnamedplus
set clipboard^=autoselect
set backspace=indent,eol,start
vmap <C-c> y:new ~/.vimbuf<CR>VGp:x<CR>:!pbcopy < ~/.vimbuf<CR><CR>
map <C-n> :NERDTreeToggle<CR>

"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/Users/vanhungpham/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/vanhungpham/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'
" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
