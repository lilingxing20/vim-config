
syntax on                       " 自动语法高亮
filetype on                     " enables filetype detection
filetype plugin indent on       " 开启插件 enables filetype specific plugins
set pastetoggle=<F6>            "按原有格式粘贴
"set past "原格式粘贴
set nocompatible                " 关闭 vi 兼容模式
set number                      " 显示行号
set cursorline                  " 突出显示当前行
set ruler                       " 打开状态栏标尺
set shiftwidth=4                " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4               " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4                   " 设定 tab 长度为 4
set expandtab                   " 设置按 tab 为 4 空格
set nobackup                    " 覆盖文件时不备份
set autochdir                   " 自动切换当前目录为当前文件所在的目录
set backupcopy=yes              " 设置备份时的行为为覆盖
set ignorecase smartcase        " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set nowrapscan                  " 禁止在搜索到文件两端时重新搜索
set incsearch                   " 输入搜索内容时就显示搜索结果
set hlsearch                    " 搜索时高亮显示被找到的文本
set noerrorbells                " 关闭错误信息响铃
set novisualbell                " 关闭使用可视响铃代替呼叫
set t_vb=                       " 置空错误铃声的终端代码
" set showmatch                 " 插入括号时，短暂地跳转到匹配的对应括号
" set matchtime=2               " 短暂跳转到匹配括号的时间
set magic                       " 设置魔术
set hidden                      " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set guioptions-=T               " 隐藏工具栏
set guioptions-=m               " 隐藏菜单栏
set smartindent                 " 开启新行时使用智能自动缩进
set backspace=indent,eol,start
" 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1                 " 设定命令行的行数为 1
set laststatus=2                " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
" 设置在状态行显示的信息
"set foldenable          " 开始折叠
"set foldmethod=syntax   " 设置语法折叠
"set foldcolumn=0        " 设置折叠区域的宽度
"setlocal foldlevel=1    " 设置折叠层数为
" set foldclose=all     " 设置为自动关闭折叠
" nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" 用空格键来开关折叠

" 光标移动距离屏幕顶部或底部 10 行时，开始滚动
set scrolloff=5

"设置文件的代码形式
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936

" 按teb键添加以下内容
nmap <F2> :!./%<ENTER>
nmap <C-I> i#!/usr/bin/env perl<ENTER><ENTER>use strict;<ENTER>use warnings;<ENTER><ENTER>

"设置配色主题
" freya下载网址 http://www.vim.org/scripts/script.php?script_id=1651
colorscheme freya
hi Identifier ctermfg =darkgreen cterm =bold
"hi Comment ctermfg =darkgreen                                                                                                                                                                                       
"hi String ctermfg =darkred
"hi Type ctermfg =yellow
"hi Number ctermfg =darkblue
"hi Constant ctermfg =blue
"hi Statement ctermfg =darkyellow

"窗口分割时,进行切换的按键热键需要连接两次,比如从下方窗口移动
"光标到上方窗口,需要<c-w><c-w>k,非常麻烦,现在重映射为<c-k>,切换的
"时候会变得非常方便.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Visual 模式下用 TAB 来缩进代码
vmap <silent> <TAB>     >gv
vmap <silent> <S-TAB>   <gv
" Normal 模式下用 TAB 键切换当前窗口。
nmap <silent> <TAB>     <C-W>w
nmap <silent> <S-TAB>   <C-W>p

"用上下左右键来调整窗口大小
nmap <silent> <Left>  <C-W><:unlet! t:flwwinlayout<CR>
nmap <silent> <Right> <C-W>>:unlet! t:flwwinlayout<CR>
nmap <silent> <Up>    <C-W>+:unlet! t:flwwinlayout<CR>
nmap <silent> <Down>  <C-W>-:unlet! t:flwwinlayout<CR>

"一些不错的映射转换语法（如果在一个文件中混合了不同语言时有用）
nnoremap <leader>1 :set filetype=xhtml<CR>
nnoremap <leader>2 :set filetype=css<CR>
nnoremap <leader>3 :set filetype=javascript<CR>
nnoremap <leader>4 :set filetype=php<CR>


" 让 Tohtml 产生有 CSS 语法的 html
" syntax/2html.vim，可以用:runtime! syntax/2html.vim
let html_use_css=1

" Python 文件的一般设置，比如不要 tab 等
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
autocmd FileType python map <F12> :!python %<CR>

let g:pyflakes_use_quickfix = 1
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 3

" 选中状态下 Ctrl+c 复制
vmap <C-c> "+y

" 打开javascript折叠
let b:javascript_fold=1
" 打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1


" Q 不保存退出，X 保存退出
nmap Q :q!<CR>
nmap X :x<CR>

" 记忆上次编辑的位置
autocmd BufReadPost * if line("'\"") && line("'\"") <= line("$") | exe "normal `\"" | endif 


let g:nerdtree_tabs_open_on_console_startup=0       "设置打开vim的时候默认打开目录树,=1
map <leader>n <plug>NERDTreeTabsToggle <CR>
"设置打开目录树的快捷键
let mapleader=";"                                   "设置前缀<leader> = ';'

"使用的方法是在':'状态下输入,n 等于输入:NERDTreeTabsToggle 设置打开目录树的快捷键 
map <leader>l :Tlist <CR>


".vim/bash-support.zip  .vim/perl-support.zip
