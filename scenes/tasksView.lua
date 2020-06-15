local composer = require( "composer" )
local color = require("convertcolor")
local widget = require("widget")

local scene = composer.newScene()

function scene:create( event )
    local sceneGroup = self.view

    background = display.newImageRect("img/background.png", display.actualContentWidth, display.actualContentHeight)
    background.x = display.contentCenterX
    background.y = display.contentCenterY

    -- Preparing the number of pixels for the max scrollableHeight
    local cards = {1,2,3,4]
    local tasks = {title="Tarea x", status="entrega mañana", deadline="12:00"}
    local scrollableHeight = (150 * #cards) + (20 * #cards)

    -- Scrollview for the incoming information --
    local scroll = widget.newScrollView({
        x = display.contentCenterX,
        y = display.contentCenterY,
        width = display.actualContentWidth,
        height = display.actualContentHeight,
        scrollHeight = scrollableHeight,
        horizontalScrollDisabled = true,
        bottomPadding = 16,
        hideBackground = true
        }
    )

    -- Algorithm for displaying the number of cards
    offset = display.contentCenterY - 190
    for i=1,#cards do
        cards[i] = display.newRoundedRect(display.contentCenterX, offset, display.actualContentWidth - 50, 150, 16)
        cards[i]:setFillColor(color.hex("FDF4FE"));
        -- This is the incoming task title
        tasks[i] = display.newText(
            {
                parent = cards[i],
                x = cards[i].x - 90,
                y = cards[i].y - 50,
                text = tasks["title"],
                font = native.systemFont,
                fontSize = 18
            }
        )
        tasks[i]:setFillColor(color.hex("000000"))
        scroll:insert(cards[i])
        scroll:insert(tasks[i])
        offset = offset + 170
    end

end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
 
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene
