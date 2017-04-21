local v2    = require "lib.hump.vector"
local tiny  = require "lib.tiny"

local ControlSystem = tiny.processingSystem()

ControlSystem.filter = tiny.requireAll("velocity", "point")

function ControlSystem:process(e, dt)
    e:move(v(1, 1))
end

local World = tiny.world(ControlSystem)

local Player = {}

function Player:new(point, velocity)
    self.point = point
    self.velocity = velocity
end

function Player:move(v)
    self.point = self.point + v
end

World:add(Player)

function love.load()
    -- Loadtime callback
end

function love.update(dt)
    -- livereload
    love.filesystem.load("main.lua")()
    World:update(dt)
end

function love.draw()
    -- Render loop callback
end

function love.quit()
    -- Quittime callback
end
