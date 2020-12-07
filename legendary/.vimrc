set nocompatible
filetype off
set encoding=utf-8
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'ycm-core/YouCompleteMe'

Plugin 'rdnetto/ycm-generator'


call vundle#end()
filetype plugin indent on

source /usr/share/myvimconfig/global.vim

let g:ycm_path_to_python_interpreter = '/usr/bin/python3'
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '~/.vim/myconfig/.ycm_extra_conf.py'
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'critical'

"let g:ycm_global_ycm_extra_conf = '~/.ycm_c-c++_conf.py'
"let g:ycm_key_list_select_completion = ['<C-j>']
"let g:ycm_key_list_previos_completion = ['<C-k>']

"let g:UltiSnipsExpandTrigger = "<C-l>"
"let g:UltiSnipsJumpForwardTrigger = "<C-j>"
"let g:UltiSnipsJumpBackwardTrigger = "<C-k>"
"

"set complete+=.,w,b,u,t,i
"set complete+=kspell




