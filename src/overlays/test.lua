local Overlay = require("src/ui/overlay")
local Button = require("src/ui/button")
local ProgressBar = require("src/ui/progressBar")
local Entry = require("src/ui/entry")
local Slider = require("src/ui/slider")
local Label = require("src/ui/label")
-- As objects are created, they are added to the array and processed from the END
local ov = Overlay:new(0, 0, 800, 600)
-- Layer 1
local testButton = ov:addObj(Button:new(100, 100, 100, 50, "click"))
local textTest = ov:addObj(Label:new("", 100, 50))
-- Layer 2
local popUp = ov:addObj(Overlay:new(150, 90, 200, 200))
popUp:configureHeader("popUp")

local popEntry = popUp:addObj(Entry:new(15, 40, 50, 20))

local popProgressBar = popUp:addObj(ProgressBar:new(15, 15, 100, 20, 5))
popProgressBar.showText = true

local testSlider = popUp:addObj(Slider:new(15, 70, 100, 20, 100))
testSlider.showText = true

local tst = 0

popEntry.onKeyPress = function(self)
	popProgressBar:setValue(self.text:len())
end

testButton.func = function()
	tst = tst + 1
	print("yay")
end

textTest.updateText = function(self)
	self.text = tst
end

return ov
