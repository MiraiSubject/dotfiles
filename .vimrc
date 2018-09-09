set guifont=Meslos\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set mouse=a

set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim

if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
      set guifont=Meslos\ for\ Powerline:h15
   endif
endif
