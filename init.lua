require("zuzu.plugins-setup")
require("zuzu.core.options")
require("zuzu.core.keymaps")
require("zuzu.core.colorscheme")
require("zuzu.plugins.comment")
require("zuzu.plugins.nvim-tree")
require("zuzu.plugins.lualine")
require("zuzu.plugins.telescope")
require("zuzu.plugins.nvim-cmp")
require("zuzu.plugins.lsp.mason")
require("zuzu.plugins.lsp.lspsaga")
require("zuzu.plugins.lsp.lspconfig")
require("zuzu.plugins.autopairs")
require("zuzu.plugins.treesitter")
require("zuzu.plugins.gitsigns")
require("zuzu.plugins.barber")

require("code_runner").setup({
	-- put here the commands by filetype
	filetype = {
		java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
		python = "python3",
		typescript = "deno run",
		rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
		cpp = "cd $dir && g++ $fileName -Wall -Weffc++ -Wextra -Wsign-conversion -ggdb -std=c++20 -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
		-- cpp = "cd $dir && g++ $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
	},
})

vim.keymap.set("n", "<leader>r", ":RunCode<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>rft", ":RunFile tab<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>rp", ":RunProject<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>c", ":RunClose<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>crf", ":CRFiletype<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>crp", ":CRProjects<CR>", { noremap = true, silent = false })
