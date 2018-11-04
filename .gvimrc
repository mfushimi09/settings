:set autoindent
:set nocompatible
:set expandtab
":colorscheme pyte
:set number
:set shiftwidth=2
:set tabstop=2
:set tw=0
:filetype plugin indent on

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
":set formatoptions=q

"<F6>  文頭にタイムスタンプを挿入してinsertモードへ移行
"2014/12/17 　2014/11/11 (火) 03:23 → 2014年11月11日 (火曜日)に変更
"2015/12/27 　2015-12-27 (日)に変更
nmap <F6> <ESC> i<CR><C-R>=strftime("%Y-%m-%d (%a)" )<CR><CR><CR><CR><CR><CR><Up><Up><Up><Up>
"%H:%M"

au BufRead,BufNewFile *.txt set syntax=hybrid

let g:evervim_devtoken='S=s35:U=385d49:E=14d6480b46d:C=1460ccf8871:P=1cd:A=en-devtoken:V=2:H=65c324048d68876eee459fae40f321a4'

source $VIMRUNTIME/delmenu.vim
set langmenu=ja_jp.utf-8
source $VIMRUNTIME/menu.vim

:set foldmethod=syntax
:winpos 350 100
:set lines=80
:set columns=160
:colorscheme zenburn
autocmd GUIEnter * set transparency=220
":set gfn=Rounded_M+_1m_regular:h12:cSHIFTJIS
"au GUIEnter * simalt ~x
:set gfn=VL_Gothic:h12:cSHIFTJIS

"「@や行末の>」などのNonTextの色を白にして表示させないようにする

:highlight NonText ctermfg=white guifg=white
nnoremap Y y$ 
:set clipboard=unnamed,autoselect

inoremap { {}<Left>
inoremap ( ()<Left>
inoremap ' ''<Left>

inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>

set tw=0
autocmd BufRead,BufNewFile *.chg setfiletype python
