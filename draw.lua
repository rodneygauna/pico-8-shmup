-- draw.lua
function draw_game()
    cls(0)
    starfield()
    spr(shipspr,shipx,shipy)
    spr(flamespr,shipx,shipy+8)
    spr(16,bulx,buly)
    if muzzle>0 then
        circfill(shipx+3,shipy-2,muzzle,7)
    end
    print("score:"..score,40,1,12)
    lives=1
    for i=1,4 do
        if lives>=i then
            spr(13,i*9-8,1)
        else
            spr(14,i*9-8,1)
        end
    end
end

function draw_start()
    --print(blink())
    cls(1)
    print("my awesome shmup",34,40,12)
    print("press any key to start",20,80,blink())
end

function draw_over()
    cls(8)
    print("game over",48,40,2)
    print("press any key to continue",16,80,blink())
end