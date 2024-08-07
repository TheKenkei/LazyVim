local map = vim.keymap.set

map("n", "<c-l>", "<cmd>:TmuxNavigateRight<cr>", { desc = "Tmux Right" })
map("n", "<c-h>", "<cmd>:TmuxNavigateLeft<cr>", { desc = "Tmux Left" })
map("n", "<c-k>", "<cmd>:TmuxNavigateUp<cr>", { desc = "Tmux Up" })
map("n", "<c-j>", "<cmd>:TmuxNavigateDown<cr>", { desc = "Tmux Down" })

map("n", "<S-Tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
map("n", "<leader>gg", function()
  LazyVim.lazygit({ cwd = LazyVim.root.git() })
end, { desc = "Lazygit (Root Dir)" })

local lazyterm = function()
  LazyVim.terminal(nil, { cwd = LazyVim.root() })
end
map("t", "<A-i>", "<C-D>", { desc = "Terminal (cwd)" })

map("n", "<A-i>", lazyterm, { desc = "Terminal (Root Dir)" })
map("n", "<A-I>", function()
  LazyVim.terminal()
end, { desc = "Terminal (cwd)" })

map("n", "<C-a>", "ggVG", { desc = "Terminal (Root Dir)" })
map("n", "<leader>dd", LazyVim.ui.bufremove, { desc = "Delete Buffer" })

map("i", "<C-s>", "<cmd>:w<cr><ESC>", { desc = "Save" })

map("i", "<C-h>", "<Left>", { desc = "Left" })
map("i", "<C-l>", "<Right>", { desc = "Right" })
map("i", "<C-k>", "<Up>", { desc = "Up" })
map("i", "<C-j>", "<Down>", { desc = "Down" })

map("i", "<CA-h>", "<C-Left>", { desc = "Left" })
map("i", "<CA-l>", "<C-Right>", { desc = "Right" })
map("i", "<CA-k>", "<{>", { desc = "Up" })
map("i", "<CA-j>", "<}>", { desc = "Down" })

map("i", "<C-e>", "<S-End>", { desc = "End" })
map("i", "<C-b>", "<S-Home>", { desc = "Begin" })
