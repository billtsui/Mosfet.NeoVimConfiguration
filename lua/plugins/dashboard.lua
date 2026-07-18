return {
  "folke/snacks.nvim",
  opts = {
    explorer = {
      -- your explorer configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    picker = {
      sources = {
        explorer = {
          -- your explorer picker configuration comes here
          -- or leave it empty to use the default settings
          layout = { layout = { width = 0.18 } },
        },
      },
    },
    dashboard = {
      preset = {
        pick = nil,
        header = [[
███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
      },
      sections = {
        { section = "header" },
        {
          pane = 2,
          section = "terminal",
          cmd = "/usr/local/bin/colorscript -e square",
          height = 5,
          padding = 3,
        },
        { section = "keys", gap = 1, padding = 1 },
        { pane = 2, icon = "", title = "Recent Files", section = "recent_files", indent = 4, padding = 2 },
        { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 4, padding = 2 },
        {
          pane = 2,
          icon = "",
          title = "Git Status",
          section = "terminal",
          enabled = function()
            return Snacks.git.get_root() ~= nil
          end,
          cmd = 'git status --short --branch\n\n git --no-pager log --pretty=format:"%h-%an, %ar| %s"',
          height = 4,
          padding = 3,
          ttl = 5 * 60,
          indent = 4,
        },
        { section = "startup" },
      },
    },
  },
}
