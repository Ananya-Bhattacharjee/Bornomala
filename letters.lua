
local composer = require( "composer" )

local scene = composer.newScene()

local x1
local x2
local x3
local x4
local x5
local x6

	-- Print which key was pressed down/up to the log.
local function onKeyEvent( event )

	-- If the "back" key was pressed, then prevent it from backing out of the app.
	-- We do this by returning true, telling the operating system that we are overriding the key.
	if (event.keyName == "back") then
		--composer.gotoScene( "menu", { time=800, effect="crossFade" } )
        return true
	end
    

	-- Return false to indicate that this app is *not* overriding the received key.
	-- This lets the operating system execute its default handling of this key.
	return true
end


local function gotoVowels()
    x1:removeSelf()
    x2:removeSelf()
    x3:removeSelf()
    x4:removeSelf()
    x5:removeSelf()
    x6:removeSelf()
    composer.removeScene("letters")

	composer.gotoScene( "vowels", { time=800, effect="crossFade" } )
end

local function gotoConsonants()
    x1:removeSelf()
    x2:removeSelf()
    x3:removeSelf()
    x4:removeSelf()
    x5:removeSelf()
    x6:removeSelf()
    composer.removeScene("letters")

	composer.gotoScene( "consonants", { time=800, effect="crossFade" } )
end
local function gotoMenu()
    x1:removeSelf()
    x2:removeSelf()
    x3:removeSelf()
    x4:removeSelf()
    x5:removeSelf()
    x6:removeSelf()

    composer.removeScene("letters")
	composer.gotoScene( "menu", { time=800, effect="crossFade" } )
end



-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

	local sceneGroup = self.view
	-- Code here runs when the scene is first created but has not yet appeared on screen

	local background = display.newImageRect( sceneGroup, "background.png", 800, 1400 )
	background.x = display.contentCenterX
	background.y = display.contentCenterY


	--local vowelsButton = display.newText( sceneGroup, "স্বরবর্ণ", display.contentCenterX, display.contentCenterY-200, native.systemFont, 44 )
	--vowelsButton:setFillColor( 1, 0.6, 0.2 )
	--vowelsButton:addEventListener( "tap", gotoVowels )
    local roundedRect = display.newRoundedRect( display.contentCenterX, 400, 350, 60, 12 )
    roundedRect.strokeWidth = 3
    roundedRect:setFillColor(75/255, 0/255, 130/255)
    roundedRect:setStrokeColor( 0.5, 0.2, 0.8 )
    --roundedRect:removeSelf()
    x1=roundedRect
    local text = display.newText( "স্বরবর্ণ", roundedRect.x, roundedRect.y, "gameFont", 30  )

    local sx = roundedRect.contentWidth/text.contentWidth
    local sy = roundedRect.contentHeight/text.contentHeight
    local scale = (sx < sy ) and sx or sy

    text:scale( scale, scale )
    x2=text
    roundedRect:addEventListener( "tap", gotoVowels )


    
--    local consonantsButton = display.newText( sceneGroup, "ব্যঞ্জনবর্ণ", display.contentCenterX, display.contentCenterY+200, native.systemFont, 44 )
--	consonantsButton:setFillColor( 1, 0.2, 0.5 )
--	consonantsButton:addEventListener( "tap", gotoConsonants )
    local roundedRect2 = display.newRoundedRect( display.contentCenterX, 500, 350, 60, 12 )
    roundedRect2.strokeWidth = 3
    roundedRect2:setFillColor(75/255, 0/255, 130/255)
    roundedRect2:setStrokeColor( 0.5, 0.2, 0.8 )
    --roundedRect:removeSelf()
    x3=roundedRect2
    local text2 = display.newText( "ব্যঞ্জনবর্ণ", roundedRect2.x, roundedRect2.y, "gameFont", 30  )

    local sx2 = roundedRect2.contentWidth/text2.contentWidth
    local sy2 = roundedRect2.contentHeight/text2.contentHeight
    local scale2 = (sx2 < sy2 ) and sx2 or sy2

    text2:scale( scale2, scale2 )
    x4=text2
    roundedRect2:addEventListener( "tap", gotoConsonants )
    
    local roundedRect3 = display.newRoundedRect( display.contentCenterX, 600, 350, 60, 12 )
    roundedRect3.strokeWidth = 3
    roundedRect3:setFillColor(75/255, 0/255, 130/255)
    roundedRect3:setStrokeColor( 0.5, 0.2, 0.8 )
    --roundedRect:removeSelf()
    x5=roundedRect3
    local text3 = display.newText( "মেনু", roundedRect3.x, roundedRect3.y, "gameFont", 30  )

    local sx3 = roundedRect3.contentWidth/text3.contentWidth
    local sy3 = roundedRect3.contentHeight/text3.contentHeight
    local scale3 = (sx3 < sy3 ) and sx3 or sy3

    text3:scale( scale3, scale3 )
    x6=text3
    roundedRect3:addEventListener( "tap", gotoMenu )

    Runtime:addEventListener( "key", onKeyEvent );
end


-- show()
function scene:show( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is still off screen (but is about to come on screen)

	elseif ( phase == "did" ) then
		-- Code here runs when the scene is entirely on screen
		-- Start the music!
--		audio.play( musicTrack, { channel=1, loops=-1 } )
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
		-- Stop the music!
--		audio.stop( 1 )
	end
end


-- destroy()
function scene:destroy( event )

	local sceneGroup = self.view
	-- Code here runs prior to the removal of scene's view
	-- Dispose audio!
	--audio.dispose( musicTrack )
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
