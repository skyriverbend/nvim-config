return {
  {
    "nvimdev/lspsaga.nvim",
    branch = "main",
    config = function()
      require("lspsaga").setup {
        finder = {
          keys = {
            toggle_or_open = "<enter>",
          },
        },
        ui = {
          code_action = "",
          enable = false,
          lines = { "┗", "┣", "┃", "", "┏" },
          expand = "",
          collapse = "",
        },
      }
    end,
    requires = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
    event = "User AstroFile",
  },
  {
    "theprimeagen/harpoon",
    opts = {},
    event = "VeryLazy",
  },
  {
    "stevearc/oil.nvim",
    event = "VeryLazy",
    enabled = true,
    cmd = "Oil",
    config = function()
      require("oil").setup {
        default_file_explorer = false,
        buf_options = {
          buflisted = true,
          bufhidden = "delete",
        },
        skip_confirm_for_simple_edits = true,
        view_options = {
          show_hidden = true,
        },
      }
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-telescope/telescope-live-grep-args.nvim" },
    opts = function() require("telescope").load_extension "live_grep_args" end,
  },
  {
    "ruifm/gitlinker.nvim",
    event = "VeryLazy",
    requires = {
      { "nvim-lua/plenary.nvim" },
    },
    config = function()
      require("gitlinker").setup {
        opts = {
          -- remote = 'github', -- force the use of a specific remote
          -- adds current line nr in the url for normal mode
          add_current_line_on_normal_mode = true,
          -- callback for what to do with the url
          action_callback = require("gitlinker.actions").copy_to_clipboard,
          -- print the url after performing the action
          print_url = true,
          -- mapping to call url generation
        },
        mappings = "<leader>gy",
        callbacks = {
          ["github.com"] = require("gitlinker.hosts").get_github_type_url,
          ["gitlab.com"] = require("gitlinker.hosts").get_gitlab_type_url,
        },
      }
    end,
  },
  {
    "zeioth/garbage-day.nvim",
    dependencies = "neovim/nvim-lspconfig",
    event = "VeryLazy",
  },
  {
    "mg979/vim-visual-multi",
    branch = "master",
    event = "VeryLazy",
  },
  {
    "kylechui/nvim-surround",
    opts = {},
    event = { "BufReadPre", "BufNewFile" },
  },
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup {
        keymaps = {
          accept_suggestion = "<C-a>",
          clear_suggestion = "<C-s>",
        },
      }
    end,
  },
}
