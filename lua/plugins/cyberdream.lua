return {
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      overrides = function()
        return {
          Comment = { fg = "#008000", bg = "NONE", italic = true },
          LineNr = { fg = "#808080" },
          CursorLineNr = { fg = "#FF9E3B", bold = true },
          SnacksPickerGitStatusAdded = { fg = "#E0E0E0", bold = true },
          SnacksPickerGitStatusUntracked = { fg = "#B5E1E6", italic = true },
          SnacksPickerGitStatusModified = { fg = "#FF9E3B", bold = true },
        }
      end,
    },
    config = function(_, opts)
      require("cyberdream").setup(opts)
      vim.cmd("colorscheme cyberdream")
    end,
  },
}
