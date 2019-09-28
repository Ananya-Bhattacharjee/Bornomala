-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local composer = require( "composer" )
display.setStatusBar( display.HiddenStatusBar )

gameMusic = audio.loadStream( "audio/bgm.mp3" )
 audio.setVolume(0.3,{channel=1})
-- Play the music
audio.play( gameMusic, {channel=1, loops = -1 } )

-- Seed the random number generator
math.randomseed( os.time() )
dri=0
sm=0
composer.gotoScene( "menu" )
