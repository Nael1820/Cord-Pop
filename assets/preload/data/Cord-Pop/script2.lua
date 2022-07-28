IntroTextSize = 20	
IntroSubTextSize = 30 
IntroTagColor = 'ECAAB9'	
IntroTagWidth = 15

function onCreate()
	makeLuaSprite('JukeBoxTag', 'empty', -325, 200-IntroTagWidth, 15)
	makeGraphic('JukeBoxTag', 300+IntroTagWidth, 100, IntroTagColor)
	setObjectCamera('JukeBoxTag', 'other')
	addLuaSprite('JukeBoxTag', true)

	makeLuaSprite('JukeBox', 'empty', -325, 200-IntroTagWidth, 15)
	makeGraphic('JukeBox', 300, 100, '000000')
	setObjectCamera('JukeBox', 'other')
	addLuaSprite('JukeBox', true)

	makeLuaText('JukeBoxText', ' Now Playing:', 350, -225-IntroTagWidth, 200)
	setTextAlignment('JukeBoxText', 'left')
	setObjectCamera('JukeBoxText', 'other')
	setTextSize('JukeBoxText', IntroTextSize)
	addLuaText('JukeBoxText')
	
	makeLuaText('JukeBoxSubText', 'Cord-Pop', 160, -205-IntroTagWidth, 235)
	setObjectCamera('JukeBoxSubText', 'other')
	setTextSize('JukeBoxSubText', 30)
	addLuaText('JukeBoxSubText', 30, 0)
end

function onSongStart()
	doTweenX('MoveInOne', 'JukeBoxTag', 0, 1, 'CircInOut')
	doTweenX('MoveInTwo', 'JukeBox', 0, 1, 'CircInOut')
	doTweenX('MoveInThree', 'JukeBoxText', 0, 1, 'CircInOut')
	doTweenX('MoveInFour', 'JukeBoxSubText', 0, 1, 'CircInOut')
	
	runTimer('JukeBoxWait', 3, 1)
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'JukeBoxWait' then
		doTweenX('MoveOutOne', 'JukeBoxTag', -400, 1.5, 'CircInOut')
		doTweenX('MoveOutTwo', 'JukeBox', -400, 1.5, 'CircInOut')
		doTweenX('MoveOutThree', 'JukeBoxText', -380, 1.5, 'CircInOut')
		doTweenX('MoveOutFour', 'JukeBoxSubText', -300, 1.5, 'CircInOut')
	end
end