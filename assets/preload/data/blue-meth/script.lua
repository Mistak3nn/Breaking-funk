
 function onCreate()

precacheImage("epico")
    makeLuaSprite('epico','walter/epic_part',-200, -30)
     addLuaSprite('epico',true)
    addLuaSprite('epico',true)
    setScrollFactor('epico',0,0)
    setObjectCamera('epico','hud')
    setProperty('epico.visible', false);
    

    makeLuaSprite('arriba','',-200,-10)
    makeGraphic('arriba',2000,180,'000000')
    addLuaSprite('arriba',false)
    setScrollFactor('arriba',0,0)
    setObjectCamera('arriba','hud')
    
    makeLuaSprite('abajo','',-200,580)
    makeGraphic('abajo',2000,190,'000000')
    addLuaSprite('abajo',false)
    setScrollFactor('abajo',0,0)
    setObjectCamera('abajo','hud')

        makeLuaSprite('normal', 'icons/jesse_icon1', getProperty('iconP2.x'), getProperty('iconP2.y'))
        setObjectCamera('normal', 'HUD')
        addLuaSprite('normal', true)
        setObjectOrder('normal', getObjectOrder('iconP1') + 1)
        setProperty('normal.visible', true)

        makeLuaSprite('dead', 'icons/jesse_icon2', getProperty('iconP2.x'), getProperty('iconP2.y')) 
        setObjectCamera('dead', 'HUD')
        addLuaSprite('dead', true)
        setObjectOrder('dead', getObjectOrder('iconP2') + 1)
        setProperty('dead.visible', false)
end

function onUpdatePost(elapsed)
        setProperty('normal.x', getProperty('iconP1.x') + -189) 
        setProperty('normal.angle', getProperty('iconP2.angle'))
        setProperty('normal.scale.x', getProperty('iconP2.scale.x'))
	setProperty('normal.scale.y', getProperty('iconP2.scale.y'))
        setProperty('normal.y', getProperty('iconP1.y') - 30) 


        setProperty('dead.x', getProperty('iconP1.x') + -209)
        setProperty('dead.angle', getProperty('iconP2.angle'))
        setProperty('dead.y', getProperty('iconP1.y') - 50)
        setProperty('dead.scale.x', getProperty('iconP2.scale.x'))
	setProperty('dead.scale.y', getProperty('iconP2.scale.y'))

       if getProperty('health') > 1.6 then
        setProperty('normal.visible', false) 
        setProperty('dead.visible', true)
    else
        setProperty('normal.visible', true)
        setProperty('dead.visible', false) 
    end


end
