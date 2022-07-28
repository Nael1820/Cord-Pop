Width = 15

function onCreate()
	makeLuaSprite('Black', 'empty', 0, 0-Width, 15)
	makeGraphic('Black', 1280, 90, '000000')
	setObjectCamera('Black', 'hud')
	addLuaSprite('Black', false)
	
	makeLuaSprite('Black2', 'empty', 0, 660-Width, 15)
	makeGraphic('Black2', 1280, 720, '000000')
	setObjectCamera('Black2', 'hud')
	addLuaSprite('Black2', false)
	
end