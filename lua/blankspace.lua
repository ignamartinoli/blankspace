local Config = require 'blankspace.config'
local Utils = require 'blankspace.utils'

-- Utils.map('n', '<F2>', [[:<C-U> setlocal listchars=tab:→\ ,space:·,trail:•,nbsp:␣,eol:¶ list! list?<CR>]], { silent = true })

local M = {}

M.config = Config.get_default_config()

function M.setup(config_handler)
	M.config = Config.make_user_config(config_handler)
end

function M.ToggleBlankspace()
	Utils.loc.listchars = {
		tab = '→ ',
		space = '·',
		trail = '•',
		nbsp = '␣',
		eol = '¶'
	}

	Utils.loc.list = true
end

return M
