return {
  theme = {
   name = "catppuccin",
   catppuccin_flavour = "mocha"
 },

 mappings = {
  leader = " ",
  custom = {
    ["<c-b>"] = {"<cmd>NvimTreeToggle<cr>", "Open file explorer"},
  }
 },

 lualine = {
   sections = { c = {'branch'} }
  }
}
