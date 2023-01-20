source $HOME/.config/better-vim/modules/rescript.vim

lua << EOF
require("nvim-web-devicons").set_icon ({
  res = {
    icon = "ﬦ",
    color = "#e6484f",
    name = "ReScript"
  },

  ["stories.tsx"] = {
    icon = "",
    color = "#ff0083",
    name = "Stories"
  }
})
EOF

let g:rustfmt_autosave = 1

nnoremap <S-A-j> :m .+1<CR>==
nnoremap <S-A-k> :m .-2<CR>==
inoremap <S-A-j> <Esc>:m .+1<CR>==gi
inoremap <S-A-k> <Esc>:m .-2<CR>==gi
vnoremap <S-A-j> :m '>+1<CR>gv=gv
vnoremap <S-A-k> :m '<-2<CR>gv=gv

command! -nargs=0 Format :call CocActionAsync('format')

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

iabbrev lenght length
iabbrev widht width
iabbrev heigth height
