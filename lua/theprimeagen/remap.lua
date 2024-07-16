vim.g.autoformat = false
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<esc>")
-- In visual mode unselect the text by pressing
vim.keymap.set("v", "gg", "<esc>")

-- Binds <C-z> to undo the last change.
vim.keymap.set("i", "<C-z>", "<cmd>:u<CR>")


-- Moves selected block down in visual mode and re-selects it.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")


-- Moves selected block up in visual mode and re-selects it.
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Joins the next line to the current one while preserving the cursor position.
vim.keymap.set("n", "J", "mzJ`z")

-- Scrolls down half a page and centers the cursor.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- Scrolls up half a page and centers the cursor.
vim.keymap.set("n", "<C-u>", "<C-u>zz")


-- Searches for the next match and centers the cursor.
vim.keymap.set("n", "n", "nzzzv")

-- Searches for the previous match and centers the cursor.
vim.keymap.set("n", "N", "Nzzzv")

-- Binds <leader>zig to restart the LSP server.
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

-- Binds <leader>vwm to start a collaborative editing session.
vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)

-- Binds <leader>svwm to stop a collaborative editing session.
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- Pastes over selected text without overwriting the clipboard in visual mode.
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copies to system clipboard in normal and visual modes.
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- Copies the current line to system clipboard in normal mode.
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Deletes without affecting the clipboard in normal and visual modes.
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Disables the Q command in normal mode.
vim.keymap.set("n", "Q", "<nop>")

-- Opens a new tmux window with sessionizer.
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Formats the current buffer using LSP.
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Jumps to the next quickfix item and centers the cursor.
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")

-- Jumps to the previous quickfix item and centers the cursor.
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- Jumps to the next location list item and centers the cursor.
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")

-- Jumps to the previous location list item and centers the cursor.
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")


-- Binds <leader>s to substitute the word under the cursor in the entire file.
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Makes the current file executable.
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")


-- Sources the current file.
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Go to end of line
vim.keymap.set("n", "<leader>ee", "$")

-- Go to beginning of line
vim.keymap.set("n", "<leader>bb", "^")

-- To toggle splits horizontally
vim.keymap.set({"n", "v", "i"}, "<C-h>", "<cmd> :wincmd h<CR>")
vim.keymap.set({"n", "v", "i"}, "<C-l>", "<cmd> :wincmd l<CR>")
-- Toggle splits vertically
vim.keymap.set({"n", "v", "i"}, "<C-j>", "<cmd> :wincmd j<CR>")
vim.keymap.set({"n", "v", "i"}, "<C-k>", "<cmd> :wincmd k<CR>")

 -- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
--vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
--vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Disable arrows in normal mode, gotta save those wrists
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')


