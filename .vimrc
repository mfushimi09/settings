set autoindent
set nocompatible
set expandtab
colorscheme pyte
set number
set shiftwidth=2
set tabstop=2
filetype plugin indent on
set noswapfile
set tw=0

set ignorecase

:let weeks = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat" ]
:let wday = strftime("%w")

:set encoding=utf-8
:set fileencodings=utf-8,ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932
syntax on
nmap	,ce :%s/\./!/g 
nmap ,cd :%s/\!/./g
nmap ,d :r! date /t
map <silent> ,e :e ++enc=utf-8
map <c-n> gt
map <c-p> gT
:autocmd GUIEnter * set transparency=240
":set formatoptions=q

"<F6>  文頭にタイムスタンプを挿入してinsertモードへ移行っ
"2014/12/17 　2014/11/11 (火) 03:23 → 2014年11月11日 (火曜日)に変更
"2015/12/27 　2015-12-27 (日)に変更
nmap <F6> <ESC> i<CR><C-R>=strftime("%Y-%m-%d (%a)" )<CR><CR><CR><CR><CR><CR><Up><Up><Up><Up>
"%H:%M"

au BufRead,BufNewFile *.txt set syntax=hybrid
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap ' ''<Left>

inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>

