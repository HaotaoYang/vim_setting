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

Plugin 'bling/vim-airline'                      " 设置标签页插件
Plugin 'ctrlpvim/ctrlp.vim'                     " 安装查找项目文件插件Ctrl + p
Plugin 'elixir-lang/vim-elixir'                 " elixir语言插件
Plugin 'fatih/vim-go'                           " go语言插件
Plugin 'gcmt/wildfire.vim'                      " 按enter键进入块选择
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'junegunn/gv.vim'                        " 查看git提交记录, 命令 :GV
Plugin 'junegunn/limelight.vim'                 " 编辑的代码块高亮
Plugin 'Lokaltog/vim-powerline'                 " 设置状态栏插件
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'L9'
Plugin 'mileszs/ack.vim'                        " 全局查找字符串
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'                    " 安装目录树插件
Plugin 'scrooloose/syntastic'                   " 安装语法分析插件
Plugin 'slashmili/alchemist.vim'                " elixir查找跳转功能
Plugin 'szw/vim-tags'
Plugin 'tpope/vim-eunuch'                       "
Plugin 'tpope/vim-fugitive'                     " git包装器(这里注意:由于作者没有更新，使用这个命令安装后使用:GV命令查看提交记录时会有报错，可以到github上查看最新安装方式安装)
Plugin 'tpope/vim-rhubarb'
Plugin 'vim-airline/vim-airline-themes'         " 标签页主题插件
Plugin 'vim-erlang/vim-erlang-omnicomplete'     " erlang补全插件
Plugin 'vim-erlang/vim-erlang-tags'             " erlang跳转标志插件
Plugin 'vim-gitgutter'                          " 修改时会显示修改与仓库版本的差异
Plugin 'Valloric/YouCompleteMe'                 " 补全功能插件
Plugin 'VundleVim/Vundle.vim'

call vundle#end()            " required

execute pathogen#infect()
syntax on
filetype plugin indent on    " required

" 设置主题(需要提前安装：https://draculatheme.com/vim)
packadd! dracula
syntax enable
colorscheme dracula

set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI  " 字体
set nu                                          " 行号
set lines=55                                    " 设置显示行数
set columns=180                                 " 设置显示列数
" set cc=120                                      " 在第120列显示提示线
set numberwidth=2                               " 行号栏目宽度
set tabstop=4                                   " tab长度
set autoindent                                  " 自动对齐
set nowrap                                      " 不自动折行
set backspace=2                                 " mac os delete按键实效
set hlsearch                                    " 选中高亮
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936    " 设置gbk字符会有编码问题，设置字符集
set fileencoding=utf-8
set linespace=2                                 " 行间距
set shiftwidth=4                                " 调整缩进时的长度
set expandtab                                   " tab转化为4个字符
set mouse=a
set noswapfile                                  " 编辑时不产生.swp文件
set pastetoggle=<F10>                           " 粘贴时按F10取消自动缩进，粘贴完按F10打开自动缩进
" let g:syntastic_enable_elixir_checker = 1
" let g:syntastic_enable_erlang_checker = 1
let g:ackprg = 'ag --nogroup --nocolor --column'
hi Normal  ctermfg=252 ctermbg=none

" 设置VIM状态栏
set laststatus=2 "显示状态栏(默认值为1, 无法显示状态栏)

" let g:erlang_tags_auto_update = 1               " 自动更新tags(vim-erlang-tags插件配置)

set statusline+=%{FugitiveStatusline()}
set statusline+=%{gutentags#statusline()}

" syntastic语法分析器配置
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" 设置侧边栏警告和错误提示开关和标志(1:打开 0:关闭)
let g:syntastic_enable_signs = 0
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='►'
" 设置为1时总是打开Location List（相当于QuickFix）窗口
let g:syntastic_always_populate_loc_list = 0
" 自动打开Locaton List，默认值为2，表示发现错误时不自动打开，当修正以后没有再发现错误时自动关闭，置1表示自动打开自动关闭，0表示关闭自动打开和自动关闭，3表示自动打开，但不自动关闭
let g:syntastic_auto_loc_list = 0
" 设置为1时打开文件时自动进行检查
let g:syntastic_check_on_open = 0
" 设置为0时保存文件自动进行检查,1关闭
let g:syntastic_check_on_wq = 1

" powerline setting
set guifont=PowerlineSymbols\for\Powerline
set t_Co=256
let g:Powerline_symbols = 'fancy'
" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White

" 状态栏设置
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'

let g:airline_theme="luna"
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1

" go-vim插件配置
let g:go_highlight_type = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

" limelight插件设置
" 用法：
" :Limelight[0.0 ~ 1.0]     打开Limelight
" :Limelight!               关闭Limelight
" :Limelight!![0.0 ~ 1.0]   切换Limelight
let g:limelight_conceal_ctermfg = 'gray'
let g:limeligth_conceal_ctermfg = 240
let g:limelight_default_coefficient = 0.7

map <F6> :NERDTreeToggle<CR>                    " 使用F6打开树目录结构
nnoremap <C-k> :m-2<CR>     " 把当前行向上移动
nnoremap <C-j> :m+1<CR>     " 把当前行向下移动
nnoremap <C-h> :bp<CR>      " 项目内模块向左切换
nnoremap <C-l> :bn<CR>      " 项目内模块向右切换
set encoding=utf-8
set langmenu=zh_CN.UTF-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
" if has("syntax")
"   syntax on
" endif

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

