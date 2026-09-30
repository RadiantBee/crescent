local Overlay = require("core/ui/overlay")
local main = Overlay:new(0, 0, 800, 600)

main.test = main:add(require("content/overlays/test"))
--main.menu = main:add(require("src/overlays/testMenu"))

--main.game = main:add(require("src/overlays/testGame"))
--main.game.isActive = false

return main
