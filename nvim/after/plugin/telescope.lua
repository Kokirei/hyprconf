local builtin = require('telescope.builtin')
local telescope = require('telescope')
telescope.setup {
	pickers = {
		find_files = {
			hidden = true
		}
	}
}

vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope git files' })
vim.keymap.set('n', '<leader>ps', function()
	bulitin.grep_string({ search = vim.fn.input("Grep > ") })
end)
