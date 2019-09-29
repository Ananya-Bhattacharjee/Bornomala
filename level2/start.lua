
local composer = require( "composer" )

local scene = composer.newScene()
scoring=0
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


local function gotoStart()
	composer.gotoScene( "level2.start", { time=800, effect="crossFade" } )
end


local function gotoLetters()
	composer.gotoScene( "letters", { time=800, effect="crossFade" } )
end

local function gotoMatching()
	composer.gotoScene( "matching", { time=800, effect="crossFade" } )
end

local function gotoSeeMatching()
	composer.gotoScene( "smc", { time=800, effect="crossFade" } )
end

local function gotoQuiz()
    composer.removeScene("level2.matchingCopy")
    composer.removeScene("level2.smcCopy")
    composer.removeScene("level2.seematchingCopy")


	composer.gotoScene( "level2.matchingCopy", { time=800, effect="crossFade" } )
end

local function gotoDraw()
	composer.gotoScene( "draw", { time=800, effect="crossFade" } )
end


-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

	local sceneGroup = self.view
	-- Code here runs when the scene is first created but has not yet appeared on screen

	local background = display.newImageRect( sceneGroup, "background.png", 600, 1200 )
	background.x = display.contentCenterX
	background.y = display.contentCenterY
    --musicTrack = audio.loadStream("audio/soreo.mp3")
    --audio.play( musicTrack, { channel=1, loops=0 } )
    Runtime:addEventListener( "key", onKeyEvent );
    
    local menuButton = display.newText( sceneGroup, "মেনু", display.contentCenterX, 50, native.systemFont, 44 )
	menuButton:setFillColor( 0, 0, 0 )
--	menuButton:addEventListener( "tap", gotoMenu )
    local r
	local g
	local b
    local function draw()
        background = display.newImageRect( sceneGroup, "whiteBackground.jpg", 600, 1200 )
        background.x = display.contentCenterX
        background.y = display.contentCenterY

        if(dri==0) then
            bg="images/Ojogor.png"
            track="video/soreo.wmv"
			bg1="images/bg1.png"
			mt="audio/soreo.mp3"
			r=255
			g=255
			b=153
        elseif(dri==1) then
            bg="images/aagun.png"
            bg1="images/bg2.png"
			track="video/sorea.wmv"
			mt="audio/sorea.mp3"
			r=255
			g=165
			b=0
        elseif(dri==2) then
            bg="images/Eee-te-endur.png"
			bg1="images/bg3.png"
            track="video/rossoi.wmv"
			mt="audio/rossoi.mp3"
			r=165
			g=42
			b=42

        elseif(dri==3) then
            bg="images/Eagle.png"
			bg1="images/bg4.png"
            track="video/dirghoi.wmv"
			mt="audio/dirghoi.mp3"
			r=165
			g=42
			b=42


        elseif(dri==4) then
            bg="images/uutpakhi.png"
			bg1="images/bg5.png"
            track="video/rossou.wmv"
			mt="audio/rossou.mp3"
			r=165
			g=42
			b=42

        elseif(dri==5) then
            bg="images/Urdhomukhi.png"
            bg1="images/bg6.png"
			track="video/dirghou.wmv"
			mt="audio/dirghou.mp3"
			r=255
			g=0
			b=0
        elseif(dri==6) then
            bg="images/ri.png"
			bg1="images/bg7.png"
            track="video/ri.wmv"
			mt="audio/ri.mp3"
			r=0
			g=0
			b=0
        elseif(dri==7) then
            bg="images/ekush.png"
			bg1="images/bg8.png"
            track="video/e.wmv"
			mt="audio/ae.mp3"
			r=255
			g=255
			b=255
        elseif(dri==8) then
            bg="images/Oirabot.png"
			bg1="images/bg9.png"
            track="video/oi.wmv"
			mt="audio/oi.mp3"
			r=165
			g=42
			b=42
        elseif(dri==9) then
            bg="images/Ojon-baksho.png"
			bg1="images/bg10.png"
            track="video/o.wmv"
			mt="audio/o.mp3"
			r=165
			g=42
			b=42
        elseif(dri==10) then
            bg="images/Oushodh.png"
			bg1="images/bg11.png"
            track="video/ou.wmv"
			mt="audio/ou.mp3"
			r=255
			g=255
			b=153
            
        
        end    
    end
	draw()
	

    local musicTrack
    musicTrack = audio.loadStream( mt )
    audio.play( musicTrack, { channel=2, loops=0 } )




--    print ( display.pixelWidth, display.pixelHeight )
    --media.playVideo("temp.mp4",true,onComplete)
	
	local lines={}
    local line                     --variable to hold the line object
    local initX                     --initial X coordinate of touch
    local initY                     --initial Y coordinate of touch
    local lineCreated = false       --Flag to check if line is already created 
    
    
    
    local flag=0
    --local penoreraser="images/pencil.jpg"

    --local drButton = display.newImageRect( sceneGroup, penoreraser, 50, 50 )
    --penoreraser="images/eraser.png"
	--drButton = display.newImageRect( sceneGroup, penoreraser, 50, 50 )

    --drButton.x=display.contentCenterX-250
    --drButton.y=display.contentCenterY
    


    
    
    
    
    
    
    
    --drButton:addEventListener( "tap", drawing )
    --proButton:setFillColor( 0, 0.6, 1 )
	
        
    
    


    --Create the 'brush'
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
                    line:setStrokeColor( r/255, g/255, b/255 )
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


	
	
	
    local ses=11
    
    

    local function inVowelsNext()
        dri=dri+1
        if(dri==ses) then
            dri=0
        end
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
        composer.removeScene("level2.start")
        composer.gotoScene( "level2.start", { time=80, effect="crossFade" } )



    end
    local function inVowelsPrev()
        dri=dri-1
        if(dri==-1) then
            dri=ses-1
        end
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
		composer.removeScene("level2.start")
        composer.gotoScene( "level2.start", { time=80, effect="crossFade" } )


    end
	
	    
    local function redraw()
        draw()
        for k=1, #lines do
            lines[k]:removeSelf()
            lines[k].isVisible = false
            lines[k] = nil
        end      
        Runtime:removeEventListener("touch", paint)

        sceneGroup:removeSelf()
        sceneGroup=nil
		composer.removeScene("level2.start")
        composer.gotoScene( "level2.start", { time=80, effect="crossFade" } )

        --print(dri)


    end
	
	local function pronunciation()
        --local musicTrack
        --draw()
        --musicTrack = audio.loadStream( track )
        --audio.play( musicTrack, { channel=1, loops=0 } )
		mtt=audio.loadStream(mt)
		audio.play(mtt,{channel=2, loops=0})
		



    end
    

    
    local function gotoMenu()
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
        composer.removeScene("level2.start")

	   composer.gotoScene( "menu", { time=800, effect="crossFade" } )
    end
    if (event.keyName == "back") then
		composer.gotoScene( "menu", { time=800, effect="crossFade" } )
        gotoMenu()
        return true
	end

    local video = native.newVideo( display.contentCenterX, display.contentCenterY, 600, 600 )

	video:load(track)

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
			local prevButton = display.newText( sceneGroup, "<", display.contentCenterX+100, 900, native.systemFont, 128 )
			prevButton:setFillColor( 1, 0, 0 )
			prevButton:addEventListener( "tap", inVowelsPrev )

    
			local nextButton = display.newText( sceneGroup, ">", display.contentCenterX+200, 900, native.systemFont, 128 )
			nextButton:setFillColor( 0, 0, 1 )
			nextButton:addEventListener( "tap", inVowelsNext )
			--print(11)
			
		    local reButton = display.newImageRect( sceneGroup, "images/redraw.png", 50, 50 )
			reButton.x=display.contentCenterX-250
			reButton.y=display.contentCenterY-150

			reButton:addEventListener( "tap", redraw )

			local proButton = display.newImageRect( sceneGroup, "images/sound.png", 50, 50 )
			proButton.x=display.contentCenterX+150
			proButton.y=display.contentCenterY-450
			--proButton:setFillColor( 0, 0.6, 1 )
			proButton:addEventListener( "tap", pronunciation )
			
			local menuButton = display.newText( sceneGroup, "মেনু", display.contentCenterX, 50, native.systemFont, 44 )
			menuButton:setFillColor( 0, 0, 0 )
			menuButton:addEventListener( "tap", gotoMenu )

			Runtime:addEventListener("touch", paint)
    

		

    end
    timer.performWithDelay( 30000, timeywimey )
    
	background = display.newImageRect( sceneGroup, bg1, 600, 1200 )
	background.x = display.contentCenterX
	background.y = display.contentCenterY
    
    
	background = display.newImageRect( sceneGroup, bg, 600, 600 )
	background.x = display.contentCenterX
	background.y = display.contentCenterY



    

    

    

    --local menuButton = display.newText( sceneGroup, "কুইজ", display.contentCenterX+200, 50, native.systemFont, 44 )
	--menuButton:setFillColor( 0, 0, 0 )
	--menuButton:addEventListener( "tap", gotoQuiz )

    




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
