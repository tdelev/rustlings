let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/personal/rustlings
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 ~/projects/personal/rustlings
badd +4 exercises/01_variables/variables1.rs
badd +3 exercises/02_functions/functions5.rs
badd +3 exercises/02_functions/functions1.rs
badd +6 exercises/01_variables/variables5.rs
badd +2 exercises/02_functions/functions2.rs
badd +11 exercises/02_functions/functions4.rs
badd +9 exercises/02_functions/functions3.rs
badd +3 exercises/01_variables/variables3.rs
badd +3 exercises/01_variables/variables2.rs
badd +3 exercises/00_intro/intro2.rs
badd +3 exercises/01_variables/variables4.rs
badd +8 exercises/03_if/if2.rs
badd +1 exercises/03_if/if3.rs
badd +18 exercises/03_if/if1.rs
badd +2 exercises/01_variables/variables6.rs
badd +21 term://~/projects/personal/rustlings//89313:zsh
argglobal
%argdel
$argadd ~/projects/personal/rustlings
edit exercises/03_if/if3.rs
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 106 + 106) / 213)
exe 'vert 2resize ' . ((&columns * 106 + 106) / 213)
argglobal
balt term://~/projects/personal/rustlings//89313:zsh
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 42 - ((35 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 42
normal! 05|
lcd ~/projects/personal/rustlings
wincmd w
argglobal
if bufexists(fnamemodify("term://~/projects/personal/rustlings//89313:zsh", ":p")) | buffer term://~/projects/personal/rustlings//89313:zsh | else | edit term://~/projects/personal/rustlings//89313:zsh | endif
if &buftype ==# 'terminal'
  silent file term://~/projects/personal/rustlings//89313:zsh
endif
balt ~/projects/personal/rustlings/exercises/01_variables/variables1.rs
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 21 - ((20 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 21
normal! 027|
lcd ~/projects/personal/rustlings
wincmd w
exe 'vert 1resize ' . ((&columns * 106 + 106) / 213)
exe 'vert 2resize ' . ((&columns * 106 + 106) / 213)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
