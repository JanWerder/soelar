## Sölar

Updated version of Sölar.
Sölar is a fairly simple solar system simulator

Originally made by Ubermann, who gave credit to Saegor for the realtime stars algorithm.
The license is public domain (source: https://love2d.org/forums/viewtopic.php?f=14&t=11805&p=70865&hilit=s%C3%B6lar#p70790).

Example:

```
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
```