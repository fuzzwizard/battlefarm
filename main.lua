local v2    = require "lib.hump.vector"
local tiny  = require "lib.tiny"

local ControlSystem = tiny.processingSystem()

ControlSystem.filter = tiny.requireAll("velocity", "point", "move")

function ControlSystem:process(e, dt)
    e:move(v(1, 1))
end

function love.load()
    -- Loadtime callback
end

function love.update(dt)
    -- livereload
    love.filesystem.load("main.lua")()
end

function love.draw()
    -- Render loop callback
end

function love.quit()
    -- Quittime callback
end
