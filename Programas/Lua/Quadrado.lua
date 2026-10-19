function love.load()
  x = 100
  y = 100
  velo = 200
end

function love.update(dt)
  if love.keyboard.isDown("d","right") then
    x = x + velo * dt
  end
  if love.keyboard.isDown("a","left") then
    x = x - velo * dt
  end
  if love.keyboard.isDown("s","down") then
    y = y + velo * dt
  end
  if love.keyboard.isDown("w","up") then
    y = y - velo * dt
  end
end

function love.draw()
  love.graphics.rectangle("fill",x,y,50,50)
end
