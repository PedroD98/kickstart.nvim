-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '<leader>e', ':Neotree reveal<CR>', desc = 'Neotree reveal', silent = true },
    { '<leader>E', ':Neotree close<CR>',  desc = 'Neotree close',  silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['<leader>e'] = 'close_window',
          ['l'] = 'open',
          ['h'] = 'close_node',
        },
      },
      filtered_items = {
        visible = true,
      },
      follow_current_file = {
        enabled = true,
        update_root = true,
      },
    },
  },
}
