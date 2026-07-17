return {
  {
    "kdheepak/lazygit.nvim",
    config = function()
      -- 核心设置 1：禁用 LazyVim 自带的浮动窗微调，强制它听从系统的默认渲染
      vim.g.lazygit_floating_window_use_plenary = 0

      -- 核心设置 2：强制边框透明度为 0（完全不透明），防止重叠变淡
      vim.g.lazygit_floating_window_winblend = 0

      -- 核心设置 3：如果它非要用 Nvim 的浮动窗边框，我们就把浮动窗边框的颜色强行调亮！
      -- 将未激活的边框（FloatBorder）和激活的边框调成高对比度颜色（比如亮白或青色）
      vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#ffffff", bg = "NONE" })
      vim.api.nvim_set_hl(0, "LazyGitBorder", { fg = "#00ffff", bg = "NONE" })
    end,
  },
}
