
--Initialisation
local allpoint = {}
local control = 1

--Create point
function point()
  local point = {}
  point.x = love.math.random(0,love.graphics.getWidth())
  point.y = love.math.random(0,love.graphics.getHeight())
  point.alpha = love.math.random(0.3,0.8)
  point.rayon = 2
  point.color = {love.math.random(0.1,1),love.math.random(0.1,1),love.math.random(0.1,1)}
  table.insert(allpoint,point)
  
end



function love.load()
  love.window.setTitle("Systeme of life")

--Generate life'system
for i=1,love.math.random(5000,7000) do
  
  point()
  
end


end

function love.update(dt)
  
  

--Control rayon circle
control= control + 0.1

if control > 2 then
  control = 1
end


end

function love.draw()
  
  --Show System
love.graphics.print("IT'S OVER",100,100)
for tv,point in ipairs(allpoint) do
  point.rayon = control
  point.x = point.x + love.math.random(-6,6)
  
  
  love.graphics.setColor(point.color,point.alpha)
  love.graphics.circle("fill",point.x,point.y,point.rayon)
  love.graphics.reset()
  
end
  
  
end
