vim setting:
=====

安装vim之后：

把vimrc配置文件放到用户目录/etc/vim/目录下,MaxOs是在~/目录

把.vim目录放到用户根目录下~/

然后进入vim，使用:PluginInstall就可以安装插件。

=== pathogen.vim ===
-----

先安装pathogen.vim,在终端执行：

mkdir -p ~/.vim/autoload ~/.vim/bundle && \

curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

在vimrc中配置：

execute pathogen#infect()

syntax on

filetype plugin indent on

=== dracula ===
-----

安装dracula主题：

Plugin 'dracula/vim'

使用：PluginInstall安装就可以把主题插件下载到~/.vim/bundle/vim/colors/目录下面，但是使用colorscheme dracula配色的时候会找不到该主题报错，需要把该目录下的dracula.vim拷贝到~/.vim/colors目录下就可以了

=== 安装git插 ===
-----

Plugin 'vim-gitgutter'          " 修改时会显示修改与仓库版本的差异

Plugin 'junegunn/gv.vim'        " 查看git提交记录, 命令 :GV

Plugin 'tpope/vim-eunuch'

Plugin 'tpope/vim-rhubarb'

Plugin 'tpope/vim-fugitive'     " git包装器(这里注意:由于作者没有更新，使用这个命令安装后使用:GV命令查看提交记录时会有报错，可以到github上查看最新安装方式安装)

=== 安装ctrlp插件 ===
-----

Bundle 'ctrlpvim/ctrlp.vim'

" 常规模式下输入：:CtrlP 或者 按键盘Ctrl + p 调用插件，可以查找项目文件

安装代码搜索插件Ag/Ack:

先安装Ag:apt-get install silversearcher-ag


=== 安装Ack ===
-----

Plugin 'mileszs/ack.vim'

let g:ackprg = 'ag --nogroup --nocolor --column'

运行vim可以用 :Ack xxx 搜索项目代码
