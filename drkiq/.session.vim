let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/src/ruby-dockerize/drkiq
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +38 config/database.yml
badd +11 config/secrets.yml
badd +1 config/application.rb
badd +1 config/unicorn.rb
badd +1 config/initializers/sidekiq.rb
badd +1 config/environment/development.rb
badd +1 ~/src/ruby-dockerize/env-example
badd +1 config/environments/development.rb
badd +2 config/routes.rb
badd +3 app/jobs/counter_job.rb
badd +0 app/controllers/pages_controller.rb
badd +0 app/views/pages/home.html.erb
argglobal
%argdel
$argadd config/database.yml
set stal=2
edit config/application.rb
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 19 - ((18 * winheight(0) + 50) / 101)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 0
tabedit ~/src/ruby-dockerize/env-example
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 43 - ((42 * winheight(0) + 50) / 101)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
43
normal! 0
tabedit config/unicorn.rb
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 50) / 101)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit config/initializers/sidekiq.rb
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 9 - ((8 * winheight(0) + 50) / 101)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 03|
tabedit config/environments/development.rb
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 56 - ((43 * winheight(0) + 50) / 101)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
56
normal! 02|
tabedit app/jobs/counter_job.rb
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 50) / 101)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 04|
tabedit app/controllers/pages_controller.rb
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 10 - ((9 * winheight(0) + 50) / 101)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 03|
tabedit app/views/pages/home.html.erb
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 50) / 101)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 055|
tabnext 8
set stal=1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOF
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
