-- speed up loading Lua modules
if pcall(require, "impatient") then
	require("impatient").enable_profile()
else
	print("Failed to load impatient.")
end

require('lukeshay.utils')
require('lukeshay.general')
require('lukeshay.packer')

--[[
command! Wq wq
command! WQ wq
command! Qw wq
command! QW wq
command! W w
]]


