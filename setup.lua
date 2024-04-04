local component = require("component")
local gpu = component.gpu
local shell = require("shell")
local event = require("event")
local args = shell.parse(...)
if #args > 1 then
    print("Use: setup (text)")
end
print(args[1])