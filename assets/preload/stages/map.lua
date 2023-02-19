function onCreate()
	-- background shit
	makeLuaSprite('grayblue', 'grayblue', -600, -300);
	setScrollFactor('grayblue', 0.9, 0.9);
	

	addLuaSprite('grayblue', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end