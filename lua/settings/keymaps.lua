function keymap(mode, lhs, rhs, opts)
  return vim.api.nvim_set_keymap(mode, lhs, rhs, vim.tbl_extend('keep', opts or {}, {
    nowait = true,
    silent = true,
    noremap = true,
  }))
end

keymap('', '<Space>', '<Nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- TODO: move 'doc' to github wiki

-----------------------
-- Windows & buffers --
-----------------------

keymap('n', '<C-h>', '<C-w>h') -- Left slit
keymap('n', '<C-j>', '<C-w>j') -- Top slit
keymap('n', '<C-k>', '<C-w>k') -- Bot slit
keymap('n', '<C-l>', '<C-w>l') -- Right Slit

keymap('n', '<C-Up>', ':resize -2<CR>')             -- Top resize
keymap('n', '<C-Down>', ':resize +2<CR>')           -- Bottom resize
keymap('n', '<C-Right>', ':vertical resize -2<CR>') -- Right resize
keymap('n', '<C-Left>', ':vertical resize +2<CR>')  -- Left resize

keymap('n', '<S-l>', ':bnext<CR>')     -- Next buffer
keymap('n', '<S-h>', ':bprevious<CR>') -- Previous buffer
keymap('n', '<C-w>', ':Bdelete<CR>')   -- Close buffer

-- Close all buffer except the focused one
keymap('n', '<Leader>bac', ':silent w <BAR> :silent %bd <BAR> e#<CR>')

keymap('n', '<C-b>', ':NvimTreeToggle<cr>') -- Open explorer tree

keymap("n", "<C-p>", "<cmd>Telescope find_files<cr>")     -- Find specific files
keymap("n", "<leader>p", "<cmd>Telescope live_grep<cr>")  -- Find specific text
keymap("n", "<leader>tp", "<cmd>Telescope projects<cr>")  -- List of projects

keymap("n", "<leader>f", ":lua vim.lsp.buf.formatting()<cr>") -- Format document (null-ls)
keymap("n", "<leader>lg", ":lua _LAZYGIT_TOGGLE()<cr>")       -- Open lazygit window

------------
-- Editor --
------------

keymap('i', 'jk', '<ESC>') -- Escape i mode
keymap('i', 'kj', '<ESC>') -- Escape i mode

keymap('i', '<C-s>', '<C-o>:w<CR>') -- Save
keymap('n', '<C-s>', ':w<CR>')      -- Save
keymap('n', '<C-q>', ':wq!<CR>')    -- Save and exit

keymap('n', 'n', 'nzzzv') -- Better movement for next command
keymap('n', 'N', 'Nzzzv') -- Better movement for next command

keymap('i', ',', ',<C-g>u') -- Undo break points
keymap('i', '.', '.<C-g>u') -- Undo break points
keymap('i', '!', '!<C-g>u') -- Undo break points
keymap('i', '?', '?<C-g>u') -- Undo break points

keymap('v', '<C-c>', '"+y')      -- Copy
keymap('n', 'Y', 'y$')           -- Copy line from cursor
keymap('i', '<C-v>', '<Esc>"+p') -- Paste
keymap('n', '<C-v>', '"+p')      -- Paste
keymap("v", "<C-v>", '"_dP')     -- Paste

keymap("n", "<leader>j", ":m .+1<CR>==")  -- Move line once in n mode (bottom)
keymap("n", "<leader>k", ":m .-2<CR>==")  -- Move line once in n mode (top)
keymap("i", "<C-j>", "<Esc>:m .+1<CR>==") -- Move line in n mode (bottom)
keymap("i", "<C-k>", "<Esc>:m .-2<CR>==") -- Move line in n mode (top)
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv")  -- Move line (bottom)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv")  -- Move line (top)

keymap('v', '<', '<gv') -- Better indentation with tab
keymap('v', '>', '>gv') -- Better indentation with tab (reverse)

keymap('x', 'd', '"_d') -- Delete a line in v mode