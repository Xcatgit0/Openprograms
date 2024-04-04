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
if #args > 0 then
    if args[1] == "list" then
        action = shell.execute("cat /home/psetup/plist.txt")
    elseif args[1] == "install" then
        if args[2] == DrawX then
            action = shell.execute("cp /home/psetup/.asset/DrawX.lua /usr/bin/DrawX.lua")
        end
    end
end
