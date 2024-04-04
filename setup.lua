local component = require("component")
local gpu = component.gpu
local shell = require("shell")
local event = require("event")
local args = shell.parse(...)
if #args == 0 then
    print("Use: ")
    print("setup [method] [selector]")
    print("method: ")
    print("install")
    print("uninstall")
    print("list")
end
