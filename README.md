vim setting:
=====

=== 安装、更新vim ===
-----

安装[vim](https://github.com/vim/vim.git)之后(Vim `8.1.1719` 版本以上)：

```
git clone https://github.com/vim/vim.git
cd vim/src
make
```

更新vim之前先查看一下python3的版本，输入python3可以看到，尽量安装比较新的版本（版本：3.9.1 or >= 3.6），装插件的时候会有要求，如果版本太低先重新安装pytion3，再安装vim。

把vimrc配置文件放到~/目录

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


=== plug.vim ===
-----

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


=== dracula ===
-----

安装dracula主题：https://draculatheme.com/vim


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


=== 安装 `nerd-tree` 字体 ===
-----

如果使用了 `vim-devicons` 或者 `vim-nerdtree-syntax-highlight` 插件，可以选择 [Droid Sans Mono Nerd Font Complete.otf](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/DroidSansMono/complete) 这款字体，双击 `Droid Sans Mono Nerd Font Complete.otf` 即可安装，安装后就可以在终端选择字体了，字体名为 `"DroidSansMono Nerd Font"`。


=== 安装[vim-go](https://github.com/fatih/vim-go) ===
-----

安装完 `vim-go` 插件之后，执行 `:GoInstallBinaries` 开始交互式安装辅助工具(需要科学上网)

=== 安装[coc.nvim](https://github.com/neoclide/coc.nvim) coc补全 ===
-----

Plugin 'neoclide/coc.nvim', {'branch': 'release'}

`coc.nvim` 由nodejs编写，先安装nodejs(https://nodejs.org/dist/v14.15.4/node-v14.15.4-linux-x64.tar.gz):

```
wget https://nodejs.org/dist/v14.15.4/node-v14.15.4-linux-x64.tar.gz
tar -xzvf node-v14.15.4-linux-x64.tar.gz
```

添加到环境变量。

配置coc: [链接](https://github.com/neoclide/coc.nvim)
