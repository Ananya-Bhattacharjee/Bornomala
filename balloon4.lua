
local composer = require( "composer" )

local scene = composer.newScene()
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


local function gotoMenu()
    composer.removeScene("balloon4")
    
    
    dri=0
    scoring=0

	composer.gotoScene( "menu", { time=800, effect="crossFade" } )
end

local function gotoMatching()
    if (scoring==0) then
        composer.gotoScene( "menu", { time=800, effect="crossFade" } )
    else 
        composer.gotoScene( "start", { time=800, effect="crossFade" } )
    end
end



-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

	local sceneGroup = self.view
	-- Code here runs when the scene is first created but has not yet appeared on screen
        local video = native.newVideo( display.contentCenterX, display.contentCenterY, 3000, 3000 )

	video:load("video/balloonVideo.mp4")

	video:play()
    local clock=os.clock
    function sleep(n)  -- seconds
              local t0 = clock()
              while clock() - t0 <= n do end
    end
    local function timeywimey( event )
            video:pause()
            video:removeSelf()
            video = nil
    end
    timer.performWithDelay( 3000, timeywimey )

    local bg="images/balloon.jpg"
	local background = display.newImageRect( sceneGroup, "images/balloon.jpg", 800, 1400 )
	background.x = display.contentCenterX
	background.y = display.contentCenterY
    
    local function change()
        if (scoring==0) then
            bg="images/smiley.jpg"
        else 
            bg="images/sad.jpg"
        end
        background = display.newImageRect( sceneGroup, bg, 600, 1200 )
	   background.x = display.contentCenterX
	   background.y = display.contentCenterY
        local menuButton = display.newText( sceneGroup, "মেনু", display.contentCenterX, 50, native.systemFont, 44 )
	   menuButton:setFillColor( 0, 0, 0 )
	   menuButton:addEventListener( "tap", gotoMenu )

    end
    
    

	background:addEventListener( "tap", change )
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
	audio.dispose( musicTrack )
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
