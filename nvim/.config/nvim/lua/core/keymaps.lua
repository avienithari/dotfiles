vim.g.mapleader = " "

local keymap = vim.keymap.set

keymap("n", "x", '"_x')
keymap("x", "<leader>p", '"_dP')

keymap("c", "W", "w<CR>")

keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")

keymap("v", "K", ":m '<-2<CR>gv=gv")
keymap("v", "J", ":m '>+1<CR>gv=gv")

keymap("n", "<leader>to", ":tabnew<CR>")
keymap("n", "<leader>tx", ":tabclose<CR>")
keymap("n", "<left>", "gT")
keymap("n", "<right>", "gt")

keymap("n", "<leader>R", "<cmd>restart<CR>")

keymap("n", "<leader>d", "<cmd>diffthis<CR>")
keymap("n", "<leader>D", "<cmd>diffoff!<CR>")

keymap("n", "<leader>X", "<cmd>!chmod +x %<CR>", { silent = true })
keymap("n", "<leader><leader>x", "<cmd>source %<CR>")

keymap("n", "<CR>", function()
  if vim.opt.hlsearch:get() then
    vim.cmd.nohlsearch()
  else
    return "<CR>"
  end
end)

keymap("n", "<leader>T", function()
  vim.cmd.new()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 12)
  vim.wo.winfixheight = true
  vim.cmd.term()
end)

keymap("t", "<esc><esc>", "<c-\\><c-n>")

keymap("n", "<leader>L", "<cmd>Lazy<CR>", { noremap = true, silent = true })
keymap("n", "<leader>G", "<cmd>Git<CR>", { noremap = true, silent = true })
keymap("n", "<leader>U", ":UndotreeToggle<CR>")
keymap("n", "<leader>n", ":ScribeToggle<CR>", { silent = true })
keymap("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
keymap("n", "<leader>sm", ":MaximizerToggle<CR>")
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
keymap("v", "<leader>a", ":ScribeRange<CR>")
keymap("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { silent = true })
keymap("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", { silent = true })
keymap("n", "<leader>p", ":NoNeckPain<CR>", { silent = true })
keymap("n", "<C-f>", "<cmd>silent !tmux display-popup -E sessionizer<CR>")

local disable_map = "<Nop>"

keymap("n", "grn", disable_map)
keymap("n", "grr", disable_map)
keymap({ "n", "v" }, "gra", disable_map)
keymap("n", "<C-w>d", disable_map)
keymap("i", "<C-s>", disable_map)
keymap("n", "gri", disable_map)
keymap("n", "grt", disable_map)
keymap("n", "grx", disable_map)
