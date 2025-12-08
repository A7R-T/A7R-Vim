vim.opt.termguicolors = true
require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.autocmds")
vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
vim.cmd("highlight NormalNC guibg=NONE ctermbg=NONE")
vim.cmd("highlight SignColumn guibg=NONE ctermbg=NONE")
vim.cmd("highlight LineNr guibg=NONE ctermbg=NONE")
vim.cmd("highlight CursorLineNr guibg=NONE ctermbg=NONE")
vim.cmd("highlight EndOfBuffer guibg=NONE ctermbg=NONE")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    require("config.colors")
  end
})

