local shell = require("shell")
local args = shell.parse(...)

print("install: ")
io.write(args[1])