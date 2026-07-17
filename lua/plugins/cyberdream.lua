return {
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      overrides = function(colors)
        return {
          Comment = { fg = "#008000", bg = "NONE", italic = true },
          LineNr = { fg = "#808080" },
          CursorLineNr = { fg = colors.green, bold = true },
        }
      end,
    },
    config = function(_, opts)
      require("cyberdream").setup(opts)
      vim.cmd("colorscheme cyberdream")
    end,
  },
}
