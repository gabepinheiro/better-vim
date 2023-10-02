local generated_plugins_list = {
  { "rescript-lang/vim-rescript" },
  { "nkrkv/nvim-treesitter-rescript" },
  { "rust-lang/rust.vim" },
  { "pantharshit00/vim-prisma" },
  { "styled-components/vim-styled-components", branch = "main" },
  { "voldikss/vim-floaterm" },
  {
    'norcalli/nvim-colorizer.lua',
    opts = {}
  },
}

return {
  treesitter = { "javascript", "typescript", "lua", "rust", "rescript", "go" },
  lsps = {
    rust_analyzer = {},
    rescriptls = {},
    tailwindcss = {},
    gopls = {},
    astro = {},
    prismals = {}
  },

  plugins = generated_plugins_list,

  -- unload_plugins = { "noice", "snippets" },

  theme = {
    name = "catppuccin",
    catppuccin_flavour = "frappe"
  },

  mappings = {
    leader = " ",
    custom = {
      ["<leader>t"] = { "<cmd>FloatermNew --width=0.8 --height=0.8<cr>", "Open terminal" },
      ["<c-b>"] = { "<cmd>NvimTreeToggle<cr>", "Open file explorer" },
      ["<c-.>"] = { "<cmd>Toggle Git Ignore <cr>", "Open file explorer" },

      ["<c-\\>"] = { "<cmd>FloatermToggle!<cr>", "Toggle Terminal", mode = { "t", "n" } },
    }
  },

  flags = {
    -- disable_tabs = true,
    format_on_save = true,
  },

  sections = {
    a = { "mode" },
    b = { "branch" },
    c = { "filename" },
    x = { "encoding", "fileformat", "filetype" },
    z = { "location" },
    y = { "progress" },
  },

  hooks = {
    before_setup = function()
      vim.opt.termguicolors = true
    end,

    after_setup = function()
      vim.g.floaterm_title = ""
      vim.cmd "set number"
      vim.cmd "set clipboard=unnamedplus"
    end,
  },
}
