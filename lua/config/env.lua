-- lua/config/env.lua
local M = {}

local function readfile(p)
  local f = io.open(p, "r")
  if not f then return "" end
  local s = f:read("*a") or ""
  f:close()
  return s
end

M.is_rhel8 = function()
  local rel = readfile("/etc/redhat-release")
  return rel:match("release%s+8%.") ~= nil
end

-- Permite forçar: NVIM_VDI=1 nvim
M.is_vdi = function()
  if vim.env.NVIM_VDI == "1" then return true end
  return M.is_rhel8()
end

return M
