local component = require("component")
local gpu = component.gpu
local shell = require("shell")
local event = require("event")
local args = shell.parse(...)
local method = args[1]
local selector = args[2]
if #method == 0 then
    print("Use: ")
    print("setup [method] [selector]")
    print("method: ")
    print("install")
    print("uninstall")
    print("list")
end
if method > 0 then
    if method == "list" then
        action = shell.execute("cat /home/psetup/plist.txt")
    elseif method == "install" then
        if selector == DrawX then
            action = shell.execute("cp /home/psetup/.asset/DrawX.lua /usr/bin/DrawX.lua")
        end
    end
end
