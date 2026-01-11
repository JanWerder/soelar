stars = {}

for i = 1, 0x400 do
	stars[i] = {}

	stars[i].x, stars[i].y, stars[i].n =
		math.random(0, love.graphics.getWidth()),
		math.random(0, love.graphics.getHeight()),
		math.random(0, 0xff)
end

function stars:update()
	for k, _ in ipairs(self) do
		local m = math.random(-0x08, 0x08)

		self[k].n = self[k].n + m

		if self[k].n < 0x10 then
			self[k].n = 0x10
		elseif self[k].n > 0xff then
			self[k].n = 0xff
		end
	end
end

function stars:draw()
	for k, _ in ipairs(self) do
		local c = self[k].n
		love.graphics.setColor(0xff, 0xff, 0xff, c)
		love.graphics.points(self[k].x, self[k].y)
	end
end
