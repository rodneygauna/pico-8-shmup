-- update.lau
function update_game()
    --controls
    shipsx=0
    shipsy=0
    shipspr=2
    if btn(0) then
        shipsx=-2
        shipspr=1
    end
    if btn(1) then
        shipsx=2
        shipspr=3
    end
    if btn(2) then
        shipsy=-2
    end
    if btn(3) then
        shipsy=2
    end
    if btnp(4) then
        mode="over"
    end
    if btnp(5) then
        bulx=shipx
        buly=shipy-3
        sfx(0)
        muzzle=6
    end
    --moving the ship
    shipx=shipx+shipsx
    shipy=shipy+shipsy
    --move the bullet
    buly=buly-4
    --animate flame
    flamespr=flamespr+1
    if flamespr>9 then
        flamespr=5
    end
    --animate mullze flash
    if muzzle>0 then
        muzzle=muzzle-1
    end
    --checking if we hit the edge
    if shipx>120 then
        shipx=0
    end
    if shipx<0 then
        shipx=120
    end
    animatestars()
end

function update_start()
    if btnp(4) or btnp(5) then
        startgame()
    end
end

function update_over()
    if btnp(4) or btnp(5) then
        mode="start"
    end
end