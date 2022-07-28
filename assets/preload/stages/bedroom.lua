function onCreate()
	-- background shit
	doTweenAlpha('hudAlpha', 'camHUD', 0, 0.001, 'linear');
	
	makeLuaSprite('lawl', 'lawl', 1112.55, 220.8);
	setLuaSpriteScrollFactor('lawl', 0.5, 0.5);
	addLuaSprite('lawl', false);
	
	makeLuaSprite('background', 'background', 171.8, 123.15);
	setLuaSpriteScrollFactor('background', 0.9, 0.9);
	addLuaSprite('background', false);
	
	makeLuaSprite('lighting', 'lighting', -74.3, -72);
	setLuaSpriteScrollFactor('lighting', 0.9, 0.9);
	addLuaSprite('lighting', true);
	
	addLuaSprite('lawl', true);
	addLuaSprite('background', true);
	addLuaSprite('lighting', true);
	
	makeAnimatedLuaSprite('fan', 'fan', 1528.55, 553.45)
	luaSpriteAddAnimationByPrefix('fan', 'fan', 'fan', 24, true);
	setLuaSpriteScrollFactor('lighting', 0.9, 0.9);
	addLuaSprite('fan', false);
	
	doTweenAlpha('hudAlpha', 'camHUD', 1, 0.2, 'linear');
	
end

  beatHitFuncs = {

	[1] = function()
	setProperty('boyfriend.y', getProperty('boyfriend.y') - 0)
	end,
	
	[197] = function() --1:24
	doTweenX('move', 'boyfriend', 730, 2, 'expoInOut')
	end,
	
	[318] = function() --2:19
	setProperty('boyfriend.x', 730)
	end,

}
function onBeatHit()
	if beatHitFuncs[curBeat] then 
		beatHitFuncs[curBeat]()
	
	end
end

--stuff

--change character = 1, dj
--1, surprise
--1, backlook
--1, lookidle
--1, looking