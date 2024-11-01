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
badd +87 exercises/07_structs/structs3.rs
badd +8 exercises/12_options/options1.rs
badd +3 exercises/09_strings/strings1.rs
badd +37 exercises/11_hashmaps/hashmaps3.rs
badd +8 exercises/10_modules/modules2.rs
badd +39 exercises/11_hashmaps/hashmaps2.rs
badd +8 exercises/10_modules/modules1.rs
badd +26 exercises/quizzes/quiz2.rs
badd +8 exercises/08_enums/enums1.rs
badd +61 exercises/08_enums/enums3.rs
badd +12 exercises/08_enums/enums2.rs
badd +19 exercises/11_hashmaps/hashmaps1.rs
badd +9 exercises/09_strings/strings2.rs
badd +13 exercises/09_strings/strings3.rs
badd +21 exercises/09_strings/strings4.rs
badd +6 exercises/10_modules/modules3.rs
badd +0 term://~/projects/personal/rustlings//30365:zsh
badd +4 solutions/quizzes/quiz1.rs
badd +37 solutions/quizzes/quiz2.rs
argglobal
%argdel
$argadd ~/projects/personal/rustlings
edit exercises/12_options/options1.rs
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
exe 'vert 1resize ' . ((&columns * 93 + 93) / 187)
exe 'vert 2resize ' . ((&columns * 93 + 93) / 187)
argglobal
balt exercises/quizzes/quiz2.rs
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
let s:l = 29 - ((28 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 29
normal! 028|
lcd ~/projects/personal/rustlings
wincmd w
argglobal
if bufexists(fnamemodify("term://~/projects/personal/rustlings//30365:zsh", ":p")) | buffer term://~/projects/personal/rustlings//30365:zsh | else | edit term://~/projects/personal/rustlings//30365:zsh | endif
if &buftype ==# 'terminal'
  silent file term://~/projects/personal/rustlings//30365:zsh
endif
balt ~/projects/personal/rustlings/exercises/07_structs/structs3.rs
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 563 - ((19 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 563
normal! 0
lcd ~/projects/personal/rustlings
wincmd w
exe 'vert 1resize ' . ((&columns * 93 + 93) / 187)
exe 'vert 2resize ' . ((&columns * 93 + 93) / 187)
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
