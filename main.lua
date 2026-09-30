local ui = require("core/ui")

local main = nil

local mouseIdle = love.mouse.newCursor("assets/cursors/cursor.png", 2, 2)
local mouseActive = love.mouse.newCursor("assets/cursors/cursorClick.png", 2, 2)

local mouseX = 0
local mouseY = 0

function love.load()
	print("[*] Welcome to " .. love.window.getTitle() .. "!")
	print("[*] Powered by Crescent")
	print("[*] Client version: 0.0.1")
	print("[*] Made by MaxPan\n")

	ui:loadElements()
	main = require("content/overlays/main")

	love.mouse.setCursor(mouseIdle)
end

function love.mousepressed(x, y, button)
	love.mouse.setCursor(mouseActive)
	main:mousepressed(x, y, button)
end

function love.mousereleased(x, y, button)
	love.mouse.setCursor(mouseIdle)
	main:mousereleased(x, y, button)
end

function love.mousemoved(x, y, dx, dy)
	main:mousemoved(x, y, dx, dy)
end

function love.textinput(text)
	main:textinput(text)
end

function love.keypressed(key)
	main:keypressed(key)
end

function love.update(dt)
	mouseX = love.mouse.getX()
	mouseY = love.mouse.getY()
	main:update(dt, mouseX, mouseY)
end

function love.draw()
	main:draw(0, 0)
end
