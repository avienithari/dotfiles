vim.opt_local.wrap = true

local ok, colorizer = pcall(require, "colorizer")
if ok then
  colorizer.attach_to_buffer(0)
end
