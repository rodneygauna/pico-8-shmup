-- tools.lua
function starfield()
    --[[
        for i=1,#starx do
        local scol=6
        if starspd[i]<1 then
            scol=1
        elseif starspd[i]<1.5 then
            scol=13
        end
        pset(starx[i],stary[i],scol)
    end
    ]]

    for i=1,#stars do
        local mystar=stars[i]
        local scol=6
        if mystar.spd<1 then
            scol=1
        elseif mystar.spd<1.5 then
            scol=13
        end
        pset(mystar.x,mystar.y,scol)
    end
end

function animatestars()
    --[[
    for i=1,#stary do
        local sy=stary[i]
        sy=sy+starspd[i]
        if sy>128 then
            sy=sy-128
        end
        stary[i]=sy
    end
    ]]

    for i=1,#stars do
        local mystar=stars[i]
        mystar.y=mystar.y+mystar.spd
        if mystar.y>128 then
            mystar.y=mystar.y-128
        end
    end
end

function blink()
    local banim={5,5,5,5,5,5,5,5,5,5,5,6,6,7,7,6,6,5}
    if blinkt>#banim then
        blinkt=1
    end
    return banim[blinkt]
end