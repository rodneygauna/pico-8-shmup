-- tools.lua
function starfield()
    for i=1,#starx do
        local scol=6
        if starspd[i]<1 then
            scol=1
        elseif starspd[i]<1.5 then
            scol=13
        end
        pset(starx[i],stary[i],scol)
    end
end

function animatestars()
    for i=1,#stary do
        local sy=stary[i]
        sy=sy+starspd[i]
        if sy>128 then
            sy=sy-128
        end
        stary[i]=sy
    end
end

function blink()
    local banim={5,5,5,5,5,5,5,5,5,5,5,6,6,7,7,6,6,5}
    if blinkt>#banim then
        blinkt=1
    end
    return banim[blinkt]
end