return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<leader>fw"] = { function() require("telescope").extensions.live_grep_args.live_grep_args() end },
          -- ["<S-l>"] = { function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end },
          -- ["<S-h>"] = { function() require("astrocore.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end },
          ["<leader>x"] = { function() require("astrocore.buffer").close() end },
          ["<leader>aa"] = { function() require("harpoon.mark").add_file() end },
          ["<leader>am"] = { function() require("harpoon.ui").toggle_quick_menu() end },
          ["<leader>1"] = function() require("harpoon.ui").nav_file(1) end,
          ["<leader>2"] = function() require("harpoon.ui").nav_file(2) end,
          ["<leader>3"] = function() require("harpoon.ui").nav_file(3) end,
          ["<leader>4"] = function() require("harpoon.ui").nav_file(4) end,
          ["K"] = "<cmd>Lspsaga hover_doc<CR>",
          ["gd"] = "<cmd>Lspsaga goto_definition<CR>",
          ["gD"] = "<cmd>Lspsaga peek_definition<CR>",
          ["gi"] = "<cmd>Lspsaga finder<CR>",

          ["<leader>r"] = "<cmd>Lspsaga rename<CR>",
          ["<leader>gn"] = "<cmd>Lspsaga diagnostic_jump_next<CR>",
          ["<leader><S-k>"] = "<cmd>Lspsaga show_cursor_diagnostics<CR>",
          ["<C-j>"] = "<down>",
          ["<C-k>"] = "<up>",
          ["<leader>c"] = "",
          ["-"] = function() require("oil").open() end,
        },
        v = {
          ["J"] = { ":m '>+1<CR>gv=gv" },
          ["K"] = { ":m '<-2<CR>gv=gv" },
          ["D"] = { "_D" },
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
      },
    },
  },
}
