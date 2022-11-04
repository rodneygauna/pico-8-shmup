-- main.lua
function _init()
    --this will clear the screen
    cls(0)
    mode="start"
    blinkt=1
end

function _update()
    blinkt+=1
    if mode=="game" then
        update_game()
    elseif mode=="start" then
        update_start()
    elseif mode=="over" then
        update_over()
    end
end

function _draw()
    if mode=="game" then
        draw_game()
    elseif mode=="start" then
        draw_start()
    elseif mode=="over" then
        draw_over()
    end
end

function startgame()
    mode="game"
    shipx=64
    shipy=64
    shipsx=0
    shipsy=0
    shipspr=2
    flamespr=5
    bulx=64
    buly=-10
    muzzle=0
    score=10000
    lives=3
    starx={}
    stary={}
    starspd={}
    for i=1,100 do
        add(starx,flr(rnd(128)))
        add(stary,flr(rnd(128)))
        add(starspd,rnd(1.5)+0.5)
    end

    stars={}
    for i=1,100 do
        local newstar={}
        newstar.x=flr(rnd(128))
        newstar.y=flr(rnd(128))
        newstar.spd=rnd(1.5)+0.5
        add(stars,newstar)
    end
end