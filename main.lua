function love.load()
	require "stars"
	require "comets"
end

function love.update(dt)
	stars:update()
	if comet.e then comet:update(dt) end
end

function love.draw()
	stars:draw()
	if comet.e then comet:draw() end
end

function love.keypressed(key)
	if key == "escape"
	or key == "return" then
	
		love.event.push("quit")
	end
	
	if key == "tab"	or key == "c" then
	
		comet:new()
	end
end
