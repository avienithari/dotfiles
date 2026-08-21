return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("Comment").setup({
      ignore = "^%s*$",
      mappings = {
        basic = false,
        extra = false,
      },
    })

    local api = require("Comment.api")
    local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
    local keymap = vim.keymap.set

    keymap("n", "gc", api.call("toggle.linewise", "g@"), { expr = true })
    keymap("n", "gb", api.call("toggle.blockwise", "g@"), { expr = true })

    keymap("x", "gc", function()
      vim.api.nvim_feedkeys(esc, "nx", false)
      api.locked("toggle.linewise")(vim.fn.visualmode())
    end)

    keymap("x", "gb", function()
      vim.api.nvim_feedkeys(esc, "nx", false)
      api.locked("toggle.blockwise")(vim.fn.visualmode())
    end)
  end,
}
