local component = require("component")
local event = require("event")
local gpu = component.gpu
require("tty").clear()
while true do
    local a, b, x, y = event.pull("touch")
    gpu.set(x, y,"X")
end