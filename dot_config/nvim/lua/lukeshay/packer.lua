-- Bootstrapping
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP =
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
end

-- Only required if you have packer configured as `opt`
vim.api.nvim_command([[packadd packer.nvim]])

local PackerHooks = vim.api.nvim_create_augroup("PackerHooks", {})
vim.api.nvim_create_autocmd("User", {
	pattern = "PackerCompileDone",
	callback = function()
		vim.notify("Packer Compile is Done!", vim.log.levels.INFO, { title = "Packer" })
	end,
	group = PackerHooks,
})

local packer = require("packer")
local packer_util = require("packer.util")

packer.init({
	opt_default = false, -- Default to using opt (as opposed to start) plugins
	display = {
		open_fn = packer_util.float, -- An optional function to open a window for packer's display
		working_sym = "🛠", -- The symbol for a plugin being installed/updated
		error_sym = "🧨", -- The symbol for a plugin with an error in installation/updating
		done_sym = "🎉", -- The symbol for a plugin which has completed installation/updating
		removed_sym = "🔥", -- The symbol for an unused plugin which was removed
		moved_sym = "🚀", -- The symbol for a plugin which was moved (e.g. from opt to start)
		header_sym = "━", -- The symbol for the header line in packer's display
		show_all_info = true, -- Should packer show all update details automatically?
		prompt_border = "double", -- Border style of prompt popups.
	},
})

local use = packer.use
packer.reset()

packer.startup(function()
	-- packer itself
	use({ "wbthomason/packer.nvim" })

	-- speed uploading lua modules
	use({ "lewis6991/impatient.nvim" })

	use({ "wellle/context.vim" })

	use({ "sheerun/vim-polyglot" })

	if PACKER_BOOTSTRAP then
		packer.sync()
	end
end)
