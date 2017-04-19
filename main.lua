local tiny = require "lib.tiny"

local World = tiny.world()

local ControlSystem = tiny.processingSystem()

ControlSystem.filter = tiny.requireAll(
    "point",
    "velocity",
    "playerControlable"
)

function ControlSystem:process(e, dt)

end

function love.load()
    -- Loadtime callback
end

function love.update(dt)
    World:update(dt)
end

function love.draw()
    -- Render loop callback
end

function love.quit()
    -- Quittime callback
end
