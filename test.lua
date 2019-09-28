
local composer = require( "composer" )

local scene = composer.newScene()
local i=0
local bg
local track

local function gotoMenu()
    dri=0
	composer.gotoScene( "menu", { time=800, effect="crossFade" } )
end
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





-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

	local sceneGroup = self.view
	-- Code here runs when the scene is first created but has not yet appeared on screen
    
    i=dri
    
    
    Runtime:addEventListener( "key", onKeyEvent );

	local background = display.newImageRect( sceneGroup, "images/Ojogor.png", 600, 1200 )
    
	background.x = display.contentCenterX
	background.y = display.contentCenterY
    
    local function draw()
        if(i==0) then
            bg="images/Ojogor.png"
            track="audio/soreo.mp3"
        elseif(i==1) then
            bg="images/aagun.png"
            track="audio/sorea.mp3"
        elseif(i==2) then
            bg="images/Eee-te-endur.png"
            track="audio/rossoi.mp3"
        elseif(i==3) then
            bg="images/Eagle.png"
            track="audio/dirghoi.mp3"
        elseif(i==4) then
            bg="images/uutpakhi.png"
            track="audio/rossou.mp3"
        elseif(i==5) then
            bg="images/Urdhomukhi.png"
            track="audio/dirghou.mp3"
        elseif(i==6) then
            local tempground = display.newImageRect( sceneGroup, "whiteBackground.jpg", 600, 1200 )

            tempground.x = display.contentCenterX
            tempground.y = display.contentCenterY

            bg="images/ri.png"
            track="audio/ri.mp3"

        elseif(i==7) then
            bg="images/ekush.png"
            track="audio/ae.mp3"
        elseif(i==8) then
            bg="images/Oirabot.png"
            track="audio/oi.mp3"
        elseif(i==9) then
            bg="images/Ojon-baksho.png"
            track="audio/o.mp3"
        elseif(i==10) then
            bg="images/Oushodh.png"
            track="audio/ou.mp3"
        dri=i
        end


        local background = display.newImageRect( sceneGroup, bg, 600, 1200 )

        background.x = display.contentCenterX
        background.y = display.contentCenterY
    	local nxtButton = display.newText( sceneGroup, ">", display.contentCenterX+200, 900, native.systemFont, 64 )
        nxtButton:setFillColor( 0, 0.6, 1 )
        
     	local prvButton = display.newText( sceneGroup, "<", display.contentCenterX+100, 900, native.systemFont, 64 )
        prvButton:setFillColor( 0, 0.6, 1 )
        
        local pronButton = display.newImageRect( sceneGroup, "images/sound.png", 50, 50 )
        pronButton.x=display.contentCenterX+150
        pronButton.y=display.contentCenterY-450
        local menu2Button = display.newText( sceneGroup, "মেনু", display.contentCenterX, 50, native.systemFont, 44 )
        menu2Button:setFillColor( 0, 0, 0 )
	    --menuButton:addEventListener( "tap", gotoMenu )
    
	    
    end
    draw()
    background = display.newImageRect( sceneGroup, bg, 600, 1200 )
    
	background.x = display.contentCenterX
	background.y = display.contentCenterY

    local lines={}
    local line                     --variable to hold the line object
    local initX                     --initial X coordinate of touch
    local initY                     --initial Y coordinate of touch
    local lineCreated = false       --Flag to check if line is already created 
    local flag=0

    function paint(event)
        locationX = event.x
        locationY = event.y
        if event.phase == "began" then   --first touch
            --Delete previous line (in this case no multiple lines)
            if(line) then
                table.insert(lines,line)

                --line:removeSelf()
                --line = nil
            end

            --Set initX and initY with current touch location           
            initX = locationX       
            initY = locationY
        elseif event.phase == "moved" then   --during touch movement
            if lineCreated then
                --line has been created, just append to existing line
                line:append(locationX, locationY)
                table.insert(lines,line)

            else
                --Line has not been created
                --Make new line object, set color, and stroke width
                line = display.newLine(initX, initY, locationX, locationY)
                if(flag==0) then
                    line:setStrokeColor( 0, 0, 1 )
                else
                    line:setStrokeColor( 1, 1, 1 )
                end
                line.strokeWidth = 40
                table.insert(lines,line)

                --set line created flag to true
                lineCreated = true
            end     
        elseif event.phase == "ended" or event.phase == "cancelled" then --touch lifted
            --append last touch location to the line
            --line:append(locationX, locationY)
            table.insert(lines,line)

            lineCreated=false
        end
        table.insert(lines,line)

        return true
    end

    Runtime:addEventListener("touch", paint)

    
    local function inVowelsNext()
        dri=dri+1
        if(dri==50) then
            dri=0
        end
        i=dri
        draw()
        for k=1, #lines do
            lines[k]:removeSelf()
            lines[k].isVisible = false
            lines[k] = nil
            print(#lines)
            print("removed")
        end        
        Runtime:removeEventListener("touch", paint)
        sceneGroup:removeSelf()
        sceneGroup=nil
        composer.removeScene("test")
        composer.gotoScene( "test", { time=80, effect="crossFade" } )

        print(dri)
        


    end
    local function inVowelsPrev()
        dri=dri-1
        if(dri==-1) then
            dri=49
        end
        i=dri
        draw()
        for k=1, #lines do
            lines[k]:removeSelf()
            lines[k].isVisible = false
            lines[k] = nil
        end      
        Runtime:removeEventListener("touch", paint)

        sceneGroup:removeSelf()
        sceneGroup=nil
        composer.removeScene("test")
        composer.gotoScene( "test", { time=80, effect="crossFade" } )

        print(dri)



    end
    local function pronunciation()
        local musicTrack
        draw()
        musicTrack = audio.loadStream( track )
        audio.play( musicTrack, { channel=1, loops=0 } )



    end
    
    local menuButton = display.newText( sceneGroup, "মেনু", display.contentCenterX, 50, native.systemFont, 44 )
	menuButton:setFillColor( 0, 0, 0 )
	menuButton:addEventListener( "tap", gotoMenu )

    


	local prevButton = display.newText( sceneGroup, "<", display.contentCenterX+100, 900, native.systemFont, 64 )
	prevButton:setFillColor( 0, 0.6, 1 )
	prevButton:addEventListener( "tap", inVowelsPrev )

    
	local nextButton = display.newText( sceneGroup, ">", display.contentCenterX+200, 900, native.systemFont, 64 )
	nextButton:setFillColor( 0, 0.6, 1 )
	nextButton:addEventListener( "tap", inVowelsNext )

--	local proButton = display.newText( sceneGroup, "Listen", display.contentCenterX, 1000, native.systemFont, 64 )
    local proButton = display.newImageRect( sceneGroup, "images/sound.png", 50, 50 )
    proButton.x=display.contentCenterX+150
    proButton.y=display.contentCenterY-450
	--proButton:setFillColor( 0, 0.6, 1 )
	proButton:addEventListener( "tap", pronunciation )
    
    



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
