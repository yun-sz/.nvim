return {
  'vyfor/cord.nvim',
  enabled = vim.loop.os_uname().sysname == "Windows_NT",
  build = './build || .\\build',
  event = 'VeryLazy',
  opts = {},
}
