
local composer = require( "composer" )

local scene = composer.newScene()

local bg
local i
local menuButton
local goButton
local function gotoLetters()
	composer.gotoScene( "letters", { time=800, effect="crossFade" } )
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

local function gotoMenu()
    composer.removeScene("smc")

    composer.gotoScene( "menu", { time=800, effect="crossFade" } )
end

local function gotoMatching()
    composer.removeScene("smc")
    
	composer.gotoScene( "matching", { time=800, effect="crossFade" } )
end

local function gotoDraw()
    composer.removeScene("smc")

    composer.gotoScene( "draw", { time=800, effect="crossFade" } )
end

local function gotoSee2()
    composer.removeScene("smc")

	composer.gotoScene( "seematching", { time=2000, effect="crossFade" } )
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
    Runtime:addEventListener( "key", onKeyEvent );
    
    local background2 = display.newImageRect( sceneGroup, "images/letters/soreo.png", 600, 1000 )
	background2.x = display.contentCenterX
	background2.y = display.contentCenterY
    menuButton = display.newText( sceneGroup, "মেনু", display.contentCenterX, 20, native.systemFont, 44 )
    menuButton:setFillColor( 0, 0, 0 )
    menuButton:addEventListener( "tap", gotoMenu )
    goButton = display.newText( sceneGroup, "দেখা শেষ", display.contentCenterX+180, 20, native.systemFont, 44 )
    goButton:setFillColor(0, 0, 0 )
    goButton:addEventListener( "tap", gotoSee2 )

    
    

    local function draw()
        background = display.newImageRect( sceneGroup, "whiteBackground.jpg", 800, 1400 )
        background.x = display.contentCenterX
        background.y = display.contentCenterY
    

        if(i==0) then
            bg="images/letters/soreo.png"
            --track="audio/soreo.mp3"
        elseif(i==1) then
            bg="images/letters/sorea.png"
            --track="audio/sorea.mp3"
        elseif(i==2) then
            bg="images/letters/rossoi.png"
            --track="audio/rossoi.mp3"
        elseif(i==3) then
            bg="images/letters/dirghoi.png"
            --track="audio/dirghoi.mp3"
        elseif(i==4) then
            bg="images/letters/rossou.png"
            --track="audio/rossou.mp3"
        elseif(i==5) then
            bg="images/letters/dirghou.png"
            --track="audio/dirghou.mp3"
        elseif(i==6) then

            bg="images/letters/ri.png"
            --track="audio/ri.mp3"

        elseif(i==7) then
            bg="images/letters/e.png"
            --track="audio/ae.mp3"
        elseif(i==8) then
            bg="images/letters/oi.png"
            --track="audio/oi.mp3"
        elseif(i==9) then
            bg="images/letters/o.png"
            --track="audio/o.mp3"
        elseif(i==10) then
            bg="images/letters/ou.png"
            --track="audio/ou.mp3"
        elseif(i==11) then
            bg="images/letters/ko.png"
        elseif(i==12) then
            bg="images/letters/kho.png"
        elseif(i==13) then
            bg="images/letters/go.png"
        elseif(i==14) then
            bg="images/letters/gho.png"
        elseif(i==15) then
            bg="images/letters/umo.png"
        elseif(i==16) then
            bg="images/letters/cho.png"
        elseif(i==17) then
            bg="images/letters/chho.png"
        elseif(i==18) then
            bg="images/letters/jo.png"
        elseif(i==19) then
            bg="images/letters/jho.png"
        elseif(i==20) then
            bg="images/letters/nio.png"
        elseif(i==21) then
            bg="images/letters/to.png"
        elseif(i==22) then
            bg="images/letters/tho.png"
        elseif(i==23) then
            bg="images/letters/do.png"
        elseif(i==24) then
            bg="images/letters/dho.png"
        elseif(i==25) then
            bg="images/letters/murdhonno.png"
        elseif(i==26) then
            bg="images/letters/to2.png"
        elseif(i==27) then
            bg="images/letters/tho2.png"
        elseif(i==28) then
            bg="images/letters/do2.png"
        elseif(i==29) then
            bg="images/letters/dho2.png"
        elseif(i==30) then
            bg="images/letters/no.png"
        elseif(i==31) then
            bg="images/letters/po.png"
        elseif(i==32) then
            bg="images/letters/pho.png"
        elseif(i==33) then
            bg="images/letters/bo.png"
        elseif(i==34) then
            bg="images/letters/bho.png"
        elseif(i==35) then
            bg="images/letters/mo.png"
        elseif(i==36) then
            bg="images/letters/jo2.png"
        elseif(i==37) then
            bg="images/letters/ro.png"
        elseif(i==38) then
            bg="images/letters/lo.png"
        elseif(i==39) then
            bg="images/letters/so.png"
        elseif(i==40) then
            bg="images/letters/so2.png"
        elseif(i==41) then
            bg="images/letters/so3.png"
        elseif(i==42) then
            bg="images/letters/ho.png"
        elseif(i==43) then
            bg="images/letters/ro2.png"
        elseif(i==44) then
            bg="images/letters/ro3.png"
        elseif(i==45) then
            bg="images/letters/o2.png"
        elseif(i==46) then
            bg="images/letters/khondotto.jpg"
        elseif(i==47) then
            bg="images/letters/onuswar.png"
        elseif(i==48) then
            bg="images/letters/bisorgo.png"
        elseif(i==49) then
            bg="images/letters/chondrobindu.jpg"

        end    
        
        background2 = display.newImageRect( sceneGroup, bg, 600, 1000 )
        background2.x = display.contentCenterX
        background2.y = display.contentCenterY
        
        menuButton = display.newText( sceneGroup, "মেনু", display.contentCenterX, 20, native.systemFont, 44 )
        menuButton:setFillColor( 0, 0, 0 )
        menuButton:addEventListener( "tap", gotoMenu )
        goButton = display.newText( sceneGroup, "দেখা শেষ", display.contentCenterX+180, 20, native.systemFont, 44 )
        goButton:setFillColor( 0, 0, 0 )
        goButton:addEventListener( "tap", gotoSee2 )

        
    end
    local numLetter=49
    i=math.random(0,numLetter)
    --print(r)
    sm=i
    print(sm)
    draw()

    menuButton = display.newText( sceneGroup, "মেনু", display.contentCenterX, 20, native.systemFont, 44 )
    menuButton:setFillColor( 0, 0, 0 )
    menuButton:addEventListener( "tap", gotoMenu )
    goButton = display.newText( sceneGroup, "দেখা শেষ", display.contentCenterX+180, 20, native.systemFont, 44 )
    goButton:setFillColor( 0, 0, 0 )
    goButton:addEventListener( "tap", gotoSee2 )





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
