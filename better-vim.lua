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
  -- {
  --   'projekt0n/github-nvim-theme',
  -- },
  {
    'jparise/vim-graphql',
  },
  {
    'github/copilot.vim'
  }
}

local function noice_dismiss()
  require("noice").cmd("dismiss")
end

return {
  treesitter = { "javascript", "typescript", "lua", "rust", "go" },
  lsps = {
    rust_analyzer = {},
    tailwindcss = {
      settings = {
        tailwindCSS = {
          experimental = {
            classRegex = {
              { "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
              { "cx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
              { "tw\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
            },
          },
        },
      },
    },
    gopls = {},
    astro = {},
    prismals = {},
    graphql = {},
    twiggy_language_server = {},
  },

  plugins = generated_plugins_list,

  -- unload_plugins = { "noice", "snippets" },

  theme = {
    -- catppuccin_flavour = "frappe"
  },

  mappings = {
    leader = " ",
    custom = {
      ["<leader>t"] = { "<cmd>FloatermNew --width=0.8 --height=0.8<cr>", "Open terminal" },
      ["<c-b>"] = { "<cmd>NvimTreeToggle<cr>", "Open file explorer" },
      ["<c-.>"] = { "<cmd>Toggle Git Ignore <cr>", "Open file explorer" },
      ["<c-\\>"] = { "<cmd>FloatermToggle!<cr>", "Toggle Terminal", mode = { "t", "n" } },
      ["<leader>d"] = { noice_dismiss, "Noice Dimiss" },
      ["<c-q>"] = { "<cmd>:qa<cr>", "Close all buffers" },
      ["<leader>e"] = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Show diagnostics", { noremap = true, silent = true } }
    },
    tabs = function(tab)
      return "<leader>h" .. tab
    end,
  },

  flags = {
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
      -- vim.cmd('colorscheme github_dark_tritanopia')
      -- vim.cmd("colorscheme poimandres")
      vim.g.floaterm_title = ""
      vim.cmd "set number"
      vim.cmd "set clipboard=unnamedplus"
      vim.cmd "au BufNewFile,BufRead *.ts setfiletype graphql"
    end,
  },
  dashboard = {
    header = {
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
    }
  }
}
