function onCreatePost()
	if not downscroll then
        setProperty('healthBarBG.visible', false);
        makeLuaSprite('cupheadhealthbar', 'amongbar', 0, 625);
        addLuaSprite('cupheadhealthbar', true);
        screenCenter('cupheadhealthbar', 'x');
        setObjectCamera('cupheadhealthbar', 'camHUD');
        setObjectOrder('cupheadhealthbar', getObjectOrder('healthBar') + 1);
        scaleObject('healthBar', 1, 2.5);
        setProperty('healthBar.y', getProperty('healthBar.y') - 1);
        setProperty('iconP1.y', 575)
    else
        setProperty('healthBarBG.visible', false);
        makeLuaSprite('cupheadhealthbar', 'amongbar', 0, 65);
        addLuaSprite('cupheadhealthbar', true);
        screenCenter('cupheadhealthbar', 'x');
        setObjectCamera('cupheadhealthbar', 'camHUD');
        setObjectOrder('cupheadhealthbar', getObjectOrder('healthBar') + 1);
        scaleObject('healthBar', 1, 2.5);
        setProperty('healthBar.y', getProperty('healthBar.y') - 1);
        setProperty('iconP1.y', 10)
    end
end