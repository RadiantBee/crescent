local Overlay = require("src/ui/overlay")
local uiElement = require("src/ui/uiElement")
local Label = require("src/ui/label")
local game = Overlay:new(0, 0, 800, 600)

local lab = game:addObj(Label:new("hello", 100, 100))
local loadtest = game:addObj(uiElement:new())

loadtest.load = function(self)
	print("load invoked")
end

return game
