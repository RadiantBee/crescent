local ui = {}

ui.elementsPath = "core/ui"
ui.filePattern = "(%a+)(%.lua)"

ui.elements = {}

ui.init = function() end

ui.loadElements = function(self)
	local files = love.filesystem.getDirectoryItems(self.elementsPath)
	print("[~] Loading ui elements from " .. ui.elementsPath .. "...")
	local found = nil
	for _, file in ipairs(files) do
		found = string.match(file, self.filePattern)
		--table.insert(luaModules, found)
		if found then
			print("[*] ui.elements." .. found .. " found")
			self.elements[found] = require(self.elementsPath .. "/" .. found)
		end
	end
	print("[+] Loading finished!")
end

return ui
