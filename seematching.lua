
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
    
    

	local background = display.newImageRect( sceneGroup, "background.png", 600, 1200 )
    
	background.x = display.contentCenterX
	background.y = display.contentCenterY
    local background2 = display.newImageRect( sceneGroup, "background.png", 600, 1200 )
    Runtime:addEventListener( "key", onKeyEvent );
    
	background2.x = display.contentCenterX
	background2.y = display.contentCenterY

    
    local function draw()
        if(i==0) then
            bg="images/Ojogor.png"
        elseif(i==1) then
            bg="images/aagun.png"
        elseif(i==2) then
            bg="images/Eee-te-endur.png"
        elseif(i==3) then
            bg="images/Eagle.png"
        elseif(i==4) then
            bg="images/uutpakhi.png"
        elseif(i==5) then
            bg="images/Urdhomukhi.png"
        elseif(i==6) then

            bg="images/ri.png"
--            track="audio/ri.mp3"

        elseif(i==7) then
            bg="images/ekush.png"
            --track="audio/ae.mp3"
        elseif(i==8) then
            bg="images/Oirabot.png"
            --track="audio/oi.mp3"
        elseif(i==9) then
            bg="images/Ojon-baksho.png"
            --track="audio/o.mp3"
        elseif(i==10) then
            bg="images/Oushodh.png"
            --track="audio/ou.mp3"
        elseif(i==11) then
            bg="images/Ko-te-kaak.png"
            --track="audio/ko.mp3"
        elseif(i==12) then
            bg="images/khorghosh.png"
            --track="audio/kho.mp3"
        elseif(i==13) then
            bg="images/Go-te-gaach.png"
            --track="audio/go.mp3"
        elseif(i==14) then
            bg="images/Gho-te-ghori.png"
            --track="audio/gho.mp3"
        elseif(i==15) then
            bg="images/beng.png"
            --track="audio/umo.mp3"
        elseif(i==16) then
            bg="images/chuul.png"
            --track="audio/cho.mp3"
        elseif(i==17) then
            bg="images/Chho-te-chaya.png"
            --track="audio/chho.mp3"
        elseif(i==18) then
            bg="images/jilapi.png"
            --track="audio/jo.mp3"
        elseif(i==19) then
            bg="images/Jhinuuk.png"
            --track="audio/jhho.mp3"
        elseif(i==20) then
            bg="images/nio.png"
            --track="audio/nio.mp3"
        elseif(i==21) then
            bg="images/Tia-pakhi.png"
            --track="audio/to.mp3"
        elseif(i==22) then
            bg="images/thelagari.png"
            --track="audio/tho.mp3"
        elseif(i==23) then
            bg="images/daalim.png"
            --track="audio/do.mp3"
        elseif(i==24) then
            bg="images/dhhol.png"
            --track="audio/dho.mp3"
        elseif(i==25) then
            bg="images/Horin.png"
            --track="audio/murdhonno.mp3"
        elseif(i==26) then
            bg="images/Tara.png"
            --track="audio/to2.mp3"
        elseif(i==27) then
            bg="images/Tho.png"
            --track="audio/tho2.mp3"
        elseif(i==28) then
            bg="images/dolna.png"
            --track="audio/do2.mp3"
        elseif(i==29) then
            bg="images/Dho-te-dhoa.png"
            --track="audio/dho2.mp3"
        elseif(i==30) then
            bg="images/Nouka.png"
            --track="audio/no.mp3"
        elseif(i==31) then
            bg="images/projapoti.png"
            --track="audio/po.mp3"
        elseif(i==32) then
            bg="images/Foring.png"
            --track="audio/pho.mp3"
        elseif(i==33) then
            bg="images/Bo-te-bandor.png"
            --track="audio/bo.mp3"
        elseif(i==34) then
            bg="images/valluuk.png"
            --track="audio/bho.mp3"
        elseif(i==35) then
            bg="images/Mo-te-maach.png"
            --track="audio/mo.mp3"
        elseif(i==36) then
            bg="images/Jontro.png"
            --track="audio/jo2.mp3"
        elseif(i==37) then
            bg="images/roshi.png"
            --track="audio/ro.mp3"
        elseif(i==38) then
            bg="images/Lota-pata.png"
            --track="audio/lo.mp3"
        elseif(i==39) then
            bg="images/shaapla.png"
            --track="audio/so1.mp3"
        elseif(i==40) then
            bg="images/Shaar.png"
            --track="audio/so2.mp3"
        elseif(i==41) then
            bg="images/cycle.png"
            --track="audio/so3.mp3"
        elseif(i==42) then
            bg="images/haash.png"
            --track="audio/ho.mp3"
        elseif(i==43) then
            bg="images/Shaari.png"
            --track="audio/ro2.mp3"
        elseif(i==44) then
            bg="images/dhoishunnoro.png"
            --track="audio/ro3.mp3"
        elseif(i==45) then
            bg="images/moyna.png"
            --track="audio/o2.mp3"
        elseif(i==46) then
            bg="images/hothaat.png"
            --track="audio/khondotto.mp3"
        elseif(i==47) then
            bg="images/onuswar.png"
            --bg="images/roshi.png"
            --track="audio/onuswar.mp3"
        elseif(i==48) then
            bg="images/bisorgo.png"
--            track="audio/bisorgo.mp3"
        elseif(i==49) then
            bg="images/chondrobindu.png"
--            track="audio/chondrobindu.mp3"

        end	    
    end
    

    --print(r)
    local r
    local numLetter=49
    r=sm


    
    local i1,i2,i3,i4
    local f1=0
    local f2=0
    local f3=0
    local f4=0
    
    local function assign()
        
        repeat
            i1=math.random(0,49)
            i2=math.random(0,49)
            i3=math.random(0,49)
            i4=math.random(0,49)
            
        
        
        until(i1 ~=i2 and i1 ~=i3 and i1 ~=i4 and i2 ~=i3 and i2 ~=i4 and i3 ~= i4)
        
        if(i1 ~= r and i2 ~= r and i3 ~= r and i4 ~= r)then
            
            local choice=math.random(0,3)
            
            if(choice==0)then
                i1=r
            elseif(choice==1)then
                i2=r
            elseif(choice==2)then
                i3=r
            elseif(choice==3)then
                i4=r
            end
            
        end    
        
        print(r,i1,i2,i3,i4)


        
        
    
    end
    
    assign()
    local function next()
            composer.removeScene("seematching")
            composer.gotoScene( "balloon2", { time=800, effect="crossFade" } )

        
    end
    
    local function correct()
        
            local right = display.newImageRect( sceneGroup, "images/right.png" , 120, 240 )
            local clock = os.clock
            function sleep(n)  -- seconds
              local t0 = clock()
              while clock() - t0 <= n do end
            end
        
            right.x = display.contentCenterX
	        right.y = display.contentCenterY
            
            local correctTrack
        
            correctTrack = audio.loadStream( "audio/balloon.mp3" )
            audio.play( correctTrack, { channel=1, loops=0 } )
            sleep(2)
            next()
        
            


        
    end
    local function mistake1()
        
            local wrong = display.newImageRect( sceneGroup, "images/wrong.png" , 200, 400 )
    
            wrong.x = display.contentCenterX-100
	        wrong.y = display.contentCenterY-200
            local wrongTrack
        
            wrongTrack = audio.loadStream( "audio/Wrong.mp3" )
            audio.play( wrongTrack, { channel=1, loops=0 } )

        
    end
    local function mistake2()
        
            local wrong = display.newImageRect( sceneGroup, "images/wrong.png" , 200, 400 )
    
            wrong.x = display.contentCenterX+100
	        wrong.y = display.contentCenterY-200
            local wrongTrack
        
            wrongTrack = audio.loadStream( "audio/Wrong.mp3" )
            audio.play( wrongTrack, { channel=1, loops=0 } )
        
    end
    local function mistake3()
        
            local wrong = display.newImageRect( sceneGroup, "images/wrong.png" , 200, 400 )
    
            wrong.x = display.contentCenterX-100
	        wrong.y = display.contentCenterY+200
            local wrongTrack
        
            wrongTrack = audio.loadStream( "audio/Wrong.mp3" )
            audio.play( wrongTrack, { channel=1, loops=0 } )
        
    end
    local function mistake4()
        
            local wrong = display.newImageRect( sceneGroup, "images/wrong.png" , 200, 400 )
    
            wrong.x = display.contentCenterX+100
	        wrong.y = display.contentCenterY+200
            local wrongTrack
        
            wrongTrack = audio.loadStream( "audio/Wrong.mp3" )
            audio.play( wrongTrack, { channel=1, loops=0 } )
        
    end
    
    


    i=i1
    draw()
    
    local option1 = display.newImageRect( sceneGroup, bg , 200, 400 )
    
	option1.x = display.contentCenterX-100
	option1.y = display.contentCenterY-200
    if(i==r) then
        option1:addEventListener( "tap", correct )
    else
        option1:addEventListener( "tap", mistake1 )

    end
    i=i2
    draw()
    local option2 = display.newImageRect( sceneGroup, bg , 200, 400 )
    
	option2.x = display.contentCenterX+100
	option2.y = display.contentCenterY-200
    if(i==r) then
        option2:addEventListener( "tap", correct )
    else
        option2:addEventListener( "tap", mistake2 )

    end
    i=i3
    draw()
    local option3 = display.newImageRect( sceneGroup, bg , 200, 400 )
    
	option3.x = display.contentCenterX-100
	option3.y = display.contentCenterY+200
    if(i==r) then
        option3:addEventListener( "tap", correct )
    else
        option3:addEventListener( "tap", mistake3 )

    end
    i=i4
    draw()
    local option4 = display.newImageRect( sceneGroup, bg , 200, 400 )
    
	option4.x = display.contentCenterX+100
	option4.y = display.contentCenterY+200
    if(i==r) then
        option4:addEventListener( "tap", correct )
    else
        option4:addEventListener( "tap", mistake4 )

    end
        
    local menuButton = display.newText( sceneGroup, "মেনু", display.contentCenterX, 20, native.systemFont, 44 )
	menuButton:setFillColor( 1, 1, 1 )
	menuButton:addEventListener( "tap", gotoMenu )
    





    
    




    



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
