
local composer = require( "composer" )

local scene = composer.newScene()

local x1
local x2
local x3
local x4
local x5
local x6
local x7
local x8
local x9
local x10
local x11
local x12
local x13
local x14

local function gotoLevel2()
    print(2)
    --local sqlite3 = require( "sqlite3" )
    
    dri=0
    --x1:removeSelf()
    --x2:removeSelf()
    x3:removeSelf()
    x4:removeSelf()
    --x5:removeSelf()
    --x6:removeSelf()
    --x7:removeSelf()
    --x8:removeSelf()
    --x9:removeSelf()
    --x10:removeSelf()
    --x11:removeSelf()
    --x12:removeSelf()
    --x13:removeSelf()
    --x14:removeSelf()
    composer.removeScene("menu")

    -- Create a file path for the database file "data.db"
    composer.gotoScene( "level2.start", { time=800, effect="crossFade" } )
end


local function gotoTrain()
    --x1:removeSelf()
    --x2:removeSelf()
    x3:removeSelf()
    x4:removeSelf()
    --x5:removeSelf()
    --x6:removeSelf()
    --x7:removeSelf()
    --x8:removeSelf()
    --x9:removeSelf()
    --x10:removeSelf()
    --x11:removeSelf()
    --x12:removeSelf()
    --x13:removeSelf()
    --x14:removeSelf()
    composer.removeScene("menu")

    composer.gotoScene( "train", { time=800, effect="crossFade" } )
end
local function gotoExit()
    --x1:removeSelf()
    --x2:removeSelf()
    x3:removeSelf()
    x4:removeSelf()
    --x5:removeSelf()
    --x6:removeSelf()
    --x7:removeSelf()
    --x8:removeSelf()
    --x9:removeSelf()
    --x10:removeSelf()
    --x11:removeSelf()
    --x12:removeSelf()
    --x13:removeSelf()
    --x14:removeSelf()
    composer.removeScene("menu")

    os.exit()
end
local function onKeyEvent( event )

    if  "back" == event.keyName  then
        return true



    end
    return true

end



local function gotoTest()
    --x1:removeSelf()
    --x2:removeSelf()
    x3:removeSelf()
    x4:removeSelf()
    --x5:removeSelf()
    --x6:removeSelf()
    --x7:removeSelf()
    --x8:removeSelf()
    --x9:removeSelf()
    --x10:removeSelf()
    --x11:removeSelf()
    --x12:removeSelf()
    --x13:removeSelf()
    --x14:removeSelf()
    
    composer.removeScene("menu")
	composer.gotoScene( "test", { time=800, effect="crossFade" } )
end

local function gotoStart()
    dri=0
    --x1:removeSelf()
    --x2:removeSelf()
    x3:removeSelf()
    x4:removeSelf()
    --x5:removeSelf()
    --x6:removeSelf()
    --x7:removeSelf()
    --x8:removeSelf()
    --x9:removeSelf()
    --x10:removeSelf()
    --x11:removeSelf()
    --x12:removeSelf()
    --x13:removeSelf()
    --x14:removeSelf()

    composer.removeScene("menu")
    
	composer.gotoScene( "start", { time=800, effect="crossFade" } )
end


local function gotoLetters()
    --x1:removeSelf()
    --x2:removeSelf()
    x3:removeSelf()
    x4:removeSelf()
    --x5:removeSelf()
    --x6:removeSelf()
    --x7:removeSelf()
    --x8:removeSelf()
    --x9:removeSelf()
    --x10:removeSelf()
    --x11:removeSelf()
    --x12:removeSelf()
    --x13:removeSelf()
    --x14:removeSelf()

    composer.removeScene("menu")

    composer.gotoScene( "letters", { time=800, effect="crossFade" } )
end

local function gotoMatching()
    --x1:removeSelf()
    --x2:removeSelf()
    x3:removeSelf()
    x4:removeSelf()
    --x5:removeSelf()
    --x6:removeSelf()
    --x7:removeSelf()
    --x8:removeSelf()
    --x9:removeSelf()
    --x10:removeSelf()
    --x11:removeSelf()
    --x12:removeSelf()
    --x13:removeSelf()
    --x14:removeSelf()

    composer.removeScene("menu")

    composer.gotoScene( "matching", { time=800, effect="crossFade" } )
end

local function gotoSeeMatching()
    --x1:removeSelf()
    --x2:removeSelf()
    x3:removeSelf()
    x4:removeSelf()
    --x5:removeSelf()
    --x6:removeSelf()
    --x7:removeSelf()
    --x8:removeSelf()
    --x9:removeSelf()
    --x10:removeSelf()
    --x11:removeSelf()
    --x12:removeSelf()
    --x13:removeSelf()
    --x14:removeSelf()

    composer.removeScene("menu")

    composer.gotoScene( "smc", { time=800, effect="crossFade" } )
end


local function gotoDraw()
    --x1:removeSelf()
    --x2:removeSelf()
    x3:removeSelf()
    x4:removeSelf()
    --x5:removeSelf()
    --x6:removeSelf()
    --x7:removeSelf()
    --x8:removeSelf()
    --x9:removeSelf()
    --x10:removeSelf()
    --x11:removeSelf()
    --x12:removeSelf()
    --x13:removeSelf()
    --x14:removeSelf()
    composer.removeScene("menu")

    composer.gotoScene( "draw", { time=800, effect="crossFade" } )
end


-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

	local sceneGroup = self.view
	-- Code here runs when the scene is first created but has not yet appeared on screen

	local background = display.newImageRect( sceneGroup, "bg2.png", 800, 1200 )
	background.x = display.contentCenterX
	background.y = display.contentCenterY
    
    --local widget = require "widget"
--    local roundedRect = display.newRoundedRect( display.contentCenterX, 200, 350, 60, 12 )
--    roundedRect.strokeWidth = 3
 --   roundedRect:setFillColor(75/255, 0/255, 130/255)
  --  roundedRect:setStrokeColor( 0.5, 0.2, 0.8 )
    --roundedRect:removeSelf()
    --x1=roundedRect
    --local text = display.newText( "লেভেল ১", roundedRect.x, roundedRect.y, "gameFont", 30  )

    --local sx = roundedRect.contentWidth/text.contentWidth
    --local sy = roundedRect.contentHeight/text.contentHeight
    --local scale = (sx < sy ) and sx or sy

    --text:scale( scale, scale )
    --x2=text



    --local startButton = display.newText( sceneGroup, "লেভেল ১", display.contentCenterX, 200, native.systemFont, 44 )
	--startButton:setFillColor( 1, 0, 0.2 )
    --local startButton=display.newImageRect(sceneGroup,"level1.png",400,100)
    --startButton.x=display.contentCenterX
    --startButton.y=80



--	roundedRect:addEventListener( "tap", gotoStart )
    
    local roundedRect2 = display.newRoundedRect( display.contentCenterX, 450, 450, 200, 12 )
    roundedRect2.strokeWidth = 3
    roundedRect2:setFillColor(250/255, 165/255, 0/255)
    roundedRect2:setStrokeColor( 0.5, 0.2, 0.8 )
    --roundedRect:removeSelf()
    x3=roundedRect2
    local text2 = display.newText( "শুরু করি", roundedRect2.x, roundedRect2.y, "gameFont", 40  )

    local sx2 = roundedRect2.contentWidth/text2.contentWidth
    local sy2 = roundedRect2.contentHeight/text2.contentHeight
    local scale2 = (sx2 < sy2) and sx2 or sy2

    text2:scale( scale2, scale2 )
    x4=text2

    
    
    --local level2Button = display.newText( sceneGroup, "লেভেল ২", display.contentCenterX, 290, native.systemFont, 44 )
	--level2Button:setFillColor( 1, 0.6, 0.2 )
    --local level2Button=display.newImageRect(sceneGroup,"level2.png",400,100)
    --level2Button.x=display.contentCenterX
    --level2Button.y=200


	roundedRect2:addEventListener( "tap", gotoLevel2 )
	
	
	
	local button  = display.newText( sceneGroup, "বিস্তারিত জানতে এখানে ক্লিক করুন", display.contentCenterX, 800, native.systemFont, 30 )
	function button:tap()
		system.openURL( "https://sites.google.com/view/bornomalaproject/home" ) -- open URL in browser
	end

	button:addEventListener('tap', button)

    

--    local roundedRect3 = display.newRoundedRect( display.contentCenterX, 400, 350, 60, 12 )
--    roundedRect3.strokeWidth = 3
--    roundedRect3:setFillColor(75/255, 0/255, 130/255)
 --   roundedRect3:setStrokeColor( 0.5, 0.2, 0.8 )
    --roundedRect:removeSelf()
   -- x5=roundedRect3
    --local text3 = display.newText( "বর্ণমালা", roundedRect3.x, roundedRect3.y, "gameFont", 30  )

    --local sx3 = roundedRect3.contentWidth/text3.contentWidth
    --local sy3 = roundedRect3.contentHeight/text3.contentHeight
    --local scale3 = (sx3 < sy3) and sx3 or sy3

--    text3:scale( scale3, scale3 )
 --   x6=text3
    
    
	--local lettersButton = display.newText( sceneGroup, "বর্ণমালা", display.contentCenterX, 380, native.systemFont, 44 )
	--lettersButton:setFillColor( 1, 0.6, 0.2 )
    --local lettersButton=display.newImageRect(sceneGroup,"bornomala.png",400,100)
    --lettersButton.x=display.contentCenterX
    --lettersButton.y=320


	--roundedRect3:addEventListener( "tap", gotoLetters )

    
    --local roundedRect4 = display.newRoundedRect( display.contentCenterX, 500, 350, 60, 12 )
    --roundedRect4.strokeWidth = 3
    --roundedRect4:setFillColor(75/255, 0/255, 130/255)
    --roundedRect4:setStrokeColor( 0.5, 0.2, 0.8 )
    --roundedRect:removeSelf()
    --x7=roundedRect4
    --local text4 = display.newText( "শুনি এবং মিলাই", roundedRect4.x, roundedRect4.y, "gameFont", 30  )

    --local sx4 = roundedRect4.contentWidth/text4.contentWidth
    --local sy4 = roundedRect4.contentHeight/text4.contentHeight
    --local scale4 = (sx4 < sy4) and sx4 or sy4

    --text4:scale( scale4, scale4 )
    --x8=text4

    
	--local matchButton = display.newText( sceneGroup, "শুনি এবং মিলাই", display.contentCenterX, 470, native.systemFont, 44 )
	--matchButton:setFillColor( 1, 0, 0.2 )
    --local matchButton=display.newImageRect(sceneGroup,"shuni.png",400,100)
    --matchButton.x=display.contentCenterX
    --matchButton.y=440



	--roundedRect4:addEventListener( "tap", gotoMatching )
    
    --local roundedRect5 = display.newRoundedRect( display.contentCenterX, 600, 350, 60, 12 )
    --roundedRect5.strokeWidth = 3
    --roundedRect5:setFillColor(75/255, 0/255, 130/255)
    --roundedRect5:setStrokeColor( 0.5, 0.2, 0.8 )
    --roundedRect:removeSelf()
    --x9=roundedRect5
    --local text5 = display.newText( "দেখি এবং মিলাই", roundedRect5.x, roundedRect5.y, "gameFont", 30  )

    --local sx5 = roundedRect5.contentWidth/text5.contentWidth
    --local sy5 = roundedRect5.contentHeight/text5.contentHeight
    --local scale5 = (sx5 < sy5) and sx5 or sy5

--    text5:scale( scale5, scale5 )
 --   x10=text5


	--local matchButton = display.newText( sceneGroup, "দেখি এবং মিলাই", display.contentCenterX, 560, native.systemFont, 44 )
	--matchButton:setFillColor( 1, 0, 0.2 )
    --local matchButton=display.newImageRect(sceneGroup,"dekhi.png",400,100)
    --matchButton.x=display.contentCenterX
    --matchButton.y=560


	--roundedRect5:addEventListener( "tap", gotoSeeMatching)

    --local roundedRect6 = display.newRoundedRect( display.contentCenterX, 700, 350, 60, 12 )
    --roundedRect6.strokeWidth = 3
    --roundedRect6:setFillColor(75/255, 0/255, 130/255)
    --roundedRect6:setStrokeColor( 0.5, 0.2, 0.8 )
    --roundedRect:removeSelf()
    --x11=roundedRect6
    --local text6 = display.newText( "লিখি", roundedRect6.x, roundedRect6.y, "gameFont", 30  )

    --local sx6 = roundedRect6.contentWidth/text6.contentWidth
    --local sy6 = roundedRect6.contentHeight/text6.contentHeight
    --local scale6 = (sx6 < sy6) and sx6 or sy6

    --text6:scale( scale6, scale6 )
    --x12=text6

    
    --local drawButton = display.newText( sceneGroup,"লিখি", display.contentCenterX, 650, native.systemFont, 44 )
	--drawButton:setFillColor( 1, 0.6, 0.2 )
    
    --local drawButton=display.newImageRect(sceneGroup,"likhi.png",400,100)
    --drawButton.x=display.contentCenterX
    --drawButton.y=680

	--roundedRect6:addEventListener( "tap", gotoDraw )
    
    --local roundedRect7 = display.newRoundedRect( display.contentCenterX, 800, 350, 60, 12 )
    --roundedRect7.strokeWidth = 3
    --roundedRect7:setFillColor(75/255, 0/255, 130/255)
    --roundedRect7:setStrokeColor( 0.5, 0.2, 0.8 )
    --roundedRect:removeSelf()
    --x13=roundedRect7
    --local text7 = display.newText( "শেষ", roundedRect6.x, roundedRect7.y, "gameFont", 30  )

    --local sx7 = roundedRect7.contentWidth/text7.contentWidth
    --local sy7 = roundedRect7.contentHeight/text7.contentHeight
    --local scale7 = (sx7 < sy7) and sx7 or sy7

    --text7:scale( scale7, scale7 )
    --x14=text7

    
    --local exitButton = display.newText( sceneGroup,"শেষ", display.contentCenterX, 740, native.systemFont, 44 )
	--exitButton:setFillColor( 1, 0, 0.2 )
    --local exitButton=display.newImageRect(sceneGroup,"ses.png",400,100)
    --exitButton.x=display.contentCenterX
    --exitButton.y=800

    
    --roundedRect7:addEventListener( "tap", gotoExit )

    
    --local trainButton = display.newText( sceneGroup, "train", display.contentCenterX, 500, native.systemFont, 44 )
	--trainButton:setFillColor( 0, 0.6, 1 )


	--trainButton:addEventListener( "tap", gotoTrain )

    --local testButton = display.newText( sceneGroup, "test", display.contentCenterX, 570, native.systemFont, 44 )
	--testButton:setFillColor( 0, 0.6, 1 )


	--testButton:addEventListener( "tap", gotoTest )


    
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
