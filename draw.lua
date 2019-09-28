
local composer = require( "composer" )

local scene = composer.newScene()

local bg
local function gotoLetters()
	composer.gotoScene( "letters", { time=800, effect="crossFade" } )
end

local function gotoMatching()
    
	composer.gotoScene( "matching", { time=800, effect="crossFade" } )
end

local function gotoDraw()
	composer.gotoScene( "draw", { time=800, effect="crossFade" } )
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

    local background = display.newImageRect( sceneGroup, "whiteBackground.jpg", 800, 1400 )
	background.x = display.contentCenterX
	background.y = display.contentCenterY
    
    local background2 = display.newImageRect( sceneGroup, "images/letters/soreo.png", 600, 1000 )
	background2.x = display.contentCenterX
	background2.y = display.contentCenterY
    
    Runtime:addEventListener( "key", onKeyEvent );
    

    
    local function draw()
        background = display.newImageRect( sceneGroup, "whiteBackground.jpg", 800, 1400 )
        background.x = display.contentCenterX
        background.y = display.contentCenterY

        if(dri==0) then
            bg="images/letters/soreo.png"
            track="audio/soreo.mp3"
        elseif(dri==1) then
            bg="images/letters/sorea.png"
            track="audio/sorea.mp3"
        elseif(dri==2) then
            bg="images/letters/rossoi.png"
            track="audio/rossoi.mp3"
        elseif(dri==3) then
            bg="images/letters/dirghoi.png"
            track="audio/dirghoi.mp3"
        elseif(dri==4) then
            bg="images/letters/rossou.png"
            track="audio/rossou.mp3"
        elseif(dri==5) then
            bg="images/letters/dirghou.png"
            track="audio/dirghou.mp3"
        elseif(dri==6) then

            bg="images/letters/ri.png"
            track="audio/ri.mp3"

        elseif(dri==7) then
            bg="images/letters/e.png"
            track="audio/ae.mp3"
        elseif(dri==8) then
            bg="images/letters/oi.png"
            track="audio/oi.mp3"
        elseif(dri==9) then
            bg="images/letters/o.png"
            track="audio/o.mp3"
        elseif(dri==10) then
            bg="images/letters/ou.png"
            track="audio/ou.mp3"
        elseif(dri==11) then
            bg="images/letters/ko.png"
        elseif(dri==12) then
            bg="images/letters/kho.png"
        elseif(dri==13) then
            bg="images/letters/go.png"
        elseif(dri==14) then
            bg="images/letters/gho.png"
        elseif(dri==15) then
            bg="images/letters/umo.png"
        elseif(dri==16) then
            bg="images/letters/cho.png"
        elseif(dri==17) then
            bg="images/letters/chho.png"
        elseif(dri==18) then
            bg="images/letters/jo.png"
        elseif(dri==19) then
            bg="images/letters/jho.png"
        elseif(dri==20) then
            bg="images/letters/nio.png"
        elseif(dri==21) then
            bg="images/letters/to.png"
        elseif(dri==22) then
            bg="images/letters/tho.png"
        elseif(dri==23) then
            bg="images/letters/do.png"
        elseif(dri==24) then
            bg="images/letters/dho.png"
        elseif(dri==25) then
            bg="images/letters/murdhonno.png"
        elseif(dri==26) then
            bg="images/letters/to2.png"
        elseif(dri==27) then
            bg="images/letters/tho2.png"
        elseif(dri==28) then
            bg="images/letters/do2.png"
        elseif(dri==29) then
            bg="images/letters/dho2.png"
        elseif(dri==30) then
            bg="images/letters/no.png"
        elseif(dri==31) then
            bg="images/letters/po.png"
        elseif(dri==32) then
            bg="images/letters/pho.png"
        elseif(dri==33) then
            bg="images/letters/bo.png"
        elseif(dri==34) then
            bg="images/letters/bho.png"
        elseif(dri==35) then
            bg="images/letters/mo.png"
        elseif(dri==36) then
            bg="images/letters/jo2.png"
        elseif(dri==37) then
            bg="images/letters/ro.png"
        elseif(dri==38) then
            bg="images/letters/lo.png"
        elseif(dri==39) then
            bg="images/letters/so.png"
        elseif(dri==40) then
            bg="images/letters/so2.png"
        elseif(dri==41) then
            bg="images/letters/so3.png"
        elseif(dri==42) then
            bg="images/letters/ho.png"
        elseif(dri==43) then
            bg="images/letters/ro2.png"
        elseif(dri==44) then
            bg="images/letters/ro3.png"
        elseif(dri==45) then
            bg="images/letters/o2.png"
        elseif(dri==46) then
            bg="images/letters/khondotto.jpg"
        elseif(dri==47) then
            bg="images/letters/onuswar.png"
        elseif(dri==48) then
            bg="images/letters/bisorgo.png"
        elseif(dri==49) then
            bg="images/letters/chondrobindu.jpg"

        end    
        
        background2 = display.newImageRect( sceneGroup, bg, 600, 1000 )
        background2.x = display.contentCenterX
        background2.y = display.contentCenterY

        local peneraser="images/eraser.jpg"

        local draButton = display.newImageRect( sceneGroup, peneraser, 50, 50 )
        draButton.x=display.contentCenterX-250
        draButton.y=display.contentCenterY

        local nxtButton = display.newText( sceneGroup, ">", display.contentCenterX+200, 900, native.systemFont, 64 )
        nxtButton:setFillColor( 0, 0.6, 1 )

        local prvButton = display.newText( sceneGroup, "<", display.contentCenterX+100, 900, native.systemFont, 64 )
        prvButton:setFillColor( 0, 0.6, 1 )
        local redButton = display.newImageRect( sceneGroup, "images/redraw.png", 50, 50 )
        redButton.x=display.contentCenterX-250
        redButton.y=display.contentCenterY-150


        
    end
    draw()


   
    local lines={}
    local line                     --variable to hold the line object
    local initX                     --initial X coordinate of touch
    local initY                     --initial Y coordinate of touch
    local lineCreated = false       --Flag to check if line is already created 
    
    
    
    local flag=0
    local penoreraser="images/eraser.jpg"

    local drButton = display.newImageRect( sceneGroup, penoreraser, 50, 50 )
    drButton.x=display.contentCenterX-250
    drButton.y=display.contentCenterY
    
    local reButton = display.newImageRect( sceneGroup, "images/redraw.png", 50, 50 )
    reButton.x=display.contentCenterX-250
    reButton.y=display.contentCenterY-150

    local function drawing()

        if(flag==0)then
            flag=1
            penoreraser="images/pencil.jpg"
        else
            flag=0
            penoreraser="images/eraser.jpg"
        end
        
        drButton = display.newImageRect( sceneGroup, penoreraser, 50, 50 )
        drButton.x=display.contentCenterX-270
        drButton.y=display.contentCenterY



    end

    
    
    
    
    
    
    
    drButton:addEventListener( "tap", drawing )
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
    --[[
    local k = 1
    local tempLine
    local rectangle_hit = {}
    local prevX , prevY
    local function runTouch(event)
    if(event.phase=="began") then
    if(tempLine==nil) then
    tempLine=display.newLine(event.x, event.y, event.x, event.y)

    -- Random Colors for line

    r = math.random (0, 255)
    g = math.random ( 0, 255)
    b = math.random (0, 255 )
    tempLine:setStrokeColor(r,g, b)


    prevX = event.x
    prevY = event.y
    end
    elseif(event.phase=="moved") then
    tempLine:append(event.x,event.y-2)
    --tempLine.width=tempLine.width+0.9
    tempLine.strokeWidth=1        
    rectangle_hit[k] = display.newLine(prevX, prevY, event.x, event.y)
    rectangle_hit[k]:setStrokeColor(0,0, 1)
    rectangle_hit[k].strokeWidth = 5

    -- Creates physic joints for line (Turn on draw mode to see the effects) 

    local Width = rectangle_hit[k].strokeWidth 
    local Height = rectangle_hit[k].height 

    -- Physic body for the line shape

    local lineShape = {-Width,-Height,Width,-Height,Width,Height,-Width,Height}

--    physics.addBody(rectangle_hit[i], "static", { bounce = -1, density=0.3, friction=0.7, shape = lineShape})
    prevX = event.x
    prevY = event.y
    k = k + 1
    elseif(event.phase=="ended") then
        tempLine.parent.remove(tempLine)
        tempLine=nil
    end
    end
    Runtime:addEventListener("touch", runTouch)
    
--]]    
    

    local function inVowelsNext()
        dri=dri+1
        if(dri==50) then
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
        composer.removeScene("draw")
        composer.gotoScene( "draw", { time=80, effect="crossFade" } )

        print(dri)
        


    end
    local function inVowelsPrev()
        dri=dri-1
        if(dri==-1) then
            dri=49
        end
        draw()
        for k=1, #lines do
            lines[k]:removeSelf()
            lines[k].isVisible = false
            lines[k] = nil
        end      
        Runtime:removeEventListener("touch", paint)

        sceneGroup:removeSelf()
        sceneGroup=nil
        composer.removeScene("draw")
        composer.gotoScene( "draw", { time=80, effect="crossFade" } )

        print(dri)


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
        composer.removeScene("draw")
        composer.gotoScene( "draw", { time=80, effect="crossFade" } )

        print(dri)


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
        composer.removeScene("draw")

	   composer.gotoScene( "menu", { time=800, effect="crossFade" } )
    end
    if (event.keyName == "back") then
		composer.gotoScene( "menu", { time=800, effect="crossFade" } )
        gotoMenu()
        return true
	end




    
    reButton:addEventListener( "tap", redraw )

    
    local menuButton = display.newText( sceneGroup, "মেনু", display.contentCenterX, 50, native.systemFont, 44 )
	menuButton:setFillColor( 0, 0, 0 )
	menuButton:addEventListener( "tap", gotoMenu )

    


	local prevButton = display.newText( sceneGroup, "<", display.contentCenterX+100, 900, native.systemFont, 64 )
	prevButton:setFillColor( 0, 0.6, 1 )
	prevButton:addEventListener( "tap", inVowelsPrev )

    
	local nextButton = display.newText( sceneGroup, ">", display.contentCenterX+200, 900, native.systemFont, 64 )
	nextButton:setFillColor( 0, 0.6, 1 )
	nextButton:addEventListener( "tap", inVowelsNext )



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
