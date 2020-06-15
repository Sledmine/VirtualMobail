local composer = require("composer")
local widget = require("widget")

local scene = composer.newScene()

function scene:create(event)
    local sceneGroup = self.view

    local background = display.newImageRect("img/background.png", display.actualContentWidth, display.actualContentHeight)
    background.x = display.contentCenterX
    background.y = display.contentCenterY

    local user = native.newTextBox(display.contentCenterX, display.contentCenterY - 60, display.actualContentWidth - 90, 40)
    user.isEditable = true
    user.size = 20
    user.placeholder = "Usuario"

    local pass = native.newTextBox(display.contentCenterX, user.y + 70, display.actualContentWidth - 90, 40) 
    pass.isEditable = true
    pass.size = 20
    pass.placeholder = "Contraseña"

    
    local function handleButtonEvent( event )
        if ( "ended" == event.phase ) then
            print(user.test)
            -- reemplazar por usuario de virtual
                local options = {
                    effect = "slideDown",
                    time = 400
                }
                composer.gotoScene("scenes.mainMenu", options)
        end
    end

    local button = widget.newButton({
        x = pass.x, 
        y = pass.y + 80, 
        label = "Login",
        labelColor ={default={0,0,0}, over={0,0,0,0.5}},
        onEvent = handleButtonEvent,
        id = "login",
        shape = "roundedRect",
        width = display.contentWidth - 100,
        height = 40,
        cornerRadius= 3,
        fillColor = { default={255,255,255,1}, over={1,0.4,0.7,0.4} },
        strokeColor = { default={0,0,0,1}, over={1,1,1,1} },
        strokeWidth = 2
    })


    sceneGroup:insert(pass)
    sceneGroup:insert(user)
    sceneGroup:insert(background)
    sceneGroup:insert(button)
end

-- show()
function scene:show(event)

    local sceneGroup = self.view
    local phase = event.phase

    if (phase == "will") then
        -- Code here runs when the scene is still off screen (but is about to come on screen)

    elseif (phase == "did") then
        -- Code here runs when the scene is entirely on screen

    end
end

-- hide()
function scene:hide(event)

    local sceneGroup = self.view
    local phase = event.phase

    if (phase == "will") then
        -- Code here runs when the scene is on screen (but is about to go off screen)

    elseif (phase == "did") then

    end
end

-- destroy()
function scene:destroy(event)
    local sceneGroup = self.view
end

-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy", scene)
-- -----------------------------------------------------------------------------------

return scene