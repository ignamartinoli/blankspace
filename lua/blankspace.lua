local map = vim.keymap.set

local M = {}

function M.blankspace()
	map('n', '<F2>', [[:<C-U> setlocal listchars=tab:→\ ,space:·,trail:•,nbsp:␣,eol:¶ list! list?<CR>]], { silent = true })
end

return M
