
local composer = require( "composer" )

local scene = composer.newScene()
local i=0
local bg
local track

local function gotoMenu()
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
    
    

	local background = display.newImageRect( sceneGroup, "images/Ko-te-kaak.png", 600, 1200 )
    Runtime:addEventListener( "key", onKeyEvent );

	background.x = display.contentCenterX
	background.y = display.contentCenterY
    
    local function draw()
        if(i==0) then
            bg="images/Ko-te-kaak.png"
            track="audio/ko.mp3"
        elseif(i==1) then
            bg="images/khorghosh.png"
            track="audio/kho.mp3"
        elseif(i==2) then
            bg="images/Go-te-gaach.png"
            track="audio/go.mp3"
        elseif(i==3) then
            bg="images/Gho-te-ghori.png"
            track="audio/gho.mp3"
        elseif(i==4) then
            bg="images/beng.png"
            track="audio/umo.mp3"
        elseif(i==5) then
            bg="images/chuul.png"
            track="audio/cho.mp3"
        elseif(i==6) then
            bg="images/Chho-te-chaya.png"
            track="audio/chho.mp3"
        elseif(i==7) then
            bg="images/jilapi.png"
            track="audio/jo.mp3"
        elseif(i==8) then
            bg="images/Jhinuuk.png"
            track="audio/jhho.mp3"
        elseif(i==9) then
            local tempground = display.newImageRect( sceneGroup, "whiteBackground.jpg", 600, 1200 )

            tempground.x = display.contentCenterX
            tempground.y = display.contentCenterY
            bg="whiteBackground.jpg"
            bg="images/nio.png"
            track="audio/nio.mp3"
        elseif(i==10) then
            bg="images/Tia-pakhi.png"
            track="audio/to.mp3"
        elseif(i==11) then
            bg="images/thelagari.png"
            track="audio/tho.mp3"
        elseif(i==12) then
            bg="images/daalim.png"
            track="audio/do.mp3"
        elseif(i==13) then
            bg="images/dhhol.png"
            track="audio/dho.mp3"
        elseif(i==14) then
            bg="images/Horin.png"
            track="audio/murdhonno.mp3"
        elseif(i==15) then
            bg="images/Tara.png"
            track="audio/to2.mp3"
        elseif(i==16) then
            bg="images/Tho.png"
            track="audio/tho2.mp3"
        elseif(i==17) then
            bg="images/dolna.png"
            track="audio/do2.mp3"
        elseif(i==18) then
            bg="images/Dho-te-dhoa.png"
            track="audio/dho2.mp3"
        elseif(i==19) then
            bg="images/Nouka.png"
            track="audio/no.mp3"
        elseif(i==20) then
            bg="images/projapoti.png"
            track="audio/po.mp3"
        elseif(i==21) then
            bg="images/Foring.png"
            track="audio/pho.mp3"
        elseif(i==22) then
            bg="images/Bo-te-bandor.png"
            track="audio/bo.mp3"
        elseif(i==23) then
            bg="images/valluuk.png"
            track="audio/bho.mp3"
        elseif(i==24) then
            bg="images/Mo-te-maach.png"
            track="audio/mo.mp3"
        elseif(i==25) then
            bg="images/Jontro.png"
            track="audio/jo2.mp3"
        elseif(i==26) then
            bg="images/roshi.png"
            track="audio/ro.mp3"
        elseif(i==27) then
            bg="images/Lota-pata.png"
            track="audio/lo.mp3"
        elseif(i==28) then
            bg="images/shaapla.png"
            track="audio/so1.mp3"
        elseif(i==29) then
            bg="images/Shaar.png"
            track="audio/so2.mp3"
        elseif(i==30) then
            bg="images/cycle.png"
            track="audio/so3.mp3"
        elseif(i==31) then
            bg="images/haash.png"
            track="audio/ho.mp3"
        elseif(i==32) then
            bg="images/Shaari.png"
            track="audio/ro2.mp3"
        elseif(i==33) then
            local tempground = display.newImageRect( sceneGroup, "whiteBackground.jpg", 600, 1200 )

            tempground.x = display.contentCenterX
            tempground.y = display.contentCenterY
            bg="images/dhoishunnoro.png"
            track="audio/ro3.mp3"
        elseif(i==34) then
            bg="images/moyna.png"
            track="audio/o2.mp3"
        elseif(i==35) then
            bg="images/hothaat.png"
            track="audio/khondotto.mp3"
        elseif(i==36) then
            local tempground = display.newImageRect( sceneGroup, "whiteBackground.jpg", 600, 1200 )

            tempground.x = display.contentCenterX
            tempground.y = display.contentCenterY
            bg="images/onuswar.png"
            --bg="images/roshi.png"
            track="audio/onuswar.mp3"
        elseif(i==37) then
            local tempground = display.newImageRect( sceneGroup, "whiteBackground.jpg", 600, 1200 )

            tempground.x = display.contentCenterX
            tempground.y = display.contentCenterY
            bg="images/bisorgo.png"
            track="audio/bisorgo.mp3"
        elseif(i==38) then
            bg="images/chondrobindu.png"
            track="audio/chondrobindu.mp3"

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

	    
    end

    
    local function inVowelsNext()
        i=i+1
        if(i==39) then
            i=0
        end
        print(i)
        draw()


    end
    local function inVowelsPrev()
        i=i-1
        if(i==-1) then
            i=38
        end
        print(i)
        draw()


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
