-- place this in one of your configuration file(s)
local hop = require('hop')
local directions = require('hop.hint').HintDirection
vim.keymap.set('', '<leader><leader>w', function()
  hop.hint_words({ direction = nil, current_line_only = false })
end, {remap=true})
