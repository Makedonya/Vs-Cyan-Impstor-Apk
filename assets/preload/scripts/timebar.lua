--CREDIT TO 1F1D ON GAMEBANANA FOR MAKING THIS SCRIPT
--CREDIT TO Tomek*Tomciok*Przybysz ON GAMEBANANA FOR FIXING THE SCRIPT


--
function onCreatePost()

setProperty('timeBarBG.visible', false)
setProperty('timeBar.visible', false)
setProperty('timeTxt.visible', false)
end

function onCreate()

makeLuaSprite('black', 'black', 60, 10)
makeLuaSprite('gray', 'gray', 60, 10)
makeLuaSprite('green', 'green', 121.7, 17.45)


addLuaSprite('gray', true)
addLuaSprite('green', true)
addLuaSprite('black', true)

setObjectCamera('black', 'hud')
setObjectCamera('gray', 'hud')
setObjectCamera('green', 'hud')

scaleObject('green', 1.965, 1.3)
scaleObject('black', 1, 1.3)
scaleObject('gray', 1, 1.3)

end

function onUpdate()

    

    makeLuaText("nametext", songName, 0, 129, 14.85)
    setTextSize('nametext', 18)
    addLuaText("nametext")
    setTextAlignment('nametext', 'left')

    scaleObject('green', 1 * getProperty("songPercent"), 1.3)

    if downscroll then -- downscroll only
        setProperty('black.y', 685)
        setProperty('gray.y', 690)
        setProperty('green.y', 690)
        setProperty('nametext.y', 685)
    end
end
