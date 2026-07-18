-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")


-- 自动同步 Neovim 背景色到 Kitty
vim.api.nvim_create_autocmd({ "UIEnter", "ColorScheme" }, {
  callback = function()
    local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
    if not normal.bg then
      return
    end
    -- 将颜色转换为十六进制格式并发送给终端
    local hex = string.format("#%06x", normal.bg)
    io.write(string.format("\27]11;%s\27\\", hex))
  end,
})
