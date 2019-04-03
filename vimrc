" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
" Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/vim-powerline'
Plugin 'bling/vim-airline'
Plugin 'fatih/vim-go'
Plugin 'vim-erlang/vim-erlang-tags'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'elixir-lang/vim-elixir'
Plugin 'slashmili/alchemist.vim'
Plugin 'vim-gitgutter'
Plugin 'dracula/vim'                            " 安装dracula主题插件, 安装完后需要把~/.vim/bundle/vim/colors/目录下的dracula.vim拷贝到~/.vim/colors目录下
map <F6> :NERDTreeToggle<CR>                    " 使用F6打开树目录结构
" colorscheme murphy                              " 配色
" colorscheme dracula                           " 新主题
set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI  " 字体
set nu                                          " 行号
set lines=55                                    " 设置显示行数
set columns=180                                 " 设置显示列数
set numberwidth=2                               " 行号栏目宽度
set tabstop=4                                   " tab长度
set autoindent                                  " 自动对齐
set nowrap                                      " 不自动折行
set backspace=2                                 " mac os delete按键实效
syntax on                                       " 语法高亮
set hlsearch                                    " 选中高亮
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936    " 设置gbk字符会有编码问题，设置字符集
set fileencoding=utf-8
set linespace=2                                 " 行间距
set shiftwidth=4                                " 调整缩进时的长度
set expandtab                                   " tab转化为4个字符
set mouse=a
set noswapfile                                  " 编辑时不产生.swp文件
set pastetoggle=<F10>                           " 粘贴时按F10取消自动缩进，粘贴完按F10打开自动缩进
let g:syntastic_enable_elixir_checker = 1
let g:ackprg = 'ag --nogroup --nocolor --column'
hi Normal  ctermfg=252 ctermbg=none

" 设置VIM状态栏
set laststatus=2 "显示状态栏(默认值为1, 无法显示状态栏)

" 以下为语法分析工具配置，此处屏蔽
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" powerline setting
set guifont=PowerlineSymbols\for\Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'
" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""新文件标题""""""""""""""""""""""""
"新建erlang时文件，自动插入文件头 
autocmd BufNewFile *.erl exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
    call setline(1,"\%%%-------------------------------------------------------------------") 
    call append(line("."), "\%% @Module  : ".expand("%")) 
    call append(line(".")+1, "\%% @Author  : Holtom") 
    call append(line(".")+2, "\%% @Email   : 520023290@qq.com")
    call append(line(".")+3, "\%% @Created : ".strftime("%c")) 
    call append(line(".")+4, "\%% @doc ")
    call append(line(".")+5, "\%% @end")
    call append(line(".")+6, "\%%%-------------------------------------------------------------------")
    call append(line(".")+7, "")
    call append(line(".")+8, "")
    call append(line(".")+9, "")
    call append(line(".")+10, "\%%====================================================================")
    call append(line(".")+11, "\%% API")
    call append(line(".")+12, "\%%====================================================================")
    call append(line(".")+13, "")
    call append(line(".")+14, "")
    call append(line(".")+15, "")
    call append(line(".")+16, "\%%====================================================================")
    call append(line(".")+17, "\%% Supervisor callbacks")
    call append(line(".")+18, "\%%====================================================================")
    call append(line(".")+19, "")
    call append(line(".")+20, "")
    call append(line(".")+21, "")
    call append(line(".")+22, "\%%====================================================================")
    call append(line(".")+23, "\%% Internal functions")
    call append(line(".")+24, "\%%====================================================================")
endfunc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '>'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '<'
let g:airline_theme="luna"
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1

nnoremap <C-l> :bn<CR>
nnoremap <C-h> :bp<CR>
set encoding=utf-8
set langmenu=zh_CN.UTF-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

execute pathogen#infect()

call vundle#end()            " required
filetype plugin indent on    " required

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

