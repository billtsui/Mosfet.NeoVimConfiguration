return {
  {
    "glepnir/template.nvim",
    --cmd = { "Template", "TemNew" },
    config = function()
      require("template").setup({
        -- 模板文件存放的目录
        temp_dir = vim.fn.stdpath("config") .. "/templates",
        -- 智能向导：新建文件时如果匹配到模板，自动提示应用
        author = "Bill.K.Tsui",
        email = "bill.k.tsui@gmail.com",
      })
    end,
  },
}
