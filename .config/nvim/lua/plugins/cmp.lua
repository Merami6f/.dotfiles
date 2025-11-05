return {
  "hrsh7th/nvim-cmp",
  -- load cmp on InsertEnter
  event = { "InsertEnter", "CmdlineEnter" },
  -- these dependencies will only be loaded when cmp loads
  -- dependencies are always lazy-loaded unless specified otherwise
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline'
  },
  config = function()
    local has_words_before = function()
      unpack = unpack or table.unpack
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
    end

    local cmp = require('cmp')

    cmp.setup({
      mapping = {

        -- ... Your other configuration ...

        ['<C-Space>'] = cmp.mapping.confirm {
          behavior = cmp.ConfirmBehavior.Insert,
          select = true,
        },

        ['<Tab>'] = function(fallback)
          if not cmp.select_next_item() then
            if vim.bo.buftype ~= 'prompt' and has_words_before() then
              cmp.complete()
            else
              fallback()
            end
          end
        end,

        ['<S-Tab>'] = function(fallback)
          if not cmp.select_prev_item() then
            if vim.bo.buftype ~= 'prompt' and has_words_before() then
              cmp.complete()
            else
              fallback()
            end
          end
        end,
      },
      window = {
        documentation = cmp.config.window.bordered(),
        completion = cmp.config.window.bordered()
      },
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'path' },
        { name = 'buffer' },
        { name = 'cmdline' }
      })

    })
  end,
}
