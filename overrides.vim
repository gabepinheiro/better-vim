let maplocalleader=";"

source $HOME/.config/better-vim/modules/rescript.vim

lua << EOF
require("nvim-web-devicons").set_icon ({
  res = {
    icon = "ﬦ",
    color = "#e6484f",
    name = "ReScript"
  },
  [".stories.tsx"] = {
    icon = "",
    color = "#e6484f",
    name = "Stories"
  }
})
EOF
