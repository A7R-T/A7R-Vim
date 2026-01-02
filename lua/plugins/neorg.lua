return {
{
    "nvim-neorg/neorg",
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    config = function()
	    require('neorg').setup {
  load = {
    ["core.defaults"] = {}, -- Essential for defaults
    ["core.concealer"] = {},
    ["core.dirman"] = {     -- Manages workspaces
      config = {
        workspaces = {
          A7R = "~/A7R/A7R-SB", -- Workspace name = Path
          Dynamics = "~/A7R/A7R-SB/7-Dynamics",
        },
        index = "index.norg", -- Name of the root index file
      },
    },
    ["core.journal"] = {
            config = {
              workspace = "Dynamics",
              journal_folder = "7-trackers",
            },
          },
    -- Other modules like core.summary, core.concealer etc.
  },
}
	end
}
}
