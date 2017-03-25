
" 高亮
set nocompatible            " 关闭 vi 兼容模式
syntax enable               " 打开语法高亮
syntax on                   " 开启文件类型侦测
set number                  " 显示行号
set cursorline              " 突出显示当前行
"set cul                     "高亮光标所在行
"set cuc                     "高亮光标所在列

" 状态栏
set ruler                   " 打开状态栏标尺
"set showcmd                 " 在状态栏显示正在输入的命令
set wildmenu                " 打开命令行补全菜单（出现在状态栏上）
set cmdheight=1             " 设定命令行的行数为 1
set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\      " 设置在状态行显示的信息
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
set showtabline=1           " 只有当存在多个标签页时，才显示标签行
set magic                   " 设置魔术
set hidden                  " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存

" 格式对齐
set shiftwidth=4               " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4              " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4                  " 设定 tab 长度为 4
set expandtab                  " 实现按TAB产生4个空格
set smarttab                   " 在行和段开始处使用制表符
set smartindent                " 开启新行时使用智能自动缩进
"set cindent                    " C 语法格式的自动缩进
"set autoindent                 " 自动缩进
set completeopt=preview,menu   " 代码补全
" set showmatch                " 插入括号时，短暂地跳转到匹配的对应括号
" set matchtime=2               " 短暂跳转到匹配括号的时间
set backspace=indent,eol,start " 用退格键可以删除自动缩进、换行符、越过编辑起始点

" 搜索
set ignorecase smartcase        " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set nowrapscan                  " 禁止在搜索到文件两端时重新搜索
set incsearch                   " 输入搜索内容时就显示搜索结果
set hlsearch                    " 搜索时高亮显示被找到的文本

" 折叠
set foldenable                  " 开始折叠
set foldmethod=syntax           " 设置语法折叠
set foldnestmax=2               " 最多折叠两层（一层函数，一层大流程控制），多了用处不大
set foldcolumn=0                " 设置折叠区域的宽度
setlocal foldlevel=1            " 设置折叠层数为
" set foldclose=all              " 设置为自动关闭折叠
" set nofoldenable               " 缺省不折叠  
" nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>    " 用空格键来开关折叠

" 设置文件编码类型                                                                                          
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936
"set fileencodings=utf-8,cp936,gb2312,gb18030,gbk,big5,euc-cn,euc-jp

" 其他
set pastetoggle=<F6>       " 按原有格式粘贴
set scrolloff=5            " 光标移动距离屏幕顶部或底部 10 行时，开始滚动
set nobackup               " 覆盖文件时不备份
set autochdir              " 自动切换当前目录为当前文件所在的目录
filetype plugin indent on  " 开启插件 enables filetype specific plugins
set backupcopy=yes         " 设置备份时的行为为覆盖
set noerrorbells           " 关闭错误信息响铃
set novisualbell           " 关闭使用可视响铃代替呼叫
set t_vb=                  " 置空错误铃声的终端代码

" 仅在 Normal 模式和 Visual 模式下才可以用鼠标
" 这意味着要想用鼠标复制到剪切板的话，只需要按
" i 进入插入模式，或者按 : 进入命令行模式就可以了。
"set mouse=nv

" 为 20 个文件保存位置标记（书签），
" 每个寄存器最多保存 50 行内容，且大小不能超过 10k
" 另外，打开文件时，不高亮显示上次关闭前搜索过的字符串
set viminfo='20,<50,s10,h

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

" 交换两个窗口，这个不太常用
" nmap <F7> <C-W>x

" Q 不保存退出，X 保存退出
nmap Q :q!<CR>
nmap X :x<CR>

" 按teb键添加以下内容
nmap <F2> :!./%<ENTER>
nmap <C-I> i#!/usr/bin/env perl<ENTER><ENTER>use strict;<ENTER>use warnings;<ENTER><ENTER>

" 让 Tohtml 产生有 CSS 语法的 html
" syntax/2html.vim，可以用:runtime! syntax/2html.vim
let html_use_css=1

" Python 文件的一般设置，比如不要 tab 等
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
autocmd FileType python map <F12> :!python %<CR>

let g:pyflakes_use_quickfix = 1
"let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 3



" 选中状态下 Ctrl+c 复制
vmap <C-c> "+y

" Q 不保存退出，X 保存退出
nmap Q :q!<CR>
nmap X :x<CR>

"恢复上次打开的光标位置
autocmd BufReadPost * if line("'\"") && line("'\"") <= line("$") | exe "normal `\"" | endif
"autocmd BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" Tag List插件 http://www.2cto.com/os/201304/200533.html
" Tag List 打开以后，光标停留在 Tag List 窗口
let g:Tlist_GainFocus_On_ToggleOpen=1
" T 开启/关闭 taglist
nnoremap <silent> T :TlistToggle<CR>
let Tlist_Sort_Type = "name"    " 按照名称排序 
let Tlist_Use_Right_Window = 1  " 在右侧显示窗口 
let Tlist_Compart_Format = 1    " 压缩方式 
let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer 
"let Tlist_File_Fold_Auto_Close = 0  " 不要关闭其他文件的tags 
"let Tlist_Enable_Fold_Column = 0    " 不要显示折叠树 
"let Tlist_Show_One_File=1            "不同时显示多个文件的tag，只显示当前文件的


" gF 在新窗口打开光标下的文件名
nmap gF <C-W>f
" 对于 vim 7.x 来说，可以让文件在新标签页打开
if version >= 700
    nmap <silent> gf <C-W>gf:tabmove<CR>
endif

" Dieken 的功能，列出所用查找的行到新窗口
" nnoremap <F2> :g//laddexpr expand("%") . ":" . line(".") . ":" . getline(".")<CR>:lopen<CR>
" nnoremap <F3> :redir @a<CR>:g//<CR>:redir END<CR>:new<CR>:put! a<CR><CR>

" Visual 模式下用 c 和 C 来注释、取消注释代码
autocmd FileType perl vmap <silent> c :<BS><BS><BS><BS><BS>let FlwSearchBak=@/\|'<,'>s/^/#/gi\|call histdel("search", -1)\|let @/ = FlwSearchBak<CR>
autocmd FileType perl vmap <silent> C :<BS><BS><BS><BS><BS>let FlwSearchBak=@/\|'<,'>s/^#//gi\|call histdel("search", -1)\|let @/ = FlwSearchBak<CR>
"vmap c :s/^/#/gi<Enter>
"vmap C :s/^#//gi<Enter>

" 插入模式下不需要光棒
autocmd InsertEnter * setlocal nocursorline
autocmd InsertLeave * setlocal cursorline

" 只有当前窗口才显示光棒
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" 按F5编译运行
"map <F5> :call CompileRunGcc()<CR>
"func! CompileRunGcc()
"    exec "w"
"    if &filetype == 'sh'
"        :!time bash %
"    elseif &filetype == 'python'
"        exec "!time python %"
"    endif
"endfunc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""" 新建.sh,.py文件，自动插入文件头 
autocmd BufNewFile *.sh,*.py exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1,"\#!/bin/bash") 
        call append(line("."), "") 
    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
        call append(line(".")+1, "") 
    endif
endfunc 
"新建文件后，自动定位到文件末尾
autocmd BufNewFile * normal G
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 每行超过80个的字符用下划线标示
au BufRead,BufNewFile *.py,*.c,*.cpp,*.h,*.pl,*.rb,*.sql,*.sh,*.vim,*.js,*.css,*.html 2match Underlined /.\%81v/


