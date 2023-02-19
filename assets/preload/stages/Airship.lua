
local xx = 420;
local yy = 550;
local xx2 = 820;
local yy2 = 550;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;


function onCreate()
	-- background shit
	makeLuaSprite('bg', 'airship/bg', -800, -200);
	setScrollFactor('bg', 0.7, 0.7);
	scaleObject('bg', 1.2, 1);

	makeLuaSprite('fg', 'airship/fg', -800, -150);
	scaleObject('fg', 1.2, 1);

	makeLuaSprite('f', 'airship/admin', -800, -200);
	scaleObject('f', 1.2, 1);
	setScrollFactor('f', 0.9, 0.9);

	makeLuaSprite('ded', 'airship/bod', -400, 700);
	scaleObject('ded', 1.4, 1.4);

	if songName == 'dlow' then
		triggerEvent('Set GF Speed',2,0);
	end

	if songName == 'Oversight' then
		addLuaSprite('ded', true);
	end

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

	end

	addLuaSprite('bg', false);
	addLuaSprite('f', false);
	addLuaSprite('fg', false);
	
	function onUpdate()
		if del > 0 then
			del = del - 1
		end
		if del2 > 0 then
			del2 = del2 - 1
		end
		if followchars == true then
			if mustHitSection == false then
				if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
					triggerEvent('Camera Follow Pos',xx-ofs,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
					triggerEvent('Camera Follow Pos',xx+ofs,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singUP' then
					triggerEvent('Camera Follow Pos',xx,yy-ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
					triggerEvent('Camera Follow Pos',xx,yy+ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
					triggerEvent('Camera Follow Pos',xx-ofs,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
					triggerEvent('Camera Follow Pos',xx+ofs,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
					triggerEvent('Camera Follow Pos',xx,yy-ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
					triggerEvent('Camera Follow Pos',xx,yy+ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'idle' then
					triggerEvent('Camera Follow Pos',xx,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
					triggerEvent('Camera Follow Pos',xx,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'danceRight' then
					triggerEvent('Camera Follow Pos',xx,yy)
				end
			else
	
				if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
					triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
					triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
					triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
					triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
				end
			if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
					triggerEvent('Camera Follow Pos',xx2,yy2)
				end
			end
		else
			triggerEvent('Camera Follow Pos','','')
		end
		
	end
end