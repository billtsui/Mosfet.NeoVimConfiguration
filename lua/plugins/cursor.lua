return {
  "sphamba/smear-cursor.nvim",
  opts = {
    enabled = function()
      return vim.uv.os_uname().sysname == "Darwin"
    end,
    -- 启用粒子效果
    particles_enabled = true,
    particle_max_num = 200,
    particle_spread = 0.5,
    never_draw_over_target = true,
    -- 粒子数量
    particles_per_second = 200,
    -- 尾迹回弹阻尼（数字越小越Q弹）
    damping = 0.85,
    -- 粒子扩散速度
    particle_max_initial_velocity = 15,
  },
}
