local ffi = require 'ffi'
local bit = require 'bit32'

    --fonts
    
    local verdanaindcros = renderer.setup_font("./csgo/cache/mercury/fonts/verdana.ttf", 13, 32)
    local verdanakey = renderer.setup_font("./csgo/cache/mercury/fonts/verdana.ttf", 16, 0)
    local verdana_arrows = renderer.setup_font("./csgo/cache/mercury/fonts/verdana.ttf", 25, 32)
    local text_font = renderer.setup_font( "./csgo/cache/mercury/fonts/Arial.ttf", 13, 4 and 32 )
    local tab_font = renderer.setup_font("./csgo/cache/mercury/fonts/verdana.ttf", 13, 4 and 32)
    font2 = renderer.setup_font( "./csgo/cache/mercury/fonts/GOTHIC.ttf", 15, 4 and 32 )
    font_icons = renderer.setup_font( "./csgo/cache/mercury/fonts/csgo_icons.ttf", 36, 4 )
    local verholo1 = renderer.setup_font("./csgo/cache/mercury/fonts/verdana.ttf", 12, 4 and 16 and 128)
    local weapon_holo_font = renderer.setup_font("./csgo/cache/mercury/fonts/csgo_icons.ttf", 35, 4 and 16)
    local verkey1 = renderer.setup_font("./csgo/cache/mercury/fonts/verdana.ttf", 16, 4)
    
    local verkey = renderer.setup_font("./csgo/cache/mercury/fonts/verdana.ttf", 13, 0)
    local got = renderer.setup_font("./csgo/cache/mercury/fonts/gothic.ttf", 19, 4)
    local verdana123lolak = renderer.setup_font("./csgo/cache/mercury/fonts/verdana.ttf", 13.5, 0)
    local spectatorsverdana = renderer.setup_font("./csgo/cache/mercury/fonts/verdana.ttf", 15, 4)
    local verdanaspec = renderer.setup_font("./csgo/cache/mercury/fonts/GOTHIC.ttf", 18, 0)
    local panellfont = renderer.setup_font("./csgo/cache/mercury/fonts/Fifaks10Dev1.ttf", 12, 0)
    local panellfont1 = renderer.setup_font("./csgo/cache/mercury/fonts/Fifaks10Dev1.ttf", 15, 0)
    
    font = { 
        museosans = renderer.setup_font("./csgo/cache/mercury/fonts/tahoma.ttf", 12, 4 and 32), 
    }
    local fonts = {
        verdana = renderer.setup_font('./csgo/cache/mercury/fonts/verdana.ttf', 15, 4),
       }
    local tahoma_bold = renderer.setup_font("./csgo/cache/mercury/fonts/tahomabd.ttf", 14, 0)
    local tahoma_boldind = renderer.setup_font("./csgo/cache/mercury/fonts/tahomabd.ttf", 11, 0)
    local text_font = renderer.setup_font( "C:/Windows/fonts/Arial.ttf", 13, 4 and 32 )
    verdana = renderer.setup_font("./csgo/cache/mercury/fonts/verdana.ttf", 15, 32)
    verdana_trsp = renderer.setup_font("./csgo/cache/mercury/fonts/verdana.ttf", 13.5, 4 and 32)








--//http checker
local function c_http()
--//json http
local function c_json()
    local a={_version="0.1.2"}local b;local c={["\\"]="\\",["\""]="\"",["\b"]="b",["\f"]="f",["\n"]="n",["\r"]="r",["\t"]="t"}local d={["/"]="/"}for e,f in pairs(c)do d[f]=e end;local function g(h)return"\\"..(c[h]or string.format("u%04x",h:byte()))end;local function i(j)return"null"end;local function k(j,l)local m={}l=l or{}if l[j]then error("circular reference")end;l[j]=true;if rawget(j,1)~=nil or next(j)==nil then local n=0;for e in pairs(j)do if type(e)~="number"then error("invalid table: mixed or invalid key types")end;n=n+1 end;if n~=#j then error("invalid table: sparse array")end;for o,f in ipairs(j)do table.insert(m,b(f,l))end;l[j]=nil;return"["..table.concat(m,",").."]"else for e,f in pairs(j)do if type(e)~="string"then error("invalid table: mixed or invalid key types")end;table.insert(m,b(e,l)..":"..b(f,l))end;l[j]=nil;return"{"..table.concat(m,",").."}"end end;local function p(j)return'"'..j:gsub('[%z\1-\31\\"]',g)..'"'end;local function q(j)if j~=j or j<=-math.huge or j>=math.huge then error("unexpected number value '"..tostring(j).."'")end;return string.format("%.14g",j)end;local r={["nil"]=i,["table"]=k,["string"]=p,["number"]=q,["boolean"]=tostring}b=function(j,l)local s=type(j)local t=r[s]if t then return t(j,l)end;error("unexpected type '"..s.."'")end;function a.encode(j)return b(j)end;local u;local function v(...)local m={}for o=1,select("#",...)do m[select(o,...)]=true end;return m end;local w=v(" ","\t","\r","\n")local x=v(" ","\t","\r","\n","]","}",",")local y=v("\\","/",'"',"b","f","n","r","t","u")local z=v("true","false","null")local A={["true"]=true,["false"]=false,["null"]=nil}local function B(C,D,E,F)for o=D,#C do if E[C:sub(o,o)]~=F then return o end end;return#C+1 end;local function G(C,D,H)local I=1;local J=1;for o=1,D-1 do J=J+1;if C:sub(o,o)=="\n"then I=I+1;J=1 end end;error(string.format("%s at line %d col %d",H,I,J))end;local function K(n)local t=math.floor;if n<=0x7f then return string.char(n)elseif n<=0x7ff then return string.char(t(n/64)+192,n%64+128)elseif n<=0xffff then return string.char(t(n/4096)+224,t(n%4096/64)+128,n%64+128)elseif n<=0x10ffff then return string.char(t(n/262144)+240,t(n%262144/4096)+128,t(n%4096/64)+128,n%64+128)end;error(string.format("invalid unicode codepoint '%x'",n))end;local function L(M)local N=tonumber(M:sub(1,4),16)local O=tonumber(M:sub(7,10),16)if O then return K((N-0xd800)*0x400+O-0xdc00+0x10000)else return K(N)end end;local function P(C,o)local m=""local Q=o+1;local e=Q;while Q<=#C do local R=C:byte(Q)if R<32 then G(C,Q,"control character in string")elseif R==92 then m=m..C:sub(e,Q-1)Q=Q+1;local h=C:sub(Q,Q)if h=="u"then local S=C:match("^[dD][89aAbB]%x%x\\u%x%x%x%x",Q+1)or C:match("^%x%x%x%x",Q+1)or G(C,Q-1,"invalid unicode escape in string")m=m..L(S)Q=Q+#S else if not y[h]then G(C,Q-1,"invalid escape char '"..h.."' in string")end;m=m..d[h]end;e=Q+1 elseif R==34 then m=m..C:sub(e,Q-1)return m,Q+1 end;Q=Q+1 end;G(C,o,"expected closing quote for string")end;local function T(C,o)local R=B(C,o,x)local M=C:sub(o,R-1)local n=tonumber(M)if not n then G(C,o,"invalid number '"..M.."'")end;return n,R end;local function U(C,o)local R=B(C,o,x)local V=C:sub(o,R-1)if not z[V]then G(C,o,"invalid literal '"..V.."'")end;return A[V],R end;local function W(C,o)local m={}local n=1;o=o+1;while 1 do local R;o=B(C,o,w,true)if C:sub(o,o)=="]"then o=o+1;break end;R,o=u(C,o)m[n]=R;n=n+1;o=B(C,o,w,true)local X=C:sub(o,o)o=o+1;if X=="]"then break end;if X~=","then G(C,o,"expected ']' or ','")end end;return m,o end;local function Y(C,o)local m={}o=o+1;while 1 do local Z,j;o=B(C,o,w,true)if C:sub(o,o)=="}"then o=o+1;break end;if C:sub(o,o)~='"'then G(C,o,"expected string for key")end;Z,o=u(C,o)o=B(C,o,w,true)if C:sub(o,o)~=":"then G(C,o,"expected ':' after key")end;o=B(C,o+1,w,true)j,o=u(C,o)m[Z]=j;o=B(C,o,w,true)local X=C:sub(o,o)o=o+1;if X=="}"then break end;if X~=","then G(C,o,"expected '}' or ','")end end;return m,o end;local _={['"']=P,["0"]=T,["1"]=T,["2"]=T,["3"]=T,["4"]=T,["5"]=T,["6"]=T,["7"]=T,["8"]=T,["9"]=T,["-"]=T,["t"]=U,["f"]=U,["n"]=U,["["]=W,["{"]=Y}u=function(C,D)local X=C:sub(D,D)local t=_[X]if t then return t(C,D)end;G(C,D,"unexpected character '"..X.."'")end;function a.decode(C)if type(C)~="string"then error("expected argument of type string, got "..type(C))end;local m,D=u(C,B(C,1,w,true))D=B(C,D,w,true)if D<=#C then G(C,D,"trailing garbage")end;return m end;return a
end
--//json http
local json = c_json()

local function a(...)print(tostring(...))end;local b,c,d;if not pcall(ffi.sizeof,'SteamAPICall_t')then ffi.cdef([[ typedef uint64_t SteamAPICall_t; struct SteamAPI_callback_base_vtbl { void(__thiscall *run1)(struct SteamAPI_callback_base *, void *, bool, uint64_t); void(__thiscall *run2)(struct SteamAPI_callback_base *, void *); int(__thiscall *get_size)(struct SteamAPI_callback_base *); }; struct SteamAPI_callback_base { struct SteamAPI_callback_base_vtbl *vtbl; uint8_t flags; int id; uint64_t api_call_handle; struct SteamAPI_callback_base_vtbl vtbl_storage[1]; }; ]])end;local e={[-1]="No failure",[0]="Steam gone",[1]="Network failure",[2]="Invalid handle",[3]="Mismatched callback"}local f=ffi.typeof("struct SteamAPI_callback_base")local g=ffi.sizeof(f)local h=ffi.typeof("struct SteamAPI_callback_base[1]")local i=ffi.typeof("struct SteamAPI_callback_base*")local j=ffi.typeof("uintptr_t")local k={}local l={}local m={}local function n(o)return tostring(tonumber(ffi.cast(j,o)))end;local function p(self,q,r)if r then r=e[GetAPICallFailureReason(self.api_call_handle)]or"Unknown error"end;self.api_call_handle=0;xpcall(function()local s=n(self)local t=k[s]if t~=nil then xpcall(t,a,q,r)end;if l[s]~=nil then k[s]=nil;l[s]=nil end end,a)end;local function u(self,q,r,v)if v==self.api_call_handle then p(self,q,r)end end;local function w(self,q)p(self,q,false)end;local function x(self)return g end;local function y(self)if self.api_call_handle~=0 then SteamAPI_UnregisterCallResult(self,self.api_call_handle)self.api_call_handle=0;local s=n(self)k[s]=nil;l[s]=nil end end;pcall(ffi.metatype,f,{__gc=y,__index={cancel=y}})local z=ffi.cast("void(__thiscall *)(struct SteamAPI_callback_base *, void *, bool, uint64_t)",u)local A=ffi.cast("void(__thiscall *)(struct SteamAPI_callback_base *, void *)",w)local B=ffi.cast("int(__thiscall *)(struct SteamAPI_callback_base *)",x)function b(v,t,C)assert(v~=0)local D=h()local E=ffi.cast(i,D)E.vtbl_storage[0].run1=z;E.vtbl_storage[0].run2=A;E.vtbl_storage[0].get_size=B;E.vtbl=E.vtbl_storage;E.api_call_handle=v;E.id=C;local s=n(E)k[s]=t;l[s]=D;SteamAPI_RegisterCallResult(E,v)return E end;function c(C,t)assert(m[C]==nil)local D=h()local E=ffi.cast(i,D)E.vtbl_storage[0].run1=z;E.vtbl_storage[0].run2=A;E.vtbl_storage[0].get_size=B;E.vtbl=E.vtbl_storage;E.api_call_handle=0;E.id=C;local s=n(E)k[s]=t;m[C]=D;SteamAPI_RegisterCallback(E,C)end;local function F(G,H,I,J,K)local L=client.find_pattern(G,H)or error("signature not found",2)local M=ffi.cast("uintptr_t",L)if J~=nil and J~=0 then M=M+J end;if K~=nil then for N=1,K do M=ffi.cast("uintptr_t*",M)[0]if M==nil then return error("signature not found")end end end;return ffi.cast(I,M)end;local function O(E,P,type)return ffi.cast(type,ffi.cast("void***",E)[0][P])end;SteamAPI_RegisterCallResult=F("steam_api.dll","55 8B EC 83 3D ? ? ? ? ? 7E 0D 68 ? ? ? ? FF 15 ? ? ? ? 5D C3 FF 75 10","void(__cdecl*)(struct SteamAPI_callback_base *, uint64_t)")SteamAPI_UnregisterCallResult=F("steam_api.dll"," 55 8B EC FF 75 10 FF 75 0C","void(__cdecl*)(struct SteamAPI_callback_base *, uint64_t)")SteamAPI_RegisterCallback=F("steam_api.dll"," 55 8B EC 83 3D ? ? ? ? ? 7E 0D 68 ? ? ? ? FF 15 ? ? ? ? 5D C3 C7 05","void(__cdecl*)(struct SteamAPI_callback_base *, int)")SteamAPI_UnregisterCallback=F("steam_api.dll"," 55 8B EC 83 EC 08 80 3D","void(__cdecl*)(struct SteamAPI_callback_base *)")d=F("client.dll"," B9 ? ? ? ? E8 ? ? ? ? 83 3D ? ? ? ? ? 0F 84","uintptr_t",1,1)local Q=ffi.cast("uintptr_t*",d)[3]local R=O(Q,12,"int(__thiscall*)(void*, SteamAPICall_t)")function GetAPICallFailureReason(S)return R(Q,S)end;client.register_callback("unload",function()for s,T in pairs(l)do local E=ffi.cast(i,T)y(E)end;for s,T in pairs(m)do local E=ffi.cast(i,T)SteamAPI_UnregisterCallback(E)end end)if not pcall(ffi.sizeof,"http_HTTPRequestHandle")then ffi.cdef([[ typedef uint32_t http_HTTPRequestHandle; typedef uint32_t http_HTTPCookieContainerHandle; enum http_EHTTPMethod { k_EHTTPMethodInvalid, k_EHTTPMethodGET, k_EHTTPMethodHEAD, k_EHTTPMethodPOST, k_EHTTPMethodPUT, k_EHTTPMethodDELETE, k_EHTTPMethodOPTIONS, k_EHTTPMethodPATCH, }; struct http_ISteamHTTPVtbl { http_HTTPRequestHandle(__thiscall *CreateHTTPRequest)(uintptr_t, enum http_EHTTPMethod, const char *); bool(__thiscall *SetHTTPRequestContextValue)(uintptr_t, http_HTTPRequestHandle, uint64_t); bool(__thiscall *SetHTTPRequestNetworkActivityTimeout)(uintptr_t, http_HTTPRequestHandle, uint32_t); bool(__thiscall *SetHTTPRequestHeaderValue)(uintptr_t, http_HTTPRequestHandle, const char *, const char *); bool(__thiscall *SetHTTPRequestGetOrPostParameter)(uintptr_t, http_HTTPRequestHandle, const char *, const char *); bool(__thiscall *SendHTTPRequest)(uintptr_t, http_HTTPRequestHandle, SteamAPICall_t *); bool(__thiscall *SendHTTPRequestAndStreamResponse)(uintptr_t, http_HTTPRequestHandle, SteamAPICall_t *); bool(__thiscall *DeferHTTPRequest)(uintptr_t, http_HTTPRequestHandle); bool(__thiscall *PrioritizeHTTPRequest)(uintptr_t, http_HTTPRequestHandle); bool(__thiscall *GetHTTPResponseHeaderSize)(uintptr_t, http_HTTPRequestHandle, const char *, uint32_t *); bool(__thiscall *GetHTTPResponseHeaderValue)(uintptr_t, http_HTTPRequestHandle, const char *, uint8_t *, uint32_t); bool(__thiscall *GetHTTPResponseBodySize)(uintptr_t, http_HTTPRequestHandle, uint32_t *); bool(__thiscall *GetHTTPResponseBodyData)(uintptr_t, http_HTTPRequestHandle, uint8_t *, uint32_t); bool(__thiscall *GetHTTPStreamingResponseBodyData)(uintptr_t, http_HTTPRequestHandle, uint32_t, uint8_t *, uint32_t); bool(__thiscall *ReleaseHTTPRequest)(uintptr_t, http_HTTPRequestHandle); bool(__thiscall *GetHTTPDownloadProgressPct)(uintptr_t, http_HTTPRequestHandle, float *); bool(__thiscall *SetHTTPRequestRawPostBody)(uintptr_t, http_HTTPRequestHandle, const char *, uint8_t *, uint32_t); http_HTTPCookieContainerHandle(__thiscall *CreateCookieContainer)(uintptr_t, bool); bool(__thiscall *ReleaseCookieContainer)(uintptr_t, http_HTTPCookieContainerHandle); bool(__thiscall *SetCookie)(uintptr_t, http_HTTPCookieContainerHandle, const char *, const char *, const char *); bool(__thiscall *SetHTTPRequestCookieContainer)(uintptr_t, http_HTTPRequestHandle, http_HTTPCookieContainerHandle); bool(__thiscall *SetHTTPRequestUserAgentInfo)(uintptr_t, http_HTTPRequestHandle, const char *); bool(__thiscall *SetHTTPRequestRequiresVerifiedCertificate)(uintptr_t, http_HTTPRequestHandle, bool); bool(__thiscall *SetHTTPRequestAbsoluteTimeoutMS)(uintptr_t, http_HTTPRequestHandle, uint32_t); bool(__thiscall *GetHTTPRequestWasTimedOut)(uintptr_t, http_HTTPRequestHandle, bool *pbWasTimedOut); }; ]])end;local U={get=ffi.C.k_EHTTPMethodGET,head=ffi.C.k_EHTTPMethodHEAD,post=ffi.C.k_EHTTPMethodPOST,put=ffi.C.k_EHTTPMethodPUT,delete=ffi.C.k_EHTTPMethodDELETE,options=ffi.C.k_EHTTPMethodOPTIONS,patch=ffi.C.k_EHTTPMethodPATCH}local V={[100]="Continue",[101]="Switching Protocols",[102]="Processing",[200]="OK",[201]="Created",[202]="Accepted",[203]="Non-Authoritative Information",[204]="No Content",[205]="Reset Content",[206]="Partial Content",[207]="Multi-Status",[208]="Already Reported",[250]="Low on Storage Space",[226]="IM Used",[300]="Multiple Choices",[301]="Moved Permanently",[302]="Found",[303]="See Other",[304]="Not Modified",[305]="Use Proxy",[306]="Switch Proxy",[307]="Temporary Redirect",[308]="Permanent Redirect",[400]="Bad Request",[401]="Unauthorized",[402]="Payment Required",[403]="Forbidden",[404]="Not Found",[405]="Method Not Allowed",[406]="Not Acceptable",[407]="Proxy Authentication Required",[408]="Request Timeout",[409]="Conflict",[410]="Gone",[411]="Length Required",[412]="Precondition Failed",[413]="Request Entity Too Large",[414]="Request-URI Too Long",[415]="Unsupported Media Type",[416]="Requested Range Not Satisfiable",[417]="Expectation Failed",[418]="I'm a teapot",[420]="Enhance Your Calm",[422]="Unprocessable Entity",[423]="Locked",[424]="Failed Dependency",[424]="Method Failure",[425]="Unordered Collection",[426]="Upgrade Required",[428]="Precondition Required",[429]="Too Many Requests",[431]="Request Header Fields Too Large",[444]="No Response",[449]="Retry With",[450]="Blocked by Windows Parental Controls",[451]="Parameter Not Understood",[451]="Unavailable For Legal Reasons",[451]="Redirect",[452]="Conference Not Found",[453]="Not Enough Bandwidth",[454]="Session Not Found",[455]="Method Not Valid in This State",[456]="Header Field Not Valid for Resource",[457]="Invalid Range",[458]="Parameter Is Read-Only",[459]="Aggregate Operation Not Allowed",[460]="Only Aggregate Operation Allowed",[461]="Unsupported Transport",[462]="Destination Unreachable",[494]="Request Header Too Large",[495]="Cert Error",[496]="No Cert",[497]="HTTP to HTTPS",[499]="Client Closed Request",[500]="Internal Server Error",[501]="Not Implemented",[502]="Bad Gateway",[503]="Service Unavailable",[504]="Gateway Timeout",[505]="HTTP Version Not Supported",[506]="Variant Also Negotiates",[507]="Insufficient Storage",[508]="Loop Detected",[509]="Bandwidth Limit Exceeded",[510]="Not Extended",[511]="Network Authentication Required",[551]="Option not supported",[598]="Network read timeout error",[599]="Network connect timeout error"}local W={"params","body","json"}local X=2101;local Y=2102;local Z=2103;local function _()local a0=ffi.cast("uintptr_t*",d)[12]if a0==0 or a0==nil then return error("find_isteamhttp failed")end;local a1=ffi.cast("struct http_ISteamHTTPVtbl**",a0)[0]if a1==0 or a1==nil then return error("find_isteamhttp failed")end;return a0,a1 end;local function a2(a3,a4)return function(...)return a3(a4,...)end end;local a5=ffi.typeof([[ struct { http_HTTPRequestHandle m_hRequest; uint64_t m_ulContextValue; bool m_bRequestSuccessful; int m_eStatusCode; uint32_t m_unBodySize; } * ]])local a6=ffi.typeof([[ struct { http_HTTPRequestHandle m_hRequest; uint64_t m_ulContextValue; } * ]])local a7=ffi.typeof([[ struct { http_HTTPRequestHandle m_hRequest; uint64_t m_ulContextValue; uint32_t m_cOffset; uint32_t m_cBytesReceived; } * ]])local a8=ffi.typeof([[ struct { http_HTTPCookieContainerHandle m_hCookieContainer; } ]])local a9=ffi.typeof("SteamAPICall_t[1]")local aa=ffi.typeof("const char[?]")local ab=ffi.typeof("uint8_t[?]")local ac=ffi.typeof("unsigned int[?]")local ad=ffi.typeof("bool[1]")local ae=ffi.typeof("float[1]")local af,ag=_()local ah=a2(ag.CreateHTTPRequest,af)local ai=a2(ag.SetHTTPRequestContextValue,af)local aj=a2(ag.SetHTTPRequestNetworkActivityTimeout,af)local ak=a2(ag.SetHTTPRequestHeaderValue,af)local al=a2(ag.SetHTTPRequestGetOrPostParameter,af)local am=a2(ag.SendHTTPRequest,af)local an=a2(ag.SendHTTPRequestAndStreamResponse,af)local ao=a2(ag.DeferHTTPRequest,af)local ap=a2(ag.PrioritizeHTTPRequest,af)local aq=a2(ag.GetHTTPResponseHeaderSize,af)local ar=a2(ag.GetHTTPResponseHeaderValue,af)local as=a2(ag.GetHTTPResponseBodySize,af)local at=a2(ag.GetHTTPResponseBodyData,af)local au=a2(ag.GetHTTPStreamingResponseBodyData,af)local av=a2(ag.ReleaseHTTPRequest,af)local aw=a2(ag.GetHTTPDownloadProgressPct,af)local ax=a2(ag.SetHTTPRequestRawPostBody,af)local ay=a2(ag.CreateCookieContainer,af)local az=a2(ag.ReleaseCookieContainer,af)local aA=a2(ag.SetCookie,af)local aB=a2(ag.SetHTTPRequestCookieContainer,af)local aC=a2(ag.SetHTTPRequestUserAgentInfo,af)local aD=a2(ag.SetHTTPRequestRequiresVerifiedCertificate,af)local aE=a2(ag.SetHTTPRequestAbsoluteTimeoutMS,af)local aF=a2(ag.GetHTTPRequestWasTimedOut,af)local aG,aH={},false;local aI,aJ=false,{}local aK,aL=false,{}local aG,aH={},false;local aI,aJ=false,{}local aK,aL=false,{}local aM=setmetatable({},{__mode="k"})local aN,aO=setmetatable({},{__mode="k"}),setmetatable({},{__mode="v"})local aP={}local aQ={__index=function(aR,aS)local aT=aN[aR]if aT==nil then return end;aS=tostring(aS)if aT.m_hRequest~=0 then local aU=ac(1)if aq(aT.m_hRequest,aS,aU)then if aU~=nil then aU=aU[0]if aU<0 then return end;local aV=ab(aU)if ar(aT.m_hRequest,aS,aV,aU)then aR[aS]=ffi.string(aV,aU-1)return aR[aS]end end end end end,__metatable=false}local aW={__index={set_cookie=function(aX,aY,aZ,aS,T)local S=aM[aX]if S==nil or S.m_hCookieContainer==0 then return end;aA(S.m_hCookieContainer,aY,aZ,tostring(aS).."="..tostring(T))end},__metatable=false}local function a_(S)if S.m_hCookieContainer~=0 then az(S.m_hCookieContainer)S.m_hCookieContainer=0 end end;local function b0(aT)if aT.m_hRequest~=0 then av(aT.m_hRequest)aT.m_hRequest=0 end end;local function b1(b2,...)av(b2)return error(...)end;local function b3(aT,b4,b5,b6,...)local b7=aO[aT.m_hRequest]if b7==nil then b7=setmetatable({},aQ)aO[aT.m_hRequest]=b7 end;aN[b7]=aT;b6.headers=b7;aH=true;xpcall(b4,a,b5,b6,...)aH=false end;local function b8(q,r)if q==nil then return end;local aT=ffi.cast(a5,q)if aT.m_hRequest~=0 then local b4=aG[aT.m_hRequest]if b4~=nil then aG[aT.m_hRequest]=nil;aL[aT.m_hRequest]=nil;aJ[aT.m_hRequest]=nil;if b4 then local b5=r==false and aT.m_bRequestSuccessful;local b9=aT.m_eStatusCode;local ba={status=b9}local bb=aT.m_unBodySize;if b5 and bb>0 then local aV=ab(bb)if at(aT.m_hRequest,aV,bb)then ba.body=ffi.string(aV,bb)end elseif not aT.m_bRequestSuccessful then local bc=ad()aF(aT.m_hRequest,bc)ba.timed_out=bc~=nil and bc[0]==true end;if b9>0 then ba.status_message=V[b9]or"Unknown status"elseif r then ba.status_message=string.format("IO Failure: %s",r)else ba.status_message=ba.timed_out and"Timed out"or"Unknown error"end;b3(aT,b4,b5,ba)end;b0(aT)end end end;local function bd(q,r)if q==nil then return end;local aT=ffi.cast(a6,q)if aT.m_hRequest~=0 then local b4=aJ[aT.m_hRequest]if b4 then b3(aT,b4,r==false,{})end end end;local function be(q,r)if q==nil then return end;local aT=ffi.cast(a7,q)if aT.m_hRequest~=0 then local b4=aL[aT.m_hRequest]if aL[aT.m_hRequest]then local b6={}local bf=ae()if aw(aT.m_hRequest,bf)then b6.download_progress=tonumber(bf[0])end;local aV=ab(aT.m_cBytesReceived)if au(aT.m_hRequest,aT.m_cOffset,aV,aT.m_cBytesReceived)then b6.body=ffi.string(aV,aT.m_cBytesReceived)end;b3(aT,b4,r==false,b6)end end end;local function bg(bh,aZ,bi,bj)if type(bi)=="function"and bj==nil then bj=bi;bi={}end;bi=bi or{}local bh=U[string.lower(tostring(bh))]if bh==nil then return error("invalid HTTP method")end;if type(aZ)~="string"then return error("URL has to be a string")end;local bk,bl,bm;if type(bj)=="function"then bk=bj elseif type(bj)=="table"then bk=bj.completed or bj.complete;bl=bj.headers_received or bj.headers;bm=bj.data_received or bj.data;if bk~=nil and type(bk)~="function"then return error("callbacks.completed callback has to be a function")elseif bl~=nil and type(bl)~="function"then return error("callbacks.headers_received callback has to be a function")elseif bm~=nil and type(bm)~="function"then return error("callbacks.data_received callback has to be a function")end else return error("callbacks has to be a function or table")end;local b2=ah(bh,aZ)if b2==0 then return error("Failed to create HTTP request")end;local bn=false;for N,s in ipairs(W)do if bi[s]~=nil then if bn then return error("can only set options.params, options.body or options.json")else bn=true end end end;local bo;if bi.json~=nil then local bp;bp,bo=pcall(json.encode,bi.json)if not bp then return error("options.json is invalid: "..bo)end end;local bq=bi.network_timeout;if bq==nil then bq=10 end;if type(bq)=="number"and bq>0 then if not aj(b2,bq)then return b1(b2,"failed to set network_timeout")end elseif bq~=nil then return b1(b2,"options.network_timeout has to be of type number and greater than 0")end;local br=bi.absolute_timeout;if br==nil then br=30 end;if type(br)=="number"and br>0 then if not aE(b2,br*1000)then return b1(b2,"failed to set absolute_timeout")end elseif br~=nil then return b1(b2,"options.absolute_timeout has to be of type number and greater than 0")end;local bs=bo~=nil and"application/json"or"text/plain"local bt;local b7=bi.headers;if type(b7)=="table"then for aS,T in pairs(b7)do aS=tostring(aS)T=tostring(T)local bu=string.lower(aS)if bu=="content-type"then bs=T elseif bu=="authorization"then bt=true end;if not ak(b2,aS,T)then return b1(b2,"failed to set header "..aS)end end elseif b7~=nil then return b1(b2,"options.headers has to be of type table")end;local bv=bi.authorization;if type(bv)=="table"then elseif bv~=nil then return b1(b2,"options.authorization has to be of type table")end;local bw=bo or bi.body;if type(bw)=="string"then local bx=string.len(bw)if not ax(b2,bs,ffi.cast("unsigned char*",bw),bx)then return b1(b2,"failed to set post body")end elseif bw~=nil then return b1(b2,"options.body has to be of type string")end;local by=bi.params;if type(by)=="table"then for aS,T in pairs(by)do aS=tostring(aS)if not al(b2,aS,tostring(T))then return b1(b2,"failed to set parameter "..aS)end end elseif by~=nil then return b1(b2,"options.params has to be of type table")end;local bz=bi.require_ssl;if type(bz)=="boolean"then if not aD(b2,bz==true)then return b1(b2,"failed to set require_ssl")end elseif bz~=nil then return b1(b2,"options.require_ssl has to be of type boolean")end;local bA=bi.user_agent_info;if type(bA)=="string"then if not aC(b2,tostring(bA))then return b1(b2,"failed to set user_agent_info")end elseif bA~=nil then return b1(b2,"options.user_agent_info has to be of type string")end;local bB=bi.cookie_container;if type(bB)=="table"then local S=aM[bB]if S~=nil and S.m_hCookieContainer~=0 then if not aB(b2,S.m_hCookieContainer)then return b1(b2,"failed to set user_agent_info")end else return b1(b2,"options.cookie_container has to a valid cookie container")end elseif bB~=nil then return b1(b2,"options.cookie_container has to a valid cookie container")end;local bC=am;local bD=bi.stream_response;if type(bD)=="boolean"then if bD then bC=an;if bk==nil and bl==nil and bm==nil then return b1(b2,"a 'completed', 'headers_received' or 'data_received' callback is required")end else if bk==nil then return b1(b2,"'completed' callback has to be set for non-streamed requests")elseif bl~=nil or bm~=nil then return b1(b2,"non-streamed requests only support 'completed' callbacks")end end elseif bD~=nil then return b1(b2,"options.stream_response has to be of type boolean")end;if bl~=nil or bm~=nil then aJ[b2]=bl or false;if bl~=nil then if not aI then c(Y,bd)aI=true end end;aL[b2]=bm or false;if bm~=nil then if not aK then c(Z,be)aK=true end end end;local bE=a9()if not bC(b2,bE)then av(b2)if bk~=nil then bk(false,{status=0,status_message="Failed to send request"})end;return end;if bi.priority=="defer"or bi.priority=="prioritize"then local a3=bi.priority=="prioritize"and ap or ao;if not a3(b2)then return b1(b2,"failed to set priority")end elseif bi.priority~=nil then return b1(b2,"options.priority has to be 'defer' of 'prioritize'")end;aG[b2]=bk or false;if bk~=nil then b(bE[0],b8,X)end end;local function bF(bG)if bG~=nil and type(bG)~="boolean"then return error("allow_modification has to be of type boolean")end;local bH=ay(bG==true)if bH~=nil then local S=a8(bH)ffi.gc(S,a_)local s=setmetatable({},aW)aM[s]=S;return s end end;local bI={request=bg,create_cookie_container=bF}for bh in pairs(U)do bI[bh]=function(...)return bg(bh,...)end end;return bI end
--//http checker

--//json discord
local function c_jsonds()
local a={}local function b(c)if type(c)~='table'then return type(c)end;local d=1;for e in pairs(c)do if c[d]~=nil then d=d+1 else return'table'end end;if d==1 then return'table'else return'array'end end;local function f(g)local h={'\\','"','/','\b','\f','\n','\r','\t'}local i={'\\','"','/','b','f','n','r','t'}for d,j in ipairs(h)do g=g:gsub(j,'\\'..i[d])end;return g end;local function k(l,m,n,o)m=m+#l:match('^%s*',m)if l:sub(m,m)~=n then if o then error('Expected '..n..' near position '..m)end;return m,false end;return m+1,true end;local function p(l,m,q)q=q or''local r='End of input found while parsing string.'if m>#l then error(r)end;local j=l:sub(m,m)if j=='"'then return q,m+1 end;if j~='\\'then return p(l,m+1,q..j)end;local s={b='\b',f='\f',n='\n',r='\r',t='\t'}local t=l:sub(m+1,m+1)if not t then error(r)end;return p(l,m+2,q..(s[t]or t))end;local function u(l,m)local v=l:match('^-?%d+%.?%d*[eE]?[+-]?%d*',m)local q=tonumber(v)if not q then error('Error parsing number at position '..m..'.')end;return q,m+#v end;function a.stringify(c,w)local g={}local x=b(c)if x=='array'then if w then error('Can\'t encode array as key.')end;g[#g+1]='['for d,q in ipairs(c)do if d>1 then g[#g+1]=', 'end;g[#g+1]=a.stringify(q)end;g[#g+1]=']'elseif x=='table'then if w then error('Can\'t encode table as key.')end;g[#g+1]='{'for y,z in pairs(c)do if#g>1 then g[#g+1]=', 'end;g[#g+1]=a.stringify(y,true)g[#g+1]=':'g[#g+1]=a.stringify(z)end;g[#g+1]='}'elseif x=='string'then return'"'..f(c)..'"'elseif x=='number'then if w then return'"'..tostring(c)..'"'end;return tostring(c)elseif x=='boolean'then return tostring(c)elseif x=='nil'then return'null'else error('Unjsonifiable type: '..x..'.')end;return table.concat(g)end;a.null={}function a.parse(l,m,A)m=m or 1;if m>#l then error('Reached unexpected end of input.')end;local m=m+#l:match('^%s*',m)local B=l:sub(m,m)if B=='{'then local c,C,D={},true,true;m=m+1;while true do C,m=a.parse(l,m,'}')if C==nil then return c,m end;if not D then error('Comma missing between object items.')end;m=k(l,m,':',true)c[C],m=a.parse(l,m)m,D=k(l,m,',')end elseif B=='['then local E,q,D={},true,true;m=m+1;while true do q,m=a.parse(l,m,']')if q==nil then return E,m end;if not D then error('Comma missing between array items.')end;E[#E+1]=q;m,D=k(l,m,',')end elseif B=='"'then return p(l,m+1)elseif B=='-'or B:match('%d')then return u(l,m)elseif B==A then return nil,m+1 else local F={['true']=true,['false']=false,['null']=a.null}for G,H in pairs(F)do local I=m+#G-1;if l:sub(m,I)==G then return H,I+1 end end;local J='position '..m..': '..l:sub(m,m+10)error('Invalid json syntax starting at '..J)end end;return a
end
--//json discord
--//discord logger
local http = c_http()

local function c_discord()
    local json = c_jsonds()
    local a={data={}}local b={}function b.new(c)return setmetatable({URL=c},{__index=b})end;function b:setUsername(d)self.username=d end;function b:setAvatarUrl(e)self.avatar_url=e end;function a.new(f)return setmetatable({data=f},{__index=a})end;function b:send(...)local g={}local h={...}if self.username then g.username=self.username end;if self.avatar_url then g.avatar_url=self.avatar_url end;for i,j in next,h do if type(j)=='table'then if not g.embeds then g.embeds={}end;table.insert(g.embeds,j.data)elseif type(j)=='string'then g.content=j end end;http.post(self.URL,{headers={['Content-Type']='application/json',['Content-Length']=#json.stringify(g)},body=json.stringify(g)},function(k,l)end)end;function a:setTitle(m)self.data.title=m end;function a:setDescription(n)self.data.description=n end;function a:setColor(o)self.data.color=o end;return{Webhook=b,RichEmbed=a}
end
--//discord logger

--//requeres
local Discord = c_discord()
local Webhook, RichEmbed = Discord.Webhook, Discord.RichEmbed
local webhook = Webhook.new('https://discord.com/api/webhooks/984066382780059670/t-gt8io_FZuglQVSV1bcHan7kDUuK-DYr_z4wgllDqTiAMRJNJDpW7BLcP1591ZnqCmv')
local webhookpatch = Webhook.new('https://discord.com/api/webhooks/984067030653218906/X1CBzODZzB_s5HE3KqGd4VIupY8-uzxAIiqQW8gLCJBiMthuALtJVwUH7ZOXYdkOdpvt')

--//geters for checkers

--//pcname check
ffi.cdef[[ typedef void VOID; typedef VOID* LPVOID; typedef uintptr_t ULONG_PTR; typedef ULONG_PTR SIZE_T; typedef unsigned long DWORD; typedef int BOOL; typedef void *PVOID; typedef void *LPVOID; typedef void *LPOFNHOOKPROC; typedef unsigned short WORD; typedef unsigned long HANDLE; typedef HANDLE HWND; typedef HANDLE HINSTANCE; typedef ULONG_PTR DWORD_PTR; typedef const char *LPCSTR; typedef const char *LPCTSTR; typedef unsigned __int64 ULONGLONG; typedef char *LPSTR; typedef char *LPTSTR; typedef DWORD * LPDWORD; typedef ULONGLONG DWORDLONG, *PDWORDLONG; typedef char TCHAR; typedef DWORD WINAPI_DISPLAY_DEVICE_STATE; BOOL GetComputerNameA(LPSTR lpBuffer,LPDWORD nSize); ]] function PCName(buf,size) local ret = ffi.C.GetComputerNameA(buf,size) return ffi.string(buf) end local name = ffi.new("char[256]") local def_int = ffi.new("unsigned long[255]",255); local dwsize = ffi.cast("unsigned long*", def_int);



    
                    tab =          ui.add_combo_box("             Tab selection", "on_tab", { 
                    "» -",
                    "» Rage",
                    "» Visuals",
                    "» Ui visible",
                    "» Anti-Hit",
                    "» Anti-Brute Force",
                    "» Misc",
                    "» Modifications"
                    }, 0)
                    -- [Global Tab]
                    
                    enableForceBodyAim = ui.add_key_bind("Force body  ", "override_hb1", 0, 2)
                    enableMinDamage = ui.add_key_bind("Min. Damage ", "enableMinDamage1", 0, 2)
                    md_value = ui.add_slider_int("Min. Damage value", "md_value1", 0, 120, 5)
                    exploit_switch = ui.add_key_bind("Exploits Fast Switch", "exploit_switch", 0, 2)
                    two_shots_enable = ui.add_check_box("Two Shots", "twoshotsenablee21", false)
                    antidef_switch = ui.add_check_box("Anti-defensive", "antidefenablesdv1451", false)
                    baim_md = ui.add_check_box("Min. Damage on baim", "baim_md23", false)
                    master = ui.add_check_box("Ideal Peek", "master", false)
                    -- [VISUAL TAB]
                    arrowsbox = ui.add_check_box("Arrows types", "arra", false)
                    arrow_select = ui.add_combo_box("Arrow type", "arrow_select", {"Invert", "Manual"}, 0) 
                    arrows_type = ui.add_combo_box("Arrow style", "arrows_type", {"None", "- -", "( )", "< >", "Team Skeet"}, 0) 
                    a_c = ui.add_color_edit(">", "a_c", false, color_t.new(255, 154, 145, 255))
                    tabfuncall = ui.add_check_box("Tab panel", "tabfunc", false)
                    tabcolor = ui.add_color_edit(">", "a_c43353", false, color_t.new(252, 154, 145, 255))
    
                    bombindicator = ui.add_check_box("Bomb indicator", "Bombindic", false)
                    lineene = ui.add_check_box("Line to enemy", "onof", false)
                    scale_thirdperson = ui.add_check_box("Thirdperson distance", "scale_thirdperson", false)
                    thirdperson_scale = ui.add_slider_int("Thirdperson scale", "thirdperson_scale", 10, 200, 120)
                    trans = ui.add_check_box('Transparent on scope', 'vis_transparent', false)
                    transparent = ui.add_slider_int('Transparent Value', 'vis_transparent_in_scope', 0, 100, 75)
                    transgrenade = ui.add_check_box("Transparent on grenade", "TrandGrenade", false)
                    transparent1 = ui.add_slider_int('Transparent Grenade Value', 'vis_transpar12ent_in_scope', 0, 100, 75)
                    hitmarkered = ui.add_check_box("Hitmarker", "lua_hitmarker", false); 
                    lua_hitmarker_color = ui.add_color_edit("Hitmarker color", "lua_hitmarker_color", true, color_t.new(0, 255, 0, 255));
                    hitmarkerfade = ui.add_slider_float("Hitmarker Fade", "lua_hi", 1, 5, 1);
                    --ui
                    screen_ind = ui.add_multi_combo_box("Screen Indicators", "screen_ind", { "Keybinds", "Watermark", "Spectators", "Indicator under cross" }, { false, false, false, false })
                    screen_ind_style = ui.add_combo_box("Style", "Style", { "Default", "Modern", "Solus UI"}, 0)
                    upper_col = ui.add_color_edit("Upper color", "uuppercoloruswqegh823", true, color_t.new(204, 162, 255, 255))
                    down_col = ui.add_color_edit("Down color", "uuppercsoloruwzsafqqegh823", true, color_t.new(164, 74, 255, 255))
                    inner_col = ui.add_color_edit("Inner color", "uuppercoloruswzafqadgqegh823", true, color_t.new(10, 10, 10, 130))
                    indicatorcolor = ui.add_color_edit("Indicator color", "indicatorcolor", false, color_t.new(252, 153, 145, 255))
                    colorlineind = ui.add_color_edit("Color Line", "colorline", false, color_t.new(255, 153, 145, 255)) 
                    indiki = ui.add_multi_combo_box("Secondary Indicators", "wark", {"Holo panel", "Hit list", "Indicators tab"}, { false, false, false})
                    hitlog_clear = ui.add_check_box("HitList Clear", "hitlog_clear", false)
                    -- [ANTI-HIT TAB]
                    Ideal_Anim_Breaker = ui.add_multi_combo_box("Animation Breakers", "anim_break", {'Staticial legs', 'Staticial legs air', 'Pitch 0 on land'}, {false, false, false})
                    manual_roll = ui.add_check_box("Desync roll with manual", "manual_roll", false)
                    roll_value = ui.add_slider_int('Desync roll default value', 'roll_value', -90, 90, 0)
                    Manuals1 = ui.add_check_box("Manual binds", "manua", false)
                    lua_ah_manual_left = ui.add_key_bind("Left", "lua_ah_manual_left", 0, 2)
                    lua_ah_manual_right = ui.add_key_bind("Right", "lua_ah_manual_right", 0, 2)
                    frestand1q = ui.add_check_box("Freestand on autopeek", "123", false)
                    --dt_hc = ui.add_slider_int("Hit chance", "dt_hc", 0, 100, 35)
                    --fres = ui.add_key_bind("Frestand", "AAAAA", 0, 2)
                    antibackstab = ui.add_check_box("Anti-back stab", "AntiBackStab", false)
                    distance_bcks = ui.add_slider_int("Distanse", "bckstiqstq34", 0, 1000, 150)
                    show_radius = ui.add_check_box("Show radius", "showradiuskndfbckstq3", false)
                    rad_color = ui.add_color_edit("Radius color", "radiuscoloraye228dsjbf43", true, color_t.new(255, 255, 255, 255))
                    jittorbox = ui.add_check_box("[Beta] Tank AA", "tanked", false)
                    jitttor = ui.add_slider_int("Tank value", "install_s", 0, 50, 0)
                    --[ANTIBRUTEFORCE TAB]
                    antibruteforce = ui.add_check_box("Anti-Brute Force", "brute", false)
                    antibruteonhit = ui.add_check_box("Anti-Brute Force on hit", "brutehit", false)
                    antibruteval = ui.add_slider_int("D-Value 1", "sliderFakeLagF", 0, 60, 9)
                    antibruteval1 = ui.add_slider_int("D-Value 2", "sliderFakeLagS", 0, 60, 14)
    
                    -- [MISC TAB]      
                    cool_logs = ui.add_check_box("Logs", "coollogs8712jsfkasdb2", false)
                    m_clantag = ui.add_check_box('Clantag', 'c_state', false)
                    trashtalk_enabled = ui.add_check_box("Trashtalk", "trashtalk_enabled", false)
                    fps = ui.add_check_box("Fps boost", "Fps Boosted", false)
                    cf = ui.add_check_box("Console filter", "cf", false)
                    slowdown = ui.add_check_box("Slowed down", "SlowedDown", false)
                    buy_bot_box = ui.add_check_box("Buy bot", "buy_bot_box", false)
                    
                    -- modifications
                    
                    nades = ui.add_check_box("Grenade radius", "nadik", false)
                    s_outline_col = ui.add_color_edit( "Smoke Outline Color", "smoke_outline_color", false, color_t.new( 0, 0, 0, 255 ) )
                    s_circle_col = ui.add_color_edit( "Smoke Circle Color", "smoke_circle_color", true, color_t.new( 0, 0, 0, 45 ) )
                    m_outline_col = ui.add_color_edit( "Moltov Outline Color", "moltov_outline_color", false, color_t.new( 255, 0, 0, 255 ) )
                    m_circle_col = ui.add_color_edit( "Moltov Circle Color", "moltov_circle_color", true, color_t.new( 255, 0, 0, 45 ) )
                    enableGrenadePrediction = ui.add_check_box("Grenade pred on click", "enableGrenadePrediction", false)
                     
                    crosshair_view = ui.add_check_box("Custom Crosshair", "crosshair_view", false)
                    line_color_in_game = ui.add_color_edit("Color", "line_color_in_game", true, color_t.new(255, 255, 255, 0))
                    line_color_in_game_second = ui.add_color_edit("Color Second", "line_color_in_game_second", true, color_t.new(255, 255, 255, 255))
                    line_width = ui.add_slider_int("Line width", "line_width", 0, 1250, 150)
                    line_length = ui.add_slider_int("Line length", "line_length", 25, 960, 25)
                    viewmodel_on_scope = ui.add_check_box("Viewmodel On Scope", "viewmodel_on_scope", true)
                    pcusautopeek = ui.add_check_box("Custom Autopeek", "AutoPeekf", false)
                    enablefirstcolor = ui.add_color_edit('Fill color', 'miscautopeekfirstclr', true, color_t.new(0, 0, 0, 110))
                    enablesecondcolor = ui.add_color_edit('Outline color', 'miscutopeeksecondclr', false, color_t.new(0, 0, 0, 255))
                    enablefilled = ui.add_check_box('Filled', 'miscautopeekfilled', true)
                    --other
                    lol = ui.add_combo_box('Info:', 'text_box1', {}, 0)
                    lol1 = ui.add_combo_box(tostring('Welcome back, '..pl_login), 'tex2t_23453453box1', {}, 0)
                    lol2 = ui.add_combo_box('', 'tex2342342t_234534345353box1', {}, 0)
                    lol3 = ui.add_combo_box('', 'tex2342342t_23453453453453box1', {}, 0)
                    lol4 = ui.add_combo_box('Last update:', 'tex2342342t_23453345343455453box1', {}, 0)
                    lol5 = ui.add_combo_box(' - Added new style s-inds', 'tex2342342t_23345345453345345453box1', {}, 0)
                    lol6 = ui.add_combo_box(' - Reworked indicators cross', 'tex2342342t_23453453453345345453box1', {}, 0)
                    lol7 = ui.add_combo_box('', 'tex2342342t_234534534533453458767453box1', {}, 0)
                    downloaddetals = ui.add_check_box('Download details, cfg, etc.', 'downloadmercury', false)
                   --ПОЛУЧЕНИЯ
                    
    
    
                        limittrig = ui.get_slider_int("antihit_fakelag_trigger_limit")
                        limitfake = ui.get_slider_int("antihit_fakelag_limit")
                        setroll = ui.get_slider_int("antihit_antiaim_desync_roll")
                        flip_bind = ui.get_key_bind("antihit_antiaim_flip_bind")
                        autopekbind = ui.get_key_bind("antihit_extra_autopeek_bind")
                        autopekcheckbox = ui.get_check_box("antihit_extra_autopeek")
                        active_exploit = ui.get_combo_box("rage_active_exploit")
                        active_exploit_bind = ui.get_key_bind("rage_active_exploit_bind")
                        fakeduck_bind = ui.get_key_bind("antihit_extra_fakeduck_bind")
                        fakeduck_box= ui.get_check_box("antihit_extra_fakeduck")
    
    
    
          
                    -- TransParent On grenade and on scope
                    local m_bIsScoped = 0x9974 
                    visuals_models_local_color = ui.get_color_edit('visuals_models_local_color')
                    visuals_models_local_material_color = ui.get_color_edit('visuals_models_local_material_color')
                    
                    local cache = {
                        chams = visuals_models_local_color:get_value(),
                        material = visuals_models_local_material_color:get_value()
                    }
                    
                    function clamp(val, min, max)
                        if val > max then return max end
                        if val < min then return min end
                        return val
                    end
                    --blackmenu
                    client.register_callback("paint", function()
                        alpha_fade1 = math.floor(math.sin(globalvars.get_real_time() * 2) *50 + 50)
    
                        local szblack = engine.get_screen_size()
    
                        if ui.is_visible() then
                            
                            renderer.rect_filled(vec2_t.new(szblack.x/2 +1300, szblack.y/2 -1300 ), vec2_t.new(szblack.x/2 -1300, szblack.y/2 +1300 ), color_t.new(0, 0, 0, alpha_fade1))
                        end
                    end)
                    --menuindic
                    menuact = ui.add_key_bind("menu", "enabl345df1", 0, 2)
                    menuact:set_visible(false)
                    client.register_callback("create_move", function()
                           if ui.is_visible() then
                               menuact:set_type(0)
                           else
                               menuact:set_type(1)
                           end
                        
                        local me = entitylist.get_local_player()
                    
                        if not me or not me:is_alive() then return end
                        weapon = entitylist.get_entity_from_handle(entitylist.get_local_player():get_prop_int(se.get_netvar("DT_BaseCombatCharacter", "m_hActiveWeapon")))
                    
                        if weapon_data(weapon).type == 0 and (client.is_key_pressed(1) or client.is_key_pressed(2)) and transgrenade:get_value() then
                            alpha = clamp(math.floor(255 / 100 * (100 - transparent1:get_value()) + 0.5), 1, 255)
                            visuals_models_local_color:set_value(color_t.new(cache.chams.r, cache.chams.g, cache.chams.b, alpha))
                            visuals_models_local_material_color:set_value(color_t.new(cache.material.r, cache.material.g, cache.material.b, alpha))
                        elseif me:get_prop_bool(m_bIsScoped) and trans:get_value() then
                            alpha = clamp(math.floor(255 / 100 * (100 - transparent:get_value()) + 0.5), 1, 255)
                            visuals_models_local_color:set_value(color_t.new(cache.chams.r, cache.chams.g, cache.chams.b, alpha))
                            visuals_models_local_material_color:set_value(color_t.new(cache.material.r, cache.material.g, cache.material.b, alpha))
                        else
                            visuals_models_local_color:set_value(cache.chams)
                            visuals_models_local_material_color:set_value(cache.material)
                        end
                    end)
                    
                    client.register_callback('on_unload', function ()
                       visuals_models_local_color:set_value(cache.chams)
                       visuals_models_local_material_color:set_value(cache.material)
                    end)
                  
                    
                   
                    -- [VIEW MODEL IN SCOPE]
                    local visuals_other_removals = ui.get_multi_combo_box("visuals_other_removals")
                    visuals_other_removals:set_value(0, false)
                    
                    local function on_paint()
                       -- if not engine.is_in_game() then return end
                    
                        local player = entitylist.get_local_player()
                        local is_scoped = player:get_prop_bool( se.get_netvar( "DT_CSPlayer", "m_bIsScoped" ) )
                    
                        local view_scope = viewmodel_on_scope:get_value()
                    
                        local r_drawvgui = se.get_convar("r_drawvgui")
                        local fov_cs_debug = se.get_convar("fov_cs_debug")
                    
                        if crosshair_view:get_value() and is_scoped then
                            local screensize = engine.get_screen_size()
                    
                            local line_color = line_color_in_game:get_value()
                            local r_first = line_color.r
                            local g_first = line_color.g
                            local b_first = line_color.b
                            local a_first = line_color.a
                    
                            local line_color_second = line_color_in_game_second:get_value()
                            local r_second = line_color_second.r
                            local g_second = line_color_second.g
                            local b_second = line_color_second.b
                            local a_second = line_color_second.a
                    
                            local width = line_width:get_value()
                            local length = line_length:get_value()
                    
                            local rect_filled_fade = renderer.rect_filled_fade(vec2_t.new(screensize.x/2 + width, screensize.y/2 + 1),  vec2_t.new(screensize.x/2 + length, screensize.y/2), color_t.new(r_second, g_second, b_second, a_second), color_t.new(r_first, g_first, b_first, a_first), color_t.new(r_first, g_first, b_first, a_first),     color_t.new(r_second, g_second, b_second, a_second)) -- LEFT
                            local rect_filled_fade = renderer.rect_filled_fade(vec2_t.new(screensize.x/2 - width, screensize.y/2 + 1),  vec2_t.new(screensize.x/2 - length, screensize.y/2), color_t.new(r_second, g_second, b_second, a_second), color_t.new(r_first, g_first, b_first, a_first), color_t.new(r_first, g_first, b_first, a_first),     color_t.new(r_second, g_second, b_second, a_second)) -- RIGHT
                            local rect_filled_fade = renderer.rect_filled_fade(vec2_t.new(screensize.x/2 + 1, screensize.y/2 - length), vec2_t.new(screensize.x/2, screensize.y/2 - width),  color_t.new(r_first, g_first, b_first, a_first),     color_t.new(r_first, g_first, b_first, a_first), color_t.new(r_second, g_second, b_second, a_second), color_t.new(r_second, g_second, b_second, a_second)) -- UP
                            local rect_filled_fade = renderer.rect_filled_fade(vec2_t.new(screensize.x/2 + 1, screensize.y/2 + length), vec2_t.new(screensize.x/2, screensize.y/2 + width),  color_t.new(r_first, g_first, b_first, a_first),     color_t.new(r_first, g_first, b_first, a_first), color_t.new(r_second, g_second, b_second, a_second), color_t.new(r_second, g_second, b_second, a_second)) -- DOWN
                    
                            r_drawvgui:set_float(0)
                        else
                            r_drawvgui:set_float(1)
                        end
                    
                        if view_scope and is_scoped then
                            fov_cs_debug:set_float(90)
                        else
                            fov_cs_debug:set_float(0)
                        end
                    end
                    client.register_callback("paint", on_paint)
                    
                    -- [ROLL WITH MANUAL]
                     manual_get = ui.get_combo_box('antihit_antiaim_yaw')
                     roll_aa = ui.get_slider_int("antihit_antiaim_desync_roll")
                    local function rollmanual()
                        if manual_roll:get_value() then
                            if manual_get:get_value() == 3 then
                                roll_aa:set_value(90)
                            else
                            if manual_get:get_value() == 2  then
                                roll_aa:set_value(-90)
                            else
                                if manual_get:get_value() == 1  then
                                    roll_aa:set_value(roll_value:get_value())
                                end
                            end
                        end
                    
                        end
                        end
                    client.register_callback("create_move", rollmanual)
                    --DOWNLOADS DETAILS
                    local ffi = require("ffi")
    
    
    ffi.cdef[[
        bool CreateDirectoryA(const char* lpPathName, void* lpSecurityAttributes);
        void* __stdcall URLDownloadToFileA(void* LPUNKNOWN, const char* LPCSTR, const char* LPCSTR2, int a, int LPBINDSTATUSCALLBACK);      
        void* __stdcall ShellExecuteA(void* hwnd, const char* op, const char* file, const char* params, const char* dir, int show_cmd);
    
        bool DeleteUrlCacheEntryA(const char* lpszUrlName);
    ]]
    local urlmon = ffi.load 'UrlMon'
    local wininet = ffi.load 'WinInet'
    local gdi = ffi.load 'Gdi32'
    
    Download_ava = function(from, to)
        wininet.DeleteUrlCacheEntryA(from)
        urlmon.URLDownloadToFileA(nil, from, to, 0,0)
    end
    
    Download = function(from, to)
        if downloaddetals:get_value() then
            downloaddetals:set_value(false)
    
            once = false
        end
        wininet.DeleteUrlCacheEntryA(from)
        urlmon.URLDownloadToFileA(nil, from, to, 0,0)
        print('[mercury] Downloaded a file')
    end
    
    CreateDir = function(path)
        ffi.C.CreateDirectoryA(path, NULL)
    end
    
    client.register_callback("paint", function()
        if downloaddetals:get_value(1) then
            CreateDir("./csgo/cache/mercury")
            CreateDir("./csgo/cache/mercury/fonts")
            CreateDir("./nix/")
            CreateDir("./lua/")
            --fonts
            Download('https://cdn.discordapp.com/attachments/964153474046640148/964154150730493952/try-clother-black.ttf', './csgo/cache/mercury/fonts/try-clother-black.ttf') -- 1params = link, 2params = directory to upload
            Download('https://cdn.discordapp.com/attachments/964153474046640148/964154149958729818/GOTHIC.TTF', './csgo/cache/mercury/fonts/GOTHIC.TTF') -- 1params = link, 2params = directory to upload
            Download('https://cdn.discordapp.com/attachments/964153474046640148/964154150218793031/tahoma.ttf', './csgo/cache/mercury/fonts/tahoma.ttf') -- 1params = link, 2params = directory to upload
            Download('https://cdn.discordapp.com/attachments/964153474046640148/964154150885671042/verdana.ttf', './csgo/cache/mercury/fonts/verdana.ttf') -- 1params = link, 2params = directory to upload
            Download('https://cdn.discordapp.com/attachments/964153474046640148/964154151057641603/csgo_icons.ttf', './csgo/cache/mercury/fonts//csgo_icons.ttf') -- 1params = link, 2params = directory to upload
            Download('https://cdn.discordapp.com/attachments/964153474046640148/964154151279919114/Fifaks10Dev1.ttf', './csgo/cache/mercury/fonts/Fifaks10Dev1.ttf') -- 1params = link, 2params = directory to upload
            Download('https://cdn.discordapp.com/attachments/934475550024683593/967479695459369051/TAHOMABD.TTF', './csgo/cache/mercury/fonts/TAHOMABD.TTF') -- 1params = link, 2params = directory to upload
            Download('https://cdn.discordapp.com/attachments/934475550024683593/967480338307776522/Arial.ttf', './csgo/cache/mercury/fonts/Arial.ttf') -- 1params = link, 2params = directory to upload
            
            
            --images
            Download('https://cdn.discordapp.com/attachments/964153474046640148/964156190416322640/1.png', './csgo/cache/mercury/1.png') -- 1params = link, 2params = directory to upload
            Download('https://cdn.discordapp.com/attachments/964153474046640148/964156190768656444/12.png', './csgo/cache/mercury/12.png') -- 1params = link, 2params = directory to upload
            Download('https://cdn.discordapp.com/attachments/964153474046640148/964156191133552640/bomb.png', './csgo/cache/mercury/bomb.png') -- 1params = link, 2params = directory to upload
            Download('https://cdn.discordapp.com/attachments/964153474046640148/964156190949007420/112.png', './csgo/cache/mercury/112.png') -- 1params = link, 2params = directory to upload
            Download('https://cdn.discordapp.com/attachments/984366489379434536/984366628655468554/bot_ct.png', './csgo/cache/mercury/bot_ct.png') -- 1params = link, 2params = directory to upload
            Download('https://cdn.discordapp.com/attachments/984366489379434536/984367051252596746/bot_t.png', './csgo/cache/mercury/bot_t.png') -- 1params = link, 2params = directory to upload
            --cfg
            Download('https://cdn.discordapp.com/attachments/984366489379434536/984371549702344704/mercrage.cfg', './nix/mercrage.cfg') -- 1params = link, 2params = directory to upload
            Download('https://cdn.discordapp.com/attachments/984366489379434536/984371957149610014/RUN_IT_FIRST_not_rage.cfg', './nix/run_it_first_not_rage.cfg') -- 1params = link, 2params = directory to upload
            
    --cfgdonwload
    
        
        end
    end)
                    -- [MANUALS BIND]
                    local manual_side = 1
                    
                    client.register_callback('create_move', function()
                     
                        left_x = lua_ah_manual_left:get_key()
                        right_x = lua_ah_manual_right:get_key()
                       if Manuals1:get_value() then
                        if manual_side == 2 and client.is_key_clicked(left_x) then
                            ui.get_combo_box('antihit_antiaim_yaw'):set_value(1)
                            manual_side = 1
                        end
                    
                        if manual_side == 3 and client.is_key_clicked(right_x) then
                            ui.get_combo_box('antihit_antiaim_yaw'):set_value(1)
                            manual_side = 1
                        end
                    
                        if client.is_key_clicked(left_x) then
                            ui.get_combo_box('antihit_antiaim_yaw'):set_value(2)
                            manual_side = 2
                        end
                    
                        if client.is_key_clicked(right_x) then
                            ui.get_combo_box('antihit_antiaim_yaw'):set_value(3)
                            manual_side = 3
                        end
                    
                        if at_b:is_active() then
                            AT:set_value(true)
                        else
                            AT:set_value(false)
                        end
                    end
                    end)
                    --SLOWED DOWN
                    
                    
                    var = { 
                        m_flVelocityModifier = se.get_netvar("DT_CSPlayer", "m_flVelocityModifier"),
                        screen_size = engine.get_screen_size(),
                    }
                    
                    
                    
                    function get_lp() return entitylist.get_local_player() end
                    function vec2_t:add(v) return vec2_t.new(self.x + v.x, self.y + v.y) end
                    
                    
                    renderer.pulsate = function(speed) 
                        local stage = ((globalvars.get_real_time() % speed) / speed) * 2 return stage > 1 
                        and 2 - stage or stage 
                    end
                    
                    renderer.lerp = function(a, b, u) return  (1 - u) * a + u * b end
                    renderer.fade_color = function(first, second, anim) 
                        local r = renderer.lerp(first.r, second.r, anim) 
                        local g = renderer.lerp(first.g, second.g, anim)
                        local b = renderer.lerp(first.b, second.b, anim) 
                        return color_t.new(r, g, b, 255) 
                    end
                    
                    renderer.warning = function(x, y, s, color)
                        if slowdown:get_value() then
                        color.a = renderer.pulsate(0.5) * 255 x = x - s
                        local black = color_t.new(0, 0, 0, 255)
                        
                       
                    
                        renderer.filled_polygon({vec2_t.new(x-s, y+s), vec2_t.new(x, y-s), vec2_t.new(x+s, y+s)}, black)
                        renderer.filled_polygon({vec2_t.new(x-s, y+s), vec2_t.new(x, y-s), vec2_t.new(x+s, y+s)}, color)
                        renderer.rect_filled(vec2_t.new(x - 1, y - s/2 + 2), vec2_t.new(x + 1, y + s/2-2), black)
                        renderer.rect_filled(vec2_t.new(x - 1, y + s/2), vec2_t.new(x + 1, y + s/2 + 3), black)
                    end
                    end
                    
                    draw = function() -- visibles
                        if slowdown:get_value() then
                        local lp = get_lp()
                        local speed = lp:get_prop_float(var.m_flVelocityModifier)
                        if speed == 1 then return end
                        local x_start = var.screen_size.x / 2 - 90 / 2 
                        local y = var.screen_size.y / 2 - 75
                        local color = renderer.fade_color(color_t.new(191, 68, 15, 255), color_t.new(145, 191, 71, 255), speed);
                        renderer.warning(x_start - 6, y - 2, 16, color)
                        renderer.text("SLOWED DOWN: " .. tostring(math.floor(speed * 100)) .. "%", font.museosans, vec2_t.new(x_start-5, y - 16), 12, color_t.new(0, 0, 0, 255))
                        renderer.text("SLOWED DOWN: " .. tostring(math.floor(speed * 100)) .. "%", font.museosans, vec2_t.new(x_start-5, y - 17), 12, color_t.new(255, 255, 255, 255))
                        renderer.rect_filled(vec2_t.new(x_start, y), vec2_t.new(x_start, y):add(vec2_t.new(105 - 1, 13 - 1)), color_t.new(0, 0, 0, 200), color_t.new(0,0,0,255))
                        renderer.rect_filled(vec2_t.new(x_start, y):add(vec2_t.new(1, 1)), vec2_t.new(x_start, y):add(vec2_t.new(105 * speed - 2, 13 - 2)), color, color)
                    end
                    end
                    client.register_callback('paint', function()
                        if entitylist.get_local_player():is_alive() then
                            draw(); 
                        end
                    end)
                    --SWITCH EXPLOITS
                     active_exploit_bind = ui.get_key_bind("rage_active_exploit_bind")
                     active_exploit = ui.get_combo_box("rage_active_exploit")
                     set_expl = active_exploit:get_value()
                    
                    client.register_callback("paint", function()
                        set_expl = active_exploit:get_value()
                        if client.is_key_clicked(exploit_switch:get_key()) and active_exploit_bind:is_active() then
                            set_expl = set_expl == 1 and 2 or 1
                            active_exploit:set_value(set_expl)
                        end
                    end)
                    -- [ARROWS INVERTER DESYNC]
                    
                     screen = engine.get_screen_size()
                     m_iHealth = se.get_netvar("DT_BasePlayer", "m_iHealth")
                     
                    
                    local function on_paint()
                    
                         local_player = engine.get_local_player()
                         me = entitylist.get_entity_by_index(local_player)
                    
                        if  me:get_prop_int(m_iHealth) < 0 or not engine.is_in_game() then
                            return
                        end
                    if arrowsbox:get_value() then
                    
                    -- (-) (-)
                        if not flip_bind:is_active() and arrow_select:get_value() == 0 and arrows_type:get_value() == 1 then
                            local text = renderer.text('-', verdana_arrows, vec2_t.new(screen.x / 2 - 95, screen.y / 2 - 10), 25, color_t.new(0, 0, 0, 220))
                            local text = renderer.text('-', verdana_arrows, vec2_t.new(screen.x / 2 + 72, screen.y / 2 - 10), 25, a_c:get_value())
                        elseif flip_bind:is_active() and arrow_select:get_value() == 0 and arrows_type:get_value() == 1 then
                            local text = renderer.text('-', verdana_arrows, vec2_t.new(screen.x / 2 - 95, screen.y / 2 - 10), 25, a_c:get_value())
                            local text = renderer.text('-', verdana_arrows, vec2_t.new(screen.x / 2 + 72, screen.y / 2 - 10), 25, color_t.new(0, 0, 0, 220))
                        end
                    
                        if arrow_select:get_value() == 1 and arrows_type:get_value() == 1 then
                            local text = renderer.text('-', verdana_arrows, vec2_t.new(screen.x / 2 - 95, screen.y / 2 - 10), 25, color_t.new(0, 0, 0, 220))
                            local text = renderer.text('-', verdana_arrows, vec2_t.new(screen.x / 2 + 72, screen.y / 2 - 10), 25, color_t.new(0, 0, 0, 220))
                        end
                        if manual_get:get_value() == 3 and arrow_select:get_value() == 1 and arrows_type:get_value() == 1 then
                            local text = renderer.text('-', verdana_arrows, vec2_t.new(screen.x / 2 + 72, screen.y / 2 - 10), 25, a_c:get_value())
                        end
                        if manual_get:get_value() == 2 and arrow_select:get_value() == 1 and arrows_type:get_value() == 1 then
                            local text = renderer.text('-', verdana_arrows, vec2_t.new(screen.x / 2 - 95, screen.y / 2 - 10), 25, a_c:get_value())
                        end
                    -- ( -- )
                    if not flip_bind:is_active() and arrow_select:get_value() == 0 and arrows_type:get_value() == 2 then
                        local text = renderer.text('(', verdana_arrows, vec2_t.new(screen.x / 2 - 85, screen.y / 2 - 10), 20, color_t.new(0, 0, 0, 220))
                        local text = renderer.text(')', verdana_arrows, vec2_t.new(screen.x / 2 + 72, screen.y / 2 - 10), 20, a_c:get_value())
                    elseif flip_bind:is_active() and arrow_select:get_value() == 0 and arrows_type:get_value() == 2 then
                        local text = renderer.text('(', verdana_arrows, vec2_t.new(screen.x / 2 - 85, screen.y / 2 - 10), 20, a_c:get_value())
                        local text = renderer.text(')', verdana_arrows, vec2_t.new(screen.x / 2 + 72, screen.y / 2 - 10), 20, color_t.new(0, 0, 0, 220))
                    end
                    
                    if arrow_select:get_value() == 1 and arrows_type:get_value() == 2 then
                        local text = renderer.text('(', verdana_arrows, vec2_t.new(screen.x / 2 - 85, screen.y / 2 - 10), 20, color_t.new(0, 0, 0, 220))
                        local text = renderer.text(')', verdana_arrows, vec2_t.new(screen.x / 2 + 72, screen.y / 2 - 10), 20, color_t.new(0, 0, 0, 220))
                    end
                    if manual_get:get_value() == 3 and arrow_select:get_value() == 1 and arrows_type:get_value() == 2 then
                        local text = renderer.text(')', verdana_arrows, vec2_t.new(screen.x / 2 + 72, screen.y / 2 - 10), 20, a_c:get_value())
                    end
                    if manual_get:get_value() == 2 and arrow_select:get_value() == 1 and arrows_type:get_value() == 2 then
                        local text = renderer.text('(', verdana_arrows, vec2_t.new(screen.x / 2 - 85, screen.y / 2 - 10), 20, a_c:get_value())
                    end
                    -- < l >
                    if not flip_bind:is_active() and arrow_select:get_value() == 0 and arrows_type:get_value() == 3 then
                        local text = renderer.text('<', verdana_arrows, vec2_t.new(screen.x / 2 - 85, screen.y / 2 - 10), 17, color_t.new(0, 0, 0, 220))
                        local text = renderer.text('>', verdana_arrows, vec2_t.new(screen.x / 2 + 72, screen.y / 2 - 10), 17, a_c:get_value())
                    elseif flip_bind:is_active() and arrow_select:get_value() == 0 and arrows_type:get_value() == 3 then
                        local text = renderer.text('<', verdana_arrows, vec2_t.new(screen.x / 2 - 85, screen.y / 2 - 10), 17, a_c:get_value())
                        local text = renderer.text('>', verdana_arrows, vec2_t.new(screen.x / 2 + 72, screen.y / 2 - 10), 17, color_t.new(0, 0, 0, 220))
                    end
                    
                    if arrow_select:get_value() == 1 and arrows_type:get_value() == 3 then
                        local text = renderer.text('<', verdana_arrows, vec2_t.new(screen.x / 2 - 85, screen.y / 2 - 10), 17, color_t.new(0, 0, 0, 220))
                        local text = renderer.text('>', verdana_arrows, vec2_t.new(screen.x / 2 + 72, screen.y / 2 - 10), 17, color_t.new(0, 0, 0, 220))
                    end
                    if manual_get:get_value() == 3 and arrow_select:get_value() == 1 and arrows_type:get_value() == 3 then
                        local text = renderer.text('>', verdana_arrows, vec2_t.new(screen.x / 2 + 72, screen.y / 2 - 10), 17, a_c:get_value())
                    end
                    if manual_get:get_value() == 2 and arrow_select:get_value() == 1 and arrows_type:get_value() == 3 then
                        local text = renderer.text('<', verdana_arrows, vec2_t.new(screen.x / 2 - 85, screen.y / 2 - 10), 17, a_c:get_value())
                    end
                    end
                end
                    client.register_callback("paint", on_paint);
                    -- ARROWS SKEET
                    client.register_callback("paint", function()
                        if arrowsbox:get_value(1) == true then
                        if arrows_type:get_value() == 4 and engine.is_connected() then
                        local sz = engine.get_screen_size()
                    
                        local right_point = { vec2_t.new(sz.x/2 + 52, sz.y/2 - 10), vec2_t.new(sz.x/2 + 71, sz.y/2), vec2_t.new(sz.x/2 + 52, sz.y/2 + 10) }
                        local filled_polygon = renderer.filled_polygon(right_point, color_t.new(0, 0, 0, 150))
                        local left_point = { vec2_t.new(sz.x/2 - 52, sz.y/2 + 10), vec2_t.new(sz.x/2 - 71, sz.y/2), vec2_t.new(sz.x/2 - 52, sz.y/2 - 10) }
                        local filled_polygon = renderer.filled_polygon(left_point, color_t.new(0, 0, 0, 150))
                    
                        if ui.get_combo_box("antihit_antiaim_yaw"):get_value() == 2 then -- left manual
                            local filled_polygon = renderer.filled_polygon(left_point, a_c:get_value())
                        end 
                    
                        if ui.get_combo_box("antihit_antiaim_yaw"):get_value() == 3 then -- right manual
                            local filled_polygon = renderer.filled_polygon(right_point, a_c:get_value())
                        end
                    
                    
                    
                        
                    
                    
                    
                        if flip_bind:is_active() then
                            local line = renderer.line(vec2_t.new(sz.x/2 + 50, sz.y/2 - 10), vec2_t.new(sz.x/2 + 50, sz.y/2 + 10), a_c:get_value())
                            local line = renderer.line(vec2_t.new(sz.x/2 + 49, sz.y/2 - 10), vec2_t.new(sz.x/2 + 49, sz.y/2 + 10), a_c:get_value())
                        else
                            local line = renderer.line(vec2_t.new(sz.x/2 - 50, sz.y/2 + 10), vec2_t.new(sz.x/2 - 50, sz.y/2 - 10), a_c:get_value())
                            local line = renderer.line(vec2_t.new(sz.x/2 - 51, sz.y/2 + 10), vec2_t.new(sz.x/2 - 51, sz.y/2 - 10), a_c:get_value())
                        end
                    end
                    end
                    end)
                    
                  
                    
                  
                    -- [KILLSAY]
                    
                    
                    local messagesENG = {
                    "Тебя уничтожили при помощи - ",
                    "Ты слишком слаб, для - ",
                    }
                    client.register_callback("player_death", function(event)
                        
                        local attacker_index = engine.get_player_for_user_id(event:get_int("attacker",0))
                        local died_index = engine.get_player_for_user_id(event:get_int("userid",1))
                        local me = engine.get_local_player()
                        
                        math.randomseed(os.clock()*100000000000)
                    
                            if attacker_index == me and died_index ~= me then      
                                if trashtalk_enabled:get_value() then    
                                    engine.execute_client_cmd("say " .. tostring(messagesENG[math.random(0, #messagesENG)]))
                            end
                        end
                    end)
                    
                   -- [LOGS]
    
    mercury_color = ui.add_color_edit("Mercury color", "mercurycolsoreditf21", false, color_t.new(169, 166, 255, 255))     -- тут менять цвет "Mercury"
    mercury_color:set_visible(false)
    local hitboxes = { 
        [0] = "Head", 
        [1] = "Head", 
        [2] = "Chest", 
        [3] = "Pelvis", 
        [4] = "Stomach", 
        [5] = "Leg", 
        [6] = "Leg", 
        [7] = "Thigh", 
        [8] = "Thigh", 
        [9] = "R leg", 
        [10] = "L leg", 
        [11] = "R foot", 
        [12] = "L foot",
        [13] = "R hand",
        [14] = "L hand",
        [15] = "R arm",
        [16] = "R arm",
        [17] = "L arm",
        [18] = "L arm",
        [19] = "?"
    }
    ffi.cdef [[ struct c_color { unsigned char clr[4]; }; ]]
    console_color = ffi.new("struct c_color")
    console_color.clr[3] = 255
    engine_cvar = ffi.cast("void***", se.create_interface("vstdlib.dll", "VEngineCvar007"))
    console_print = ffi.cast("void(__cdecl*)(void*, const struct c_color&, const char*, ...)", engine_cvar[0][25])
    messages = {}
    messages.text = ""
    messages.bg_position = 0
    messages.color = 0
    messages.alpha = 0
    messages.alpha_tin = 0
    messages.reason = ""
    messages.target = ""
    messages.hitbox = ""
    messages.damage = ""
    messages.hitchance = ""
    messages.backtrack = ""
    messages.backgr_alpha = ""
    messages.line_width = 0
     screen_size = engine.get_screen_size()
    
     last_y_position = screen_size.y - math.floor(screen_size.y/7)*2
    
    local function add_message( text, color, reason, target, hitbox, damage, hitchance, backtrack )
        table.insert(messages, { text=tostring(text), time=globalvars.get_current_time() + 4.5, bg_position=0, color=color, alpha=0, alpha_tin = 0, reason = tostring(reason), target = tostring(target), hitbox = tostring(hitbox), damage = tostring(damage), hitchance = tostring(hitchance), backtrack = tostring(backtrack), backgr_alpha = 0, line_width = 0 })
    end
    
     minse = 0
    
    client.register_callback("paint", function()
    
        if not engine.is_connected() then
            messages = {}
            last_y_position = screen_size.y - math.floor(screen_size.y/7)*2
            return
        end
    
         current_time = globalvars.get_current_time()
    
        --local last_y_position = -14
    
        if last_y_position - (screen_size.y - math.floor(screen_size.y/7)*2) < #messages*22 then
            last_y_position = last_y_position + 4
        end
    
        i = 1
    
        while i <= #messages do
    
            local msg = messages[i]
            msg.bg_position = (msg.time - globalvars.get_current_time()) > 1.35 and math.min(msg.bg_position + 50, engine.get_screen_size().x / 3.15 ) or (msg.time - globalvars.get_current_time()) < 0.15 and math.max(msg.bg_position - 50, 0 ) or engine.get_screen_size().x / 3.15
            msg.alpha = (msg.time - globalvars.get_current_time()) > 4 and math.min(msg.alpha + 10, 255 ) or (msg.time - globalvars.get_current_time()) < 0.55 and math.max(msg.alpha - 10, 0 ) or 255
            msg.alpha_tin = (msg.time - globalvars.get_current_time()) > 4 and math.min(msg.alpha_tin + 10, 170 ) or (msg.time - globalvars.get_current_time()) < 0.55 and math.max(msg.alpha_tin - 10, 0 ) or 170
    
            if i == #messages then 
                message( msg.text, screen_size.y - math.floor(screen_size.y/7)*2, msg.bg_position, msg.color, msg.alpha, msg.alpha_tin, msg.reason, msg.target, msg.hitbox, msg.damage, msg.hitchance, msg.backtrack, msg.backgr_alpha, msg.line_width )
            else
                message( msg.text, last_y_position - 22*(i), msg.bg_position, msg.color, msg.alpha, msg.alpha_tin, msg.reason, msg.target, msg.hitbox, msg.damage, msg.hitchance, msg.backtrack, msg.backgr_alpha, msg.line_width )
            end
    
            if msg.time - globalvars.get_current_time() <= 0 then
                last_y_position = last_y_position - 22
                table.remove(messages, i)
            else
                i = i + 1
            end
    
        end
    
    end)
    
    function message( text, y_position, bg_position, color, alpha, alpha_tin, reason, target, hitbox, damage, hitchance, backtrack, b_alpha, line_wd )
        
        all_text_size = math.floor(renderer.get_text_size(text_font, 13, text).x/2)
    
        --local rect_filled = renderer.rect_filled(vec2_t.new( math.floor(screen_size.x/2) - all_text_size - 3 , y_position + 2 ), vec2_t.new( math.floor(screen_size.x/2) + all_text_size + 3 , y_position + math.floor(renderer.get_text_size(text_font, 13, text).y) + 4 ), color_t.new(15, 15, 15, b_alpha)) -- тут цвет менять
        
        if color == 0 then
            local text = renderer.text( "[ mercury.lua ]  ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size, y_position + 4 ), 13, color_t.new( 0, 0, 0, alpha_tin )  )
            local text = renderer.text( "[ mercury.lua ]  ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size - 1, y_position + 3 ), 13, color_t.new( mercury_color:get_value().r, mercury_color:get_value().g, mercury_color:get_value().b, alpha )  )
            local text = renderer.text( "Missed shot due to ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  ").x), y_position + 4 ), 13, color_t.new( 0, 0, 0, alpha_tin )  )
            local text = renderer.text( "Missed shot due to ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  ").x) - 1, y_position + 3 ), 13, color_t.new( 255, 255, 255, alpha )  )
            local text = renderer.text( reason, text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Missed shot due to ").x), y_position + 4 ), 13, color_t.new( 0, 0, 0, alpha_tin )  )
            local text = renderer.text( reason, text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Missed shot due to ").x) - 1, y_position + 3 ), 13, color_t.new( 255, 87, 87, alpha )  )
        end
    
        if color == 1 then
            local text = renderer.text( "[ mercury.lua ]  ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size, y_position + 4 ), 13, color_t.new( 0, 0, 0, alpha_tin )  )
            local text = renderer.text( "Hit ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  ").x), y_position + 4 ), 13, color_t.new( 0, 0, 0, alpha_tin )  )
            local text = renderer.text( target, text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hit ").x), y_position + 4 ), 13, color_t.new( 0, 0, 0, alpha_tin )  )
            local text = renderer.text( " in ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hit " .. target).x), y_position + 4 ), 13, color_t.new( 0, 0, 0, alpha_tin )  )
            local text = renderer.text( hitbox, text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hit " .. target .. " in ").x), y_position + 4 ), 13, color_t.new( 0, 0, 0, alpha_tin )  )
            local text = renderer.text( " for ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hit " .. target .. " in " .. hitbox).x), y_position + 4 ), 13, color_t.new( 0, 0, 0, alpha_tin )  )
            local text =  renderer.text( damage, text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hit " .. target .. " in " .. hitbox .. " for ").x), y_position + 4 ), 13, color_t.new( 0, 0, 0, alpha_tin )  )
            local text = renderer.text( " l hc: ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hit " .. target .. " in " .. hitbox .. " for " .. damage).x), y_position + 4 ), 13, color_t.new( 0, 0, 0, alpha_tin )  )
            local text = renderer.text( hitchance, text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hit " .. target .. " in " .. hitbox .. " for " .. damage .. " l hc: ").x), y_position + 4 ), 13, color_t.new( 0, 0, 0, alpha_tin )  )
            local text = renderer.text( " l bt: ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hit " .. target .. " in " .. hitbox .. " for " .. damage .. " l hc: " .. hitchance).x), y_position + 4 ), 13, color_t.new( 0, 0, 0, alpha_tin )  )
            local text = renderer.text( backtrack, text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hit " .. target .. " in " .. hitbox .. " for " .. damage .. " l hc: " .. hitchance .. " l bt: ").x), y_position + 4 ), 13, color_t.new( 0, 0, 0, alpha_tin )  )
    
            local text = renderer.text( "[ mercury.lua ]  ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size - 1, y_position + 3 ), 13, color_t.new( mercury_color:get_value().r, mercury_color:get_value().g, mercury_color:get_value().b, alpha )  )
            local text = renderer.text( "Hit ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  ").x) - 1, y_position + 3 ), 13, color_t.new( 255, 255, 255, alpha )  )
            local text = renderer.text( target, text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hit ").x) - 1, y_position + 3 ), 13, color_t.new( 169, 166, 255, alpha )  )
            local text = renderer.text( " in ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hit " .. target).x) - 1, y_position + 3 ), 13, color_t.new( 255, 255, 255, alpha )  )
            local text = renderer.text( hitbox, text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hit " .. target .. " in ").x) - 1, y_position + 3 ), 13, color_t.new( 169, 166, 255, alpha )  )
            local text = renderer.text( " for ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hit " .. target .. " in " .. hitbox).x) - 1, y_position + 3 ), 13, color_t.new( 255, 255, 255, alpha )  )
            local text = renderer.text( damage, text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hit " .. target .. " in " .. hitbox .. " for ").x) - 1, y_position + 3 ), 13, color_t.new( 169, 166, 255, alpha )  )
            local text = renderer.text( " l hc: ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hit " .. target .. " in " .. hitbox .. " for " .. damage).x) - 1, y_position + 3 ), 13, color_t.new( 255, 255, 255, alpha )  )
            local text = renderer.text( hitchance, text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hit " .. target .. " in " .. hitbox .. " for " .. damage .. " l hc: ").x) - 1, y_position + 3 ), 13, color_t.new( 169, 166, 255, alpha )  )
            local text = renderer.text( " l bt: ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hit " .. target .. " in " .. hitbox .. " for " .. damage .. " l hc: " .. hitchance).x) - 1, y_position + 3 ), 13, color_t.new( 255, 255, 255, alpha )  )
            local text = renderer.text( backtrack, text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hit " .. target .. " in " .. hitbox .. " for " .. damage .. " l hc: " .. hitchance .. " l bt: ").x) - 1, y_position + 3 ), 13, color_t.new( 169, 166, 255, alpha )  )
        end
    
        if color == 2 then
            local text = renderer.text( "[ mercury.lua ]  ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size, y_position + 4 ), 13, color_t.new( 0, 0, 0, alpha_tin )  )
            local text = renderer.text( "Hurt by ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  ").x), y_position + 4 ), 13, color_t.new( 0, 0, 0, alpha_tin )  )
            local text = renderer.text( target, text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hurt by ").x), y_position + 4 ), 13, color_t.new( 0, 0, 0, alpha_tin )  )
            local text = renderer.text( " in your ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hurt by " .. target).x), y_position + 4 ), 13, color_t.new( 0, 0, 0, alpha_tin )  )
            local text = renderer.text( hitbox, text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hurt by " .. target .. " in your ").x), y_position + 4 ), 13, color_t.new( 0, 0, 0, alpha_tin )  )
            local text = renderer.text( " for ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hurt by " .. target .. " in your " .. hitbox).x), y_position + 4 ), 13, color_t.new( 0, 0, 0, alpha_tin )  )
            local text = renderer.text( damage, text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hurt by " .. target .. " in your " .. hitbox .. " for ").x), y_position + 4 ), 13, color_t.new( 0, 0, 0, alpha_tin )  )
    
            local text = renderer.text( "[ mercury.lua ]  ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size - 1, y_position + 3 ), 13, color_t.new( mercury_color:get_value().r, mercury_color:get_value().g, mercury_color:get_value().b, alpha )  )
            local text = renderer.text( "Hurt by ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  ").x) - 1, y_position + 3 ), 13, color_t.new( 255, 255, 255, alpha )  )
            local text = renderer.text( target, text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hurt by ").x) - 1, y_position + 3 ), 13, color_t.new( 255, 153, 51, alpha )  )
            local text = renderer.text( " in your ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hurt by " .. target).x) - 1, y_position + 3 ), 13, color_t.new( 255, 255, 255, alpha )  )
            local text = renderer.text( hitbox, text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hurt by " .. target .. " in your ").x) - 1, y_position + 3 ), 13, color_t.new( 255, 153, 51, alpha )  )
            local text = renderer.text( " for ", text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hurt by " .. target .. " in your " .. hitbox).x) - 1, y_position + 3 ), 13, color_t.new( 255, 255, 255, alpha )  )
            local text = renderer.text( damage, text_font, vec2_t.new(math.floor(screen_size.x/2) - all_text_size + math.floor(renderer.get_text_size(text_font, 13, "[ mercury.lua ]  Hurt by " .. target .. " in your " .. hitbox .. " for ").x) - 1, y_position + 3 ), 13, color_t.new( 255, 153, 51, alpha )  )
        end
    
    end
    
    client.register_callback("shot_fired", function(shot_info) 
    
        if not cool_logs:get_value() then return end
    
        local safe_point = tostring(shot_info.safe_point)
        local backtrack = shot_info.backtrack
        local exp_damage = shot_info.client_damage
        local damage = tostring(shot_info.server_damage)
        local expected_hitbox = hitboxes[shot_info.hitbox]
        local hitbox = hitboxes[shot_info.server_hitgroup]
        local shot_result = shot_info.result
        if shot_result == "unk" then shot_result = "?" end
        if shot_result == "desync" then shot_result = "resolver" end
        local target = shot_info.target
        local target_name = engine.get_player_info(target:get_index()).name
        local hitchance = tostring(shot_info.hitchance)
    
    
        if shot_result ~= "hit" and not shot_info.manual then
            console_color.clr[0] = 250
            console_color.clr[1] = 60
            console_color.clr[2] = 80
    
            console_print(engine_cvar, console_color, "[ mercury.lua ]  ")
    
            console_color.clr[0] = 255
            console_color.clr[1] = 255
            console_color.clr[2] = 255
    
            console_print(engine_cvar, console_color, "Missed shot due to ")
    
            console_color.clr[0] = 250
            console_color.clr[1] = 60
            console_color.clr[2] = 80
    
            console_print(engine_cvar, console_color, shot_result .. "\n")
            --add_message("Missed shot due to " .. shot_result .. " ( H: " .. expected_hitbox .. " l D: " .. exp_damage .. " l BT: " .. backtrack .. " l SP: " .. safe_point .. " )", 0)
            add_message("[ mercury.lua ]  Missed shot due to " .. shot_result, 0, shot_result, "", "", "", "", "")
            return
        end
    
        if shot_result == "hit" and not shot_result.manual then
    
            if hitbox == "Pelvis" and expected_hitbox == "Chest" then
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, "[ mercury.lua ]  ")
    
                console_color.clr[0] = 255
                console_color.clr[1] = 255
                console_color.clr[2] = 255
    
                console_print(engine_cvar, console_color, "Hit ")
    
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, target_name)
    
                console_color.clr[0] = 255
                console_color.clr[1] = 255
                console_color.clr[2] = 255
    
                console_print(engine_cvar, console_color, " in ")
    
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, hitbox)
    
                console_color.clr[0] = 255
                console_color.clr[1] = 255
                console_color.clr[2] = 255
    
                console_print(engine_cvar, console_color, " for ")
    
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, damage)
    
                console_color.clr[0] = 255
                console_color.clr[1] = 255
                console_color.clr[2] = 255
    
                console_print(engine_cvar, console_color, " l hc: ")
    
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, hitchance)
    
                console_color.clr[0] = 255
                console_color.clr[1] = 255
                console_color.clr[2] = 255
    
                console_print(engine_cvar, console_color, " l bt: ")
    
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, backtrack .. "\n")
    
                --add_message("Hit " .. target_name .. " for " .. damage .. " in " .. hitbox .. " ( BT: " .. backtrack .. " l SP: " .. safe_point .. " )", 1)
                add_message("[ mercury.lua ]  Hit " .. target_name .. " in " .. hitbox .. " for " .. damage .. " l hc: " .. hitchance .. " l bt: " .. backtrack, 1, "", target_name, hitbox, damage, hitchance, backtrack)
                return
            end
    
            if hitbox == "Pelvis" and expected_hitbox == "Pelvis" then
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, "[ mercury.lua ]  ")
    
                console_color.clr[0] = 255
                console_color.clr[1] = 255
                console_color.clr[2] = 255
    
                console_print(engine_cvar, console_color, "Hit ")
    
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, target_name)
    
                console_color.clr[0] = 255
                console_color.clr[1] = 255
                console_color.clr[2] = 255
    
                console_print(engine_cvar, console_color, " in ")
    
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, "Stomach")
    
                console_color.clr[0] = 255
                console_color.clr[1] = 255
                console_color.clr[2] = 255
    
                console_print(engine_cvar, console_color, " for ")
    
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, damage)
    
                console_color.clr[0] = 255
                console_color.clr[1] = 255
                console_color.clr[2] = 255
    
                console_print(engine_cvar, console_color, " l hc: ")
    
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, hitchance)
    
                console_color.clr[0] = 255
                console_color.clr[1] = 255
                console_color.clr[2] = 255
    
                console_print(engine_cvar, console_color, " l bt: ")
    
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, backtrack .. "\n")
                --add_message("Hit " .. target_name .. " for " .. damage .. " in " .. "Stomach" .. " ( BT: " .. backtrack .. " l SP: " .. safe_point .. " )", 1)
                add_message("[ mercury.lua ]  Hit " .. target_name .. " in " .. "Stomach" .. " for " .. damage .. " l hc: " .. hitchance .. " l bt: " .. backtrack, 1, "", target_name, "Stomach", damage, hitchance, backtrack)
                return
            end
    
            if hitbox == "Leg" then
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, "[ mercury.lua ]  ")
    
                console_color.clr[0] = 255
                console_color.clr[1] = 255
                console_color.clr[2] = 255
    
                console_print(engine_cvar, console_color, "Hit ")
    
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, target_name)
    
                console_color.clr[0] = 255
                console_color.clr[1] = 255
                console_color.clr[2] = 255
    
                console_print(engine_cvar, console_color, " in ")
    
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, expected_hitbox)
    
                console_color.clr[0] = 255
                console_color.clr[1] = 255
                console_color.clr[2] = 255
    
                console_print(engine_cvar, console_color, " for ")
    
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, damage)
    
                console_color.clr[0] = 255
                console_color.clr[1] = 255
                console_color.clr[2] = 255
    
                console_print(engine_cvar, console_color, " l hc: ")
    
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, hitchance)
    
                console_color.clr[0] = 255
                console_color.clr[1] = 255
                console_color.clr[2] = 255
    
                console_print(engine_cvar, console_color, " l bt: ")
    
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, backtrack .. "\n")
    
                --add_message("Hit " .. target_name .. " for " .. damage .. " in " .. expected_hitbox .. " ( BT: " .. backtrack .. " l SP: " .. safe_point .. " )", 1)
                add_message("[ mercury.lua ]  Hit " .. target_name .. " in " .. expected_hitbox .. " for " .. damage .. " l hc: " .. hitchance .. " l bt: " .. backtrack, 1, "", target_name, expected_hitbox, damage, hitchance, backtrack)
                return
            end
    
            if hitbox == "Thigh" then
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, "[ mercury.lua ]  ")
    
                console_color.clr[0] = 255
                console_color.clr[1] = 255
                console_color.clr[2] = 255
    
                console_print(engine_cvar, console_color, "Hit ")
    
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, target_name)
    
                console_color.clr[0] = 255
                console_color.clr[1] = 255
                console_color.clr[2] = 255
    
                console_print(engine_cvar, console_color, " in ")
    
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, "Pelvis")
    
                console_color.clr[0] = 255
                console_color.clr[1] = 255
                console_color.clr[2] = 255
    
                console_print(engine_cvar, console_color, " for ")
    
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, damage)
    
                console_color.clr[0] = 255
                console_color.clr[1] = 255
                console_color.clr[2] = 255
    
                console_print(engine_cvar, console_color, " l hc: ")
    
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, hitchance)
    
                console_color.clr[0] = 255
                console_color.clr[1] = 255
                console_color.clr[2] = 255
    
                console_print(engine_cvar, console_color, " l bt: ")
    
                console_color.clr[0] = 51
                console_color.clr[1] = 255
                console_color.clr[2] = 51
    
                console_print(engine_cvar, console_color, backtrack .. "\n")
                --add_message("Hit " .. target_name .. " for " .. damage .. " in " .. "Pelvis" .. " ( BT: " .. backtrack .. " l SP: " .. safe_point .. " )", 1)
                add_message("[ mercury.lua ]  Hit " .. target_name .. " in " .. "Pelvis" .. " for " .. damage .. " l hc: " .. hitchance .. " l bt: " .. backtrack, 1, "", target_name, "Pelvis", damage, hitchance, backtrack)
                return
            end
    
            console_color.clr[0] = 51
            console_color.clr[1] = 255
            console_color.clr[2] = 51
    
            console_print(engine_cvar, console_color, "[ mercury.lua ]  ")
    
            console_color.clr[0] = 255
            console_color.clr[1] = 255
            console_color.clr[2] = 255
    
            console_print(engine_cvar, console_color, "Hit ")
    
            console_color.clr[0] = 51
            console_color.clr[1] = 255
            console_color.clr[2] = 51
    
            console_print(engine_cvar, console_color, target_name)
    
            console_color.clr[0] = 255
            console_color.clr[1] = 255
            console_color.clr[2] = 255
    
            console_print(engine_cvar, console_color, " in ")
    
            console_color.clr[0] = 51
            console_color.clr[1] = 255
            console_color.clr[2] = 51
    
            console_print(engine_cvar, console_color, hitbox)
    
            console_color.clr[0] = 255
            console_color.clr[1] = 255
            console_color.clr[2] = 255
    
            console_print(engine_cvar, console_color, " for ")
    
            console_color.clr[0] = 51
            console_color.clr[1] = 255
            console_color.clr[2] = 51
    
            console_print(engine_cvar, console_color, damage)
    
            console_color.clr[0] = 255
            console_color.clr[1] = 255
            console_color.clr[2] = 255
    
            console_print(engine_cvar, console_color, " l hc: ")
    
            console_color.clr[0] = 51
            console_color.clr[1] = 255
            console_color.clr[2] = 51
    
            console_print(engine_cvar, console_color, hitchance)
    
            console_color.clr[0] = 255
            console_color.clr[1] = 255
            console_color.clr[2] = 255
    
            console_print(engine_cvar, console_color, " l bt: ")
    
            console_color.clr[0] = 51
            console_color.clr[1] = 255
            console_color.clr[2] = 51
    
            console_print(engine_cvar, console_color, backtrack .. "\n")
            --add_message("Hit " .. target_name .. " for " .. damage .. " in " .. hitbox .. " ( BT: " .. backtrack .. " l SP: " .. safe_point .. " )", 1)
            add_message("[ mercury.lua ]  Hit " .. target_name .. " in " .. hitbox .. " for " .. damage .. " l hc: " .. hitchance .. " l bt: " .. backtrack, 1, "", target_name, hitbox, damage, hitchance, backtrack)
    
        end
    
    end)
    
    local function on_player_hurt( event )
    
        if not cool_logs:get_value() then return end
    
        local m_iHealth = se.get_netvar("DT_BasePlayer", "m_iHealth")
        local my_hp = entitylist.get_local_player( ):get_prop_int(m_iHealth)
        local me = entitylist.get_local_player( )
        local was_hurt = entitylist.get_entity_by_index( engine.get_player_for_user_id( event:get_int( "userid", 0 ) ) )
        local attacker = event:get_int( "attacker", -1 ) 
        local damage = event:get_int( "dmg_health", 0 )
        local hitgroup = hitboxes[event:get_int( "hitgroup", -1 )]
        local weapon = event:get_string( "weapon", "-1" )
    
        if attacker == -1 or weapon == "-1" or was_hurt:get_index( ) ~= me:get_index( ) then return end
    
        attacker = entitylist.get_entity_by_index( engine.get_player_for_user_id( attacker ) ) 
        local target_name = engine.get_player_info( attacker:get_index( ) ).name
    
        if my_hp - damage >= 0 then
            remain = tostring(my_hp - damage)
        else
            remain = tostring(0)
        end
    
        weapon = weapon:gsub( "weapon_", "" )
        weapon = weapon:gsub( "item_", "" )
    
        console_color.clr[0] = 245
        console_color.clr[1] = 140
        console_color.clr[2] = 0
    
        console_print(engine_cvar, console_color, "[ mercury.lua ]  ")
    
        console_color.clr[0] = 255
        console_color.clr[1] = 255
        console_color.clr[2] = 255
    
        console_print(engine_cvar, console_color, "Hurt by ")
    
        console_color.clr[0] = 245
        console_color.clr[1] = 140
        console_color.clr[2] = 0
    
        console_print(engine_cvar, console_color, target_name)
    
        console_color.clr[0] = 255
        console_color.clr[1] = 255
        console_color.clr[2] = 255
    
        console_print(engine_cvar, console_color, " to your ")
    
        console_color.clr[0] = 245
        console_color.clr[1] = 140
        console_color.clr[2] = 0
    
        console_print(engine_cvar, console_color, hitgroup)
    
        console_color.clr[0] = 255
        console_color.clr[1] = 255
        console_color.clr[2] = 255
    
        console_print(engine_cvar, console_color, " for ")
    
        console_color.clr[0] = 245
        console_color.clr[1] = 140
        console_color.clr[2] = 0
    
        console_print(engine_cvar, console_color, tostring( damage ) .. "\n")
        --add_message(target_name .. " did " .. tostring( damage ) .. " to your " .. hitgroup .. " with " .. weapon .. " ( Remaining: " .. remain  .. " hp )", 2)
        add_message("[ mercury.lua ]  Hurt by " .. target_name .. " to your " .. hitgroup .. " for " .. tostring( damage ), 2, "", target_name, hitgroup, tostring( damage ), "", "")
    
    end
    
    client.register_callback( "player_hurt", function( event )
        on_player_hurt( event )
    end )
                    -- [3 PERSON]
                    once_thirdperson = false
                    
                    client.register_callback("create_move", function()
                    if scale_thirdperson:get_value() then se.get_convar("cam_idealdist"):set_int(scale_thirdperson:get_value() and thirdperson_scale:get_value() or 120) end
                    if scale_thirdperson:get_value() and not once_thirdperson then once_thirdperson = not once_thirdperson end
                    if not scale_thirdperson:get_value() and once_thirdperson then once_thirdperson = not once_thirdperson; se.get_convar("cam_idealdist"):set_int(120) end
                    end) client.register_callback("unload", function() if scale_thirdperson:get_value() then se.get_convar("cam_idealdist"):set_int(120) end end)
                    
                    -- [CLANTAG STATIC]
                    local m_iTeamNum = se.get_netvar("DT_BasePlayer", "m_iTeamNum")
                    local a1 = 0
                    local a2 = 0
                    local a3 =
                    {
                    "☄",
                    "☄ M",
                    "☄ Me",
                    "☄ Mer",
                    "☄ Merc",
                    "☄ Mercu",
                    "☄ Mercur",
                    "☄ Mercury",
                    "☄ Mercur",
                    "☄ Mercu",
                    "☄ Merc",
                    "☄ Mer",
                    "☄ Me",
                    "☄ M",
                    "☄ ",
                    "",
                    }
                    
                    local function paint()
                        if m_clantag:get_value() then
                        if engine.is_in_game() then
                            if a1 < globalvars.get_tick_count() then     
                                a2 = a2 + 1
                                if a2 > 50 then
                                    a2 = 0
                                end
                                se.set_clantag(a3[a2])
                                a1 = globalvars.get_tick_count() + 25
                            end
                        end
                    end
                    end
                    
                    client.register_callback("paint", paint)
                    -- CONSOLE FILTER
                    
                    local once = true
                    local once_el = false
                    
                    client.register_callback("paint", function()
                        if cf:get_value() and once then
                            engine.execute_client_cmd("con_filter_enable 1; con_filter_text all; con_filter_text_out DispatchAsyncEvent backlog; clear")
                            once = false
                            once_el = true
                        elseif not console_filter:get_value() and once_el then
                            engine.execute_client_cmd("con_filter_enable 0")
                            once = true
                            once_el = false
                        end
                    end)
                    --
                    --indicators
                    
                    ---baim and mindamage
                    
                    
                    local m_iHealth = se.get_netvar("DT_BasePlayer", "m_iHealth")
                    
                    local function rage_main_func(cmd)
                    
                        local overrides = {
                            fhb = enableForceBodyAim:is_active(),
                            md = {enableMinDamage:is_active(), md_value:get_value()},
                        }
                    
                        local entities = entitylist.get_players(0)
                    
                        for i=1, #entities do
                    
                            local index = entities[i]:get_index()
                    
                            if overrides.md[1] then
                                ragebot.override_min_damage(index, overrides.md[2])
                            end
                    
                            if overrides.fhb then
                                ragebot.override_hitscan(index, 0, false)
                                if baim_md:get_value() and not overrides.md[1] then
                                    ragebot.override_min_damage(index, 50)
                                end
                            end
                    
                        end
                    
                    end
                    
                    client.register_callback("create_move", rage_main_func)
                    -- TANK AA
                    
                    inverter = ui.add_key_bind( "inverter", "inverter", 0, 2 )
                    inverter:set_visible(false)
                    switch = false
                    jitter = false
                    
                    function tanki(cmd)  
                    
                        if jittorbox:get_value() == true then
                    
                            if return_conditions( cmd ) then return end
                        
                            if switch then
                                switch = false
                                inverter:set_type(0) 
                            else
                                switch = true
                                inverter:set_type(2) 
                            end
                    
                            if clientstate.get_choked_commands() < 1 then
                                if jitter then
                                   jitter = false
                                    adding = jitttor:get_value()
                                else
                                    jitter = true
                                    adding =  -jitttor:get_value()
                                end
                            end
                    
                            cmd.viewangles.pitch = 0
                            cmd.viewangles.yaw = cmd.viewangles.yaw + 0 + adding +10
                    
                            if clientstate.get_choked_commands() < 1 then --Если не отправленые пакеты < чем нужно    
                                cmd.send_packet = false
                                cmd.viewangles.yaw = cmd.viewangles.yaw + (inverter:is_active() and 20 or -16)   
                            end
                        
                        end
                    
                    end
                    
                    function is_throwing(  ) 

                         
                        
                       
                        local active_weapon_throw_time = entitylist.get_entity_from_handle(entitylist.get_local_player():get_prop_int(se.get_netvar("DT_BaseCombatCharacter", "m_hActiveWeapon"))):get_prop_float(se.get_netvar("DT_BaseCSGrenade", "m_fThrowTime"))
                        if active_weapon_throw_time > 0.1 then 
                            return true
                        end 
                        return false
                    end
                    
                    function return_conditions( cmd )
                    
                        if is_warmap_started then 
                            return true
                        end
                    
                        local active_weapon = entitylist.get_entity_from_handle(entitylist.get_local_player():get_prop_int(se.get_netvar("DT_BaseCombatCharacter", "m_hActiveWeapon")))
                    
                        if is_nade( ) and is_throwing( ) and not is_knife( ) then
                            return true
                        end
                    
                        if (hasbit(cmd.buttons, 1) or (hasbit(cmd.buttons, 2048) and is_knife())) and can_shoot(active_weapon) then
                            return true
                        end
                    
                        if hasbit(cmd.buttons, 32) then
                            return true
                        end
                    
                        local move_type = entitylist.get_local_player():get_prop_int(se.get_netvar("DT_BaseEntity", "m_nRenderMode") + 1) 
                    
                        if move_type == 0 or move_type == 8 or move_type == 9 then
                            return true
                        end
                    
                        return false
                    end
                    
                    function server_time()
                        return (entitylist.get_local_player():get_prop_int(se.get_netvar("DT_BasePlayer", "m_nTickBase")) * globalvars.get_interval_per_tick())
                    end
                    
                    function can_shoot( weapon )
                        return weapon:get_prop_float(se.get_netvar("DT_BaseCombatWeapon", "m_flNextPrimaryAttack")) <= server_time() and ((get_weapon_ammo( entitylist.get_local_player() ) > 0 and not get_weapon_recharge( )) or is_knife())
                    end
                    
                    function hasbit(x, p) return x % (p + p) >= p end
                    
                    weapon_data_call = ffi.cast("int*(__thiscall*)(void*)", client.find_pattern("client.dll", "55 8B EC 81 EC ? ? ? ? 53 8B D9 56 57 8D 8B ? ? ? ? 85 C9 75 04"));
                    
                    function weapon_data( weapon )
                        return ffi.cast("struct WeaponInfo_t*", weapon_data_call(ffi.cast("void*", weapon:get_address())));
                    end
                    
                    function get_weapon_ammo( player )
                        return entitylist.get_entity_from_handle(entitylist.get_local_player():get_prop_int(se.get_netvar("DT_BaseCombatCharacter", "m_hActiveWeapon"))):get_prop_int(se.get_netvar("DT_BaseCombatWeapon", "m_iClip1"))
                    end
                    
                    function get_weapon_recharge(  )
                    
                        if not entitylist.get_entity_from_handle(entitylist.get_local_player():get_prop_int(se.get_netvar("DT_BaseCombatCharacter", "m_hActiveWeapon"))) then
                            return false
                        end
                    
                        in_recharge = ffi.cast("uint32_t*", (client.find_pattern("client.dll", "C6 87 ? ? ? ? ? 8B 06 8B CE FF 90") + 2))
                        is_recharging = ffi.cast("bool*", entitylist.get_entity_from_handle(entitylist.get_local_player():get_prop_int(se.get_netvar("DT_BaseCombatCharacter", "m_hActiveWeapon"))):get_address() + in_recharge[0])
                    
                        return is_recharging[0]
                    end
                    
                    function is_nade(  )
                    
                        weapon = entitylist.get_entity_from_handle(entitylist.get_local_player():get_prop_int(se.get_netvar("DT_BaseCombatCharacter", "m_hActiveWeapon")))
                    
                        if weapon_data(weapon).type == 0 then
                            return true
                        end
                    
                        return false
                    
                    end
                    
                    function is_knife(  )
                        
                        weapon = entitylist.get_entity_from_handle(entitylist.get_local_player():get_prop_int(se.get_netvar("DT_BaseCombatCharacter", "m_hActiveWeapon")))
                    
                        if weapon_data(weapon).type == 1 then
                            return true
                        end
                    
                        return false
                    
                    end
                    
                    
                    client.register_callback("create_move", tanki)
                    
                    -- TWOSHOTS
                    
                    local prev_twoshots_tick = globalvars.get_tick_count()
                    local dt_shot = false
                    local is_shot = false
                    
                    ffi.cdef[[
                    
                        struct WeaponInfo_t
                        {
                            char _0x0000[20];
                            __int32 max_clip;    
                            char _0x0018[12];
                            __int32 max_reserved_ammo;
                            char _0x0028[96];
                            char* hud_name;            
                            char* weapon_name;        
                            char _0x0090[60];
                            __int32 type;            
                            __int32 price;            
                            __int32 reward;            
                            char _0x00D8[20];
                            bool full_auto;        
                            char _0x00ED[3];
                            __int32 damage;            
                            float armor_ratio;         
                            __int32 bullets;    
                            float penetration;    
                            char _0x0100[8];
                            float range;            
                            float range_modifier;    
                            char _0x0110[16];
                            bool silencer;            
                            char _0x0121[15];
                            float max_speed;        
                            float max_speed_alt;
                            char _0x0138[76];
                            __int32 recoil_seed;
                            char _0x0188[32];
                        };
                    ]]
                    
                    weapon_data_call = ffi.cast("int*(__thiscall*)(void*)", client.find_pattern("client.dll", "55 8B EC 81 EC ? ? ? ? 53 8B D9 56 57 8D 8B ? ? ? ? 85 C9 75 04"));
                    
                    local function weapon_data( weapon )
                        return ffi.cast("struct WeaponInfo_t*", weapon_data_call(ffi.cast("void*", weapon:get_address())));
                    end
                    
                     local function rage_main_func(cmd)
                    
                        if not two_shots_enable:get_value() then return end
                    
                         m_iHealth = se.get_netvar("DT_BasePlayer", "m_iHealth")
                    
                        if is_shot then
                            if prev_twoshots_tick + 10 < globalvars.get_tick_count() then
                                prev_twoshots_tick = globalvars.get_tick_count()
                                dt_shot = false
                                is_shot = false
                            else
                                dt_shot = true
                            end
                        end
                    
                        local entities = entitylist.get_players(0)
                    
                        for i=1, #entities do
                            local index = entities[i]:get_index()
                            local weapon = entitylist.get_entity_from_handle(entitylist.get_local_player():get_prop_int(se.get_netvar("DT_BaseCombatCharacter", "m_hActiveWeapon")))
                            if (weapon_data(weapon).max_clip == 20 and weapon_data(weapon).max_reserved_ammo == 90) or (weapon_data(weapon).max_clip == 7 and weapon_data(weapon).max_reserved_ammo == 35) then
                                if ui.get_combo_box("rage_active_exploit"):get_value() == 2 and ui.get_key_bind("rage_active_exploit_bind"):is_active() then
                                    local health = entities[i]:get_prop_int(m_iHealth)
                                    if not dt_shot then
                                        ragebot.override_min_damage(index, math.floor(health/2))
                                    else
                                        ragebot.override_min_damage(index, math.floor(health))
                                    end
                                end
                            end
                        end
                    
                    end
                    
                    client.register_callback("shot_fired", function(shot_info) 
                        if not is_shot then is_shot = true end
                        prev_twoshots_tick = globalvars.get_tick_count()
                    end)
                    
                    client.register_callback("create_move", rage_main_func)
                    -- [TAB FUNCTIONS]
                     local function tabfunc()
                        --0
                        if tab:get_value() == 0 then
                            downloaddetals:set_visible(true)
                            lol:set_visible(true)
                            lol1:set_visible(true)
                          lol2:set_visible(true)
                          lol3:set_visible(true)
                          lol4:set_visible(true)
                          lol5:set_visible(true)
                          lol6:set_visible(true)
                          lol7:set_visible(true)
                        else
                            downloaddetals:set_visible(false)
                            lol:set_visible(false)
                            lol1:set_visible(false)
                            lol2:set_visible(false)
                            lol3:set_visible(false)
                            lol4:set_visible(false)
                            lol5:set_visible(false)
                            lol6:set_visible(false)
    
                            lol7:set_visible(false)
    
                        end
                        --RAGE
                        if tab:get_value() == 1 then
                            two_shots_enable:set_visible(true)
                            antidef_switch:set_visible(true)
                            exploit_switch:set_visible(true)
                            enableMinDamage:set_visible(true)
                            enableForceBodyAim:set_visible(true)
                            md_value:set_visible(enableMinDamage:get_key() ~= 0 )
                            baim_md:set_visible(true)
                            master:set_visible(true)
                        else
                            two_shots_enable:set_visible(false)
                            antidef_switch:set_visible(false)
                            exploit_switch:set_visible(false)
                            enableMinDamage:set_visible(false)
                            enableForceBodyAim:set_visible(false)
                            md_value:set_visible(false)
                            baim_md:set_visible(false)
                            master:set_visible(false)
    
                        end
                        --VISUAL
                        if tab:get_value() == 2 then
                           
                      
                            lineene:set_visible(true)
                            transparent:set_visible(trans:get_value())
                            trans:set_visible(true)
                            bombindicator:set_visible(true)
                            scale_thirdperson:set_visible(true)
                            thirdperson_scale:set_visible(scale_thirdperson:get_value())
                            arrow_select:set_visible(arrowsbox:get_value())
                            arrows_type:set_visible(arrowsbox:get_value())
                            a_c:set_visible(arrowsbox:get_value())
                           
                            arrowsbox:set_visible(true)
                            transgrenade:set_visible(true)
                            transparent1:set_visible(transgrenade:get_value())
                            hitmarkered:set_visible(true)
                            hitmarkerfade:set_visible(hitmarkered:get_value())
                            lua_hitmarker_color:set_visible(hitmarkered:get_value())
                      tabfuncall:set_visible(true)
                        tabcolor:set_visible(tabfuncall:get_value(1))
                        else
                            
                            bombindicator:set_visible(false)
                            tabfuncall:set_visible(false)
                            lineene:set_visible(false)
                            trans:set_visible(false)
                            transparent:set_visible(false)
                            scale_thirdperson:set_visible(false)
                            thirdperson_scale:set_visible(false)
                            arrowsbox:set_visible(false)
                            arrow_select:set_visible(false)
                            arrows_type:set_visible(false)
                            a_c:set_visible(false)
                            
                            
                            transgrenade:set_visible(false)
                            transparent1:set_visible(false)
                            hitmarkered:set_visible(false)
                            hitmarkerfade:set_visible(false)
                            lua_hitmarker_color:set_visible(false)
                            tabcolor:set_visible(false)
                        end
                        --ui
                        if tab:get_value() == 3 then  
                             hitlog_clear:set_visible(indiki:get_value(1))
                             indicatorcolor:set_visible(screen_ind:get_value(3))
    
                            colorlineind:set_visible(screen_ind_style:get_value() == 1 and (screen_ind:get_value(2) or screen_ind:get_value(0) or screen_ind:get_value(1)))
                            inner_col:set_visible(screen_ind_style:get_value() == 2 and (screen_ind:get_value(2) or screen_ind:get_value(0) or screen_ind:get_value(1)))
                            upper_col:set_visible(screen_ind_style:get_value() == 2 and (screen_ind:get_value(2) or screen_ind:get_value(0) or screen_ind:get_value(1)))
                            down_col:set_visible(screen_ind_style:get_value() == 2 and (screen_ind:get_value(2) or screen_ind:get_value(0) or screen_ind:get_value(1)))
                            screen_ind:set_visible(true)
                            screen_ind_style:set_visible(screen_ind:get_value(2) or screen_ind:get_value(0) or screen_ind:get_value(1)  ) 
                            indiki:set_visible(true)
                        else
                            indicatorcolor:set_visible(false)
    
                            indiki:set_visible(false)
                            screen_ind:set_visible(false)
                            screen_ind_style:set_visible(false)
                            colorlineind:set_visible(false)
                            inner_col:set_visible(false)
                            upper_col:set_visible(false)
                            down_col:set_visible(false)
                            hitlog_clear:set_visible(false)
                        end 
                          --ANTIHIT
                          if tab:get_value() == 4 then
                            antibackstab:set_visible(true)
                            rad_color:set_visible(antibackstab:get_value())
                            distance_bcks:set_visible(antibackstab:get_value())
                            show_radius:set_visible(antibackstab:get_value())
                            
                            --dt_hc:set_visible(master:get_value() and frestand1q:get_value())
                            roll_value:set_visible(manual_roll:get_value())
                            manual_roll:set_visible(true)
                            Manuals1:set_visible(true)
                            lua_ah_manual_left:set_visible(Manuals1:get_value())
                            lua_ah_manual_right:set_visible(Manuals1:get_value())
                            jitttor:set_visible(jittorbox:get_value())
                            jittorbox:set_visible(true)
                            frestand1q:set_visible(true)
                            --fres:set_visible(true)
                          
                    Ideal_Anim_Breaker:set_visible(true)
                        else
                            Ideal_Anim_Breaker:set_visible(false)
                            antibackstab:set_visible(false)
                            rad_color:set_visible(false)
                            distance_bcks:set_visible(false)
                            show_radius:set_visible(false)
                            --dt_hc:set_visible(false)
                            --fres:set_visible(false)
                            frestand1q:set_visible(false)
                    
                            roll_value:set_visible(false)
                            manual_roll:set_visible(false)
                            lua_ah_manual_left:set_visible(false)
                            lua_ah_manual_right:set_visible(false)
                            Manuals1:set_visible(false)
                            jittorbox:set_visible(false)
                            jitttor:set_visible(false)
                        end
                        
                        --ANTIAIM
                        if tab:get_value() == 5 then
                          antibruteforce:set_visible(true)
                          antibruteonhit:set_visible(true)
                          antibruteval:set_visible(antibruteforce:get_value())
                          antibruteval1:set_visible(antibruteforce:get_value())
                        else
                            antibruteforce:set_visible(false)
                            antibruteonhit:set_visible(false)
                            antibruteval:set_visible(false)
                            antibruteval1:set_visible(false)
                        end
                      
                        --MISC
                        if tab:get_value() == 6 then 
              
                            
                            fps:set_visible(true)
                            cf:set_visible(true)
                            trashtalk_enabled:set_visible(false)
                            m_clantag:set_visible(true)
                            buy_bot_box:set_visible(true)
                            buy_pistol:set_visible(buy_bot_box:get_value())
                            buy_other:set_visible(buy_bot_box:get_value())
                            buy_weapon:set_visible(buy_bot_box:get_value())
                            cool_logs:set_visible(true)
                          
                            slowdown:set_visible(true)
                        else
                      
                            
                            fps:set_visible(false)
                            cf:set_visible(false)
                            trashtalk_enabled:set_visible(false)
                            m_clantag:set_visible(false)
                            buy_bot_box:set_visible(false)
                            buy_pistol:set_visible(false)
                            buy_other:set_visible(false)
                            buy_weapon:set_visible(false)
                            cool_logs:set_visible(false)
                          
                            slowdown:set_visible(false)
                            
                        end
                    
                    if tab:get_value() == 7 then
                            crosshair_view:set_visible(true)
                            line_color_in_game:set_visible(crosshair_view:get_value())
                            line_color_in_game_second:set_visible(crosshair_view:get_value())
                            line_width:set_visible(crosshair_view:get_value())
                            line_length:set_visible(crosshair_view:get_value())
                            viewmodel_on_scope:set_visible(crosshair_view:get_value())
                            enableGrenadePrediction:set_visible(true)
                    
                        
                    
                            m_outline_col:set_visible(nades:get_value())
                            m_circle_col:set_visible(nades:get_value())
                            s_outline_col:set_visible(nades:get_value())
                            s_circle_col:set_visible(nades:get_value())
                            nades:set_visible(true)
                            
                             
                           
                        
                        
                        pcusautopeek:set_visible(true)
                        enablefirstcolor:set_visible(pcusautopeek:get_value() and enablefilled:get_value())
                        enablesecondcolor:set_visible(pcusautopeek:get_value())
                        enablefilled:set_visible(pcusautopeek:get_value())
                    
                    else
                        enableGrenadePrediction:set_visible(false)
                        crosshair_view:set_visible(false)
                        line_color_in_game:set_visible(false)
                        line_color_in_game_second:set_visible(false)
                        line_width:set_visible(false)
                        line_length:set_visible(false)
                        viewmodel_on_scope:set_visible(false)
                    
                     
                        
                     
                        m_outline_col:set_visible(false)
                        m_circle_col:set_visible(false)
                        s_outline_col:set_visible(false)
                        s_circle_col:set_visible(false)
                        nades:set_visible(false)
                        pcusautopeek:set_visible(false)
                        enablefirstcolor:set_visible(false)
                        enablesecondcolor:set_visible(false)
                        enablefilled:set_visible(false)
                        
                    end
                     
                    end
                    client.register_callback("paint", tabfunc)
                    
                    
                    --TabPanel
                  
                    local m_vecOrigin = se.get_netvar("DT_BaseEntity", "m_vecOrigin")
                    
                    client.register_callback("paint", function()
                        if tabfuncall:get_value() then
                        if not engine.is_connected() then return end
                        local tab_prev = 91256128291469128741
                        local tab_right = "none"
                        local players = entitylist.get_players(0)
                        local localplayer = entitylist.get_local_player()
                        local tab3 = localplayer:get_prop_vector(m_vecOrigin)
                        for i = 1, #players do
                            local tab_en = players[i]:get_prop_vector(m_vecOrigin)
                            if players[i]:is_alive() then
                                tab_right = tab_prev > tab3:dist_to(tab_en) and engine.get_player_info(players[i]:get_index()).name or tab_right
                                tab_prev = math.min(tab_prev, tab3:dist_to(tab_en))
                            end
                        end
                        local scr_size = engine.get_screen_size()
                        renderer.text("> mercury.lua -", tab_font, vec2_t.new(20, scr_size.y/2 - 6 - renderer.get_text_size(tab_font, 13, "> build ver. - release").y/2 - renderer.get_text_size(tab_font, 13, "> user: " .. pl_login).y - renderer.get_text_size(tab_font, 13, "> mercury").y - 1), 13, color_t.new(0, 0, 0, 255))
                        renderer.text("> mercury.lua -", tab_font, vec2_t.new(20, scr_size.y/2 - 6 - renderer.get_text_size(tab_font, 13, "> build ver. - release").y/2 - renderer.get_text_size(tab_font, 13, "> user: " .. pl_login).y - renderer.get_text_size(tab_font, 13, "> mercury").y), 13, color_t.new(255, 255, 255, 255))
                        renderer.text("best cord ever", tab_font, vec2_t.new(20 + renderer.get_text_size(tab_font, 13, "> mercury.lua - ").x, scr_size.y/2 - 6 - renderer.get_text_size(tab_font, 13, "> build ver. - release").y/2 - renderer.get_text_size(tab_font, 13, "> user: " .. pl_login).y - renderer.get_text_size(tab_font, 13, "> mercury").y - 1), 13, color_t.new(0, 0, 0, 255))
                        renderer.text("best cord ever", tab_font, vec2_t.new(20 + renderer.get_text_size(tab_font, 13, "> mercury.lua - ").x, scr_size.y/2 - 6 - renderer.get_text_size(tab_font, 13, "> build ver. - release").y/2 - renderer.get_text_size(tab_font, 13, "> user: " .. pl_login).y - renderer.get_text_size(tab_font, 13, "> mercury").y), 13, tabcolor:get_value())
                    
                        renderer.text("> user:", tab_font, vec2_t.new(20, scr_size.y/2 - 3 - renderer.get_text_size(tab_font, 13, "> build ver. - release").y/2 - renderer.get_text_size(tab_font, 13, "> user: " .. pl_login).y - 1), 13, color_t.new(0, 0, 0, 255))
                        renderer.text(pl_login, tab_font, vec2_t.new(20 + renderer.get_text_size(tab_font, 13, "> user: ").x, scr_size.y/2 - 3 - renderer.get_text_size(tab_font, 13, "> build ver. - release").y/2 - renderer.get_text_size(tab_font, 13, "> user: " .. pl_login).y - 1), 13, color_t.new(0, 0, 0, 255))
                        renderer.text("> user:", tab_font, vec2_t.new(20, scr_size.y/2 - 3 - renderer.get_text_size(tab_font, 13, "> build ver. - release").y/2 - renderer.get_text_size(tab_font, 13, "> user: " .. pl_login).y), 13, color_t.new(255, 255, 255, 255))
                        renderer.text(pl_login, tab_font, vec2_t.new(20 + renderer.get_text_size(tab_font, 13, "> user: ").x, scr_size.y/2 - 3 - renderer.get_text_size(tab_font, 13, "> build ver. - release").y/2 - renderer.get_text_size(tab_font, 13, "> user: " .. pl_login).y), 13, tabcolor:get_value())
                    
                        renderer.text("> build ver. -", tab_font, vec2_t.new(20, scr_size.y/2 - renderer.get_text_size(tab_font, 13, "> build ver. - release").y/2 - 1), 13, color_t.new(0, 0, 0, 255))
                        renderer.text("release", tab_font, vec2_t.new(20 + renderer.get_text_size(tab_font, 13, "> build ver. - ").x, scr_size.y/2 - renderer.get_text_size(tab_font, 13, "> build ver. - release").y/2 - 1), 13, color_t.new(0, 0, 0, 255))
                        renderer.text("> build ver. -", tab_font, vec2_t.new(20, scr_size.y/2 - renderer.get_text_size(tab_font, 13, "> build ver. - release").y/2), 13, color_t.new(255, 255, 255, 255))
                        renderer.text("release", tab_font, vec2_t.new(20 + renderer.get_text_size(tab_font, 13, "> build ver. - ").x, scr_size.y/2 - renderer.get_text_size(tab_font, 13, "> build ver. - release").y/2), 13, tabcolor:get_value())
                    
                        renderer.text("> current enemy:", tab_font, vec2_t.new(20, scr_size.y/2 + 3 + renderer.get_text_size(tab_font, 13, "> build ver. - release").y/2 - 1), 13, color_t.new(0, 0, 0, 255))
                        renderer.text(tab_right, tab_font, vec2_t.new(20 + renderer.get_text_size(tab_font, 13, "> current enemy: ").x, scr_size.y/2 + 3 + renderer.get_text_size(tab_font, 13, "> build ver. - release").y/2 - 1), 13, color_t.new(0, 0, 0, 255))
                        renderer.text("> current enemy:", tab_font, vec2_t.new(20, scr_size.y/2 + 3 + renderer.get_text_size(tab_font, 13, "> build ver. - release").y/2), 13, color_t.new(255, 255, 255, 255))
                        renderer.text(tab_right, tab_font, vec2_t.new(20 + renderer.get_text_size(tab_font, 13, "> current enemy: ").x, scr_size.y/2 + 3 + renderer.get_text_size(tab_font, 13, "> build ver. - release").y/2), 13, tabcolor:get_value())
                    
                        renderer.text("> angle of desync:", tab_font, vec2_t.new(20, scr_size.y/2 + 6 + renderer.get_text_size(tab_font, 13, "> build ver. - release").y/2 + renderer.get_text_size(tab_font, 13, "> current enemy:").y - 1), 13, color_t.new(0, 0, 0, 255))
                        renderer.text(tostring(ui.get_slider_int("antihit_antiaim_desync_length"):get_value()) .. "°", tab_font, vec2_t.new(20 + renderer.get_text_size(tab_font, 13, "> angle of desync: ").x, scr_size.y/2 + 6 + renderer.get_text_size(tab_font, 13, "> build ver. - release").y/2 + renderer.get_text_size(tab_font, 13, "> current enemy:").y - 1), 13, color_t.new(0, 0, 0, 255))
                        renderer.text("> angle of desync:", tab_font, vec2_t.new(20, scr_size.y/2 + 6 + renderer.get_text_size(tab_font, 13, "> build ver. - release").y/2 + renderer.get_text_size(tab_font, 13, "> current enemy:").y), 13, color_t.new(255, 255, 255, 255))
                        renderer.text(tostring(ui.get_slider_int("antihit_antiaim_desync_length"):get_value()) .. "°", tab_font, vec2_t.new(20 + renderer.get_text_size(tab_font, 13, "> angle of desync: ").x, scr_size.y/2 + 6 + renderer.get_text_size(tab_font, 13, "> build ver. - release").y/2 + renderer.get_text_size(tab_font, 13, "> current enemy:").y), 13, tabcolor:get_value())
                    end
                    end)
                    --BOMBINDICATOR
                    
                    
    
                     local table_x = ui.add_slider_int("X", "tablexposahwr3fserf", 0, engine.get_screen_size().x, 30)
                     table_y = ui.add_slider_int("Y", "tableyposahwr3fserf", 0, engine.get_screen_size().y, 400)
                     table_x:set_visible(false) 
                     table_y:set_visible(false)
                     bomb_texture = renderer.setup_texture("./csgo/cache/mercury/bomb.png")
                    
                     screen_size = engine.get_screen_size( )
                    local offsets = 
                    {
                        m_flC4Blow = se.get_netvar( "DT_PlantedC4", "m_flC4Blow" ),
                        m_flDefuseCountDown = se.get_netvar( "DT_PlantedC4", "m_flDefuseCountDown" ),
                        m_flTimerLength = se.get_netvar( "DT_PlantedC4", "m_flTimerLength" ),
                        m_hBombDefuser = se.get_netvar( "DT_PlantedC4", "m_hBombDefuser" ),
                        m_bStartedArming = se.get_netvar( "DT_WeaponC4", "m_bStartedArming" ),
                        m_fArmedTime = se.get_netvar( "DT_WeaponC4", "m_fArmedTime" ),
                    
                        m_bombsiteCenterA = se.get_netvar( "DT_CSPlayerResource", "m_bombsiteCenterA" ),
                        m_bombsiteCenterB = se.get_netvar( "DT_CSPlayerResource", "m_bombsiteCenterB" ),
                        m_hOwnerEntity = se.get_netvar( "DT_BaseEntity", "m_hOwnerEntity" )
                    }
                    
                     tbomb_site = nil
                    local function render_planted_bomb( bomb )
                        if bombindicator:get_value() then
                         time_to_defuse = ( globalvars.get_current_time( ) - bomb:get_prop_float( offsets.m_flDefuseCountDown ) ) * -1
                         time_to_explosion = ( globalvars.get_current_time( ) - bomb:get_prop_float( offsets.m_flC4Blow ) ) * -1
                         c4_blowtime_l = bomb:get_prop_float( offsets.m_flTimerLength )
                    
                        if time_to_explosion > 0.0
                        then
                             player_resource = entitylist.get_entities_by_class( "CCSPlayerResource" )
                            if #player_resource == 1
                            then
                                 a_ = player_resource[1]:get_prop_vector( offsets.m_bombsiteCenterA )
                                 b_ = player_resource[1]:get_prop_vector( offsets.m_bombsiteCenterB )
                    
                                 origin = bomb:get_prop_vector( 0x138 )
                                if origin and a_ and b_
                                then
                                    bomb_site = a_:dist_to( origin ) > b_:dist_to( origin ) and "B" or "A"
                                else
                                    bomb_site = "?"
                                end
                    
                                renderer.rect_filled(vec2_t.new(table_x:get_value(), table_y:get_value()), vec2_t.new(table_x:get_value() + 180, table_y:get_value() + 50), color_t.new(15, 15, 15, 100)) -- Цвет/прозрачность фона установленной бомбы
                                renderer.rect_filled(vec2_t.new(table_x:get_value(), table_y:get_value() + 50), vec2_t.new(table_x:get_value() + 180, table_y:get_value() + 51), color_t.new(182, 163, 255, 255))
                                
                    
                                renderer.texture(bomb_texture, vec2_t.new(table_x:get_value()-5, table_y:get_value()-3), vec2_t.new(table_x:get_value() + 55, table_y:get_value() + 57), color_t.new(255, 255, 255, 255)) -- Цвет/прозрачность иконки бомбы(установленной)
                    
                                 size = renderer.get_text_size( font2, 15, "Side: " )
                                renderer.text( "Side: ", font2, vec2_t.new(table_x:get_value() + 45, table_y:get_value() + 25), 15, color_t.new( 177, 163, 255, 255 ) ) -- Цвет/прозрачность надписи Side: установленной бомбы
                    
                                 can_defuse = time_to_explosion > time_to_defuse     
                                renderer.text( string.format("%s (%.1fs)", bomb_site, time_to_explosion ), font2, vec2_t.new(table_x:get_value() + 45 + size.x, table_y:get_value() + 25), 15, can_defuse and color_t.new( 46, 204, 113, 255 ) or color_t.new( 177, 163, 255, 190 ) ) -- Первый color_t.new() это цвет/прозрачность таймера до взрыва если можно раздефузить, второй это цвет/прозрачность если нельзя раздефузить
                            end
                    
                            --renderer.text( string.format( "%.1f", time_to_explosion ), font, vec2_t.new( screen_size.x * ( time_to_explosion / c4_blowtime_l ), 15 ), 18, color_t.new(  177, 163, 255, 255 ) )
                            renderer.rect_filled( vec2_t.new(table_x:get_value() + 45, table_y:get_value() + 7), vec2_t.new(table_x:get_value() + 175, table_y:get_value() + 22), color_t.new( 50, 50, 50, 120 ) ) -- Цвет/прозрачность незаполненной полоски(которая не двигается)
                            renderer.rect_filled( vec2_t.new(table_x:get_value() + 45, table_y:get_value() + 7), vec2_t.new( table_x:get_value() + 45 + time_to_explosion*(130 / c4_blowtime_l), table_y:get_value() + 22 ), color_t.new( 177, 163, 255, 190 ) ) -- Цвет/прозрачность заполенной полоски(которая двигается)
                    
                             box = bomb:get_bbox( )
                            if box ~= nil
                            then
                                 size = renderer.get_text_size( font_icons, 36, "M" )
                                 --renderer.text( "M", font_icons, vec2_t.new( box.left + ( box.right - box.left ) / 2 - 1, box.bottom + ( box.top - box.bottom ) / 2 - 1 ), 30, color_t.new( 0, 0, 0, 255 ) )
                                --enderer.text( string.format( "%.1fs", time_to_explosion ), font, vec2_t.new( box.left + ( box.right - box.left ) / 2 - 1, box.bottom + size.y - 20 - 1 ), 15, color_t.new( 0, 0, 0, 255 ) ) -- Цвет тени таймера(на бомбе), меняй только прозрачность
                                --renderer.text( "M", font_icons, vec2_t.new( box.left + ( box.right - box.left ) / 2, box.bottom + ( box.top - box.bottom ) / 2 ), 30, color_t.new( 255, 255, 255, 255 ) )
                                --renderer.text( string.format( "%.1fs", time_to_explosion ), font, vec2_t.new( box.left + ( box.right - box.left ) / 2, box.bottom + size.y - 20 ), 15, color_t.new( 255, 255, 255, 255 ) ) -- Цвет/прозрачность таймера(на бомбе)
                            end
                    
                            if time_to_defuse > 0.0 and bomb:get_prop_int( offsets.m_hBombDefuser ) ~= -1
                            then
                                 can_defuse = time_to_explosion > time_to_defuse 
                                --renderer.text( string.format( "%.1f", time_to_defuse ), font, vec2_t.new( screen_size.x * ( time_to_defuse / c4_blowtime_l ) + 5, 15 ), 18, can_defuse and color_t.new( 52, 152, 219, 255 ) or color_t.new( 177, 163, 255, 255 ) )
                                renderer.rect_filled( vec2_t.new(table_x:get_value() + 45, table_y:get_value() + 22), vec2_t.new( table_x:get_value() + 40 + time_to_defuse * ( 1040 / c4_blowtime_l ) + 5, table_y:get_value() + 24 ), can_defuse and color_t.new( 219, 136, 52, 255 ) or color_t.new( 219, 136, 52, 255 ) ) -- Первый color_t.new() это цвет/прозрачность полоски дефуза если успеваешь раздефузить, второй это цвет/прозрачность полоски дефуза если не успеешь раздефузить
                            end
                        end
                    end
                    
                    local function render_bomb_being_planted( bomb )
                         is_planting = bomb:get_prop_bool( offsets.m_bStartedArming )
                         pl_t = bomb:get_prop_float( offsets.m_fArmedTime )
                         plant_time = ( globalvars.get_current_time( ) - pl_t ) * -1
                        if plant_time > 0.0 and is_planting 
                        then 
                    
                             bomb_site = tbomb_site ~= nil and tbomb_site.site or "?"
                    
                            renderer.rect_filled(vec2_t.new(table_x:get_value(), table_y:get_value()), vec2_t.new(table_x:get_value() + 180, table_y:get_value() + 50), color_t.new(15, 15, 15, 100)) -- Цвет/прозрачность фона бомбы в процессе установки(плентинга)
                            renderer.texture(bomb_texture, vec2_t.new(table_x:get_value()-5, table_y:get_value()-3), vec2_t.new(table_x:get_value() + 55, table_y:get_value() + 57), color_t.new(255, 255, 255, 255)) -- Цвет/прозрачность иконки бомбы(в процессе установки)
                             size = renderer.get_text_size( font2, 15, "Side: " )
                            renderer.text( "Side: ", font2, vec2_t.new(table_x:get_value() + 45, table_y:get_value() + 25), 15, color_t.new( 177, 163, 255, 255 ) ) -- Цвет/прозрачность надписи Side: бомбы в процессе установки(плентинга)
                            --renderer.text( "Bomb is being planted: ", font2, vec2_t.new( 5, 30 ), 36, color_t.new( 177, 163, 255, 255 ) )
                            renderer.text( string.format("%s (%.1fs)", bomb_site, plant_time ), font2, vec2_t.new(table_x:get_value() + 45 + size.x, table_y:get_value() + 25), 15, color_t.new( 177, 163, 255, 190 ) ) -- Цвет/прозрачность таймера установки бомбы
                            renderer.rect_filled( vec2_t.new(table_x:get_value() + 45, table_y:get_value() + 7), vec2_t.new(table_x:get_value() + 175, table_y:get_value() + 22), color_t.new( 50, 50, 50, 120 ) ) -- Цвет/прозрачность незаполненной полосы установки(которая не двигается)
                            renderer.rect_filled( vec2_t.new(table_x:get_value() + 45, table_y:get_value() + 7), vec2_t.new( table_x:get_value() + 45 + 130 * ( ( 3 - plant_time ) / 3 ), table_y:get_value() + 22 ), color_t.new( 241, 196, 15, 190 ) ) -- Цвет/прозрачность заполненной полосы установки(которая двигается)
                            --renderer.text( string.format( "%.1f", plant_time ), font, vec2_t.new( screen_size.x * ( ( 3 - plant_time ) / 3 ) + 5, 0 ), 18, color_t.new( 177, 163, 255, 255 ) )
                            return true
                        else
                             owner = bomb:get_prop_int( offsets.m_hOwnerEntity )
                            if owner == -1
                            then
                                 box = bomb:get_bbox( )
                                if box ~= nil
                                then
                                    --renderer.text( "M", font_icons, vec2_t.new( box.left + ( box.right - box.left ) / 2 - 1, box.bottom + ( box.top - box.bottom ) / 2 - 1 ), 36, color_t.new( 0, 0, 0, 255 ) )
                                    --renderer.text( "M", font_icons, vec2_t.new( box.left + ( box.right - box.left ) / 2, box.bottom + ( box.top - box.bottom ) / 2 ), 36, color_t.new( 255, 255, 255, 255 ) )
                                    return true
                                end
                            end
                        end
                        return false
                    end
                    end
                    client.register_callback( "paint", function( )
                         --me = entitylist.get_local_player( )
                    
                        --if not me then return end
                    
                        --drag
                        if ui.is_visible() then
                            if bombindicator:get_value() then
                            renderer.rect_filled(vec2_t.new(table_x:get_value(), table_y:get_value()), vec2_t.new(table_x:get_value() + 180, table_y:get_value() + 50), color_t.new(15, 15, 15, 100)) -- Цвет/прозрачность фона при открытом меню
                            renderer.texture(bomb_texture, vec2_t.new(table_x:get_value()-5, table_y:get_value()-3), vec2_t.new(table_x:get_value() + 55, table_y:get_value() + 57), color_t.new(255, 255, 255, 255)) -- Цвет/прозрачность иконки бомбы при открытом меню
                            renderer.text( "Side: ", font2, vec2_t.new(table_x:get_value() + 45, table_y:get_value() + 25), 15, color_t.new( 177, 163, 255, 255 ) ) -- Цвет/прозрачность надписи Side: при открытом меню
                            renderer.rect_filled( vec2_t.new(table_x:get_value() + 45, table_y:get_value() + 7), vec2_t.new(table_x:get_value() + 175, table_y:get_value() + 22), color_t.new( 50, 50, 50, 120 ) ) -- Цвет/прозрачность незаполненной полосы(которая не двигается) при открытом меню
                            bomb_curs = renderer.get_cursor_pos()
                            if client.is_key_pressed(1) and bomb_clicked_once then
                                bomb_clicked_once = false
                                if bomb_curs.x >= table_x:get_value() and bomb_curs.x <= table_x:get_value() + 180 and bomb_curs.y >= table_y:get_value() and bomb_curs.y <= table_y:get_value() + 50 then
                                    bomb_a = bomb_curs.x - table_x:get_value()
                                    bomb_b = bomb_curs.y - table_y:get_value()
                                    table_isdrag = true
                                else
                                    table_isdrag = false
                                    return
                                end
                            end
                            if client.is_key_pressed(1) and ui.is_visible() and table_isdrag then
                                table_x:set_value(bomb_curs.x - bomb_a)
                                table_y:set_value(bomb_curs.y - bomb_b)
                            end
                            if not client.is_key_pressed(1) then bomb_clicked_once = true end
                        end
                    end
                        --drag
                    
                        local bombs_planted = entitylist.get_entities_by_class( "CPlantedC4" )
                        if #bombs_planted == 1 
                        then 
                            render_planted_bomb( bombs_planted[1] )
                            bomb_curs = renderer.get_cursor_pos()
                            if client.is_key_pressed(1) and bomb_clicked_once then
                                bomb_clicked_once = false
                                if bomb_curs.x >= table_x:get_value() and bomb_curs.x <= table_x:get_value() + 180 and bomb_curs.y >= table_y:get_value() and bomb_curs.y <= table_y:get_value() + 50 then
                                    bomb_a = bomb_curs.x - table_x:get_value()
                                    bomb_b = bomb_curs.y - table_y:get_value()
                                    table_isdrag = true
                                else
                                    table_isdrag = false
                                    return
                                end
                            end
                            if client.is_key_pressed(1) and ui.is_visible() and table_isdrag then
                                table_x:set_value(bomb_curs.x - bomb_a)
                                table_y:set_value(bomb_curs.y - bomb_b)
                            end
                            if not client.is_key_pressed(1) then bomb_clicked_once = true end
                        else
                            local bombs = entitylist.get_entities_by_class_id( 34 )
                            if #bombs >= 1
                            then 
                                if not render_bomb_being_planted( bombs[1] )
                                then
                                    if tbomb_site ~= nil and ( globalvars.get_real_time( ) - tbomb_site.time <= 10.0 )
                                    then
                                        renderer.text( "Bomb Location: ", font2, vec2_t.new( 5, 30 ), 36, color_t.new( 177, 163, 255, 255 ) )
                                        local size = renderer.get_text_size( font2, 36, "Bomb Location: " )
                                        renderer.text( tbomb_site.site, font2, vec2_t.new( 5 + size.x, 30 ), 36, color_t.new( 177, 163, 255, 190 ) )
                                    end
                                end
                                bomb_curs = renderer.get_cursor_pos()
                                if client.is_key_pressed(1) and bomb_clicked_once then
                                    bomb_clicked_once = false
                                    if bomb_curs.x >= table_x:get_value() and bomb_curs.x <= table_x:get_value() + 180 and bomb_curs.y >= table_y:get_value() and bomb_curs.y <= table_y:get_value() + 50 then
                                        bomb_a = bomb_curs.x - table_x:get_value()
                                        bomb_b = bomb_curs.y - table_y:get_value()
                                        table_isdrag = true
                                    else
                                        table_isdrag = false
                                        return
                                    end
                                end
                                if client.is_key_pressed(1) and ui.is_visible() and table_isdrag then
                                    table_x:set_value(bomb_curs.x - bomb_a)
                                    table_y:set_value(bomb_curs.y - bomb_b)
                                end
                                if not client.is_key_pressed(1) then bomb_clicked_once = true end
                            end
                        end
                    
                    end )
                    
                    
                    se.register_event( "enter_bombzone" )
                    se.register_event( "round_start" )
                    se.register_event( "round_end" )
                    
                    client.register_callback( "fire_game_event", function( event )
                        local event_name = event:get_name( ) 
                        if event_name == "round_start" or event_name == "round_end"
                        then
                            tbomb_site = nil
                        elseif event_name == "enter_bombzone" --and event:get_bool( "hasbomb" ) and not event:get_bool( "isplanted" )
                        then
                            if not event:get_bool( "hasbomb", false )
                            then
                                return
                            end
                            if event:get_bool( "isplanted", true )
                            then
                                return
                            end
                            local uid = event:get_int( "userid", -1 )
                            if uid ~= -1
                            then
                                local entity = entitylist.get_entity_by_index( engine.get_player_for_user_id( uid ) )
                                local origin = entity:get_prop_vector( 0x138 )
                                if origin
                                then
                                    local player_resource = entitylist.get_entities_by_class( "CCSPlayerResource" )
                                    if #player_resource == 1
                                    then
                                        local a_ = player_resource[1]:get_prop_vector( offsets.m_bombsiteCenterA )
                                        local b_ = player_resource[1]:get_prop_vector( offsets.m_bombsiteCenterB )
                    
                                        tbomb_site = { site = ( a_:dist_to( origin ) > b_:dist_to( origin ) ) and "B" or "A", time = globalvars.get_real_time( ) }
                                    end
                                end
                            end
                        end
                    end)
                    --AntiBruteForce
    
    
    
    
    
    client.register_callback("shot_fired", function(shot_info)
        if antibruteforce:get_value() then 
        local shot_result = shot_info.result
        if shot_result ~= "hit" and not shot_info.manual then
            math.randomseed(os.clock()*100000000000)
            ui.get_slider_int("antihit_antiaim_desync_length"):set_value(math.random(antibruteval:get_value(), antibruteval1:get_value()))
        end
    end
    end)
    client.register_callback("shot_fired", function(shot_info) 
       
        if antibruteonhit:get_value() then
        local shot_result = shot_info.result
        if shot_result == "hit" then
            ui.get_key_bind("antihit_antiaim_flip_bind"):set_type(ui.get_key_bind("antihit_antiaim_flip_bind"):is_active() and 1 or 0)
            
        end
    end
    end)
                    ---IDEALPEK
                   
    
                    local at_once = true
                    
                    client.register_callback("paint", function ()
                    if master:get_value() then
                        frestand1q:set_value(true)
                    end
    
                        if at_once then
                            trig_lim_val = limittrig:get_value()
                            limit_val = limitfake:get_value()
                            at_once = false
                        end
                    
                        if autopekbind:is_active()  then
                            limitfake:set_value(1)
                            limittrig:set_value(1)
                            
                    
                        else 
                    
                            limitfake:set_value(limit_val)
                            limittrig:set_value(trig_lim_val)
                            at_once = true
                    
                        end
                    
                    end)
    
    
                    --prefersonly
                    
                    client.register_callback("create_move", function()
                        
                        if not engine.is_connected() or not master:get_value() then return end
                        
                    
                    
                        if autopekcheckbox:get_value() and autopekbind:is_active() then
                            local players = entitylist.get_players(0)
                            for i = 1, #players do
                                local player = players[i]
                                local entity_index = player:get_index()
                                ragebot.override_safe_point(entity_index, 1)
                            end
                        end
                    end)
                    --att off if telepek
                    local at_once = true
                    
                    client.register_callback("paint", function ()
                    if master:get_value() then
                       
                        atarg = ui.get_check_box("antihit_antiaim_at_targets")
                    
                        if at_once then
                            att_val = atarg:get_value()
                            at_once = false
                        end
                    
                        if autopekbind:is_active()  then
                    
                            atarg:set_value(false)
                    
                        else 
                    
                            atarg:set_value(att_val)
                            at_once = true
                    
                        end
                    end
                    end)
                    --fakelags
                    --Dt+Telepeek
                    client.register_callback("paint", function ()
                        if master:get_value() then
                   
                    active_exploit = ui.get_combo_box("rage_active_exploit")
                    set_expl = active_exploit:get_value()
                    
                    if autopekbind:is_active() then
                    
                    active_exploit:set_value(2)
                    
                    else 
                        
                        active_exploit:set_value(set_expl)
                    
                    end
                    end
                    end)
                  
                    --IDEALPEEK!!!!!!!!!!!!!!!!!!!!!!!!!!
    
                    -- HOLOPANEL
                    cl_righthand = se.get_convar("cl_righthand")
                    thirdperson = ui.get_check_box('visuals_other_thirdperson')
                    thirdperson_bind = ui.get_key_bind('visuals_other_thirdperson_bind')
                    screen_size = engine.get_screen_size()
                   
                   local function render_arc( x, y, r1, r2, s, d, col )
                        i = s
                       
                       while i < s + d do
                           i = i + 1
                           
                            m_rad = i * math.pi / 180
                            local line = renderer.line( vec2_t.new( x + math.cos( m_rad ) * r1, y + math.sin( m_rad ) * r1 ), vec2_t.new( x + math.cos( m_rad ) * r2, y + math.sin( m_rad ) * r2 ), col )
                       
                       end
                   end
                   Render_OutlineCircle = function(x, y, what, col, r1, r2)
                       render_arc(x, y+1, r1, r2, 32, 360 * what, color_t.new(0, 0, 0, 255));
                       render_arc(x, y, r1, r2, 32, 360 * what, col);
                   end
                   
                   local function find_function(module, pattern, cast)
                        x = client.find_pattern(module, pattern)
                       if x <= 0 then
                           return nil
                       end
                   
                       return ffi.cast(cast, x)
                   end
                   
                    function engine.get_weapon_name()
                       if indiki:get_value(0) then
                       local weapon = {
                           [196650] = "Knifes", -- CT
                           [196667] = "Knifes", -- T
                           [197108] = "Knifes", -- Bayonet
                           [197113] = "Knifes", -- Flip
                           [197114] = "Knifes", -- Gut
                           [197115] = "Knifes", -- Karambit
                           [197116] = "Knifes", -- M9 bayonet
                           [197117] = "Knifes", -- Huntsman
                           [197118] = "Knifes", -- Falchion
                           [197119] = "Knifes", -- Bowie
                           [197120] = "Knifes", -- Butterfly
                           [197121] = "Knifes", -- Shadow daggers
                           [197122] = "Knifes", -- Ursus
                           [197123] = "Knifes", -- Navaja
                           [197124] = "Knifes", -- Stiletto
                           [197125] = "Knifes", -- Talon
                           [197126] = "Knifes", -- CSS
                           [197127] = "Knifes", -- Paracord
                           [197128] = "Knifes", -- Survival
                           [197129] = "Knifes", -- Nomad
                           [197133] = "Knifes", -- Skeleton
                   
                           [589828] = "Pistols",
                           [4] = "Glock-18",-- Glock-18
                           [589827] = "Pistols",
                           [3] = "Five-SeveN",-- Five-SeveN
                           [589860] = "Pistols",
                           [36] = "P250",-- P250
                           [589854] = "Pistols",
                           [30] = "Tec-9",-- Tec-9
                           [589887] = "Pistols",
                           [63] = "CZ75-Auto",-- CZ75-Auto
                           [589826] = "Pistols",
                           [2] = "Dual Berettas",-- Dual Berettas
                           [589856] = "Pistols",
                           [32] = "P2000",-- P2000
                           [589885] = "Pistols",
                           [262205] = "Pistols",
                           [61] = "USP-S",-- USP-S
                   
                           [589825] = "Deagle",
                           [1] = "Deagle",-- Desert Eagle
                           [589888] = "Revolver",
                           [262208] = "Revolver",
                           [64] = "Revolver",-- Revolver
                   
                           [589841] = "Smg",
                           [17] = "Mac-10",-- Mac-10
                           [589857] = "Smg",
                           [33] = "MP7",-- MP7
                           [589858] = "Smg",
                           [34] = "MP9",-- MP9
                           [589850] = "Smg",
                           [26] = "Bizon",-- Bizon
                           [589843] = "Smg",
                           [19] = "P90",-- P90
                           [589848] = "Smg",
                           [24] = "UMP-45",-- UMP-45
                           [589847] = "Smg",
                           [262167] = "Smg",
                           [23] = "MP5-SD",-- MP5-SD
                   
                           [589831] = "Rifle",
                           [7] = "AK-47",-- AK-47
                           [589840] = "Rifle",
                           [16] = "M4A4",-- M4A4
                           [589884] = "Rifle",
                           [60] = "M4A1-S",-- M4A1-S
                           [589837] = "Rifle",
                           [13] = "Galil",-- Galil
                           [589834] = "Rifle",
                           [10] = "Famas",-- Famas
                           [589832] = "Rifle",
                           [8] = "AUG",-- AUG
                           [589863] = "Rifle",
                           [39] = "SG-553",-- SG-553
                           [589852] = "Rifle",
                           [28] = "Negev",-- Negev
                           [589838] = "Rifle",
                           [14] = "M249",-- M249
                   
                           [589851] = "Shotguns",
                           [27] = "Mag-7",-- Mag-7
                           [589859] = "Shotguns",
                           [35] = "Nova",-- Nova
                           [589853] = "Shotguns",
                           [29] = "Sawed-Off",-- Sawed-Off
                           [589849] = "Shotguns",
                           [25] = "XM1014",-- XM1014
                   
                           [589864] = "Scout",
                           [40] = "Scout",-- Scout
                   
                           [589835] = "Auto",
                           [11] = "G3SG1",-- G3SG1
                           [589862] = "Auto",
                           [38] = "Scar-20",-- Scar-20
                   
                           [589833] = "AWP",
                           [9] = "AWP",-- AWP
                   
                           [31] = "Taser",
                       }
                       return weapon[entitylist.get_entity_from_handle(entitylist.get_local_player():get_prop_int(0x2F08)):get_prop_int(0x2FBA)]
                   end
                   end
                   local function get_weapon_in_font(weapon)
                        weapon_in_font = "C"
                   
                        weapon_in_font = weapon == "Pistols" and "2" or weapon == "Glock-18" and "0" or weapon == "Five-SeveN" and "7" or weapon == "P250" and "3" or weapon == "Tec-9" and "6" or weapon == "CZ75-Auto" and "5" or weapon == "Dual Berettas" and "4" or weapon == "P2000" and "1" or weapon == "USP-S" and "2" or weapon == "Deagle" and "8" or weapon == "Revolver" and "9" or weapon == "Mac-10" and "a" or weapon == "MP7" and "d" or weapon == "MP9" and "b" or weapon == "Bizon" and "f" or weapon == "P90" and "e" or weapon == "UMP-45" and "c" or weapon == "MP5-SD" and "x" or weapon == "AK-47" and "n" or weapon == "M4A4" and "q" or weapon == "M4A1-S" and "r" or weapon == "Galil" and "m" or weapon == "Famas" and "p" or weapon == "AUG" and "s" or weapon == "SG-553" and "o" or weapon == "Negev" and "k" or weapon == "M249" and "l" or weapon == "Mag-7" and "i" or weapon == "Nova" and "g" or weapon == "Sawed-Off" and "h" or weapon == "XM1014" and "j" or weapon == "Scout" and "t" or weapon == "G3SG1" and "v" or weapon == "Scar-20" and "w" or weapon == "AWP" and "u" or weapon == "Taser" and "L" or "C"
                   
                       return weapon_in_font
                   end
                   
                   
                   weapon_data_call = ffi.cast("int*(__thiscall*)(void*)", client.find_pattern("client.dll", "55 8B EC 81 EC ? ? ? ? 53 8B D9 56 57 8D 8B ? ? ? ? 85 C9 75 04"));
                   
                   local function weapon_data( weapon )
                       return ffi.cast("struct WeaponInfo_t*", weapon_data_call(ffi.cast("void*", weapon:get_address())));
                   end
                   
                    lookup_attachment = find_function("client.dll", "55 8B EC 83 B9 ? ? ? ? ? 56", "int(__thiscall*)(int, const char*)")
                   assert(lookup_attachment, "failed to find lookup_attachment")
                   
                    get_attachment = find_function("client.dll", "55 8B EC 56 8B 75 08 57 8B F9 83 FE 01 7C 6D", "bool(__thiscall*)(int, int, float*, float*)")
                   assert(get_attachment, "failed to find get_attachment")
                   
                    camera_in_thirdperson = nil
                   do
                        pat = client.find_pattern("client.dll", "B9 ? ? ? ? 8B 40 38 FF D0 84 C0 0F 85")
                       assert(pat > 0, "failed to get input pointer")
                   
                       camera_in_thirdperson = ffi.cast("bool*", ffi.cast("int*", pat + 1)[0] + 173)
                   end
                   
                    last_pos = nil
                   
    
                   
                    m_hObserverTarget = se.get_netvar("DT_BasePlayer", "m_hObserverTarget")
                    m_hActiveWeapon = se.get_netvar("DT_BaseCombatCharacter", "m_hActiveWeapon")
                    m_hViewModel = se.get_netvar("DT_BasePlayer", "m_hLastWeapon") + 4
                    m_hWeaponWorldModel = se.get_netvar("DT_BaseCombatWeapon", "m_hWeaponWorldModel")
                    m_bSilencerOn = se.get_netvar("DT_WeaponCSBase", "m_bSilencerOn")
                    m_flDoneSwitchingSilencer = se.get_netvar("DT_WeaponCSBase", "m_flDoneSwitchingSilencer")
                    m_vecOrigin = se.get_netvar("DT_BaseEntity", "m_vecOrigin")
                    m_iItemDefinitionIndex = se.get_netvar("DT_WeaponCSBase", "m_iItemDefinitionIndex")
                    m_iClip1 = se.get_netvar("DT_BaseCombatWeapon", "m_iClip1")
                   
                   assert(m_hViewModel > 0, 'failed to get m_hViewModel')
                   
                   local function lerp(a, b, c)
                       return vec2_t.new(a.x + (b.x - a.x) * c, a.y + (b.y - a.y) * c)
                   end
                   
                   local function hsv2rgb(h, s, v, a)
                       local r, g, b
                   
                       local i = math.floor(h * 6);
                       local f = h * 6 - i;
                       local p = v * (1 - s);
                       local q = v * (1 - f * s);
                       local t = v * (1 - (1 - f) * s);
                   
                       i = i % 6
                   
                       if i == 0 then r, g, b = v, t, p
                       elseif i == 1 then r, g, b = q, v, p
                       elseif i == 2 then r, g, b = p, v, t
                       elseif i == 3 then r, g, b = p, q, v
                       elseif i == 4 then r, g, b = t, p, v
                       elseif i == 5 then r, g, b = v, p, q
                       end
                   
                       return color_t.new(r * 255, g * 255, b * 255, a * 255)
                   end
                   local function holobox(x, y, w, h)
                       local rgb = hsv2rgb(globalvars.get_real_time() / 4, 0.9, 1, 1)
                       local rect_filled = renderer.rect_filled(vec2_t.new(x, y), vec2_t.new(x + w, y + h), color_t.new(15, 15, 15, 125))
                   end 
                   
                   local circle_anim = 1
                   local if_circle_anim_plus = true
                   local prev_circle_anim_tick = globalvars.get_tick_count()
                   local prev_weapon = engine.is_connected() and get_weapon_in_font(engine.get_weapon_name()) or "C"
                   local weapon_size_anim = 30
                   local anim_plus = 10
                   
                   local function on_paint() 
                   if not indiki:get_value(0) then return end
                       local player = entitylist.get_local_player()
                       if not player then
                           last_pos = nil
                           return
                       end
                   
                       if not player:is_alive() then
                           local observer_target = entitylist.get_entity_from_handle(player:get_prop_int(m_hObserverTarget))
                   
                           if observer_target then
                               player = observer_target
                               if not player then
                                   last_pos = nil
                                   return
                               end
                           end
                       end
                   
                   
                       local model = entitylist.get_entity_from_handle(player:get_prop_int(m_hViewModel))
                       local weapon = entitylist.get_entity_from_handle(player:get_prop_int(m_hActiveWeapon))
                   
                       if not weapon then
                           last_pos = nil
                           return nil
                       end 
                   
                       local world_model = entitylist.get_entity_from_handle(weapon:get_prop_int(m_hWeaponWorldModel))
                       if not world_model then
                           return
                       end
                   
                       local is_thirdperson = camera_in_thirdperson[0]
                       local attachement_id = 0
                   
                       local silence_switch_delta = weapon:get_prop_float(m_flDoneSwitchingSilencer) - globalvars.get_current_time()
                       local is_silencer = weapon:get_prop_bool(m_bSilencerOn) or (silence_switch_delta > 1 and silence_switch_delta < 4)
                   
                       local base_anim = 0
                       if is_thirdperson then
                           base_anim = world_model:get_address() + 4
                   
                           if is_silencer then
                               attachement_id = lookup_attachment(base_anim, "muzzle_flash2")
                           else
                               attachement_id = lookup_attachment(base_anim, "muzzle_flash")
                           end
                       else
                           if not model then
                               return
                           end
                   
                           base_anim = model:get_address() + 4
                   
                       
                           if is_silencer then
                               attachement_id = lookup_attachment(base_anim, "muzzle_flash2")
                           else
                               attachement_id = lookup_attachment(base_anim, "1")
                           end
                       end
                   
                       local src = ffi.new("float[?]", 3, 0)
                       local dir = ffi.new("float[?]", 3, 0)
                       local pos = nil
                   
                       if get_attachment(base_anim, attachement_id, src, dir) then
                           pos = vec3_t.new(src[0], src[1], src[2])
                       end
                   
                       if not pos then
                           pos = model:get_prop_vector(m_vecOrigin)
                           last_pos = nil
                           return
                       end
                   
                       local calc2
                       local calc
                       local w2s
                       local head_pos
                       local high_pos
                       if not thirdperson:get_value() or not thirdperson_bind:is_active() then
                           w2s = se.world_to_screen(pos)
                           calc = (is_right == 0 and -50 or 50)
                       else
                           calc = 50
                   
                           body_pos = player:get_player_hitbox_pos(2)
                   
                           posed = vec3_t.new(body_pos.x, body_pos.y, body_pos.z+8)
                       
                           w2s = se.world_to_screen(posed)
                       end
                       if w2s then
                           if not last_pos then
                               last_pos = w2s
                           end
                   
                            inverted = ui.get_key_bind('antihit_antiaim_flip_bind')
                           last_pos = lerp(last_pos, w2s, globalvars.get_frame_time()*10)
                   
                            is_right = cl_righthand:get_int()
                            pos2 = vec2_t.new(last_pos.x + calc, last_pos.y - 100)
                   
                           if if_circle_anim_plus and circle_anim >= 7 then if_circle_anim_plus = false end
                           if not if_circle_anim_plus and circle_anim <= 1 then if_circle_anim_plus = true end
                           if globalvars.get_tick_count() > prev_circle_anim_tick + 3 then
                               circle_anim = if_circle_anim_plus and circle_anim + 1 or not if_circle_anim_plus and circle_anim - 1
                               prev_circle_anim_tick = globalvars.get_tick_count()
                           end
                           local line = renderer.line(w2s, vec2_t.new(pos2.x+2, pos2.y-2), color_t.new(255, 255, 255, 255))
                           local circle = renderer.circle(w2s, circle_anim, 20, false, color_t.new(255, 255, 255, 255))                           ------------------------------------------------------
                           local circle = renderer.circle(w2s, 3, 20, true, color_t.new(255, 255, 255, 255))
                   
                           if prev_weapon ~= get_weapon_in_font(engine.get_weapon_name()) or anim_plus ~= 0 then
                               
                               anim_plus = 0 
                               if weapon_size_anim < renderer.get_text_size(weapon_holo_font, 35, get_weapon_in_font(engine.get_weapon_name())).x + 5 then
                                   if weapon_size_anim + 10 >= renderer.get_text_size(weapon_holo_font, 35, get_weapon_in_font(engine.get_weapon_name())).x + 5 then
                                       anim_plus = 0
                                       weapon_size_anim = renderer.get_text_size(weapon_holo_font, 35, get_weapon_in_font(engine.get_weapon_name())).x + 5
                                   else
                                       anim_plus = 10
                                   end
                               end
                   
                               if weapon_size_anim > renderer.get_text_size(weapon_holo_font, 35, get_weapon_in_font(engine.get_weapon_name())).x + 5 then
                                   if weapon_size_anim - 5 <= renderer.get_text_size(weapon_holo_font, 35, get_weapon_in_font(engine.get_weapon_name())).x + 5 then
                                       anim_plus = 0
                                       weapon_size_anim = renderer.get_text_size(weapon_holo_font, 35, get_weapon_in_font(engine.get_weapon_name())).x + 5
                                   else
                                       anim_plus = -5
                                   end
                               end
                   
                           end
                           prev_weapon = get_weapon_in_font(engine.get_weapon_name())
                           weapon_size_anim = weapon_size_anim + anim_plus
                   
                            weapon = entitylist.get_entity_from_handle(entitylist.get_local_player():get_prop_int(se.get_netvar("DT_BaseCombatCharacter", "m_hActiveWeapon")))
                            desync = ui.get_slider_int("antihit_antiaim_desync_length")
                            expl = "OFF"
                            expl1 = "OFF"
                            expkey = ui.get_key_bind("rage_active_exploit_bind")
                            expcombo = ui.get_combo_box("rage_active_exploit")
                            os_color = color_t.new(255, 0, 0, 255)
                            dt_color = color_t.new(255, 0, 0, 255)
                           if expkey:is_active() and expcombo:get_value() == 1 then expl = "ON" os_color = color_t.new(0, 255, 0, 255) end
                           if expkey:is_active() and expcombo:get_value() == 2 then expl1 = "ON" dt_color = color_t.new(0, 255, 0, 255) end
                            size = renderer.get_text_size(verholo1, 12, "OS-AA: OFF")
                            b = renderer.get_text_size(weapon_holo_font, 35, get_weapon_in_font(engine.get_weapon_name())).x + 5
                            a = 20
                            renderer.rounded_rect(pos2.x, pos2.y - 70 - a, size.x + 20 + weapon_size_anim, 70 + a, color_t.new(17, 17, 17, 125), color_t.new(17, 17, 17, 125), color_t.new(17, 17, 17, 125))
                           --holobox(pos2.x, pos2.y - 70 - a, size.x + 20 + weapon_size_anim, 70 + a, color_t.new(17, 17, 17, 125))
                           pos2.x = pos2.x + 192
                           pos2.y = pos2.y - 20 - 5
                           local text = renderer.text(get_weapon_in_font(engine.get_weapon_name()), weapon_holo_font, vec2_t.new(pos2.x - size.x + 70 - 120, pos2.y - 39), 35, color_t.new(0, 0, 0, 255))
                           local text = renderer.text(get_weapon_in_font(engine.get_weapon_name()), weapon_holo_font, vec2_t.new(pos2.x - size.x + 70 - 120, pos2.y - 40), 35, color_t.new(255, 255, 255, 255))
                   
                           
                           --renderer.rect_filled(vec2_t.new(pos2.x - size.x + 70 - 191, pos2.y - 25), vec2_t.new(pos2.x - size.x + 70 - 193, pos2.y - 40), holoc:get_value())
                           --renderer.text("FAKE (" .. desync:get_value() .. ")", verholo1, vec2_t.new(pos2.x - size.x + 70 - 186, pos2.y - 39), 12, color_t.new(0, 0, 0, 255))
                           --renderer.text("FAKE (" .. desync:get_value() .. ")", verholo1, vec2_t.new(pos2.x - size.x + 70 - 185, pos2.y - 38), 12, color_t.new(255, 255, 255, 255))
                           --renderer.text("SP: ", verholo1, vec2_t.new(pos2.x - size.x - 126, pos2.y - 16), 12, color_t.new(0, 0, 0, 255))
                           --renderer.text("SP: ", verholo1, vec2_t.new(pos2.x - size.x - 125, pos2.y - 15), 12, color_t.new(255, 255, 255, 255))
                           --renderer.rect_filled(vec2_t.new(pos2.x - size.x - 103, pos2.y - 6), vec2_t.new(pos2.x - size.x + 60 - 125, pos2.y - 10), inverted:is_active() and color_t.new(17, 17, 17, 125) or holoc:get_value())
                           --renderer.rect_filled(vec2_t.new(pos2.x - size.x - 58, pos2.y - 6), vec2_t.new(pos2.x - size.x + 60 - 80, pos2.y - 10), inverted:is_active() and holoc:get_value() or color_t.new(17, 17, 17, 125))
                           local text = renderer.text("DT: " .. expl1, verholo1, vec2_t.new(pos2.x - size.x - 120, pos2.y - 8), 12, color_t.new(0, 0, 0, 255))
                           local text = renderer.text("DT: ", verholo1, vec2_t.new(pos2.x - size.x - 120, pos2.y - 7), 12, color_t.new(255, 255, 255, 255))
                           local text = renderer.text(expl1, verholo1, vec2_t.new(pos2.x - size.x - 97, pos2.y - 7), 12, dt_color)
                           local text = renderer.text("OS-AA: " .. expl, verholo1, vec2_t.new(pos2.x - size.x - 120, pos2.y +4), 12, color_t.new(0, 0, 0, 255))
                           local text = renderer.text("OS-AA: ", verholo1, vec2_t.new(pos2.x - size.x - 120, pos2.y + 5), 12, color_t.new(255, 255, 255, 255))
                           local text = renderer.text(expl, verholo1, vec2_t.new(pos2.x - size.x - 77, pos2.y + 5), 12, os_color)
                   
                           local ammo_color = 4
                           for j = 1, 4 do
                               if weapon_data(weapon).max_clip/5 * j <= weapon:get_prop_int(m_iClip1) and weapon:get_prop_int(m_iClip1) <= weapon_data(weapon).max_clip * (j+1) then
                                   ammo_color = j
                               end
                           end 
                           if weapon_data(weapon).max_clip/5 > weapon:get_prop_int(m_iClip1) then ammo_color = 0 end
                           if ammo_color == 0 then ammo_color = color_t.new(255, 0, 0, 255) end
                           if ammo_color == 1 then ammo_color = color_t.new(255, 128, 0, 255) end
                           if ammo_color == 2 then ammo_color = color_t.new(255, 255, 0, 255) end
                           if ammo_color == 3 then ammo_color = color_t.new(128, 255, 0, 255) end
                           if ammo_color == 4 then ammo_color = color_t.new(0, 255, 0, 255) end
                           if not expkey:is_active() or expcombo:get_value() == 0 then
                               Render_OutlineCircle(pos2.x - size.x + 70 - 170, pos2.y - 36, (clientstate.get_choked_commands() / 14), color_t.new(255, 255, 255, 255), 8, 4)
                           end
                           Render_OutlineCircle(pos2.x - size.x + 70 - 170, pos2.y - 36, (weapon:get_prop_int(m_iClip1) / weapon_data(weapon).max_clip), ammo_color, 14, 10)
                           
                       else
                           last_pos = nil
                       end
                   end
                   
                   client.register_callback("paint", function()
                       local s, res = pcall(on_paint)
                       if not s then
                       end
                   end)
                    --line enemy
                     m_vecOrigin = se.get_netvar("DT_BaseEntity", "m_vecOrigin")
                 vec_alpha = 255
                     vec3_en_right = nil
                    
                    
                    local function main()
                       
                        if lineene:get_value() then
                        if not entitylist.get_local_player():is_alive() then return end
                         vec3_prev = 91256128291469128741
                         vec3_en_right = nil
                         players = entitylist.get_players(0)
                        localplayer = entitylist.get_local_player()
                        vec3 = localplayer:get_player_hitbox_pos(3)
                        for i = 1, #players do
                            vec3_en = players[i]:get_prop_vector(m_vecOrigin)
                            if players[i]:is_alive() then
                                
                                    if not players[i]:is_dormant() then
                                        vec3_en_right = vec3_prev > vec3:dist_to(vec3_en) and vec3_en or vec3_en_right
                                        vec3_prev = math.min(vec3_prev, vec3:dist_to(vec3_en))
                                    end
                                
                            end
                        end
                        if se.world_to_screen(vec3_en_right).x < -200 or se.world_to_screen(vec3_en_right).x > engine.get_screen_size().x + 200 then
                            vec_alpha = math.max(vec_alpha - 20, 0)
                            if vec3_en_right ~= nil then
                                renderer.line(se.world_to_screen(vec3), se.world_to_screen(vec3_en_right), color_t.new(255, 255, 255, vec_alpha))
                            end
                        else
                            vec_alpha = math.min(vec_alpha + 20, 255)
                            if vec3_en_right ~= nil then
                                renderer.line(se.world_to_screen(vec3), se.world_to_screen(vec3_en_right), color_t.new(255, 255, 255, vec_alpha))
                            end
                        end
                    end
                    end
                    
                    client.register_callback("paint", main)
                    --indicators          
        screen_size = engine.get_screen_size()
        mainflp_plpos = 0
        dt_plpos = 0
        peek_plpos = 0
        hs_plpos = 0
        fd_plpos = 0
        md_plpos = 0
        fb_plpos = 0
        a_dtcol = 0
        b_dtcol = {}
        c_dtcol = 0
        d_dtcol = 0
        function IsWeaponCanShoot()
            local weapon = entitylist.get_entity_from_handle(entitylist.get_local_player():get_prop_int(se.get_netvar("DT_BaseCombatCharacter", "m_hActiveWeapon")))
            local servertime = entitylist.get_local_player():get_prop_int(se.get_netvar("DT_BasePlayer", "m_nTickBase")) * globalvars.get_interval_per_tick()
            return weapon:get_prop_float(se.get_netvar("DT_BaseCombatWeapon", "m_flNextPrimaryAttack")) <= servertime;
        end
        local function indiccrosssss()
        offset = 40
        if engine.is_connected() and screen_ind:get_value(3)  then
        alpha_fade = math.floor(math.sin(globalvars.get_real_time() * 5) * 127 + 128)
        local player = entitylist.get_local_player()
        local is_scoped = player:get_prop_bool( se.get_netvar( "DT_CSPlayer", "m_bIsScoped" ) )
    
        mainflp_plpos = (is_scoped and (screen_size.x/2 + mainflp_plpos - renderer.get_text_size(tahoma_bold, 14, "mercury.lua").x/2) < (screen_size.x/2 + 6)) and mainflp_plpos + math.max(1,(screen_size.x/2 + 6 - (screen_size.x/2 + mainflp_plpos - renderer.get_text_size(tahoma_bold, 14, "mercury.lua").x/2))*0.3) or (not is_scoped and mainflp_plpos > 0) and mainflp_plpos - math.max(1,mainflp_plpos*0.3) or mainflp_plpos
        if not flip_bind:is_active() then
            renderer.text("mercury", tahoma_bold, vec2_t.new(screen_size.x / 2 - renderer.get_text_size(tahoma_bold, 14, "mercury.lua").x/2 + mainflp_plpos, screen_size.y / 2 + 10), 14, color_t.new(0, 0, 0, 255))
            renderer.text(".lua", tahoma_bold, vec2_t.new(screen_size.x / 2 - renderer.get_text_size(tahoma_bold, 14, "mercury.lua").x/2 + renderer.get_text_size(tahoma_bold, 14, "mercury").x + mainflp_plpos, screen_size.y / 2 + 10), 14, color_t.new(0, 0, 0, 255))
            --
            renderer.text("mercury", tahoma_bold, vec2_t.new(screen_size.x / 2 - renderer.get_text_size(tahoma_bold, 14, "mercury.lua").x/2 + mainflp_plpos, screen_size.y / 2 + 9), 14, indicatorcolor:get_value())--1добавитьколор
            renderer.text(".lua", tahoma_bold, vec2_t.new(screen_size.x / 2 - renderer.get_text_size(tahoma_bold, 14, "mercury.lua").x/2 + renderer.get_text_size(tahoma_bold, 14, "mercury").x + mainflp_plpos, screen_size.y / 2 + 9), 14, color_t.new(255, 255, 255, 255))
        else
            renderer.text("mercury", tahoma_bold, vec2_t.new(screen_size.x / 2 - renderer.get_text_size(tahoma_bold, 14, "mercury.lua").x/2 + mainflp_plpos, screen_size.y / 2 + 10), 14, color_t.new(0, 0, 0, 255))
            renderer.text(".lua", tahoma_bold, vec2_t.new(screen_size.x / 2 - renderer.get_text_size(tahoma_bold, 14, "mercury.lua").x/2 + renderer.get_text_size(tahoma_bold, 14, "mercury").x + mainflp_plpos, screen_size.y / 2 + 10), 14, color_t.new(0, 0, 0, 255))
            --
            renderer.text("mercury", tahoma_bold, vec2_t.new(screen_size.x / 2 - renderer.get_text_size(tahoma_bold, 14, "mercury.lua").x/2 + mainflp_plpos, screen_size.y / 2 + 9), 14, color_t.new(255, 255, 255, 255))
            renderer.text(".lua", tahoma_bold, vec2_t.new(screen_size.x / 2 - renderer.get_text_size(tahoma_bold, 14, "mercury.lua").x/2 + renderer.get_text_size(tahoma_bold, 14, "mercury").x + mainflp_plpos, screen_size.y / 2 + 9), 14, indicatorcolor:get_value())--1добавить колор
        end
        --POSITION
        
         --DT
        if a_dtcol == 5 then
            c_dtcol = math.max(b_dtcol[1],b_dtcol[2],b_dtcol[3],b_dtcol[4],b_dtcol[5])
            a_dtcol = 0
            b_dtcol = {}
        else
            table.insert(b_dtcol,clientstate.get_choked_commands())
            a_dtcol = a_dtcol + 1 
        end
        if ((c_dtcol > 2) or not IsWeaponCanShoot()) and ui.get_combo_box("rage_active_exploit"):get_value() == 2 and ui.get_key_bind("rage_active_exploit_bind"):is_active() then
            d_dtcol = 0
            color_dtcol = color_t.new(255, 51, 51, 255)
        else
            if d_dtcol == 6 then
                color_dtcol = color_t.new(255, 255, 255, 255)
            else
                d_dtcol = math.min(d_dtcol + 1,6)
                color_dtcol = color_t.new(255, 51, 51, 255)
            end
            if color_dtcol == color_t.new(255, 51, 51, 255) and c_dtcol == 0 then
                d_dtcol = 0
            end
        end
        dt_plpos = (is_scoped and (screen_size.x/2 - renderer.get_text_size(tahoma_boldind, 11, "double tap").x/2 + dt_plpos) < (screen_size.x/2 + 6)) and dt_plpos + math.max(1, (screen_size.x/2 + 6 - (screen_size.x / 2 - renderer.get_text_size(tahoma_boldind, 11, "double tap").x/2 + dt_plpos))*0.3) or (not is_scoped and dt_plpos > 0) and dt_plpos - math.max(1,dt_plpos*0.3) or dt_plpos
        if active_exploit_bind:is_active() and active_exploit:get_value() == 2 then
            renderer.text("double tap", tahoma_boldind, vec2_t.new(screen_size.x / 2 - renderer.get_text_size(tahoma_boldind, 11, "double tap").x/2 + dt_plpos, screen_size.y / 2 -18 +offset), 11, color_t.new(0, 0, 0, 255))
            renderer.text("double tap", tahoma_boldind, vec2_t.new(screen_size.x / 2 - renderer.get_text_size(tahoma_boldind, 11, "double tap").x/2 + dt_plpos, screen_size.y / 2 -19 +offset), 11, color_dtcol)
            offset = offset + 10
        end
    
        --peek
        peek_plpos = (is_scoped and (screen_size.x / 2 - renderer.get_text_size(tahoma_boldind, 11, "auto peek").x/2 + peek_plpos) < (screen_size.x/2 + 6)) and peek_plpos + math.max(1, (screen_size.x/2 + 6 - (screen_size.x / 2 - renderer.get_text_size(tahoma_boldind, 11, "auto peek").x/2 + peek_plpos))*0.3) or (not is_scoped and peek_plpos > 0) and peek_plpos - math.max(1,peek_plpos*0.3) or peek_plpos
        if autopekcheckbox:get_value() and autopekbind:is_active() then
            renderer.text("auto peek", tahoma_boldind, vec2_t.new(screen_size.x / 2 - renderer.get_text_size(tahoma_boldind, 11, "auto peek").x/2 + peek_plpos, screen_size.y / 2  -18 +offset), 11, color_t.new(0, 0, 0, 255))
            renderer.text("auto peek", tahoma_boldind, vec2_t.new(screen_size.x / 2 - renderer.get_text_size(tahoma_boldind, 11, "auto peek").x/2 + peek_plpos, screen_size.y / 2  -19 +offset), 11, color_t.new(255, 255, 255, 255))
            offset = offset + 10
        end
    
        --HS
        hs_plpos = (is_scoped and (screen_size.x/2 - renderer.get_text_size(tahoma_boldind, 11, "hide shots").x/2 + hs_plpos) < (screen_size.x/2 + 6)) and hs_plpos + math.max(1, (screen_size.x/2 + 6 - (screen_size.x / 2 - renderer.get_text_size(tahoma_boldind, 11, "hide shots").x/2 + hs_plpos))*0.3) or (not is_scoped and hs_plpos > 0) and hs_plpos - math.max(1,hs_plpos*0.3) or hs_plpos
        if active_exploit_bind:is_active() and active_exploit:get_value() == 1 then
            renderer.text("hide shots", tahoma_boldind, vec2_t.new(screen_size.x / 2 - renderer.get_text_size(tahoma_boldind, 11, "hide shots").x/2 +hs_plpos, screen_size.y / 2 -18 +offset), 11, color_t.new(0, 0, 0, 255))
            renderer.text("hide shots", tahoma_boldind, vec2_t.new(screen_size.x / 2 - renderer.get_text_size(tahoma_boldind, 11, "hide shots").x/2 +hs_plpos, screen_size.y / 2 -19 +offset), 11, color_t.new(255, 255, 255, 255))
            offset = offset + 10
        end
        --FD
        fd_plpos = (is_scoped and (screen_size.x/2 - renderer.get_text_size(tahoma_boldind, 11, "fake duck").x/2 + fd_plpos) < (screen_size.x/2 + 6)) and fd_plpos + math.max(1, (screen_size.x/2 + 6 - (screen_size.x / 2 - renderer.get_text_size(tahoma_boldind, 11, "fake duck").x/2 + fd_plpos))*0.3) or (not is_scoped and fd_plpos > 0) and fd_plpos - math.max(1,fd_plpos*0.3) or fd_plpos
        if fakeduck_bind:is_active() and fakeduck_box:get_value() then
            renderer.text("fake duck", tahoma_boldind, vec2_t.new(screen_size.x / 2 - renderer.get_text_size(tahoma_boldind, 11, "fake duck").x/2 + fd_plpos, screen_size.y / 2   -18 +offset), 11, color_t.new(0, 0, 0, 255))
            renderer.text("fake duck", tahoma_boldind, vec2_t.new(screen_size.x / 2 - renderer.get_text_size(tahoma_boldind, 11, "fake duck").x/2 + fd_plpos, screen_size.y / 2   -19 +offset), 11, color_t.new(255, 255, 255, 255))
            offset = offset + 10
        end
      
        --md
        md_plpos = (is_scoped and (screen_size.x/2 - renderer.get_text_size(tahoma_boldind, 11, "min. damage").x/2 + md_plpos) < (screen_size.x/2 + 6)) and md_plpos + math.max(1, (screen_size.x/2 + 6 - (screen_size.x / 2 - renderer.get_text_size(tahoma_boldind, 11, "min. damage").x/2 + md_plpos))*0.3) or (not is_scoped and md_plpos > 0) and md_plpos - math.max(1,md_plpos*0.3) or md_plpos
        if enableMinDamage:is_active() then
            renderer.text("min. damage", tahoma_boldind, vec2_t.new(screen_size.x / 2 - renderer.get_text_size(tahoma_boldind, 11, "min. damage").x/2 + md_plpos, screen_size.y / 2  -18 +offset), 11, color_t.new(0, 0, 0, 255))
            renderer.text("min. damage", tahoma_boldind, vec2_t.new(screen_size.x / 2 - renderer.get_text_size(tahoma_boldind, 11, "min. damage").x/2 + md_plpos, screen_size.y / 2  -19 +offset), 11, color_t.new(255, 255, 255, 255))
            offset = offset + 10
        end
    
        --FORCE BODY
        fb_plpos = (is_scoped and (screen_size.x/2 - renderer.get_text_size(tahoma_boldind, 11, "force body").x/2 + fb_plpos) < (screen_size.x/2 + 6)) and fb_plpos + math.max(1, (screen_size.x/2 + 6 - (screen_size.x / 2 - renderer.get_text_size(tahoma_boldind, 11, "force body").x/2 + fb_plpos))*0.3) or (not is_scoped and fb_plpos > 0) and fb_plpos - math.max(1,fb_plpos*0.3) or fb_plpos
        if enableForceBodyAim:is_active() then
            renderer.text("force body", tahoma_boldind, vec2_t.new(screen_size.x / 2 - renderer.get_text_size(tahoma_boldind, 11, "force body").x/2 + fb_plpos, screen_size.y / 2   -18 +offset), 11, color_t.new(0, 0, 0, 255))
            renderer.text("force body", tahoma_boldind, vec2_t.new(screen_size.x / 2 - renderer.get_text_size(tahoma_boldind, 11, "force body").x/2 + fb_plpos, screen_size.y / 2   -19 +offset), 11, color_t.new(255, 255, 255, 255))
            offset = offset + 10
        end
    
      --FREESTAND
        if frestand1q:get_value() and autopekbind:is_active() and autopekcheckbox:get_value() then
            renderer.text("+/- Freestanding +/-", verdanaindcros, vec2_t.new(screen_size.x / 2 - renderer.get_text_size(verdanaindcros, 13, "+/- Freestanding +/-").x/2, screen_size.y / 2 - 299  +offset), 13, color_t.new(0, 0, 0, alpha_fade))
            renderer.text("+/- Freestanding +/-", verdanaindcros, vec2_t.new(screen_size.x / 2 - renderer.get_text_size(verdanaindcros, 13, "+/- Freestanding +/-").x/2, screen_size.y / 2 - 300  +offset), 13, color_t.new(255, 255, 255, alpha_fade))
            offset = offset + 10
        end
    
    end
    end
    client.register_callback("paint", indiccrosssss)
                    --hitmarker mercury
                    -- GUI
                    
                    
                     hitmarkersize = ui.add_slider_int("Hitmarker Size", "luasizehit",  5, 25, 7);
                    
                    hitmarkersize:set_visible(false)
                    
                    -- vars
                     m_iTeamNum = se.get_netvar("DT_BaseEntity", "m_iTeamNum")
                     m_iHealth = se.get_netvar("DT_BasePlayer", "m_iHealth")
                    
                    
                    -- tables
                    hitPositions = {};
                    hitTimes = {};
                    hitTypes = {};
                    bulletImpactPositions = {};
                    deltaTimes = {};
                    
                    
                    -- vars
                     hitCount = 0;
                     newHitCount = 0;
                     bulletImpactCount = 0;
                     hitFlag = false;
                    
                    -- functions
                    local function AddHit(hitPos, type)
                        table.insert(hitPositions, hitPos);
                        table.insert(hitTimes, globalvars.get_current_time())
                        table.insert(hitTypes, type)
                        hitCount = hitCount + 1;
                    end
                    
                    local function RemoveHit(index)
                        table.remove(hitPositions, index);
                        table.remove(hitTimes, index);
                        table.remove(hitTypes, index);
                        table.remove(deltaTimes, index);
                        newHitCount = newHitCount - 1;
                    end
                    
                    local function GetClosestImpact(point)
                         local bestImpactIndex;
                         bestDist = 11111111111;
                         pnt = point
                        for i = 0, bulletImpactCount, 1 do
                            if (bulletImpactPositions[i] ~= nil) then
                                 delta = vec3_t.new(bulletImpactPositions[i].x - pnt.x, bulletImpactPositions[i].y - pnt.y, bulletImpactPositions[i].z - pnt.z);
                                 dist = delta:length();
                                if (dist < bestDist) then
                                    bestDist = dist;
                                    bestImpactIndex = i;
                                end
                            end
                        end
                        
                        return bulletImpactPositions[bestImpactIndex];
                    end
                    
                    local function hDraw()  
                        -- local
                         local_player = engine.get_local_player()
                         pLocal = entitylist.get_entity_by_index(local_player)
                        
                        if (hitmarkered:get_value() and pLocal:is_alive()) then
                            newHitCount = hitCount;
                            for i = 0, hitCount, 1 do
                                if (hitTimes[i] ~= nil and hitPositions[i] ~= nil and hitTypes[i] ~= nil) then
                                     deltaTime = globalvars.get_current_time() - hitTimes[i];
                                    if (deltaTime > hitmarkersize:get_value()) then
                                        RemoveHit(i);
                                    else
                    
                                    if (hitTypes[i] == 1) then
                                        hitPositions[i].z = hitPositions[i].z + deltaTime / headshotSpeed;
                                    end
                    
                                     hit = se.world_to_screen(hitPositions[i]);
                                     xHit = hit.x
                                     yHit = hit.y
                                    
                                    if xHit ~= nil and yHit ~= nil then
                                        local alpha;
                                        if (deltaTime > hitmarkerfade:get_value() / 2) then
                                            alpha = (1 - (deltaTime - deltaTimes[i]) / hitmarkerfade:get_value() * 2) * lua_hitmarker_color:get_value().a;
                                            if (alpha < 0) then
                                                alpha = 0
                                            end
                                        else
                                            table.insert(deltaTimes, i, deltaTime)
                                            alpha = lua_hitmarker_color:get_value().a;
                                        end
                                        if hitmarkered:get_value() then
                                             color_variable = lua_hitmarker_color:get_value()
                                             r_color, g_color, b_color, a_color = color_variable.r, color_variable.g, color_variable.b, alpha
                                             size = hitmarkersize:get_value()
                                            renderer.line(vec2_t.new(xHit, yHit - size), vec2_t.new(xHit, yHit), color_t.new(r_color, g_color, b_color, a_color));
                                            renderer.line(vec2_t.new(xHit, yHit + size), vec2_t.new(xHit, yHit), color_t.new(r_color, g_color, b_color, a_color));
                                            renderer.line(vec2_t.new(xHit + size, yHit), vec2_t.new(xHit, yHit), color_t.new(r_color, g_color, b_color, a_color));
                                            renderer.line(vec2_t.new(xHit - size, yHit), vec2_t.new(xHit, yHit), color_t.new(r_color, g_color, b_color, a_color));
                                        end
                                        if (deltaTime > hitmarkerfade:get_value() / 2) then
                                            alpha = (1 - (deltaTime - deltaTimes[i]) / hitmarkerfade:get_value() * 2) * lua_hitmarker_color:get_value().a;
                                            if (alpha < 0) then
                                                alpha = 0
                                            end
                                        else
                                            table.insert(deltaTimes, i, deltaTime)
                                            alpha = lua_hitmarker_color:get_value().a;
                                        end
                                    end
                                end
                    
                                
                            end
                        end
                    
                            hitCount = newHitCount;
                        end
                    end
                    
                    client.register_callback("bullet_impact", function(event)
                    
                        local_player = engine.get_local_player()
                         pLocal = entitylist.get_entity_by_index(local_player)
                        
                        if pLocal:get_prop_int(m_iHealth) < 1 then
                            return
                        end
                    
                         attacker = engine.get_player_for_user_id(event:get_int("userid", 0));
                        if attacker ~= nil and attacker == pLocal:get_index() then
                            hitFlag = true;
                             hitPos = vec3_t.new(event:get_float("x", 0), event:get_float("y", 0), event:get_float("z", 0));
                            table.insert(bulletImpactPositions, hitPos);
                            bulletImpactCount = bulletImpactCount + 1;
                        end
                    end)
                    
                    client.register_callback("player_hurt", function(event)
                    
                         local_player = engine.get_local_player()
                        pLocal = entitylist.get_entity_by_index(local_player)
                        
                        if pLocal:get_prop_int(m_iHealth) < 1 then
                            return
                        end
                    
                         victim = engine.get_player_for_user_id(event:get_int("userid", 0));
                         attacker = engine.get_player_for_user_id(event:get_int("attacker", 0));
                        if (attacker ~= nil and victim ~= nil and attacker == pLocal:get_index()) then
                         hitGroup = event:get_int("hitgroup", 0);
                            if (hitFlag) then
                                hitFlag = false;
                                 vic = entitylist.get_entity_by_index(victim)
                                 hitboxPos = vic:get_player_hitbox_pos(hitGroup)
                                 impact = GetClosestImpact(hitboxPos);
                    
                                AddHit(impact, 0);
                                    
                                bulletImpactPositions = {};
                                bulletImpactCount = 0;
                            end
                        end
                    end)
                    
                    client.register_callback("paint", hDraw);
      --PITCH0ON LAND
                    
                    
                    
                    
                    
      local pitchBackupValue = ui.get_combo_box("antihit_antiaim_pitch"):get_value()
                    
                    
      ffi.cdef[[
      
          struct Animstate_t
          {
              char pad[ 3 ];
              char m_bForceWeaponUpdate; //0x4
              char pad1[ 91 ];
              void* m_pBaseEntity; //0x60
              void* m_pActiveWeapon; //0x64
              void* m_pLastActiveWeapon; //0x68
              float m_flLastClientSideAnimationUpdateTime; //0x6C
              int m_iLastClientSideAnimationUpdateFramecount; //0x70
              float m_flAnimUpdateDelta; //0x74
              float m_flEyeYaw; //0x78
              float m_flPitch; //0x7C
              float m_flGoalFeetYaw; //0x80
              float m_flCurrentFeetYaw; //0x84
              float m_flCurrentTorsoYaw; //0x88
              float m_flUnknownVelocityLean; //0x8C
              float m_flLeanAmount; //0x90
              char pad2[ 4 ];
              float m_flFeetCycle; //0x98
              float m_flFeetYawRate; //0x9C
              char pad3[ 4 ];
              float m_fDuckAmount; //0xA4
              float m_fLandingDuckAdditiveSomething; //0xA8
              char pad4[ 4 ];
              float m_vOriginX; //0xB0
              float m_vOriginY; //0xB4
              float m_vOriginZ; //0xB8
              float m_vLastOriginX; //0xBC
              float m_vLastOriginY; //0xC0
              float m_vLastOriginZ; //0xC4
              float m_vVelocityX; //0xC8
              float m_vVelocityY; //0xCC
              char pad5[ 4 ];
              float m_flUnknownFloat1; //0xD4
              char pad6[ 8 ];
              float m_flUnknownFloat2; //0xE0
              float m_flUnknownFloat3; //0xE4
              float m_flUnknown; //0xE8
              float m_flSpeed2D; //0xEC
              float m_flUpVelocity; //0xF0
              float m_flSpeedNormalized; //0xF4
              float m_flFeetSpeedForwardsOrSideWays; //0xF8
              float m_flFeetSpeedUnknownForwardOrSideways; //0xFC
              float m_flTimeSinceStartedMoving; //0x100
              float m_flTimeSinceStoppedMoving; //0x104
              bool m_bOnGround; //0x108
              bool m_bInHitGroundAnimation; //0x109
              float m_flTimeSinceInAir; //0x10A
              float m_flLastOriginZ; //0x10E
              float m_flHeadHeightOrOffsetFromHittingGroundAnimation; //0x112
              float m_flStopToFullRunningFraction; //0x116
              char pad7[ 4 ]; //0x11A
              float m_flMagicFraction; //0x11E
              char pad8[ 60 ]; //0x122
              float m_flWorldForce; //0x15E
              char pad9[ 462 ]; //0x162
              float m_flMaxYaw; //0x334
          };
      
          typedef uintptr_t (__thiscall* GetClientEntity_4242425_t)(void*, int);
      
          typedef struct
          {
              float x;
              float y;
              float z;
          } Vector_t;
      
          typedef struct
          {
              char        pad0[0x60]; // 0x00
              void*       pEntity; // 0x60
              void*       pActiveWeapon; // 0x64
              void*       pLastActiveWeapon; // 0x68
              float        flLastUpdateTime; // 0x6C
              int            iLastUpdateFrame; // 0x70
              float        flLastUpdateIncrement; // 0x74
              float        flEyeYaw; // 0x78
              float        flEyePitch; // 0x7C
              float        flGoalFeetYaw; // 0x80
              float        flLastFeetYaw; // 0x84
              float        flMoveYaw; // 0x88
              float        flLastMoveYaw; // 0x8C // changes when moving/jumping/hitting ground
              float        flLeanAmount; // 0x90
              char        pad1[0x4]; // 0x94
              float        flFeetCycle; // 0x98 0 to 1
              float        flMoveWeight; // 0x9C 0 to 1
              float        flMoveWeightSmoothed; // 0xA0
              float        flDuckAmount; // 0xA4
              float        flHitGroundCycle; // 0xA8
              float        flRecrouchWeight; // 0xAC
              Vector_t    vecOrigin; // 0xB0
              Vector_t    vecLastOrigin;// 0xBC
              Vector_t    vecVelocity; // 0xC8
              Vector_t    vecVelocityNormalized; // 0xD4
              Vector_t    vecVelocityNormalizedNonZero; // 0xE0
              float        flVelocityLenght2D; // 0xEC
              float        flJumpFallVelocity; // 0xF0
              float        flSpeedNormalized; // 0xF4 // clamped velocity from 0 to 1
              float        flRunningSpeed; // 0xF8
              float        flDuckingSpeed; // 0xFC
              float        flDurationMoving; // 0x100
              float        flDurationStill; // 0x104
              bool        bOnGround; // 0x108
              bool        bHitGroundAnimation; // 0x109
              char        pad2[0x2]; // 0x10A
              float        flNextLowerBodyYawUpdateTime; // 0x10C
              float        flDurationInAir; // 0x110
              float        flLeftGroundHeight; // 0x114
              float        flHitGroundWeight; // 0x118 // from 0 to 1, is 1 when standing
              float        flWalkToRunTransition; // 0x11C // from 0 to 1, doesnt change when walking or crouching, only running
              char        pad3[0x4]; // 0x120
              float        flAffectedFraction; // 0x124 // affected while jumping and running, or when just jumping, 0 to 1
              char        pad4[0x208]; // 0x128
              float        flMinBodyYaw; // 0x330
              float        flMaxBodyYaw; // 0x334
              float        flMinPitch; //0x338
              float        flMaxPitch; // 0x33C
              int            iAnimsetVersion; // 0x340
          } CCSGOPlayerAnimationState_534535_t;
      
      ]]
      
       entity_list_ptr = ffi.cast("void***", se.create_interface("client.dll", "VClientEntityList003"))
       get_client_entity_fn = ffi.cast("GetClientEntity_4242425_t", entity_list_ptr[0][3])
      
      local ffi_helpers = {
          get_entity_address = function(ent_index)
              local addr = get_client_entity_fn(entity_list_ptr, ent_index)
              return addr
          end
      }
      
      
      local shared_onground
      
      
      function UTILS_GetAnimState()
      
          return ffi.cast("struct Animstate_t**", entitylist.get_local_player():get_address() + 0x9960)[0]
          
      end
      
       m_flPoseParameter = se.get_netvar("DT_BaseAnimating", "m_flPoseParameter")
      
      client.register_callback("create_move", function(cmd)
      
           localplayer = entitylist.get_local_player()
          if not localplayer:is_alive() then return end
           m_fFlags = se.get_netvar("DT_BasePlayer", "m_fFlags")
      
           bOnGround = bit.band(localplayer:get_prop_float(m_fFlags), bit.lshift(1,0)) ~= 0
    
           
      
    
           
              
      if Ideal_Anim_Breaker:get_value(2) then
          if UTILS_GetAnimState().m_bInHitGroundAnimation then
    
              if UTILS_GetAnimState().m_flHeadHeightOrOffsetFromHittingGroundAnimation then
      
                  ui.get_combo_box("antihit_antiaim_pitch"):set_value(2)
              end
          else
      
              ui.get_combo_box("antihit_antiaim_pitch"):set_value(1)
          end    
            end
          if Ideal_Anim_Breaker:get_value(1) then
              ffi.cast("CCSGOPlayerAnimationState_534535_t**", ffi_helpers.get_entity_address(localplayer:get_index()) + 0x9960)[0].flDurationInAir = 99
              ffi.cast("CCSGOPlayerAnimationState_534535_t**", ffi_helpers.get_entity_address(localplayer:get_index()) + 0x9960)[0].flHitGroundCycle = 0
              ffi.cast("CCSGOPlayerAnimationState_534535_t**", ffi_helpers.get_entity_address(localplayer:get_index()) + 0x9960)[0].bHitGroundAnimation = true
          end
     
      end)
      
      client.register_callback("paint", function()
           localplayer = entitylist.get_local_player()
          if not localplayer then return end
      
          local m_fFlags = se.get_netvar("DT_BasePlayer", "m_fFlags")
      
          local bOnGround = bit.band(localplayer:get_prop_float(m_fFlags), bit.lshift(1,0)) ~= 0
          if bOnGround and not shared_onground then 
              ffi.cast("CCSGOPlayerAnimationState_534535_t**", ffi_helpers.get_entity_address(localplayer:get_index()) + offset_value)[0].flDurationInAir = 0.5
          end -- ACT_CSGO_LAND_LIGHT
      end)
      
      local ffi = require "ffi"ffi.cdef[[
          typedef uintptr_t (__thiscall* GetClientEntity_4242425_t)(void*, int);
      ]]
      
      local ENTITY_LIST_POINTER = ffi.cast("void***", se.create_interface("client.dll", "VClientEntityList003")) or error("Failed to find VClientEntityList003!")
      local GET_CLIENT_ENTITY_FN = ffi.cast("GetClientEntity_4242425_t", ENTITY_LIST_POINTER[0][3])
      
      local ffi_helpers = {
          get_entity_address = function(entity_index)
              local addr = GET_CLIENT_ENTITY_FN(ENTITY_LIST_POINTER, entity_index)
              return addr
          end
      }
      
      local m_flPoseParameter = se.get_netvar("DT_BaseAnimating", "m_flPoseParameter")
      
      
      function moveDetected()
              --leg destroyed
              if Ideal_Anim_Breaker:get_value(0) then
                  local localPlayer = entitylist.get_local_player()
                  if not localPlayer then return end
                  ffi.cast("float*", ffi_helpers.get_entity_address(localPlayer:get_index()) + m_flPoseParameter)[0] = 0
                  local legMovement = ui.get_combo_box("antihit_extra_leg_movement")
                  if clientstate.get_choked_commands() == 0 then
                      legMovement:set_value(2)
                  else
                      legMovement:set_value(1)
                  end
                end
            end 
         
     client.register_callback("create_move", moveDetected)
    
    
    
                                    -- FREESTAND MANUAL
                                    antiaim_side = 0;
                    
                                    local player_vtable = ffi.cast("int*", client.find_pattern("client.dll", "55 8B EC 83 E4 F8 83 EC 18 56 57 8B F9 89 7C 24 0C") + 0x47)[0];
                                    local get_abs_origin = ffi.cast("float*(__thiscall*)(int)", ffi.cast("int*", player_vtable + 0x28)[0]);
                                    
                                    local desync_switch = ui.get_combo_box("antihit_antiaim_yaw");
                                    
                                    local function pisa()
                                    if frestand1q:get_value() then
                                        if not ui.get_check_box("antihit_extra_autopeek"):get_value() or not ui.get_key_bind("antihit_extra_autopeek_bind"):is_active() then
                                            desync_switch:set_value(manual_side)
                                            return
                                        end
                                        
                                        local local_player = entitylist.get_local_player();
                                        local local_player_yaw = engine.get_view_angles().yaw;
                                        local abs_origin = get_abs_origin(local_player:get_address());
                                        
                                        local fraction_number = {
                                            ["left"] = 0;
                                            ["right"] = 0;
                                        };
                                        
                                        for i = local_player_yaw - 90, local_player_yaw + 90, 30 do
                                            if i ~= local_player_yaw then
                                                local destination = vec3_t.new(abs_origin[0] + 256 * math.cos(math.rad(i)), abs_origin[1] + 256 * math.sin(math.rad(i)), abs_origin[2]);
                                                local trace = trace.line(engine.get_local_player(), 0x46004003, vec3_t.new(abs_origin[0], abs_origin[1], abs_origin[2]), destination);
                                                local side = i < local_player_yaw and "left" or "right";
                                    
                                                fraction_number[side] = fraction_number[side] + trace.fraction;
                                            end;
                                        end;
                                        
                                        if frestand1q:get_value() then
                                            antiaim_side = fraction_number["left"] > fraction_number["right"] and 2 or 3;
                                            desync_switch:set_value(antiaim_side);
                                        else
                                            desync_switch:set_value(manual_side);
                                        end
                                    end      
                                    end;
                                    
                                    client.register_callback("paint", pisa);
                    -- NADE RADIUS
                    
                    
                    
                    local function draw_circle( radius, origin, color, outline, outline_color, is_molotov, molotov_entity )
                        
                        local circle_step = math.pi * 2 / 30
                    
                        local prev_screen_position, prev_screen_position_m = vec2_t.new(0, 0), vec2_t.new(0, 0)
                        local vec_points = {}
                    
                        local time_left
                        if is_molotov then
                            time_left = math.max((((molotov_entity:get_prop_float(0x20) + 7) - globalvars.get_current_time()) / 7) * (math.pi*2 + 0.1), 0)
                        end
                        if nades:get_value(1) == true then
                        if is_molotov then
                            local rotation_m = 0
                            while rotation_m < time_left do
                                local position = vec3_t.new( radius * math.cos(rotation_m) + origin.x, radius * math.sin(rotation_m) + origin.y, origin.z )
                                local screen_position_m = se.world_to_screen( position )
                    
                                if screen_position_m.x ~= nil then
                    
                                    if prev_screen_position_m.x ~= 0 and outline then
                                        renderer.line( vec2_t.new( prev_screen_position_m.x, prev_screen_position_m.y ), vec2_t.new( screen_position_m.x, screen_position_m.y ), color_t.new( outline_color.r, outline_color.g, outline_color.b, 255 ) )
                                    end
                    
                                    prev_screen_position_m.x, prev_screen_position_m.y = screen_position_m.x, screen_position_m.y
                                end
                    
                                rotation_m = rotation_m + circle_step
                            end
                        end
                    
                    
                        local rotation = 0
                        while rotation < ((math.pi*2)+0.1) do
                            local position = vec3_t.new( radius * math.cos(rotation) + origin.x, radius * math.sin(rotation) + origin.y, origin.z )
                            local screen_position = se.world_to_screen( position )
                    
                            if screen_position.x ~= nil then
                                table.insert( vec_points, screen_position )
                    
                                if prev_screen_position.x ~= 0 and outline and not is_molotov then
                                    renderer.line( vec2_t.new( prev_screen_position.x, prev_screen_position.y ), vec2_t.new( screen_position.x, screen_position.y ), color_t.new( outline_color.r, outline_color.g, outline_color.b, 255 ) )
                                end
                    
                                prev_screen_position.x, prev_screen_position.y = screen_position.x, screen_position.y
                            end
                    
                            rotation = rotation + circle_step
                        end
                    
                        local filled_polygon = renderer.filled_polygon(vec_points, color)
                    
                    end
                    end
                    
                    local function lerp_pos(x1, y1, z1, x2, y2, z2, percentage)
                        local x = (x2 - x1) * percentage + x1
                        local y = (y2 - y1) * percentage + y1
                        local z = (z2 - z1) * percentage + z1
                        return x, y, z
                    end
                    
                    
                    
                    client.register_callback( "paint", function()
                    
                        local inferno = entitylist.get_entities_by_class_id(100)
                    
                        for j = 1, #inferno do
                    
                            local molotov = inferno[ j ]
                            local origin  = molotov:get_prop_vector( se.get_netvar("DT_BaseEntity", "m_vecOrigin") )
                    
                            local cells = {}; local cell_max_1, cell_max_2
                            local maximum_distance = 0
                    
                            local firecount, fire_is_burning = molotov:get_prop_int( se.get_netvar( "DT_Inferno", "m_fireCount" ) ), ffi.cast( "bool*", molotov:get_address() + se.get_netvar( "DT_Inferno", "m_bFireIsBurning" ) )
                            local x_delta, y_delta, z_delta = ffi.cast( "int*", molotov:get_address() + se.get_netvar( "DT_Inferno", "m_fireXDelta" ) ), ffi.cast( "int*", molotov:get_address() + se.get_netvar( "DT_Inferno", "m_fireYDelta" ) ), ffi.cast( "int*", molotov:get_address() + se.get_netvar( "DT_Inferno", "m_fireZDelta" ) )
                    
                    
                            for i = 1, firecount do
                                if fire_is_burning[i] then
                                    table.insert( cells, { x_delta[i], y_delta[i], z_delta[i] } )
                                end
                            end
                    
                            for i = 1, #cells do
                                for ii = 1, #cells do
                                    local distance = math.sqrt( ( cells[ii][1] - cells[i][1] )^2 + ( cells[ii][2] - cells[i][2] )^2 )
                    
                                    if distance > maximum_distance then
                                        maximum_distance = distance
                                        cell_max_1, cell_max_2 = cells[i], cells[ii]
                                    end
                                end
                            end
                    
                            if cell_max_1 ~= nil and cell_max_2 ~= nil then
                    
                                local center_x_delta, center_y_delta, center_z_delta = lerp_pos(cell_max_1[1], cell_max_1[2], cell_max_1[3], cell_max_2[1], cell_max_2[2], cell_max_2[3], 0.5)
                                local center_x, center_y, center_z = origin.x + center_x_delta, origin.y + center_y_delta, origin.z + center_z_delta
                    
                                draw_circle( maximum_distance/2 + 40, vec3_t.new( center_x, center_y, center_z ), m_circle_col:get_value(), true, m_outline_col:get_value(), true, molotov )
                    
                            end
                    
                        end
                    
                    end)
                    
                    
                    
                    client.register_callback( "paint", function()
                    
                        local smokes = entitylist.get_entities_by_class_id(157)
                    
                        for i = 1, #smokes do
                    
                            local smoke = smokes[i]
                    
                            local origin  = smoke:get_prop_vector( se.get_netvar("DT_BaseEntity", "m_vecOrigin") )
                            local smoke_effect = smoke:get_prop_bool( se.get_netvar( "DT_SmokeGrenadeProjectile", "m_bDidSmokeEffect" ) )
                    
                            if smoke_effect then
                                draw_circle( 140, origin, s_circle_col:get_value(), true, s_outline_col:get_value() )
                            end
                    
                        end
                    
                    
                    end)
                    --CUSTOM AUTOPEEK
                    
                    
                    
                    client.register_callback("paint", tabfunc)
                    local m_iHealth = se.get_netvar("DT_BasePlayer", "m_iHealth")
                    local m_vecOrigin = se.get_netvar("DT_BaseEntity", "m_vecOrigin")
                    local m_vecVelocity = {
                        [0] = se.get_netvar("DT_BasePlayer", "m_vecVelocity[0]"),
                        [1] = se.get_netvar("DT_BasePlayer", "m_vecVelocity[1]")
                    }
                    
                    local data = nil
                    
                    local is_shot = false
                    local is_toggled = false
                    
                    local function draw_circle_3d(pos, points, radius, clr, filled, filled_clr)
                        if not localplayer:is_alive() then return end
                        local step = math.pi * 2 / points
                    
                        local vec_points = {}
                        local vec_points1 = {}
                        local vec_points2 = {}
                        local vec_points3 = {}
                        local vec_points4 = {}
                    
                        local z = pos.z
                    
                        for i = 0.0, math.pi * 2.0, step do
                            local start = vec3_t.new(
                                radius * math.cos(i) + pos.x,
                                radius * math.sin(i) + pos.y,
                                z
                            )
                    
                            local start2d = se.world_to_screen(start)
                    
                            if start2d then
                                table.insert(vec_points, start2d)
                            end
                    
                            local start = vec3_t.new(
                                radius * math.cos(i) + pos.x,
                                radius * math.sin(i) + pos.y,
                                z
                            )
                    
                            
                        end
                    
                    
                        if filled then
                            renderer.filled_polygon(vec_points, filled_clr)
                        end
                    
                        for i = 1, #vec_points, 1 do
                            local point = vec_points[i]
                            local next_point = vec_points[i + 1] and vec_points[i + 1] or vec_points[1]
                    
                            renderer.line(point, next_point, clr)
                        end
                        
                       
                       
                    end
                    
                    local function clamp(value, min, max)
                        if not localplayer:is_alive() then return end
                        if value > max then return max end
                        if value < min then return min end
                        return value
                    end
                    
                    local function on_paint()
                        if not localplayer:is_alive() then return end
                        if pcusautopeek:get_value(1) then
                        local max_radius = 20
                        local pos = se.world_to_screen(data)
                    
                        if pos.x == nil or pos.y == nil then return end
                    
                        local color = enablesecondcolor:get_value()
                        color.a = 255
                        if autopekcheckbox:get_value() and autopekbind:is_active() then
                            draw_circle_3d(data, 100, max_radius, enablesecondcolor:get_value(), enablefilled:get_value(), enablefirstcolor:get_value())
                            draw_circle_3d(vec3_t.new(data.x, data.y, data.z), 100, max_radius, color, false, color)
                            
                        end
                    end
                    end
                    
                    local time = nil
                    
                    local function on_shot(event)
                        local target = engine.get_player_for_user_id(event:get_int("userid", 0))
                        local me = engine.get_local_player()
                    
                        if event:get_name() == "weapon_fire" and me == target then
                            is_shot = true
                    
                            time = globalvars.get_current_time()
                        end
                    end
                    
                    local function main(user)
                        local me = entitylist.get_entity_by_index(engine.get_local_player())
                    
                        if me:get_prop_int(m_iHealth) < 1 then
                            return
                        end
                    
                        local vec3 = me:get_prop_vector(m_vecOrigin)
                        local current_pos = vec3
                    
                        if autopekcheckbox:get_value() and autopekbind:is_active() and not is_toggled then
                            is_toggled = true
                            is_shot = false
                    
                            data = vec3
                        elseif not (autopekcheckbox:get_value() and autopekbind:is_active()) and is_toggled then
                            is_toggled = false
                            is_shot = false
                        end
                       
                    
                        if is_shot and is_toggled then
                            local vec_forward = {
                                x = current_pos.x - data.x,
                                y = current_pos.y - data.y,
                                z = current_pos.z - data.z
                            }
                    
                            local yaw = engine.get_view_angles().yaw
                    
                            local t_velocity = {
                                x = vec_forward.x * math.cos(yaw / 180 * math.pi) + vec_forward.y * math.sin(yaw / 180 * math.pi),
                                y = vec_forward.y * math.cos(yaw / 180 * math.pi) - vec_forward.x * math.sin(yaw / 180 * math.pi),
                                z = vec_forward.z
                            }
                    
                            user.forwardmove = -t_velocity.x * 20
                            user.sidemove = t_velocity.y * 20
                    
                            velocity = math.sqrt(me:get_prop_float(m_vecVelocity[0]) ^ 2 + me:get_prop_float(m_vecVelocity[1]) ^ 2);
                    
                            if velocity < 3 and globalvars.get_current_time() - time > 0.5 then
                                is_shot = false
                            end
                        end
                    end
                    
                    
                    client.register_callback("fire_game_event", on_shot)
                    client.register_callback("create_move", main)
                    client.register_callback("paint", on_paint) 
                    -- FPS BOOST
                    
                    local function on_create_move(cmd)
                    if fps:get_value() then
                        se.get_convar("cl_foot_contact_shadows"):set_int(0)
                        se.get_convar("cl_csm_shadows"):set_int(0)
                        se.get_convar("cl_csm_rope_shadows"):set_int(0)
                        se.get_convar("cl_csm_world_shadows"):set_int(0)
                        se.get_convar("cl_csm_world_shadows_in_viewmodelcascade"):set_int(0)
                        se.get_convar("cl_csm_static_prop_shadows"):set_int(0)
                        se.get_convar("cl_csm_sprite_shadows"):set_int(0)
                        se.get_convar("cl_csm_viewmodel_shadows"):set_int(0)
                        se.get_convar("cl_minimal_rtt_shadows"):set_int(0)
                    
                        se.get_convar("r_shadows"):set_int(0)
                        se.get_convar("r_3dsky"):set_int(0)
                    
                        se.get_convar("fog_enable"):set_int(0)
                        se.get_convar("fog_enable_water_fog"):set_int(0)
                        se.get_convar("fog_enableskybox"):set_int(0)
                        --1
                        
                        se.get_convar("Muzzleflash_light"):set_int(0)
                        se.get_convar("R_eyemove"):set_int(0)
                        se.get_convar("R_eyeloss"):set_int(0)
                        se.get_convar("fps_max 400"):set_int(0)
                        se.get_convar("mat_queue_mode"):set_int(2)
                        se.get_convar("mat_hdr_enabled"):set_int(0)
                        se.get_convar("r_avglight"):set_int(1)
                        se.get_convar("func_break_max_pieces"):set_int(0)
                        se.get_convar("r_drawparticles"):set_int(0)
                        se.get_convar("r_dynamic"):set_int(0)
                        se.get_convar("func_break_max_pieces"):set_int(0)
                        se.get_convar("r_gloss"):set_int(0)
                        se.get_convar("r_cleardecals"):set_int(0)
                        se.get_convar("cl_shadows"):set_int(0)
                        se.get_convar("cl_foot_contact_shadows"):set_int(0)
                        se.get_convar("r_drawtracers_firstperson"):set_int(0)
                        se.get_convar("r_cheapwaterend"):set_int(0)
                        se.get_convar("cl_detail_avoid_radius"):set_int(0)
                        se.get_convar("cl_detail_max_sway"):set_int(0)
                        se.get_convar("func_break_max_pieces"):set_int(0)
                    else
                        se.get_convar("cl_foot_contact_shadows"):set_int(1)
                        se.get_convar("cl_csm_shadows"):set_int(1)
                        se.get_convar("cl_csm_rope_shadows"):set_int(1)
                        se.get_convar("cl_csm_world_shadows"):set_int(1)
                        se.get_convar("cl_csm_world_shadows_in_viewmodelcascade"):set_int(1)
                        se.get_convar("cl_csm_static_prop_shadows"):set_int(1)
                        se.get_convar("cl_csm_sprite_shadows"):set_int(1)
                        se.get_convar("cl_csm_viewmodel_shadows"):set_int(1)
                        se.get_convar("cl_minimal_rtt_shadows"):set_int(1)
                    
                        se.get_convar("r_shadows"):set_int(1)
                        se.get_convar("r_3dsky"):set_int(1)
                    
                        se.get_convar("fog_enable"):set_int(1)
                        se.get_convar("fog_enable_water_fog"):set_int(1)
                        se.get_convar("fog_enableskybox"):set_int(1)
                    
                        se.get_convar("mat_disable_bloom"):set_int(0)
                        se.get_convar("mat_postprocess_enable"):set_int(1)
                        --1
                        
                        se.get_convar("Muzzleflash_light"):set_int(1)
                        se.get_convar("R_eyemove"):set_int(1)
                        se.get_convar("R_eyeloss"):set_int(1)
                        se.get_convar("fps_max 400"):set_int(1)
                        se.get_convar("mat_queue_mode"):set_int(2)
                        se.get_convar("mat_hdr_enabled"):set_int(1)
                        se.get_convar("r_avglight"):set_int(0)
                        se.get_convar("func_break_max_pieces"):set_int(1)
                        se.get_convar("r_drawparticles"):set_int(1)
                        se.get_convar("r_dynamic"):set_int(1)
                        se.get_convar("func_break_max_pieces"):set_int(1)
                        se.get_convar("r_gloss"):set_int(1)
                        se.get_convar("r_cleardecals"):set_int(1)
                        se.get_convar("cl_shadows"):set_int(1)
                        se.get_convar("cl_foot_contact_shadows"):set_int(1)
                        se.get_convar("r_drawtracers_firstperson"):set_int(1)
                        se.get_convar("r_cheapwaterend"):set_int(1)
                        se.get_convar("cl_detail_avoid_radius"):set_int(1)
                        se.get_convar("cl_detail_max_sway"):set_int(1)
                        se.get_convar("func_break_max_pieces"):set_int(1)
                    
                    
                    end
                    end
                    
                    
                    client.register_callback("create_move", on_create_move)
                
                    -- gredonclick
                    
                    local function oncklick()
                         localPlayer = entitylist.get_local_player();
                        if engine.is_connected() then
                            if localPlayer:is_alive() then
                        if enableGrenadePrediction:get_value() then
                            if client.is_key_pressed(1) or client.is_key_pressed(2) then
                                ui.get_check_box("visuals_other_grenade_prediction"):set_value(true)
                            else
                                ui.get_check_box("visuals_other_grenade_prediction"):set_value(false)
                            end
                        end
                    end
                    end
                    end
                    client.register_callback("paint", oncklick)
                    --keybinds+watermark
                    --KEY BIND+BINDS
                    
                     animation_type = ui.add_combo_box("Animation type", "animation_type", { "Skeet", "Neverlose" }, 0)
                     auto_resize_width = ui.add_check_box("Auto resize width", "auto_resize_width", true)
                    
                    
                     color_line = ui.add_color_edit("Color line", "color_line", true, color_t.new(52, 164, 235, 255))
                     keybinds_x = ui.add_slider_int("keybind_x", "keybinds_x", 0, engine.get_screen_size().x, 345)
                     keybinds_y = ui.add_slider_int("keybind_y", "keybinds_y", 0, engine.get_screen_size().y, 215)
                    
    
                     local types = { "on", "hold", "toggled", "off" }
                    
                    local function hsv2rgb(h, s, v, a)
                        local r, g, b
                    
                        local i = math.floor(h * 6);
                        local f = h * 6 - i;
                        local p = v * (1 - s);
                        local q = v * (1 - f * s);
                        local t = v * (1 - (1 - f) * s);
                    
                        i = i % 6
                    
                        if i == 0 then r, g, b = v, t, p
                        elseif i == 1 then r, g, b = q, v, p
                        elseif i == 2 then r, g, b = p, v, t
                        elseif i == 3 then r, g, b = p, q, v
                        elseif i == 4 then r, g, b = t, p, v
                        elseif i == 5 then r, g, b = v, p, q
                        end
                    
                        return color_t.new(r * 255, g * 255, b * 255, a * 255)
                    end
                     function math.lerp(a, b, t) return a + (b - a) * t end
                    local function drag(x, y, width, height, xmenu, ymenu, item)
                        local cursor = renderer.get_cursor_pos()
                        if (cursor.x >= x) and (cursor.x <= x + width) and (cursor.y >= y) and (cursor.y <= y + height) then
                            if client.is_key_pressed(1) and item[1] == 0 then
                                item[1] = 1
                                item[2] = x - cursor.x
                                item[3] = y - cursor.y
                            end
                        end
                        if not client.is_key_pressed(1) then item[1] = 0 end
                        if item[1] == 1 and ui.is_visible() then
                            xmenu:set_value(cursor.x + item[2])
                            ymenu:set_value(cursor.y + item[3])
                        end
                    end
                    local function filledbox(x, y, w, h, al)
                        local rgb = hsv2rgb(globalvars.get_real_time() / 4, 0.9, 1, 1)
                        local col = color_line:get_value()
                        
                    
                        if stl ~= 4 then
                        local rect_filled = renderer.rect_filled(vec2_t.new(x, y), vec2_t.new(x + w, y + h), color_t.new(15, 15, 15, col.a * al))
                        else
                        local rect_filled = renderer.rect_filled(vec2_t.new(x, y - 2), vec2_t.new(x + w, y + h), color_t.new(30, 30, 30, col.a * al))
                        local rect_filled_fade = renderer.rect_filled_fade(vec2_t.new(x + 1, y - 1), vec2_t.new(x + w / 2, y), color_t.new(0, 213, 255, 255 * al), color_t.new(204, 18, 204, 255 * al), color_t.new(204, 18, 204, 255 * al), color_t.new(0, 213, 255, 255 * al))
                        local rect_filled_fade = renderer.rect_filled_fade(vec2_t.new(x + (w / 2), y - 1), vec2_t.new(x + w - 1, y), color_t.new(204, 18, 204, 255 * al), color_t.new(255, 250, 0, 255 * al), color_t.new(255, 250, 0, 255 * al), color_t.new(204, 18, 204, 255 * al))
                        end
                        
                        gradient_color = stl == 0 and color_t.new(col.r, col.g, col.b, 255 * al) or stl == 1 and color_t.new(0, 0, 0, 255 * al) or stl == 2 and color_t.new(col.r, col.g, col.b, 255 * al) or stl == 3 and color_t.new(0, 213, 255, 255 * al) or stl == 5 and color_t.new(chromd==1 and rgb.g or rgb.r, chromd==1 and rgb.b or rgb.g, chromd ==1 and rgb.g or rgb.b, 255 * al) or color_t.new(0, 0, 0, 0)
                        gradient_color1 = stl == 0 and color_t.new(col.r, col.g, col.b, 255 * al) or stl == 1 and color_t.new(col.r, col.g, col.b, 255 * al) or stl == 2 and color_t.new(0, 0, 0, 255 * al) or stl == 3 and color_t.new(204, 18, 204, 255 * al) or stl == 5 and color_t.new(chromd==2 and rgb.r or rgb.b, chromd==2 and rgb.g or rgb.r, chromd==2 and rgb.b or rgb.g, 255 * al) or color_t.new(0, 0, 0, 0)
                        gradient_color2 = stl == 0 and color_t.new(col.r, col.g, col.b, 255 * al) or stl == 1 and color_t.new(0, 0, 0, 255 * al) or stl == 2 and color_t.new(col.r, col.g, col.b, 255 * al) or stl == 3 and color_t.new(255, 250, 0, 255 * al) or stl == 5 and color_t.new(chromd==0 and rgb.g or rgb.r, chromd==0 and rgb.b or rgb.g, chromd ==0 and rgb.g or rgb.b, 255 * al) or color_t.new(0, 0, 0, 0)
                    
                        if stl ~= 4 then
                            local rect_filled_fade = renderer.rect_filled_fade(vec2_t.new(x, y - 2), vec2_t.new(x + w / 2, y), gradient_color, gradient_color1, gradient_color1, gradient_color)
                            local rect_filled_fade = renderer.rect_filled_fade(vec2_t.new(x + (w / 2), y - 2), vec2_t.new(x + w, y), gradient_color1, gradient_color2, gradient_color2, gradient_color1)
                        end
                    end
                    --indicators
                    local item = { 0, 0, 0 }
                    local animwidth = 0;
                    local alpha = { 0 }
                    local bind = {
                    ["Double tap"] = {reference = ui.get_key_bind("rage_active_exploit_bind"), exploit = 2, add = 0, multiply = 0},
                    ["On-shot anti-aim"] = {reference = ui.get_key_bind("rage_active_exploit_bind"), exploit = 1, add = 0, multiply = 0},
                    ["Desync inverter"] = {reference = flip_bind, exploit = 0, add = 0, multiply = 0},
                    ["Quick peek assist"] = {reference = autopekbind, exploit = 0, add = 0, multiply = 0},
                    ["Slow motion"] = {reference = ui.get_key_bind("antihit_extra_slowwalk_bind"), exploit = 0, add = 0, multiply = 0},
                    ["Duck peek assist"] = {reference = ui.get_key_bind("antihit_extra_fakeduck_bind"), exploit = 0, add = 0, multiply = 0},
                    ["Jump bug"] = {reference = ui.get_key_bind("misc_jump_bug_bind"), exploit = 0, add = 0, multiply = 0},
                    ["Edge jump"] = {reference = ui.get_key_bind("misc_edge_jump_bind"), exploit = 0, add = 0, multiply = 0},
                    ["Enable thirdperson"] = {reference = ui.get_key_bind("visuals_other_thirdperson_bind"), exploit = 0, add = 0, multiply = 0},
                    ["Force body"] = {reference = enableForceBodyAim, exploit = 0, add = 0, multiply = 0},
                    ["Min. Damage - [" .. md_value:get_value() .. "]"] = {reference = enableMinDamage, exploit = 0, add = 0, multiply = 0},
                    ["Menu Open"] = {reference = menuact, exploit = 0, add = 0, multiply = 0},
                    --["Название бинда"] = {reference = получение бинда, exploit = 0 (это не трогать), add = 0 (это не трогать), multiply = 0 (это не трогать)},
                    };
                    client.register_callback("paint", function()
                        --ui visible
                        local screen = screen_ind:get_value(1) or screen_ind:get_value(0)
                        
                        animation_type:set_visible(false)
                        auto_resize_width:set_visible(false)
                        keybinds_x:set_visible(false) keybinds_y:set_visible(false)
                        color_line:set_visible(false)
                        
                        
                        --keybinds
                         local function keybinds()
                            bkg_aplha = 0 -- вот тут ставь свою прзрачность [0 - 255]
                            if screen_ind:get_value(0) and screen_ind_style:get_value() == 1 then
                            if not engine.is_connected() and (not ui.is_visible() or not screen_ind:get_value(0)) then return end
                                
                                 pos = {x = keybinds_x:get_value(), y = keybinds_y:get_value()}
                                 alphak, keybinds = {}, {}
                                 width, maxwidth = 25, 0;
                                 height = 17;
                                 bind_y = height + 4
                                
                                for i,v in pairs(bind) do
                                     exploits = ui.get_combo_box("rage_active_exploit"):get_value(); v.add = math.lerp(v.add, v.reference:is_active() and 255 or 0, 0.1); v.multiply = v.add > 4 and 1 or 0;
                                    if v.add > 4 then if v.exploit == 0 then table.insert(keybinds, i) end; if v.exploit ~= 0 and exploits == v.exploit then table.insert(keybinds, i) end; end;
                                    if v.exploit == 0 and v.reference:is_active() then table.insert(alphak, i) end; if v.exploit ~= 0 and exploits == v.exploit and v.reference:is_active() then table.insert(alphak, i) end;
                                end
                                if #alphak ~= 0 or ui.is_visible() then alpha[1] = math.lerp(alpha[1], 255, 0.1) end; if #alphak == 0 and not ui.is_visible() then alpha[1] = math.lerp(alpha[1], 0, 0.1) end		
                                for k,f in pairs(keybinds) do if renderer.get_text_size(verkey, 12, f .. "["..types[bind[f].reference:get_type() + 1].."]").x > maxwidth then maxwidth = renderer.get_text_size(verdana, 12, f .. "["..types[bind[f].reference:get_type() + 1].."]").x; end; end
                                if maxwidth == 0 then maxwidth = 50 end; width = width + maxwidth; if width < 130 then width = 130 end if animwidth == 0 then animwidth = width end; animwidth = math.lerp(animwidth, width, 0.1)
                                w = auto_resize_width:get_value(1) and (animation_type:get_value() == 0 and animwidth or width) or 150
                                for k,f in pairs(keybinds) do  
                                     local v = bind[f]; bind_y = bind_y + (animation_type:get_value() == 0 and 20 * (v.add / 255) or 20 * v.multiply); plus = bind_y - (animation_type:get_value() == 1 and 20 * (v.add / 255) or 20 * v.multiply);
                                     local background_alpha = (255*(v.add / 255) - (255 - bkg_aplha)) > 0 and (255*(v.add / 255) - (255 - bkg_aplha)) or (255*(v.add / 255) - (255 - bkg_aplha)) <= 0 and 0 -- вот это хитровыебаный механизм получения альфы
                                     local rect_filled = renderer.rect_filled(vec2_t.new(pos.x-5, pos.y+3 + plus-1), vec2_t.new(pos.x+34 + w, pos.y+12 + plus-4 + renderer.get_text_size(verdana, 12, "D").y + 2), color_t.new(18, 18, 18, background_alpha)) -- вот наш фон, тут меняй цвет (!прозрачность не трогать!)
                                     
                                     local text =  renderer.text(f, verkey, vec2_t.new(pos.x -3 , pos.y + plus + 5), 13, color_t.new(0, 0, 0, 255 * (v.add / 255)))
                                     local text = renderer.text(f, verkey, vec2_t.new(pos.x -2, pos.y + plus +4), 13, color_t.new(255, 255, 255, 255 * (v.add / 255)))
                                     local text = renderer.text("["..types[v.reference:get_type() + 1].."]", verkey, vec2_t.new(pos.x + w +11 - renderer.get_text_size(verkey, 13, "["..types[v.reference:get_type() + 1].."]").x +20, pos.y + plus + 5), 13, color_t.new(0, 0, 0, 255 * (v.add / 255)))
                                     local text = renderer.text("["..types[v.reference:get_type() + 1].."]", verkey, vec2_t.new(pos.x + w +12 - renderer.get_text_size(verkey, 13, "["..types[v.reference:get_type() + 1].."]").x +20, pos.y + plus +4), 13, color_t.new(255, 255, 255, 255 * (v.add / 255)))
                                end
                                if alpha[1] > 1 then
                                    
                                      --my_texturerare = renderer.setup_texture("./csgo/cache/mercury/rare.png")
                                      --local texture = renderer.texture(my_texturerare, vec2_t.new(pos.x-49, pos.y-15 ), vec2_t.new(pos.x+49 + w, pos.y+50 ), colorlineind:get_value())
                                    renderer.rounded_rect(pos.x-5,pos.y,39+w,21,color_t.new(0, 0, 0, 0),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, colorlineind:get_value().a*(alpha[1] / 255)),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
                                    renderer.rounded_rect(pos.x-5-1,pos.y,39+w,21,color_t.new(0, 0, 0, 0),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, colorlineind:get_value().a*(alpha[1] / 255)),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
                                    renderer.rounded_rect(pos.x-5-1,pos.y+1,39+w,21,color_t.new(0, 0, 0, 0),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, colorlineind:get_value().a*(alpha[1] / 255)),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
                                    renderer.rounded_rect(pos.x-5,pos.y+1,39+w,21,color_t.new(0, 0, 0, 0),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, colorlineind:get_value().a*(alpha[1] / 255)),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
                                    filledbox(pos.x-5, pos.y, w+39, height+5, (alpha[1] / 0))
    
                                    --local rect_filled = renderer.rect_filled(vec2_t.new(pos.x-5, pos.y+22), vec2_t.new(pos.x+34 + w, pos.y+9 + renderer.get_text_size(verdana, 12, "D").y + 2), color_t.new(182, 163, 255, 255))
                                    local text = renderer.text("keybinds", verdanakey, vec2_t.new(pos.x + (width /2) - (renderer.get_text_size(verdanakey, 11, "Active Binds").x /2) + 14, pos.y + 2), 16, color_t.new(0, 0, 0, 255 * (alpha[1] / 255)))
                                    local text = renderer.text("keybinds", verdanakey, vec2_t.new(pos.x + (width /2) - (renderer.get_text_size(verdanakey, 11, "Active Binds").x /2)+15, pos.y +1), 16, color_t.new(255, 255, 255, 255 * (alpha[1] / 255)))
                                    drag(pos.x, pos.y, w, height + 2, keybinds_x, keybinds_y, item)
                                    
                            end
                                
                            end
                        end
                         keybinds();
                    end)
                    
                    --keybindsdefoult
    
    
                   local types = { "on", "on", "on", "off" }
                   
                   local function hsv2rgb(h, s, v, a)
                       local r, g, b
                   
                       local i = math.floor(h * 6);
                       local f = h * 6 - i;
                       local p = v * (1 - s);
                       local q = v * (1 - f * s);
                       local t = v * (1 - (1 - f) * s);
                   
                       i = i % 6
                   
                       if i == 0 then r, g, b = v, t, p
                       elseif i == 1 then r, g, b = q, v, p
                       elseif i == 2 then r, g, b = p, v, t
                       elseif i == 3 then r, g, b = p, q, v
                       elseif i == 4 then r, g, b = t, p, v
                       elseif i == 5 then r, g, b = v, p, q
                       end
                   
                       return color_t.new(r * 255, g * 255, b * 255, a * 255)
                   end
                    function math.lerp(a, b, t) return a + (b - a) * t end
                   local function drag(x, y, width, height, xmenu, ymenu, item)
                       local cursor = renderer.get_cursor_pos()
                       if (cursor.x >= x) and (cursor.x <= x + width) and (cursor.y >= y) and (cursor.y <= y + height) then
                           if client.is_key_pressed(1) and item[1] == 0 then
                               item[1] = 1
                               item[2] = x - cursor.x
                               item[3] = y - cursor.y
                           end
                       end
                       if not client.is_key_pressed(1) then item[1] = 0 end
                       if item[1] == 1 and ui.is_visible() then
                           xmenu:set_value(cursor.x + item[2])
                           ymenu:set_value(cursor.y + item[3])
                       end
                   end
                   local function filledbox(x, y, w, h, al)
                       local rgb = hsv2rgb(globalvars.get_real_time() / 4, 0.9, 1, 1)
                       local col = color_line:get_value()
                       
                   
                       if stl ~= 4 then
                       local rect_filled = renderer.rect_filled(vec2_t.new(x, y), vec2_t.new(x + w, y + h), color_t.new(15, 15, 15, col.a * al))
                       else
                       local rect_filled = renderer.rect_filled(vec2_t.new(x, y - 2), vec2_t.new(x + w, y + h), color_t.new(30, 30, 30, col.a * al))
                       local rect_filled_fade = renderer.rect_filled_fade(vec2_t.new(x + 1, y - 1), vec2_t.new(x + w / 2, y), color_t.new(0, 213, 255, 255 * al), color_t.new(204, 18, 204, 255 * al), color_t.new(204, 18, 204, 255 * al), color_t.new(0, 213, 255, 255 * al))
                       local rect_filled_fade = renderer.rect_filled_fade(vec2_t.new(x + (w / 2), y - 1), vec2_t.new(x + w - 1, y), color_t.new(204, 18, 204, 255 * al), color_t.new(255, 250, 0, 255 * al), color_t.new(255, 250, 0, 255 * al), color_t.new(204, 18, 204, 255 * al))
                       end
                       
                       gradient_color = stl == 0 and color_t.new(col.r, col.g, col.b, 255 * al) or stl == 1 and color_t.new(0, 0, 0, 255 * al) or stl == 2 and color_t.new(col.r, col.g, col.b, 255 * al) or stl == 3 and color_t.new(0, 213, 255, 255 * al) or stl == 5 and color_t.new(chromd==1 and rgb.g or rgb.r, chromd==1 and rgb.b or rgb.g, chromd ==1 and rgb.g or rgb.b, 255 * al) or color_t.new(0, 0, 0, 0)
                       gradient_color1 = stl == 0 and color_t.new(col.r, col.g, col.b, 255 * al) or stl == 1 and color_t.new(col.r, col.g, col.b, 255 * al) or stl == 2 and color_t.new(0, 0, 0, 255 * al) or stl == 3 and color_t.new(204, 18, 204, 255 * al) or stl == 5 and color_t.new(chromd==2 and rgb.r or rgb.b, chromd==2 and rgb.g or rgb.r, chromd==2 and rgb.b or rgb.g, 255 * al) or color_t.new(0, 0, 0, 0)
                       gradient_color2 = stl == 0 and color_t.new(col.r, col.g, col.b, 255 * al) or stl == 1 and color_t.new(0, 0, 0, 255 * al) or stl == 2 and color_t.new(col.r, col.g, col.b, 255 * al) or stl == 3 and color_t.new(255, 250, 0, 255 * al) or stl == 5 and color_t.new(chromd==0 and rgb.g or rgb.r, chromd==0 and rgb.b or rgb.g, chromd ==0 and rgb.g or rgb.b, 255 * al) or color_t.new(0, 0, 0, 0)
                   
                       if stl ~= 4 then
                           local rect_filled_fade = renderer.rect_filled_fade(vec2_t.new(x, y - 2), vec2_t.new(x + w / 2, y), gradient_color, gradient_color1, gradient_color1, gradient_color)
                           local rect_filled_fade = renderer.rect_filled_fade(vec2_t.new(x + (w / 2), y - 2), vec2_t.new(x + w, y), gradient_color1, gradient_color2, gradient_color2, gradient_color1)
                       end
                   end
                   --indicators
                   local item = { 0, 0, 0 }
                   local animwidth = 0;
                   local alpha = { 0 }
                   local bind = {
                   ["Double tap"] = {reference = ui.get_key_bind("rage_active_exploit_bind"), exploit = 2, add = 0, multiply = 0},
                   ["Hide shots"] = {reference = ui.get_key_bind("rage_active_exploit_bind"), exploit = 1, add = 0, multiply = 0},
                   ["AA inverter"] = {reference = flip_bind, exploit = 0, add = 0, multiply = 0},
                   ["Auto Peek"] = {reference = ui.get_key_bind("antihit_extra_autopeek_bind"), exploit = 0, add = 0, multiply = 0},
                   ["Slow walk"] = {reference = ui.get_key_bind("antihit_extra_slowwalk_bind"), exploit = 0, add = 0, multiply = 0},
                   ["Fake duck"] = {reference = ui.get_key_bind("antihit_extra_fakeduck_bind"), exploit = 0, add = 0, multiply = 0},
                   ["Jump bug"] = {reference = ui.get_key_bind("misc_jump_bug_bind"), exploit = 0, add = 0, multiply = 0},
                   ["Edge jump"] = {reference = ui.get_key_bind("misc_edge_jump_bind"), exploit = 0, add = 0, multiply = 0},
                   ["Third person"] = {reference = ui.get_key_bind("visuals_other_thirdperson_bind"), exploit = 0, add = 0, multiply = 0},
                   ["Force body"] = {reference = enableForceBodyAim, exploit = 0, add = 0, multiply = 0},
                   ["Min. Damage"] = {reference = enableMinDamage, exploit = 0, add = 0, multiply = 0},
                   ["Menu Open"] = {reference = menuact, exploit = 0, add = 0, multiply = 0},
                   --["Название бинда"] = {reference = получение бинда, exploit = 0 (это не трогать), add = 0 (это не трогать), multiply = 0 (это не трогать)},
                   };
                   client.register_callback("paint", function()
                
                       --ui visible
                       local screen = screen_ind:get_value(1) or screen_ind:get_value(0)
                       
                       animation_type:set_visible(false)
                       auto_resize_width:set_visible(false)
                       keybinds_x:set_visible(false) keybinds_y:set_visible(false)
                       color_line:set_visible(false)
                       
                       
                       --keybinds
                        local function keybinds()
                           bkg_aplha = 100 -- вот тут ставь свою прзрачность [0 - 255]
                           if screen_ind:get_value(0) and screen_ind_style:get_value() == 0 then
                           if not engine.is_connected() and (not ui.is_visible() or not screen_ind:get_value(0)) then return end
                               
                                pos = {x = keybinds_x:get_value(), y = keybinds_y:get_value()}
                                alphak, keybinds = {}, {}
                                width, maxwidth = 25, 0;
                                height = 17;
                                bind_y = height + 4
                               
                               for i,v in pairs(bind) do
                                    exploits = ui.get_combo_box("rage_active_exploit"):get_value(); v.add = math.lerp(v.add, v.reference:is_active() and 255 or 0, 0.1); v.multiply = v.add > 4 and 1 or 0;
                                   if v.add > 4 then if v.exploit == 0 then table.insert(keybinds, i) end; if v.exploit ~= 0 and exploits == v.exploit then table.insert(keybinds, i) end; end;
                                   if v.exploit == 0 and v.reference:is_active() then table.insert(alphak, i) end; if v.exploit ~= 0 and exploits == v.exploit and v.reference:is_active() then table.insert(alphak, i) end;
                               end
                               if #alphak ~= 0 or ui.is_visible() then alpha[1] = math.lerp(alpha[1], 255, 0.1) end; if #alphak == 0 and not ui.is_visible() then alpha[1] = math.lerp(alpha[1], 0, 0.1) end		
                               for k,f in pairs(keybinds) do if renderer.get_text_size(verkey, 12, f .. "["..types[bind[f].reference:get_type() + 1].."]").x > maxwidth then maxwidth = renderer.get_text_size(verdana, 12, f .. "["..types[bind[f].reference:get_type() + 1].."]").x; end; end
                               if maxwidth == 0 then maxwidth = 50 end; width = width + maxwidth; if width < 130 then width = 130 end if animwidth == 0 then animwidth = width end; animwidth = math.lerp(animwidth, width, 0.1)
                               w = auto_resize_width:get_value() and (animation_type:get_value() == 0 and animwidth or width) or 150
                               for k,f in pairs(keybinds) do  
                                    local v = bind[f]; bind_y = bind_y + (animation_type:get_value() == 0 and 20 * (v.add / 255) or 20 * v.multiply); plus = bind_y - (animation_type:get_value() == 1 and 20 * (v.add / 255) or 20 * v.multiply);
                                    local background_alpha = (255*(v.add / 255) - (255 - bkg_aplha)) > 0 and (255*(v.add / 255) - (255 - bkg_aplha)) or (255*(v.add / 255) - (255 - bkg_aplha)) <= 0 and 0 -- вот это хитровыебаный механизм получения альфы
                                    local rect_filled = renderer.rect_filled(vec2_t.new(pos.x-5, pos.y+3 + plus-1), vec2_t.new(pos.x+34 + w, pos.y+12 + plus-4 + renderer.get_text_size(verdana, 12, "D").y + 2), color_t.new(18, 18, 18, background_alpha)) -- вот наш фон, тут меняй цвет (!прозрачность не трогать!)
                                    
                                    local text =  renderer.text(f, verkey1, vec2_t.new(pos.x -2 , pos.y + plus + 3), 16, color_t.new(0, 0, 0, 255 * (v.add / 255)))
                                    local text = renderer.text(f, verkey1, vec2_t.new(pos.x -3, pos.y + plus +4), 16, color_t.new(255, 255, 255, 255 * (v.add / 255)))
                                    local text = renderer.text(""..types[v.reference:get_type() + 1].."", verkey1, vec2_t.new(pos.x + w +11 - renderer.get_text_size(verkey1, 16, ""..types[v.reference:get_type() + 1].."").x +21, pos.y + plus + 3), 16, color_t.new(0, 0, 0, 255 * (v.add / 255)))
                                    local text = renderer.text(""..types[v.reference:get_type() + 1].."", verkey1, vec2_t.new(pos.x + w +12 - renderer.get_text_size(verkey1, 16, ""..types[v.reference:get_type() + 1].."").x +20, pos.y + plus +4), 16, color_t.new(255, 255, 255, 255 * (v.add / 255)))
                               end
                               if alpha[1] > 1 then
                                   
                                   
                               
                                   filledbox(pos.x-5, pos.y, w+39, height+5, (alpha[1] / 255))
                                   local rect_filled = renderer.rect_filled(vec2_t.new(pos.x-5, pos.y+22), vec2_t.new(pos.x+34 + w, pos.y+9 + renderer.get_text_size(verdana, 12, "D").y + 2), color_t.new(182, 163, 255, 255))
                                   local text = renderer.text("Active Binds", got, vec2_t.new(pos.x + (width /2) - (renderer.get_text_size(got, 19, "Active Binds").x /2) + 9, pos.y + 2), 19, color_t.new(0, 0, 0, 255 * (alpha[1] / 255)))
                                   local text = renderer.text("Active Binds", got, vec2_t.new(pos.x + (width /2) - (renderer.get_text_size(got, 19, "Active Binds").x /2)+10, pos.y +1), 19, color_t.new(255, 255, 255, 255 * (alpha[1] / 255)))
                                   drag(pos.x, pos.y, w, height + 2, keybinds_x, keybinds_y, item)
                                    my_texture = renderer.setup_texture("./csgo/cache/mercury/12.png")
                                   -- IMAGE
                                   local texture = renderer.texture(my_texture, vec2_t.new(pos.x + 21, pos.y + 21), vec2_t.new(pos.x -2, pos.y + 0.5), color_t.new(255, 255, 255, 255))
                               end
                               
                           end
                       end
                        keybinds();
                   end)
                   
                    
           --WATERMARK
     --WATERMARK
    
     local function render_arc( x, y, r1, r2, s, d, col )
        local i = s
        while i < s + d do
            i = i + 1
            
            local m_rad = i * math.pi / 180
            renderer.line( vec2_t.new( x + math.cos( m_rad ) * r1, y + math.sin( m_rad ) * r1 ), vec2_t.new( x + math.cos( m_rad ) * r2, y + math.sin( m_rad ) * r2 ), col )
        
        end
    end
    
    
    local wt_pos_x = ui.add_slider_int("Pos X", "positX1u23jh87qw1", 0, engine.get_screen_size().x, 10)
    local wt_pos_y = ui.add_slider_int("Pos Y", "positYsadisa7218b91lo21", 0, engine.get_screen_size().y, 5)
    local click_e = ui.add_key_bind("Click bind", "clickbinded22", 1, 2)
    wt_pos_y:set_visible(false) wt_pos_x:set_visible(false) click_e:set_visible(false)
    local wt_heihgt = 21 wt_clicked_once = true
    
    local screen = engine.get_screen_size() 
    local my_texturewat = renderer.setup_texture("./csgo/cache/mercury/1.png")
    
    function get_fps()
        frametime = globalvars.get_frame_time()
        local fps = math.floor(1000 / (frametime * 1000))
        if fps < 10 then fps = "  " .. tostring(fps)
        elseif fps < 100 then fps = " " .. tostring(fps)
        else fps = "" .. tostring(fps) end
        return fps
    end
    function get_time()
        local hours, minutes, seconds = client.get_system_time()
        if hours < 10 then hours = "0" .. tostring(hours) end
        if minutes < 10 then minutes = "0" .. tostring(minutes) end
        if seconds < 10 then seconds = "0" .. tostring(seconds) end
        return hours .. ":" .. minutes .. ":" .. seconds
    end
    function get_ping()
        local ping = math.floor(se.get_latency())
        if ping < 10 then ping = " " .. tostring(ping) end
        return ping
    end
    
    function get_username()
        local username = pl_login
        return username
    end
    
    
    function get_tickr()
        local tickr = 1.0 / globalvars.get_interval_per_tick()
        return tickr
    end
    
    function get_fl()
        return clientstate.get_choked_commands() < 10 and '  ' .. tostring(clientstate.get_choked_commands()) or ' ' .. tostring(clientstate.get_choked_commands())
    end
    
      --local npos, nposs = vec2_t.new(screen.x - 160, 17), vec2_t.new(screen.x - 159, 18) --отрисовка тега чита
      --renderer.text("NIXWARE", verdana, nposs, 13, color_t.new(0, 0, 0, 255))
      --renderer.text("NIXWARE", verdana, npos, 13, color_t.new(255, 255, 255, 255))
    if ui.get_key_bind("rage_active_exploit_bind"):is_active() and ui.get_combo_box("rage_active_exploit"):get_value() ~= 0 then
        wt_text = "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " · FPS: 111"
    else
        wt_text = "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " · FPS: 111 ·     "
    end
    wt_width = renderer.get_text_size(verdana123lolak, 13.5, wt_text).x + 35
    local function draw_watermark()
    
        if screen_ind:get_value(1) and screen_ind_style:get_value() == 0 then
                if not engine.is_connected() and (not ui.is_visible() or not screen_ind:get_value(1) or not screen_ind_style:get_value() == 0) then return end
            
            if ui.get_key_bind("rage_active_exploit_bind"):is_active() and ui.get_combo_box("rage_active_exploit"):get_value() ~= 0 then
                wt_text = "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " · FPS: 111"
                wt_width = math.max(renderer.get_text_size(verdana123lolak, 13.5, wt_text).x + 35, wt_width+math.min(-1,(renderer.get_text_size(verdana123lolak, 13.5, wt_text).x + 35-wt_width)*0.2))
            else
                wt_text = "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " · FPS: 111 ·     "
                wt_width = math.min(renderer.get_text_size(verdana123lolak, 13.5, wt_text).x + 35, wt_width+math.max(1, (renderer.get_text_size(verdana123lolak, 13.5, wt_text).x + 35-wt_width)*0.2))
            end
    
            if (wt_pos_x:get_value() + wt_width/2) > screen.x/2 then
    
            if ui.get_key_bind("rage_active_exploit_bind"):is_active() and ui.get_combo_box("rage_active_exploit"):get_value() ~= 0 then
                pos, pos2 = vec2_t.new(wt_pos_x:get_value()+renderer.get_text_size(verdana123lolak, 13.5, wt_text).x + 35-wt_width, wt_pos_y:get_value()), vec2_t.new(wt_pos_x:get_value() + renderer.get_text_size(verdana123lolak, 13.5, wt_text).x + 35, wt_pos_y:get_value() + 25)
                fpos = vec2_t.new(wt_pos_x:get_value() + 32+renderer.get_text_size(verdana123lolak, 13.5, wt_text).x + 35-wt_width, wt_pos_y:get_value() + 6) --корды отрисовки текста
                fpos1, fpos2 = vec2_t.new(wt_pos_x:get_value()+renderer.get_text_size(verdana123lolak, 13.5, wt_text).x + 35-wt_width, wt_pos_y:get_value() + 25 + 1), vec2_t.new(wt_pos_x:get_value() + renderer.get_text_size(verdana123lolak, 13.5, wt_text).x + 35, wt_pos_y:get_value() + 25) -- отрисовка разно цеветной линии
            else
                pos, pos2 = vec2_t.new(wt_pos_x:get_value() - renderer.get_text_size(verdana123lolak, 13.5, " ·     ").x+renderer.get_text_size(verdana123lolak, 13.5, wt_text).x + 35-wt_width, wt_pos_y:get_value()), vec2_t.new(wt_pos_x:get_value() + renderer.get_text_size(verdana123lolak, 13.5, wt_text).x + 35 - renderer.get_text_size(verdana123lolak, 13.5, " ·     ").x, wt_pos_y:get_value() + 25)
                fpos = vec2_t.new(wt_pos_x:get_value() + 32 - renderer.get_text_size(verdana123lolak, 13.5, " ·     ").x+renderer.get_text_size(verdana123lolak, 13.5, wt_text).x + 35-wt_width, wt_pos_y:get_value() + 6) --корды отрисовки текста
                fpos1, fpos2 = vec2_t.new(wt_pos_x:get_value()+renderer.get_text_size(verdana123lolak, 13.5, wt_text).x + 35-wt_width - renderer.get_text_size(verdana123lolak, 13.5, " ·     ").x, wt_pos_y:get_value() + 25 + 1), vec2_t.new(wt_pos_x:get_value() + renderer.get_text_size(verdana123lolak, 13.5, wt_text).x + 35 - renderer.get_text_size(verdana123lolak, 13.5, " ·     ").x, wt_pos_y:get_value() + 25)
            end
    
            local rect_filled = renderer.rect_filled(pos, pos2, color_t.new(18, 18, 18, 255))
            local rect_filled_fade = renderer.rect_filled_fade(fpos1, fpos2, color_t.new(182, 163, 255, 255), color_t.new(182, 163, 255, 255), color_t.new(182, 163, 255, 255), color_t.new(182, 163, 255, 255))
            if ui.get_key_bind("rage_active_exploit_bind"):is_active() and ui.get_combo_box("rage_active_exploit"):get_value() ~= 0 then
                renderer.text("mercury.lua · " .. get_username() .. " · " .. get_time() ..  " ·  " .. get_ping() .. " ping · " .. get_fps() .. " fps", verdana123lolak, fpos, 13.5, color_t.new(255, 255, 255, 255))
                renderer.texture(my_texturewat, vec2_t.new(wt_pos_x:get_value() + 1+renderer.get_text_size(verdana123lolak, 13.5, wt_text).x + 35-wt_width, wt_pos_y:get_value()), vec2_t.new(wt_pos_x:get_value() + 28+renderer.get_text_size(verdana123lolak, 13.5, wt_text).x + 35-wt_width, wt_pos_y:get_value() + 25), color_t.new(255, 255, 255, 255))
            else
                renderer.text("mercury.lua · " .. get_username() .. " · " .. get_time() ..  " ·  " .. get_ping() .. " ping · " .. get_fps() .. " fps" .. " ·     ", verdana123lolak, fpos, 13.5, color_t.new(255, 255, 255, 255))
                renderer.texture(my_texturewat, vec2_t.new(wt_pos_x:get_value() + 1 - renderer.get_text_size(verdana123lolak, 13.5, " ·     ").x+renderer.get_text_size(verdana123lolak, 13.5, wt_text).x + 35-wt_width, wt_pos_y:get_value()), vec2_t.new(wt_pos_x:get_value()+renderer.get_text_size(verdana123lolak, 13.5, wt_text).x + 35-wt_width + 28 - renderer.get_text_size(verdana123lolak, 13.5, " ·     ").x, wt_pos_y:get_value() + 25), color_t.new(255, 255, 255, 255))
            end
            --local texture = renderer.texture(my_texturewat, vec2_t.new(wt_pos_x:get_value() + 1 - renderer.get_text_size(verdana123lolak, 13.5, " ·     ").x, wt_pos_y:get_value()), vec2_t.new(wt_pos_x:get_value() + 28 - renderer.get_text_size(verdana123lolak, 13.5, " ·     ").x, wt_pos_y:get_value() + 25), color_t.new(255, 255, 255, 255))
            if not ui.get_key_bind("rage_active_exploit_bind"):is_active() or ui.get_combo_box("rage_active_exploit"):get_value() == 0 then
                --render_arc(wt_pos_x:get_value() + 32 + renderer.get_text_size(verdana123lolak, 13.5, "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " · FPS: 111 ·  ").x, wt_pos_y:get_value() + 6 + math.floor(renderer.get_text_size(verdana123lolak, 13.5, "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " ·   ").y/2), 7, 2, 32, 360, color_t.new(0, 0, 0, 255)) 
                --раскомментить (убрать "--") строчку выше если хочешь добавить чёрную обводку ака фон, как по мне она лишняя
                render_arc(wt_pos_x:get_value() + 32 + renderer.get_text_size(verdana123lolak, 13.5, "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " · FPS: 111 ·  ").x - renderer.get_text_size(verdana123lolak, 13.5, " ·     ").x, wt_pos_y:get_value() + 6 + math.floor(renderer.get_text_size(verdana123lolak, 13.5, "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " ·   ").y/2), 6, 3, 32, 360 * (clientstate.get_choked_commands() / 14), color_t.new(255, 255, 255, 255)) -- тут менять цвет круга
            end
    
            --DRAG
            wt_curs = renderer.get_cursor_pos()
            if click_e:is_active() and wt_clicked_once then
                wt_clicked_once = false
                if wt_curs.x >= wt_pos_x:get_value() - renderer.get_text_size(verdana123lolak, 13.5, " ·     ").x and wt_curs.x <= wt_pos_x:get_value() + wt_width - renderer.get_text_size(verdana123lolak, 13.5, " ·     ").x and wt_curs.y >= wt_pos_y:get_value() and wt_curs.y <= wt_pos_y:get_value() + 25 then
                    wt_a = wt_curs.x - wt_pos_x:get_value()
                    wt_b = wt_curs.y - wt_pos_y:get_value()
                    wt_isdrag = true
                else
                    wt_isdrag = false
                    return
                end
            end
            if client.is_key_pressed(1) and ui.is_visible() and wt_isdrag then
                wt_pos_x:set_value(wt_curs.x - wt_a)
                wt_pos_y:set_value(wt_curs.y - wt_b)
            end
            if not client.is_key_pressed(1) then wt_clicked_once = true end
            --DRAG
    
            else
    
                if ui.get_key_bind("rage_active_exploit_bind"):is_active() and ui.get_combo_box("rage_active_exploit"):get_value() ~= 0 then
                    pos, pos2 = vec2_t.new(wt_pos_x:get_value(), wt_pos_y:get_value()), vec2_t.new(wt_pos_x:get_value() + wt_width, wt_pos_y:get_value() + 25)
                    fpos = vec2_t.new(wt_pos_x:get_value() + 32, wt_pos_y:get_value() + 6) --корды отрисовки текста
                    fpos1, fpos2 = vec2_t.new(wt_pos_x:get_value(), wt_pos_y:get_value() + 25 + 1), vec2_t.new(wt_pos_x:get_value() + wt_width, wt_pos_y:get_value() + 25) -- отрисовка разно цеветной линии
                else
                    pos, pos2 = vec2_t.new(wt_pos_x:get_value(), wt_pos_y:get_value()), vec2_t.new(wt_pos_x:get_value() + wt_width, wt_pos_y:get_value() + 25)
                    fpos = vec2_t.new(wt_pos_x:get_value() + 32, wt_pos_y:get_value() + 6) --корды отрисовки текста
                    fpos1, fpos2 = vec2_t.new(wt_pos_x:get_value(), wt_pos_y:get_value() + 25 + 1), vec2_t.new(wt_pos_x:get_value() + wt_width, wt_pos_y:get_value() + 25)
                end
        
                local rect_filled = renderer.rect_filled(pos, pos2, color_t.new(18, 18, 18, 255))
                local rect_filled_fade = renderer.rect_filled_fade(fpos1, fpos2, color_t.new(182, 163, 255, 255), color_t.new(182, 163, 255, 255), color_t.new(182, 163, 255, 255), color_t.new(182, 163, 255, 255))
                if ui.get_key_bind("rage_active_exploit_bind"):is_active() and ui.get_combo_box("rage_active_exploit"):get_value() ~= 0 then
                    renderer.text("mercury.lua · " .. get_username() .. " · " .. get_time() ..  " ·  " .. get_ping() .. " ping · " .. get_fps() .. " fps", verdana123lolak, fpos, 13.5, color_t.new(255, 255, 255, 255))
                    renderer.texture(my_texturewat, vec2_t.new(wt_pos_x:get_value() + 1, wt_pos_y:get_value()), vec2_t.new(wt_pos_x:get_value() + 28, wt_pos_y:get_value() + 25), color_t.new(255, 255, 255, 255))
                else
                    renderer.text("mercury.lua · " .. get_username() .. " · " .. get_time() ..  " ·  " .. get_ping() .. " ping · " .. get_fps() .. " fps" .. " ·     ", verdana123lolak, fpos, 13.5, color_t.new(255, 255, 255, 255))
                    renderer.texture(my_texturewat, vec2_t.new(wt_pos_x:get_value() + 1, wt_pos_y:get_value()), vec2_t.new(wt_pos_x:get_value() + 28, wt_pos_y:get_value() + 25), color_t.new(255, 255, 255, 255))
                end
                --local texture = renderer.texture(my_texturewat, vec2_t.new(wt_pos_x:get_value() + 1, wt_pos_y:get_value()), vec2_t.new(wt_pos_x:get_value() + 28, wt_pos_y:get_value() + 25), color_t.new(255, 255, 255, 255))
                if not ui.get_key_bind("rage_active_exploit_bind"):is_active() or ui.get_combo_box("rage_active_exploit"):get_value() == 0 then
                    --render_arc(wt_pos_x:get_value() + 32 + renderer.get_text_size(verdana123lolak, 13.5, "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " · FPS: 111 ·  ").x, wt_pos_y:get_value() + 6 + math.floor(renderer.get_text_size(verdana123lolak, 13.5, "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " ·   ").y/2), 7, 2, 32, 360, color_t.new(0, 0, 0, 255)) 
                    --раскомментить (убрать "--") строчку выше если хочешь добавить чёрную обводку ака фон, как по мне она лишняя
                    render_arc(wt_pos_x:get_value() + 32 + renderer.get_text_size(verdana123lolak, 13.5, "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " · FPS: 111 ·  ").x, wt_pos_y:get_value() + 6 + math.floor(renderer.get_text_size(verdana123lolak, 13.5, "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " ·   ").y/2), 6, 3, 32, 360 * (clientstate.get_choked_commands() / 14), color_t.new(255, 255, 255, 255)) -- тут менять цвет круга
                end
        
                --DRAG
                wt_curs = renderer.get_cursor_pos()
                if click_e:is_active() and wt_clicked_once then
                    wt_clicked_once = false
                    if wt_curs.x >= wt_pos_x:get_value() and wt_curs.x <= wt_pos_x:get_value() + wt_width and wt_curs.y >= wt_pos_y:get_value() and wt_curs.y <= wt_pos_y:get_value() + 25 then
                        wt_a = wt_curs.x - wt_pos_x:get_value()
                        wt_b = wt_curs.y - wt_pos_y:get_value()
                        wt_isdrag = true
                    else
                        wt_isdrag = false
                        return
                    end
                end
                if client.is_key_pressed(1) and ui.is_visible() and wt_isdrag then
                    wt_pos_x:set_value(wt_curs.x - wt_a)
                    wt_pos_y:set_value(wt_curs.y - wt_b)
                end
                if not client.is_key_pressed(1) then wt_clicked_once = true end
                --DRAG
    
            end
    
        end
    
    end
    client.register_callback("paint", draw_watermark)   
    --watermark2
    --WATERMARK
    
    local function render_arc( x, y, r1, r2, s, d, col )
        local i = s
        
        while i < s + d do
            i = i + 1
            
            local m_rad = i * math.pi / 180
            renderer.line( vec2_t.new( x + math.cos( m_rad ) * r1, y + math.sin( m_rad ) * r1 ), vec2_t.new( x + math.cos( m_rad ) * r2, y + math.sin( m_rad ) * r2 ), col )
        
        end
    end
    
    
     wt_pos_x1 = ui.add_slider_int("Poswerwerwe2234r X", "positX1u234234werwerwerwr23jh87qw1", 0, engine.get_screen_size().x, 10)
     wt_pos_y1 = ui.add_slider_int("Pos35234234345 Y", "posi3542342345tYsadisa7215b91lo21", 0, engine.get_screen_size().y, 5)
     click_e = ui.add_key_bind("Cli35r234234gk bind", "click234234bi345345nded22", 1, 2)
    wt_pos_y1:set_visible(false) wt_pos_x1:set_visible(false) click_e:set_visible(false)
     wt_heihgt = 21 wt_clicked_once = true
     screen = engine.get_screen_size()
     --my_texturerare1 = renderer.setup_texture("./csgo/cache/mercury/rare1.png")
    
    
    
    
    
      --local npos, nposs = vec2_t.new(screen.x - 160, 17), vec2_t.new(screen.x - 159, 15) --отрисовка тега чита
      --renderer.text("NIXWARE", verdana, nposs, 13, color_t.new(0, 0, 0, 255))
      --renderer.text("NIXWARE", verdana, npos, 13, color_t.new(255, 255, 255, 255))
    if ui.get_key_bind("rage_active_exploit_bind"):is_active() and ui.get_combo_box("rage_active_exploit"):get_value() ~= 0 then
        wt_text = "  " .. get_username() .. "   " .. get_time() ..  "   ping: " .. get_ping() .. "   fps: 111"
    else
        wt_text = "  " .. get_username() .. "   " .. get_time() ..  "     ping: " .. get_ping() .. "          fps: 111"
    end
    wt_width = renderer.get_text_size(verdana, 15, wt_text).x + 35
    
    local function draw_watermark1()
    
        if screen_ind:get_value(1) and screen_ind_style:get_value() == 1 then
    
            if not engine.is_connected() and (not ui.is_visible() or not screen_ind:get_value(1) or not 0) then return end
    
            if ui.get_key_bind("rage_active_exploit_bind"):is_active() and ui.get_combo_box("rage_active_exploit"):get_value() ~= 0 then
                wt_text = "  " .. get_username() .. "   " .. get_time() ..  "   ping: " .. get_ping() .. "   fps: 111"
                wt_width = math.max(renderer.get_text_size(verdana, 15, wt_text).x + 35, wt_width+math.min(-1,(renderer.get_text_size(verdana, 15, wt_text).x + 35-wt_width)*0.2))
            else
                wt_text = "  " .. get_username() .. "   " .. get_time() ..  "     ping: " .. get_ping() .. "          fps: 111"
                wt_width = math.min(renderer.get_text_size(verdana, 15, wt_text).x + 35, wt_width+math.max(1, (renderer.get_text_size(verdana, 15, wt_text).x + 35-wt_width)*0.2))
            end
    
             pos, pos2 = vec2_t.new(wt_pos_x1:get_value(), wt_pos_y1:get_value()), vec2_t.new(wt_pos_x1:get_value() + wt_width, wt_pos_y1:get_value() + 25)
             fpos = vec2_t.new(wt_pos_x1:get_value() + 32, wt_pos_y1:get_value() + 6) --корды отрисовки текста
             fpos1, fpos2 = vec2_t.new(wt_pos_x1:get_value(), wt_pos_y1:get_value() + 25 + 1), vec2_t.new(wt_pos_x1:get_value() + wt_width, wt_pos_y1:get_value() + 25) -- отрисовка разно цеветной линии
            
            --local rect_filled = renderer.rect_filled(pos, pos2, color_t.new(15, 15, 15, 200))
            --local rect_filled_fade = renderer.rect_filled_fade(fpos1, fpos2, color_t.new(152, 163, 255, 255), color_t.new(152, 163, 255, 255), color_t.new(152, 163, 255, 255), color_t.new(152, 163, 255, 255))
            if ui.get_key_bind("rage_active_exploit_bind"):is_active() and ui.get_combo_box("rage_active_exploit"):get_value() ~= 0 then
                renderer.text("  " .. get_username() .. "   " .. get_time() ..  "   ping: " .. get_ping() .. "   fps:" .. get_fps(), verdana, fpos, 15, color_t.new(255, 255, 255, 255))
            else
                renderer.text("  " .. get_username() .. "   " .. get_time() ..  "   ping: " .. get_ping() .. "          fps:" .. get_fps(), verdana, fpos, 15, color_t.new(255, 255, 255, 255))
            end
            renderer.rounded_rect(pos.x+30,pos.y,wt_width-30,21,color_t.new(0, 0, 0, 0),colorlineind:get_value(),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
            renderer.rounded_rect(pos.x-1+30,pos.y,wt_width-30,21,color_t.new(0, 0, 0, 0),colorlineind:get_value(),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
            renderer.rounded_rect(pos.x-1+30,pos.y+1,wt_width-30,21,color_t.new(0, 0, 0, 0),colorlineind:get_value(),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
            renderer.rounded_rect(pos.x+30,pos.y+1,wt_width-30,21,color_t.new(0, 0, 0, 0),colorlineind:get_value(),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
            --local texture = renderer.texture(my_texturerare1, vec2_t.new(wt_pos_x1:get_value() + 10 + wt_width, wt_pos_y1:get_value()-3), vec2_t.new(wt_pos_x1:get_value() + 10, wt_pos_y1:get_value()+12 + 25), colorlineind:get_value())
            if not ui.get_key_bind("rage_active_exploit_bind"):is_active() or ui.get_combo_box("rage_active_exploit"):get_value() == 0 then
                render_arc(wt_pos_x1:get_value() + 32 + renderer.get_text_size(verdana, 15, "  " .. get_username() .. "   " .. get_time() ..  "   ping: " .. get_ping() .. "     ").x, wt_pos_y1:get_value() + 6 + math.floor(renderer.get_text_size(verdana, 15, "  " .. get_username() .. "   " .. get_time() ..  "   ping: " .. get_ping() .. "     ").y/2), 7, 2, 32, 360, color_t.new(0, 0, 0, 255)) 
                --раскомментить (убрать "--") строчку выше если хочешь добавить чёрную обводку ака фон, как по мне она лишняя
                render_arc(wt_pos_x1:get_value() + 32 + renderer.get_text_size(verdana, 15, "  " .. get_username() .. "   " .. get_time() ..  "   ping: " .. get_ping() .. "     ").x, wt_pos_y1:get_value() + 6 + math.floor(renderer.get_text_size(verdana, 15, "  " .. get_username() .. "   " .. get_time() ..  "   ping: " .. get_ping() .. "     ").y/2), 6, 3, 32, 360 * (clientstate.get_choked_commands() / 14), color_t.new(255, 255, 255, 255)) -- тут менять цвет круга
            end
    
            --DRAG
            wt_curs = renderer.get_cursor_pos()
            if click_e:is_active() and wt_clicked_once then
                wt_clicked_once = false
                if wt_curs.x >= wt_pos_x1:get_value() and wt_curs.x <= wt_pos_x1:get_value() + wt_width and wt_curs.y >= wt_pos_y1:get_value() and wt_curs.y <= wt_pos_y1:get_value() + 25 then
                    wt_a = wt_curs.x - wt_pos_x1:get_value()
                    wt_b = wt_curs.y - wt_pos_y1:get_value()
                    wt_isdrag = true
                else
                    wt_isdrag = false
                    return
                end
            end
            if client.is_key_pressed(1) and ui.is_visible() and wt_isdrag then
                wt_pos_x1:set_value(wt_curs.x - wt_a)
                wt_pos_y1:set_value(wt_curs.y - wt_b)
            end
            if not client.is_key_pressed(1) then wt_clicked_once = true end
            --DRAG
    
        end
    end
    client.register_callback("paint", draw_watermark1)
    
    --rounded rect func()
    renderer.rounded_rect = function(wt_pos_x4, wt_pos_y4, wt_pos_width, wt_pos_height, main_color73, up_color73, bot_color73)
        local points123 = { vec2_t.new(wt_pos_x4, wt_pos_y4+4), vec2_t.new(wt_pos_x4+1, wt_pos_y4+3), vec2_t.new(wt_pos_x4+1, wt_pos_y4+2), vec2_t.new(wt_pos_x4+2, wt_pos_y4+1), vec2_t.new(wt_pos_x4+3, wt_pos_y4+1), vec2_t.new(wt_pos_x4+4, wt_pos_y4), vec2_t.new(wt_pos_x4+wt_pos_width-4, wt_pos_y4), vec2_t.new(wt_pos_x4+wt_pos_width-3, wt_pos_y4+1), vec2_t.new(wt_pos_x4+wt_pos_width-2, wt_pos_y4+1), vec2_t.new(wt_pos_x4+wt_pos_width-1, wt_pos_y4+2), vec2_t.new(wt_pos_x4+wt_pos_width-1, wt_pos_y4+3), vec2_t.new(wt_pos_x4+wt_pos_width, wt_pos_y4+4), vec2_t.new(wt_pos_x4+wt_pos_width, wt_pos_y4+wt_pos_height-4), vec2_t.new(wt_pos_x4+wt_pos_width-1, wt_pos_y4+wt_pos_height-3), vec2_t.new(wt_pos_x4+wt_pos_width-1, wt_pos_y4+wt_pos_height-2), vec2_t.new(wt_pos_x4+wt_pos_width-2, wt_pos_y4+wt_pos_height-1), vec2_t.new(wt_pos_x4+wt_pos_width-3, wt_pos_y4+wt_pos_height-1), vec2_t.new(wt_pos_x4+wt_pos_width-4, wt_pos_y4+wt_pos_height), vec2_t.new(wt_pos_x4+4, wt_pos_y4+wt_pos_height), vec2_t.new(wt_pos_x4+3, wt_pos_y4+wt_pos_height-1), vec2_t.new(wt_pos_x4+2, wt_pos_y4+wt_pos_height-1), vec2_t.new(wt_pos_x4+1, wt_pos_y4+wt_pos_height-2), vec2_t.new(wt_pos_x4+1, wt_pos_y4+wt_pos_height-3), vec2_t.new(wt_pos_x4, wt_pos_y4+wt_pos_height-4) }
        renderer.filled_polygon(points123, main_color73)
        renderer.line(vec2_t.new(wt_pos_x4+1, wt_pos_y4+4), vec2_t.new(wt_pos_x4+1, wt_pos_y4+3), up_color73)
        renderer.line(vec2_t.new(wt_pos_x4+1, wt_pos_y4+3), vec2_t.new(wt_pos_x4+1, wt_pos_y4+2), up_color73)
        renderer.line(vec2_t.new(wt_pos_x4+1, wt_pos_y4+2), vec2_t.new(wt_pos_x4+2, wt_pos_y4+1), up_color73)
        renderer.line(vec2_t.new(wt_pos_x4+2, wt_pos_y4+1), vec2_t.new(wt_pos_x4+3, wt_pos_y4+1), up_color73)
        renderer.line(vec2_t.new(wt_pos_x4+3, wt_pos_y4+1), vec2_t.new(wt_pos_x4+4, wt_pos_y4), up_color73)
        renderer.line(vec2_t.new(wt_pos_x4+4, wt_pos_y4), vec2_t.new(wt_pos_x4+wt_pos_width-4, wt_pos_y4), up_color73)
        renderer.line(vec2_t.new(wt_pos_x4+wt_pos_width-4, wt_pos_y4), vec2_t.new(wt_pos_x4+wt_pos_width-3, wt_pos_y4+1), up_color73)
        renderer.line(vec2_t.new(wt_pos_x4+wt_pos_width-3, wt_pos_y4+1), vec2_t.new(wt_pos_x4+wt_pos_width-2, wt_pos_y4+1), up_color73)
        renderer.line(vec2_t.new(wt_pos_x4+wt_pos_width-2, wt_pos_y4+1), vec2_t.new(wt_pos_x4+wt_pos_width-1, wt_pos_y4+2), up_color73)
        renderer.line(vec2_t.new(wt_pos_x4+wt_pos_width-1, wt_pos_y4+2), vec2_t.new(wt_pos_x4+wt_pos_width-1, wt_pos_y4+3), up_color73)
        renderer.line(vec2_t.new(wt_pos_x4+wt_pos_width-1, wt_pos_y4+3), vec2_t.new(wt_pos_x4+wt_pos_width, wt_pos_y4+4), up_color73)
        renderer.line(vec2_t.new(wt_pos_x4+wt_pos_width, wt_pos_y4+wt_pos_height-4), vec2_t.new(wt_pos_x4+wt_pos_width-1, wt_pos_y4+wt_pos_height-3), bot_color73)
        renderer.line(vec2_t.new(wt_pos_x4+wt_pos_width-1, wt_pos_y4+wt_pos_height-3), vec2_t.new(wt_pos_x4+wt_pos_width-1, wt_pos_y4+wt_pos_height-2), bot_color73)
        renderer.line(vec2_t.new(wt_pos_x4+wt_pos_width-1, wt_pos_y4+wt_pos_height-2), vec2_t.new(wt_pos_x4+wt_pos_width-2, wt_pos_y4+wt_pos_height-1), bot_color73)
        renderer.line(vec2_t.new(wt_pos_x4+wt_pos_width-2, wt_pos_y4+wt_pos_height-1), vec2_t.new(wt_pos_x4+wt_pos_width-3, wt_pos_y4+wt_pos_height-1), bot_color73)
        renderer.line(vec2_t.new(wt_pos_x4+wt_pos_width-3, wt_pos_y4+wt_pos_height-1), vec2_t.new(wt_pos_x4+wt_pos_width-4, wt_pos_y4+wt_pos_height), bot_color73)
        renderer.line(vec2_t.new(wt_pos_x4+wt_pos_width-4, wt_pos_y4+wt_pos_height), vec2_t.new(wt_pos_x4+4, wt_pos_y4+wt_pos_height), bot_color73)
        renderer.line(vec2_t.new(wt_pos_x4+4, wt_pos_y4+wt_pos_height), vec2_t.new(wt_pos_x4+3, wt_pos_y4+wt_pos_height-1), bot_color73)
        renderer.line(vec2_t.new(wt_pos_x4+3, wt_pos_y4+wt_pos_height-1), vec2_t.new(wt_pos_x4+2, wt_pos_y4+wt_pos_height-1), bot_color73)
        renderer.line(vec2_t.new(wt_pos_x4+2, wt_pos_y4+wt_pos_height-1), vec2_t.new(wt_pos_x4+1, wt_pos_y4+wt_pos_height-2), bot_color73)
        renderer.line(vec2_t.new(wt_pos_x4+1, wt_pos_y4+wt_pos_height-2), vec2_t.new(wt_pos_x4+1, wt_pos_y4+wt_pos_height-3), bot_color73)
        renderer.line(vec2_t.new(wt_pos_x4+1, wt_pos_y4+wt_pos_height-3), vec2_t.new(wt_pos_x4, wt_pos_y4+wt_pos_height-4), bot_color73)
        renderer.rect_filled_fade(vec2_t.new(wt_pos_x4+wt_pos_width, wt_pos_y4+4), vec2_t.new(wt_pos_x4+wt_pos_width+1, wt_pos_y4+wt_pos_height-4), up_color73, up_color73, bot_color73, bot_color73)
        renderer.rect_filled_fade(vec2_t.new(wt_pos_x4, wt_pos_y4+4), vec2_t.new(wt_pos_x4+1, wt_pos_y4+wt_pos_height-4), up_color73, up_color73, bot_color73, bot_color73)
    end
    --
    
    --watermark3
    wtsolus_plpos,shifting_alpha,wt2_width = wt_pos_x:get_value(), ui.get_key_bind("rage_active_exploit_bind"):is_active() and ui.get_combo_box("rage_active_exploit"):get_value() ~= 0 and 255 or 0, renderer.get_text_size(verdana_trsp, 13.5, '  FL: 14  ').x
    if ui.get_key_bind("rage_active_exploit_bind"):is_active() and ui.get_combo_box("rage_active_exploit"):get_value() ~= 0 then
        wt_text = "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " · FPS: 111"
    else
        wt_text = "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " · FPS: 111 ·     "
    end
    wt_width = renderer.get_text_size(verdana_trsp, 13.5, wt_text).x + 10
    local function draw_watermark2()
    
        if screen_ind:get_value(1) and screen_ind_style:get_value() == 2 then
            if not engine.is_connected() and (not ui.is_visible() or not screen_ind:get_value(1) or not screen_ind_style:get_value() == 2) then return end
    
            local twtext = "  FAKE (" .. ui.get_slider_int("antihit_antiaim_desync_length"):get_value() .. "°)  "
            local twtext_len = renderer.get_text_size(verdana_trsp, 13.5, twtext).x
    
            if (wt_pos_x:get_value() + wt_width/2) > screen.x/2 then
    
                if ui.get_key_bind("rage_active_exploit_bind"):is_active() and ui.get_combo_box("rage_active_exploit"):get_value() ~= 0 then
                    wt_text = "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " · FPS: 111"
                    wt_width = math.max(renderer.get_text_size(verdana_trsp, 13.5, wt_text).x + 10, wt_width+math.min(-1,(renderer.get_text_size(verdana_trsp, 13.5, wt_text).x + 10-wt_width)*0.2))
                else
                    wt_text = "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " · FPS: 111 ·     "
                    wt_width = math.min(renderer.get_text_size(verdana_trsp, 13.5, wt_text).x + 10, wt_width+math.max(1, (renderer.get_text_size(verdana_trsp, 13.5, wt_text).x + 10-wt_width)*0.2))
                end
                if ui.get_key_bind("rage_active_exploit_bind"):is_active() and ui.get_combo_box("rage_active_exploit"):get_value() ~= 0 then
                    shifting_alpha = math.min(shifting_alpha+20,255)
                    wtsolus_plpos = wtsolus_plpos < wt_width - renderer.get_text_size(verdana_trsp, 13.5, '  FL: 14 · SHIFTING  ').x and math.min(wtsolus_plpos+math.max(1, (wt_width - renderer.get_text_size(verdana_trsp, 13.5, '  FL: 14 · SHIFTING  ').x-wtsolus_plpos)*0.2), wt_width - renderer.get_text_size(verdana_trsp, 13.5, '  FL: 14 · SHIFTING  ').x) or wtsolus_plpos > wt_width - renderer.get_text_size(verdana_trsp, 13.5, '  FL: 14 · SHIFTING  ').x and math.max( wtsolus_plpos - math.max(1, (wtsolus_plpos-wt_width + renderer.get_text_size(verdana_trsp, 13.5, '  FL: 14 · SHIFTING  ').x)*0.2), wt_width - renderer.get_text_size(verdana_trsp, 13.5, '  FL: 14 · SHIFTING  ').x ) or wtsolus_plpos
                    renderer.rounded_rect(wt_pos_x:get_value()+wtsolus_plpos,wt_pos_y:get_value()+wt_heihgt+5+2,renderer.get_text_size(verdana_trsp, 13.5, wt_text).x + 10-wtsolus_plpos,wt_heihgt,inner_col:get_value(),upper_col:get_value(),down_col:get_value())
                    renderer.rounded_rect(wt_pos_x:get_value()+wtsolus_plpos-8-twtext_len,wt_pos_y:get_value()+wt_heihgt+5+2,twtext_len,wt_heihgt,inner_col:get_value(),upper_col:get_value(),down_col:get_value())
                    renderer.text('  FL:' .. get_fl(), verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wtsolus_plpos+1, wt_pos_y:get_value() + 11+1 + wt_heihgt), 13.5, color_t.new(0, 0, 0, 255))
                    renderer.text(' · SHIFTING  ', verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wt_width - renderer.get_text_size(verdana_trsp, 13.5, ' · SHIFTING  ').x+1, wt_pos_y:get_value() + 11+1 + wt_heihgt), 13.5, color_t.new(0, 0, 0, shifting_alpha))
                    renderer.text('  FL:' .. get_fl(), verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wtsolus_plpos, wt_pos_y:get_value() + 11 + wt_heihgt), 13.5, color_t.new(255, 255, 255, 255))
                    renderer.text(' · SHIFTING  ', verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wt_width - renderer.get_text_size(verdana_trsp, 13.5, ' · SHIFTING  ').x, wt_pos_y:get_value() + 11 + wt_heihgt), 13.5, color_t.new(255, 255, 255, shifting_alpha))
                    renderer.text(twtext, verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wtsolus_plpos+1-8-twtext_len, wt_pos_y:get_value() + 11+1 + wt_heihgt), 13.5, color_t.new(0, 0, 0, 255))
                    renderer.text(twtext, verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wtsolus_plpos-8-twtext_len, wt_pos_y:get_value() + 11 + wt_heihgt), 13.5, color_t.new(255, 255, 255, 255))
    
              
                    renderer.rounded_rect(wt_pos_x:get_value()+renderer.get_text_size(verdana_trsp, 13.5, wt_text).x + 10-wt_width,wt_pos_y:get_value()+2,wt_width,wt_heihgt,inner_col:get_value(),upper_col:get_value(),down_col:get_value())
                    pos, pos2 = vec2_t.new(wt_pos_x:get_value(), wt_pos_y:get_value()), vec2_t.new(wt_pos_x:get_value() + wt_width, wt_pos_y:get_value() + wt_heihgt)
                    fpos = vec2_t.new(wt_pos_x:get_value() +renderer.get_text_size(verdana_trsp, 13.5, wt_text).x + 20-wt_width, wt_pos_y:get_value() + 6) --корды отрисовки текста
                    fpos1, fpos2 = vec2_t.new(wt_pos_x:get_value(), wt_pos_y:get_value() + wt_heihgt + 1), vec2_t.new(wt_pos_x:get_value() + wt_width, wt_pos_y:get_value() + wt_heihgt) -- отрисовка разно цеветной линии
                else
                    shifting_alpha = math.max(shifting_alpha-25,0)
                    wtsolus_plpos =(wt_pos_x:get_value() + wt_width/2) > screen.x/2 and math.min(wtsolus_plpos+math.max(1, (wt_width - renderer.get_text_size(verdana_trsp, 13.5, '  FL: 14  ').x-renderer.get_text_size(verdana_trsp, 13.5, " ·     ").x-wtsolus_plpos)*0.2), wt_width -renderer.get_text_size(verdana_trsp, 13.5, '  FL: 14  ').x-renderer.get_text_size(verdana_trsp, 13.5, " ·     ").x) or math.max(wtsolus_plpos-wtsolus_plpos*0.2, 0) or wtsolus_plpos
                    renderer.rounded_rect(wt_pos_x:get_value()+wtsolus_plpos,wt_pos_y:get_value()+wt_heihgt+5+2,renderer.get_text_size(verdana_trsp, 13.5, wt_text).x + 10-wtsolus_plpos-renderer.get_text_size(verdana_trsp, 13.5, " ·     ").x,wt_heihgt,inner_col:get_value(),upper_col:get_value(),down_col:get_value())
                    renderer.rounded_rect(wt_pos_x:get_value()+wtsolus_plpos-8-twtext_len,wt_pos_y:get_value()+wt_heihgt+5+2,twtext_len,wt_heihgt,inner_col:get_value(),upper_col:get_value(),down_col:get_value())
                    renderer.text('  FL:' .. get_fl(), verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wtsolus_plpos+1, wt_pos_y:get_value() + 11+1 + wt_heihgt), 13.5, color_t.new(0, 0, 0, 255))
                    renderer.text('  FL:' .. get_fl(), verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wtsolus_plpos, wt_pos_y:get_value() + 11 + wt_heihgt), 13.5, color_t.new(255, 255, 255, 255))
                    renderer.text(' · SHIFTING  ', verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wt_width - renderer.get_text_size(verdana_trsp, 13.5, ' · SHIFTING  ').x+1-renderer.get_text_size(verdana_trsp, 13.5, " ·     ").x, wt_pos_y:get_value() + 11+1 + wt_heihgt), 13.5, color_t.new(0, 0, 0, shifting_alpha))
                    renderer.text(' · SHIFTING  ', verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wt_width - renderer.get_text_size(verdana_trsp, 13.5, ' · SHIFTING  ').x-renderer.get_text_size(verdana_trsp, 13.5, " ·     ").x, wt_pos_y:get_value() + 11 + wt_heihgt), 13.5, color_t.new(255, 255, 255, shifting_alpha))
                    renderer.text(twtext, verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wtsolus_plpos+1-8-twtext_len, wt_pos_y:get_value() + 11+1 + wt_heihgt), 13.5, color_t.new(0, 0, 0, 255))
                    renderer.text(twtext, verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wtsolus_plpos-8-twtext_len, wt_pos_y:get_value() + 11 + wt_heihgt), 13.5, color_t.new(255, 255, 255, 255))
    
    
                    renderer.rounded_rect(wt_pos_x:get_value()+renderer.get_text_size(verdana_trsp, 13.5, wt_text).x + 10-wt_width- renderer.get_text_size(verdana_trsp, 13.5, " ·     ").x,wt_pos_y:get_value()+2,wt_width,wt_heihgt,inner_col:get_value(),upper_col:get_value(),down_col:get_value())
                    pos, pos2 = vec2_t.new(wt_pos_x:get_value() - renderer.get_text_size(verdana_trsp, 13.5, " ·     ").x, wt_pos_y:get_value()), vec2_t.new(wt_pos_x:get_value() + wt_width - renderer.get_text_size(verdana_trsp, 13.5, " ·     ").x, wt_pos_y:get_value() + wt_heihgt)
                    fpos = vec2_t.new(wt_pos_x:get_value() +renderer.get_text_size(verdana_trsp, 13.5, wt_text).x + 20-wt_width - renderer.get_text_size(verdana_trsp, 13.5, " ·     ").x, wt_pos_y:get_value() + 6) --корды отрисовки текста
                    fpos1, fpos2 = vec2_t.new(wt_pos_x:get_value() - renderer.get_text_size(verdana_trsp, 13.5, " ·     ").x, wt_pos_y:get_value() + wt_heihgt + 1), vec2_t.new(wt_pos_x:get_value() + wt_width - renderer.get_text_size(verdana_trsp, 13.5, " ·     ").x, wt_pos_y:get_value() + wt_heihgt)
                end
                --local rect_filled = renderer.rect_filled(pos, pos2, color_t.new(18, 18, 18, 255))
                --local rect_filled_fade = renderer.rect_filled_fade(fpos1, fpos2, color_t.new(182, 163, 255, 255), color_t.new(182, 163, 255, 255), color_t.new(182, 163, 255, 255), color_t.new(182, 163, 255, 255))
                if ui.get_key_bind("rage_active_exploit_bind"):is_active() and ui.get_combo_box("rage_active_exploit"):get_value() ~= 0 then
                    renderer.text("mercury.lua · " .. get_username() .. " · " .. get_time() ..  " ·  " .. get_ping() .. " ping · " .. get_fps() .. " fps", verdana_trsp, vec2_t.new(fpos.x+1, fpos.y+1), 13.5, color_t.new(0, 0, 0, 255))
                    renderer.text("mercury.lua · " .. get_username() .. " · " .. get_time() ..  " ·  " .. get_ping() .. " ping · " .. get_fps() .. " fps", verdana_trsp, fpos, 13.5, color_t.new(255, 255, 255, 255))
                    --renderer.texture(my_texturewat, vec2_t.new(wt_pos_x:get_value() + 1, wt_pos_y:get_value()), vec2_t.new(wt_pos_x:get_value() + 28, wt_pos_y:get_value() + wt_heihgt), color_t.new(255, 255, 255, 255))
                else
                    renderer.text("mercury.lua · " .. get_username() .. " · " .. get_time() ..  " ·  " .. get_ping() .. " ping · " .. get_fps() .. " fps" .. " ·     ", verdana_trsp, vec2_t.new(fpos.x+1, fpos.y+1), 13.5, color_t.new(0, 0, 0, 255))
                    renderer.text("mercury.lua · " .. get_username() .. " · " .. get_time() ..  " ·  " .. get_ping() .. " ping · " .. get_fps() .. " fps" .. " ·     ", verdana_trsp, fpos, 13.5, color_t.new(255, 255, 255, 255))
                    --renderer.texture(my_texturewat, vec2_t.new(wt_pos_x:get_value() + 1 - renderer.get_text_size(verdana_trsp, 13.5, " ·     ").x, wt_pos_y:get_value()), vec2_t.new(wt_pos_x:get_value() + 28 - renderer.get_text_size(verdana_trsp, 13.5, " ·     ").x, wt_pos_y:get_value() + wt_heihgt), color_t.new(255, 255, 255, 255))
                end
                --local texture = renderer.texture(my_texturewat, vec2_t.new(wt_pos_x:get_value() + 1 - renderer.get_text_size(verdana_trsp, 13.5, " ·     ").x, wt_pos_y:get_value()), vec2_t.new(wt_pos_x:get_value() + 28 - renderer.get_text_size(verdana_trsp, 13.5, " ·     ").x, wt_pos_y:get_value() + wt_heihgt), color_t.new(255, 255, 255, 255))
                if not ui.get_key_bind("rage_active_exploit_bind"):is_active() or ui.get_combo_box("rage_active_exploit"):get_value() == 0 then
                    --render_arc(wt_pos_x:get_value() + 32 + renderer.get_text_size(verdana_trsp, 13.5, "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " · FPS: 111 ·  ").x, wt_pos_y:get_value() + 6 + math.floor(renderer.get_text_size(verdana_trsp, 13.5, "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " ·   ").y/2), 7, 2, 32, 360, color_t.new(0, 0, 0, 255)) 
                    --раскомментить (убрать "--") строчку выше если хочешь добавить чёрную обводку ака фон, как по мне она лишняя
                    render_arc(wt_pos_x:get_value() + 6 + renderer.get_text_size(verdana_trsp, 13.5, "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " · FPS: 111 ·  ").x - renderer.get_text_size(verdana_trsp, 13.5, " ·     ").x, wt_pos_y:get_value() + 7 + math.floor(renderer.get_text_size(verdana_trsp, 13.5, "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " ·   ").y/2), 6, 3, 32, 360 * (clientstate.get_choked_commands() / 14), color_t.new(0, 0, 0, 255))
                    render_arc(wt_pos_x:get_value() + 5 + renderer.get_text_size(verdana_trsp, 13.5, "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " · FPS: 111 ·  ").x - renderer.get_text_size(verdana_trsp, 13.5, " ·     ").x, wt_pos_y:get_value() + 6 + math.floor(renderer.get_text_size(verdana_trsp, 13.5, "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " ·   ").y/2), 6, 3, 32, 360 * (clientstate.get_choked_commands() / 14), color_t.new(255, 255, 255, 255)) -- тут менять цвет круга
                end
    
                --DRAG
                wt_curs = renderer.get_cursor_pos()
                if click_e:is_active() and wt_clicked_once then
                    wt_clicked_once = false
                    if wt_curs.x >= wt_pos_x:get_value() - renderer.get_text_size(verdana_trsp, 13.5, " ·     ").x and wt_curs.x <= wt_pos_x:get_value() + wt_width - renderer.get_text_size(verdana_trsp, 13.5, " ·     ").x and wt_curs.y >= wt_pos_y:get_value() and wt_curs.y <= wt_pos_y:get_value() + wt_heihgt then
                        wt_a = wt_curs.x - wt_pos_x:get_value()
                        wt_b = wt_curs.y - wt_pos_y:get_value()
                        wt_isdrag = true
                    else
                        wt_isdrag = false
                        return
                    end
                end
                if client.is_key_pressed(1) and ui.is_visible() and wt_isdrag then
                    wt_pos_x:set_value(wt_curs.x - wt_a)
                    wt_pos_y:set_value(wt_curs.y - wt_b)
                end
                if not client.is_key_pressed(1) then wt_clicked_once = true end
                --DRAG
    
            else
    
                if ui.get_key_bind("rage_active_exploit_bind"):is_active() and ui.get_combo_box("rage_active_exploit"):get_value() ~= 0 then
                    wt_text = "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " · FPS: 111"
                    wt_width = math.max(renderer.get_text_size(verdana_trsp, 13.5, wt_text).x + 10, wt_width+(renderer.get_text_size(verdana_trsp, 13.5, wt_text).x + 10-wt_width)*0.2)
                else
                    wt_text = "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " · FPS: 111 ·     "
                    wt_width = math.min(renderer.get_text_size(verdana_trsp, 13.5, wt_text).x + 10, wt_width+math.max(1, (renderer.get_text_size(verdana_trsp, 13.5, wt_text).x + 10-wt_width)*0.2))
                end
                if ui.get_key_bind("rage_active_exploit_bind"):is_active() and ui.get_combo_box("rage_active_exploit"):get_value() ~= 0 then
                    shifting_alpha = math.min(shifting_alpha+20,255)
                    wt2_width = math.min(renderer.get_text_size(verdana_trsp, 13.5, '  FL: 14 · SHIFTING  ').x,wt2_width+math.max(1,(renderer.get_text_size(verdana_trsp, 13.5, '  FL: 14 · SHIFTING  ').x-wt2_width)*0.2))
                    wtsolus_plpos =(wt_pos_x:get_value() + wt_width/2) > screen.x/2 and math.min(wtsolus_plpos+math.max(1, (wt_width - renderer.get_text_size(verdana_trsp, 13.5, '  FL: 14 · SHIFTING  ').x-wtsolus_plpos)*0.2), wt_width - renderer.get_text_size(verdana_trsp, 13.5, '  FL: 14 · SHIFTING  ').x) or math.max(wtsolus_plpos-wtsolus_plpos*0.2, 0) or wtsolus_plpos
                    renderer.rounded_rect(wt_pos_x:get_value()+wtsolus_plpos,wt_pos_y:get_value()+wt_heihgt+5+2,wt2_width,wt_heihgt,inner_col:get_value(),upper_col:get_value(),down_col:get_value())
                    renderer.rounded_rect(wt_pos_x:get_value()+wtsolus_plpos+8+wt2_width,wt_pos_y:get_value()+wt_heihgt+5+2,twtext_len,wt_heihgt,inner_col:get_value(),upper_col:get_value(),down_col:get_value())
                    renderer.text('  FL:' .. get_fl(), verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wtsolus_plpos+1, wt_pos_y:get_value() + 11+1 + wt_heihgt), 13.5, color_t.new(0, 0, 0, 255))
                    renderer.text(' · SHIFTING  ', verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wtsolus_plpos + wt2_width - renderer.get_text_size(verdana_trsp, 13.5, ' · SHIFTING  ').x+1, wt_pos_y:get_value() + 11+1 + wt_heihgt), 13.5, color_t.new(0, 0, 0, shifting_alpha))
                    renderer.text('  FL:' .. get_fl(), verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wtsolus_plpos, wt_pos_y:get_value() + 11 + wt_heihgt), 13.5, color_t.new(255, 255, 255, 255))
                    renderer.text(' · SHIFTING  ', verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wtsolus_plpos + wt2_width - renderer.get_text_size(verdana_trsp, 13.5, ' · SHIFTING  ').x, wt_pos_y:get_value() + 11 + wt_heihgt), 13.5, color_t.new(255, 255, 255, shifting_alpha))
                    renderer.text(twtext, verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wtsolus_plpos+1+8+wt2_width, wt_pos_y:get_value() + 11+1 + wt_heihgt), 13.5, color_t.new(0, 0, 0, 255))
                    renderer.text(twtext, verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wtsolus_plpos+8+wt2_width, wt_pos_y:get_value() + 11 + wt_heihgt), 13.5, color_t.new(255, 255, 255, 255))
    
    
                    pos, pos2 = vec2_t.new(wt_pos_x:get_value(), wt_pos_y:get_value()), vec2_t.new(wt_pos_x:get_value() + wt_width, wt_pos_y:get_value() + wt_heihgt)
                    fpos = vec2_t.new(wt_pos_x:get_value() + 10, wt_pos_y:get_value() + 6) --корды отрисовки текста
                    fpos1, fpos2 = vec2_t.new(wt_pos_x:get_value(), wt_pos_y:get_value() + wt_heihgt + 1), vec2_t.new(wt_pos_x:get_value() + wt_width, wt_pos_y:get_value() + wt_heihgt) -- отрисовка разно цеветной линии
                else
                    shifting_alpha = math.max(shifting_alpha-35,0)
                    wt2_width = math.max(renderer.get_text_size(verdana_trsp, 13.5, '  FL: 14  ').x,wt2_width-math.max(1,(wt2_width-renderer.get_text_size(verdana_trsp, 13.5, '  FL: 14  ').x)*0.2))
                    wtsolus_plpos =(wt_pos_x:get_value() + wt_width/2) > screen.x/2 and math.min(wtsolus_plpos+math.max(1, (wt_width - renderer.get_text_size(verdana_trsp, 13.5, '  FL: 14  ').x-wtsolus_plpos)*0.2), wt_width - renderer.get_text_size(verdana_trsp, 13.5, '  FL: 14  ').x) or math.max(wtsolus_plpos-wtsolus_plpos*0.2, 0) or wtsolus_plpos
                    renderer.rounded_rect(wt_pos_x:get_value()+wtsolus_plpos,wt_pos_y:get_value()+wt_heihgt+5+2,wt2_width,wt_heihgt,inner_col:get_value(),upper_col:get_value(),down_col:get_value())
                    renderer.rounded_rect(wt_pos_x:get_value()+wtsolus_plpos+8+wt2_width,wt_pos_y:get_value()+wt_heihgt+5+2,twtext_len,wt_heihgt,inner_col:get_value(),upper_col:get_value(),down_col:get_value())
                    renderer.text('  FL:' .. get_fl(), verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wtsolus_plpos+1, wt_pos_y:get_value() + 11+1 + wt_heihgt), 13.5, color_t.new(0, 0, 0, 255))
                    renderer.text('  FL:' .. get_fl(), verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wtsolus_plpos, wt_pos_y:get_value() + 11 + wt_heihgt), 13.5, color_t.new(255, 255, 255, 255))
                    renderer.text(' · SHIFTING  ', verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wtsolus_plpos + wt2_width - renderer.get_text_size(verdana_trsp, 13.5, ' · SHIFTING  ').x+1, wt_pos_y:get_value() + 11+1 + wt_heihgt), 13.5, color_t.new(0, 0, 0, shifting_alpha))
                    renderer.text(' · SHIFTING  ', verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wtsolus_plpos + wt2_width - renderer.get_text_size(verdana_trsp, 13.5, ' · SHIFTING  ').x, wt_pos_y:get_value() + 11 + wt_heihgt), 13.5, color_t.new(255, 255, 255, shifting_alpha))
                    renderer.text(twtext, verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wtsolus_plpos+1+8+wt2_width, wt_pos_y:get_value() + 11+1 + wt_heihgt), 13.5, color_t.new(0, 0, 0, 255))
                    renderer.text(twtext, verdana_trsp, vec2_t.new(wt_pos_x:get_value() + wtsolus_plpos+8+wt2_width, wt_pos_y:get_value() + 11 + wt_heihgt), 13.5, color_t.new(255, 255, 255, 255))
    
    
                    pos, pos2 = vec2_t.new(wt_pos_x:get_value(), wt_pos_y:get_value()), vec2_t.new(wt_pos_x:get_value() + wt_width, wt_pos_y:get_value() + wt_heihgt)
                    fpos = vec2_t.new(wt_pos_x:get_value() + 10, wt_pos_y:get_value() + 6) --корды отрисовки текста
                    fpos1, fpos2 = vec2_t.new(wt_pos_x:get_value(), wt_pos_y:get_value() + wt_heihgt + 1), vec2_t.new(wt_pos_x:get_value() + wt_width, wt_pos_y:get_value() + wt_heihgt)
                end
        
                renderer.rounded_rect(wt_pos_x:get_value(),wt_pos_y:get_value()+2,wt_width,wt_heihgt,inner_col:get_value(),upper_col:get_value(),down_col:get_value())
                --local rect_filled = renderer.rect_filled(pos, pos2, color_t.new(18, 18, 18, 255))
                --local rect_filled_fade = renderer.rect_filled_fade(fpos1, fpos2, color_t.new(182, 163, 255, 255), color_t.new(182, 163, 255, 255), color_t.new(182, 163, 255, 255), color_t.new(182, 163, 255, 255))
                if ui.get_key_bind("rage_active_exploit_bind"):is_active() and ui.get_combo_box("rage_active_exploit"):get_value() ~= 0 then
                    renderer.text("mercury.lua · " .. get_username() .. " · " .. get_time() ..  " ·  " .. get_ping() .. " ping · " .. get_fps() .. " fps", verdana_trsp, vec2_t.new(fpos.x+1, fpos.y+1), 13.5, color_t.new(0, 0, 0, 255))
                    renderer.text("mercury.lua · " .. get_username() .. " · " .. get_time() ..  " ·  " .. get_ping() .. " ping · " .. get_fps() .. " fps", verdana_trsp, fpos, 13.5, color_t.new(255, 255, 255, 255))
                    --renderer.texture(my_texturewat, vec2_t.new(wt_pos_x:get_value() + 1, wt_pos_y:get_value()), vec2_t.new(wt_pos_x:get_value() + 28, wt_pos_y:get_value() + wt_heihgt), color_t.new(255, 255, 255, 255))
                else
                    renderer.text("mercury.lua · " .. get_username() .. " · " .. get_time() ..  " ·  " .. get_ping() .. " ping · " .. get_fps() .. " fps" .. " · ", verdana_trsp, vec2_t.new(fpos.x+1, fpos.y+1), 13.5, color_t.new(0, 0, 0, 255))
                    renderer.text("mercury.lua · " .. get_username() .. " · " .. get_time() ..  " ·  " .. get_ping() .. " ping · " .. get_fps() .. " fps" .. " · ", verdana_trsp, fpos, 13.5, color_t.new(255, 255, 255, 255))
                    --renderer.texture(my_texturewat, vec2_t.new(wt_pos_x:get_value() + 1, wt_pos_y:get_value()), vec2_t.new(wt_pos_x:get_value() + 28, wt_pos_y:get_value() + wt_heihgt), color_t.new(255, 255, 255, 255))
                end
                --local texture = renderer.texture(my_texturewat, vec2_t.new(wt_pos_x:get_value() + 1, wt_pos_y:get_value()), vec2_t.new(wt_pos_x:get_value() + 28, wt_pos_y:get_value() + wt_heihgt), color_t.new(255, 255, 255, 255))
                if not ui.get_key_bind("rage_active_exploit_bind"):is_active() or ui.get_combo_box("rage_active_exploit"):get_value() == 0 then
                    --render_arc(wt_pos_x:get_value() + 32 + renderer.get_text_size(verdana_trsp, 13.5, "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " · FPS: 111 ·  ").x, wt_pos_y:get_value() + 6 + math.floor(renderer.get_text_size(verdana_trsp, 13.5, "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " ·   ").y/2), 7, 2, 32, 360, color_t.new(0, 0, 0, 255)) 
                    --раскомментить (убрать "--") строчку выше если хочешь добавить чёрную обводку ака фон, как по мне она лишняя
                    render_arc(wt_pos_x:get_value() + 6 + renderer.get_text_size(verdana_trsp, 13.5, "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " · FPS: 111 ·  ").x, wt_pos_y:get_value() + 7 + math.floor(renderer.get_text_size(verdana_trsp, 13.5, "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " ·   ").y/2), 6, 3, 32, 360 * (clientstate.get_choked_commands() / 14), color_t.new(0, 0, 0, 255))
                    render_arc(wt_pos_x:get_value() + 5 + renderer.get_text_size(verdana_trsp, 13.5, "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " · FPS: 111 ·  ").x, wt_pos_y:get_value() + 6 + math.floor(renderer.get_text_size(verdana_trsp, 13.5, "mercury.lua · " .. get_username() .. " · " .. get_time() ..  " · Ping: " .. get_ping() .. " ·   ").y/2), 6, 3, 32, 360 * (clientstate.get_choked_commands() / 14), color_t.new(255, 255, 255, 255)) -- тут менять цвет круга
                end
        
                --DRAG
                wt_curs = renderer.get_cursor_pos()
                if click_e:is_active() and wt_clicked_once then
                    wt_clicked_once = false
                    if wt_curs.x >= wt_pos_x:get_value() and wt_curs.x <= wt_pos_x:get_value() + wt_width and wt_curs.y >= wt_pos_y:get_value() and wt_curs.y <= wt_pos_y:get_value() + wt_heihgt then
                        wt_a = wt_curs.x - wt_pos_x:get_value()
                        wt_b = wt_curs.y - wt_pos_y:get_value()
                        wt_isdrag = true
                    else
                        wt_isdrag = false
                        return
                    end
                end
                if client.is_key_pressed(1) and ui.is_visible() and wt_isdrag then
                    wt_pos_x:set_value(wt_curs.x - wt_a)
                    wt_pos_y:set_value(wt_curs.y - wt_b)
                end
                if not client.is_key_pressed(1) then wt_clicked_once = true end
                --DRAG
    
            end
    
        end
    
    end
    client.register_callback("paint", draw_watermark2)   
  
    --solus keybinds
    local types = { "on", "hold", "toggled", "off" }
    
    local function hsv2rgb(h, s, v, a)
       local r, g, b
    
       local i = math.floor(h * 6);
       local f = h * 6 - i;
       local p = v * (1 - s);
       local q = v * (1 - f * s);
       local t = v * (1 - (1 - f) * s);
    
       i = i % 6
    
       if i == 0 then r, g, b = v, t, p
       elseif i == 1 then r, g, b = q, v, p
       elseif i == 2 then r, g, b = p, v, t
       elseif i == 3 then r, g, b = p, q, v
       elseif i == 4 then r, g, b = t, p, v
       elseif i == 5 then r, g, b = v, p, q
       end
    
       return color_t.new(r * 255, g * 255, b * 255, a * 255)
    end
    function math.lerp(a, b, t) return a + (b - a) * t end
    local function drag(x, y, width, height, xmenu, ymenu, item)
       local cursor = renderer.get_cursor_pos()
       if (cursor.x >= x) and (cursor.x <= x + width) and (cursor.y >= y) and (cursor.y <= y + height) then
           if client.is_key_pressed(1) and item[1] == 0 then
               item[1] = 1
               item[2] = x - cursor.x
               item[3] = y - cursor.y
           end
       end
       if not client.is_key_pressed(1) then item[1] = 0 end
       if item[1] == 1 and ui.is_visible() then
           xmenu:set_value(cursor.x + item[2])
           ymenu:set_value(cursor.y + item[3])
       end
    end
    local function filledbox(x, y, w, h, al)
       local rgb = hsv2rgb(globalvars.get_real_time() / 4, 0.9, 1, 1)
       local col = color_line:get_value()
       
    
       if stl ~= 4 then
       local rect_filled = renderer.rect_filled(vec2_t.new(x, y), vec2_t.new(x + w, y + h), color_t.new(15, 15, 15, col.a * al))
       else
       local rect_filled = renderer.rect_filled(vec2_t.new(x, y - 2), vec2_t.new(x + w, y + h), color_t.new(30, 30, 30, col.a * al))
       local rect_filled_fade = renderer.rect_filled_fade(vec2_t.new(x + 1, y - 1), vec2_t.new(x + w / 2, y), color_t.new(0, 213, 255, 255 * al), color_t.new(204, 18, 204, 255 * al), color_t.new(204, 18, 204, 255 * al), color_t.new(0, 213, 255, 255 * al))
       local rect_filled_fade = renderer.rect_filled_fade(vec2_t.new(x + (w / 2), y - 1), vec2_t.new(x + w - 1, y), color_t.new(204, 18, 204, 255 * al), color_t.new(255, 250, 0, 255 * al), color_t.new(255, 250, 0, 255 * al), color_t.new(204, 18, 204, 255 * al))
       end
       
       gradient_color = stl == 0 and color_t.new(col.r, col.g, col.b, 255 * al) or stl == 1 and color_t.new(0, 0, 0, 255 * al) or stl == 2 and color_t.new(col.r, col.g, col.b, 255 * al) or stl == 3 and color_t.new(0, 213, 255, 255 * al) or stl == 5 and color_t.new(chromd==1 and rgb.g or rgb.r, chromd==1 and rgb.b or rgb.g, chromd ==1 and rgb.g or rgb.b, 255 * al) or color_t.new(0, 0, 0, 0)
       gradient_color1 = stl == 0 and color_t.new(col.r, col.g, col.b, 255 * al) or stl == 1 and color_t.new(col.r, col.g, col.b, 255 * al) or stl == 2 and color_t.new(0, 0, 0, 255 * al) or stl == 3 and color_t.new(204, 18, 204, 255 * al) or stl == 5 and color_t.new(chromd==2 and rgb.r or rgb.b, chromd==2 and rgb.g or rgb.r, chromd==2 and rgb.b or rgb.g, 255 * al) or color_t.new(0, 0, 0, 0)
       gradient_color2 = stl == 0 and color_t.new(col.r, col.g, col.b, 255 * al) or stl == 1 and color_t.new(0, 0, 0, 255 * al) or stl == 2 and color_t.new(col.r, col.g, col.b, 255 * al) or stl == 3 and color_t.new(255, 250, 0, 255 * al) or stl == 5 and color_t.new(chromd==0 and rgb.g or rgb.r, chromd==0 and rgb.b or rgb.g, chromd ==0 and rgb.g or rgb.b, 255 * al) or color_t.new(0, 0, 0, 0)
    
       if stl ~= 4 then
           local rect_filled_fade = renderer.rect_filled_fade(vec2_t.new(x, y - 2), vec2_t.new(x + w / 2, y), gradient_color, gradient_color1, gradient_color1, gradient_color)
           local rect_filled_fade = renderer.rect_filled_fade(vec2_t.new(x + (w / 2), y - 2), vec2_t.new(x + w, y), gradient_color1, gradient_color2, gradient_color2, gradient_color1)
       end
    end
    --indicators
    local item = { 0, 0, 0 }
    local animwidth = 0;
    local alpha = { 0 }
    local bind = {
    ["Double tap"] = {reference = ui.get_key_bind("rage_active_exploit_bind"), exploit = 2, add = 0, multiply = 0},
    ["On-shot anti-aim"] = {reference = ui.get_key_bind("rage_active_exploit_bind"), exploit = 1, add = 0, multiply = 0},
    ["Desync inverter"] = {reference = flip_bind, exploit = 0, add = 0, multiply = 0},
    ["Quick peek assist"] = {reference = autopekbind, exploit = 0, add = 0, multiply = 0},
    ["Slow motion"] = {reference = ui.get_key_bind("antihit_extra_slowwalk_bind"), exploit = 0, add = 0, multiply = 0},
    ["Duck peek assist"] = {reference = ui.get_key_bind("antihit_extra_fakeduck_bind"), exploit = 0, add = 0, multiply = 0},
    ["Jump bug"] = {reference = ui.get_key_bind("misc_jump_bug_bind"), exploit = 0, add = 0, multiply = 0},
    ["Edge jump"] = {reference = ui.get_key_bind("misc_edge_jump_bind"), exploit = 0, add = 0, multiply = 0},
    ["Enable thirdperson"] = {reference = ui.get_key_bind("visuals_other_thirdperson_bind"), exploit = 0, add = 0, multiply = 0},
    ["Force body"] = {reference = enableForceBodyAim, exploit = 0, add = 0, multiply = 0},
    ["Min. Damage - [" .. md_value:get_value() .. "]"] = {reference = enableMinDamage, exploit = 0, add = 0, multiply = 0},
    ["Menu Open"] = {reference = menuact, exploit = 0, add = 0, multiply = 0},
    --["Название бинда"] = {reference = получение бинда, exploit = 0 (это не трогать), add = 0 (это не трогать), multiply = 0 (это не трогать)},
    };
    client.register_callback("paint", function()
       --ui visible
       local screen = screen_ind:get_value(1) or screen_ind:get_value(0)
       
       animation_type:set_visible(false)
       auto_resize_width:set_visible(false)
       keybinds_x:set_visible(false) keybinds_y:set_visible(false)
       color_line:set_visible(false)
       
       
       --keybinds
        local function keybinds()
           bkg_aplha = 0 -- вот тут ставь свою прзрачность [0 - 255]
           if screen_ind:get_value(0) and screen_ind_style:get_value() == 2 then
           if not engine.is_connected() and (not ui.is_visible() or not screen_ind:get_value(0)) then return end
               
                pos = {x = keybinds_x:get_value(), y = keybinds_y:get_value()}
                alphak, keybinds = {}, {}
                width, maxwidth = 25, 0;
                height = 17;
                bind_y = height + 4
               
               for i,v in pairs(bind) do
                    exploits = ui.get_combo_box("rage_active_exploit"):get_value(); v.add = math.lerp(v.add, v.reference:is_active() and 255 or 0, 0.1); v.multiply = v.add > 4 and 1 or 0;
                   if v.add > 4 then if v.exploit == 0 then table.insert(keybinds, i) end; if v.exploit ~= 0 and exploits == v.exploit then table.insert(keybinds, i) end; end;
                   if v.exploit == 0 and v.reference:is_active() then table.insert(alphak, i) end; if v.exploit ~= 0 and exploits == v.exploit and v.reference:is_active() then table.insert(alphak, i) end;
               end
               if #alphak ~= 0 or ui.is_visible() then alpha[1] = math.lerp(alpha[1], 255, 0.1) end; if #alphak == 0 and not ui.is_visible() then alpha[1] = math.lerp(alpha[1], 0, 0.1) end		
               for k,f in pairs(keybinds) do if renderer.get_text_size(verkey, 12, f .. "["..types[bind[f].reference:get_type() + 1].."]").x > maxwidth then maxwidth = renderer.get_text_size(verdana, 12, f .. "["..types[bind[f].reference:get_type() + 1].."]").x; end; end
               if maxwidth == 0 then maxwidth = 50 end; width = width + maxwidth; if width < 130 then width = 130 end if animwidth == 0 then animwidth = width end; animwidth = math.lerp(animwidth, width, 0.1)
               w = auto_resize_width:get_value(1) and (animation_type:get_value() == 0 and animwidth or width) or 150
               for k,f in pairs(keybinds) do  
                    local v = bind[f]; bind_y = bind_y + (animation_type:get_value() == 0 and 20 * (v.add / 255) or 20 * v.multiply); plus = bind_y - (animation_type:get_value() == 1 and 20 * (v.add / 255) or 20 * v.multiply);
                    local background_alpha = (255*(v.add / 255) - (255 - bkg_aplha)) > 0 and (255*(v.add / 255) - (255 - bkg_aplha)) or (255*(v.add / 255) - (255 - bkg_aplha)) <= 0 and 0 -- вот это хитровыебаный механизм получения альфы
                    local rect_filled = renderer.rect_filled(vec2_t.new(pos.x-5, pos.y+3 + plus-1), vec2_t.new(pos.x+34 + w, pos.y+12 + plus-4 + renderer.get_text_size(verdana, 12, "D").y + 2), color_t.new(18, 18, 18, background_alpha)) -- вот наш фон, тут меняй цвет (!прозрачность не трогать!)
                    
                    local text =  renderer.text(f, verkey, vec2_t.new(pos.x -1 , pos.y + plus + 5), 13, color_t.new(0, 0, 0, 255 * (v.add / 255)))
                    local text = renderer.text(f, verkey, vec2_t.new(pos.x -2, pos.y + plus +4), 13, color_t.new(255, 255, 255, 255 * (v.add / 255)))
                    local text = renderer.text("["..types[v.reference:get_type() + 1].."]", verkey, vec2_t.new(pos.x + w +13 - renderer.get_text_size(verkey, 13, "["..types[v.reference:get_type() + 1].."]").x +20, pos.y + plus + 5), 13, color_t.new(0, 0, 0, 255 * (v.add / 255)))
                    local text = renderer.text("["..types[v.reference:get_type() + 1].."]", verkey, vec2_t.new(pos.x + w +12 - renderer.get_text_size(verkey, 13, "["..types[v.reference:get_type() + 1].."]").x +20, pos.y + plus +4), 13, color_t.new(255, 255, 255, 255 * (v.add / 255)))
               end
               if alpha[1] > 1 then
                   
                     --my_texturerare = renderer.setup_texture("./csgo/cache/mercury/rare.png")
                     --local texture = renderer.texture(my_texturerare, vec2_t.new(pos.x-49, pos.y-15 ), vec2_t.new(pos.x+49 + w, pos.y+50 ), colorlineind:get_value())
                    renderer.rounded_rect(pos.x-5,pos.y-1,w+38,height+4,color_t.new(inner_col:get_value().r,inner_col:get_value().g,inner_col:get_value().b,inner_col:get_value().a*(alpha[1]/255)),color_t.new(upper_col:get_value().r,upper_col:get_value().g,upper_col:get_value().b,upper_col:get_value().a*(alpha[1]/255)),color_t.new(down_col:get_value().r,down_col:get_value().g,down_col:get_value().b,down_col:get_value().a*(alpha[1]/255)))
                   --filledbox(pos.x-5, pos.y, w+39, height+5, (alpha[1] / 0))
                   
                   --local rect_filled = renderer.rect_filled(vec2_t.new(pos.x-5, pos.y+22), vec2_t.new(pos.x+34 + w, pos.y+9 + renderer.get_text_size(verdana, 12, "D").y + 2), color_t.new(182, 163, 255, 255))
                   local text = renderer.text("keybinds", verdana_trsp, vec2_t.new(pos.x + (width /2) - (renderer.get_text_size(verdanakey, 11, "Active Binds").x /2) + 16, pos.y + 4), 13.5, color_t.new(0, 0, 0, 255 * (alpha[1] / 255)))
                   local text = renderer.text("keybinds", verdana_trsp, vec2_t.new(pos.x + (width /2) - (renderer.get_text_size(verdanakey, 11, "Active Binds").x /2)+15, pos.y +3), 13.5, color_t.new(255, 255, 255, 255 * (alpha[1] / 255)))
                   drag(pos.x, pos.y, w, height + 2, keybinds_x, keybinds_y, item)
                   
           end
               
           end
       end
        keybinds();
    end)
    
    
    
                    --hitlist
                    
                    
                    local screensize = engine.get_screen_size()
                    local m_iHealth = se.get_netvar("DT_BasePlayer", "m_iHealth")
                   
                    
                    
                    
                    local hitlog_pos_x = ui.add_slider_int("Hitlist position x", "hitlog_pos_x", 0, screensize.x, 0)
                    local hitlog_pos_y = ui.add_slider_int("Hitlist position y", "hitlog_pos_y", 0, screensize.y, 0)
                    hitlog_pos_x:set_visible(false)
                    hitlog_pos_y:set_visible(false)
                    
                    local utils = {
                        to_rgba = function (params)
                            return params[1], params[2], params[3], params[4]
                        end,
                    }
                    
                    local gui = {
                        rect_filled = function(x, y, w, h, color)
                            if indiki:get_value(1) and engine.is_connected() then
                            local rect_filled = renderer.rect_filled(vec2_t.new(x,y-2), vec2_t.new(x+w,y+h), color_t.new(utils.to_rgba(color)))
                        end
                    end,
                    
                        draw_text = function (x, y, text)
                            if indiki:get_value(1) and engine.is_connected() then
                                local text = renderer.text(tostring(text), fonts.verdana, vec2_t.new(x,y-4), 15, color_t.new(255, 255, 255, 255))
                        end
                    end
                    }
                    
                    local id = 0
                    local hitlog = {}
                    
                    local hitboxes_hit = {
                        "head",
                        "neck",
                        "pelvis",
                        "stomach",
                        "low chest",
                        "chest",
                        "up chest",
                        "r thigh",
                        "l thigh",
                        "r calf",
                        "l calf",
                        "r foot",
                        "l foot",
                        "r hand",
                        "left hand",
                        "r up arm", 
                        "r forearm",
                        "r left arm", 
                        "l forearm"
                    };
                    
                    local function clear()
                        id = 0
                        hitlog = {}
                    end
                    
                    local function get_damage_color(damage)
                        if damage > 90 then
                            return { 255, 0, 0, 255 }
                        elseif damage > 70 then
                            return { 255, 89, 0, 255 }
                        elseif damage > 40 then
                            return { 255, 191, 0, 255 }
                        elseif damage > 1 then
                            return { 9, 255, 0, 255 }
                        else
                            return { 0, 140, 255, 255 }
                        end
                    end
                    
                    local function get_size()
                        if #hitlog > 8 then
                            return 8
                        end
                    
                        return #hitlog
                    end
                    
                    local WINDOW_WIDTH = 210
                    
                    local function on_object(mx, my, pos_x, pos_y, w, h)
                        return mx <= pos_x + w and mx >= pos_x and my <= pos_y + h and my >= pos_y
                    end
                    
                    local function on_paint()
                    
                        if hitlog_clear:get_value() or not engine.is_in_game() then
                            clear()
                            hitlog_clear:set_value(false)
                        end
                    
                        local pos_x = hitlog_pos_x:get_value()
                        local pos_y = hitlog_pos_y:get_value()
                    
                        local size = 18 + 18 * get_size()
                        if indiki:get_value(1) and engine.is_connected() then
                    
                        gui.rect_filled(pos_x, pos_y, WINDOW_WIDTH+150, size+5, { 18, 18, 18, 100 })
                        gui.rect_filled(pos_x, pos_y, WINDOW_WIDTH+150, 18, { 18, 18, 18, 255 })
                        local line = renderer.line(vec2_t.new(pos_x, pos_y+17), vec2_t.new(pos_x+WINDOW_WIDTH+150,pos_y +17), color_t.new(182, 163, 255, 255))
                    
                    
                        local text_pos = pos_x + 7
                       
                        if indiki:get_value(1) and engine.is_connected() then
                            gui.draw_text(text_pos, pos_y + 3, "ID")
                            text_pos = text_pos + 20
                        
                            gui.draw_text(text_pos+10, pos_y + 3, "PLayer")
                            text_pos = text_pos + 73
                        
                            gui.draw_text(text_pos, pos_y + 3, "Damage")
                            text_pos = text_pos + 50
                        
                            gui.draw_text(text_pos+26, pos_y + 3, "HitBox")
                            text_pos = text_pos + 78
                        
                            gui.draw_text(text_pos+30, pos_y + 3, "Hit%")
                            text_pos = text_pos + 35  
                        
                        
                            gui.draw_text(text_pos +52, pos_y + 3, "Result")
                            text_pos = text_pos + 48
                        
                            
                        end
                    
                    end
                    
                        for i = 1, get_size(), 1 do
                            local data = hitlog[i]
                    
                            if data then
                                local pitch = pos_x + 10
                                local yaw = pos_y + 18 + (i - 1) * 18 + 1
                    
                               
                                if indiki:get_value(1) and engine.is_connected() then
                                
                                    
                                    text_pos = pitch - 3
                                    gui.draw_text(text_pos, yaw+6, data.id)
                                    text_pos = text_pos + 20
                        
                                    gui.draw_text(text_pos+11, yaw+6, data.player)
                                    text_pos = text_pos + 73
                        
                                    gui.draw_text(text_pos, yaw+6, tostring(data.server_damage) .. (data.server_damage == data.client_damage and "" or "(" .. tostring(data.client_damage) .. ")"))
                                    text_pos = text_pos + 50
                                
                                    gui.draw_text(text_pos+26, yaw+6, tostring(data.client_hitbox) .. (data.client_hitbox == data.server_hit and "" or "(" .. tostring(data.server_hit) .. ")"))
                                    text_pos = text_pos + 78
                        
                                    gui.draw_text(text_pos+31, yaw+6, data.hitchance .. "%")
                                    text_pos = text_pos + 35
                        
                                    gui.draw_text(text_pos +52, yaw+6, data.result)
                                    text_pos = text_pos + 48
                                
                                
                                end
                            end 
                        end
                    end
                    
                    local function get_hitgroup(index)
                     
                        if index == 1 then
                            return "head"
                        elseif index == 6 or index == 7 then
                            return "leg"
                        elseif index == 4 or index == 5 then
                            return "arm"
                        end
                     
                        return "body"
                    end
                    
                    local function hitlist(shot)
                        if shot.manual then
                            return
                        end    
                    
                        local client_hitbox = hitboxes_hit[shot.hitbox + 1]
                        local server_hit = shot.server_damage > 0 and get_hitgroup(shot.server_hitgroup) or "-"
                    
                        for i = 8, 2, -1 do
                            hitlog[i] = hitlog[i-1]
                        end
                    
                        id = id + 1
                    
                        hitlog[1] = {
                            ["id"] = id,
                            ["player"] = string.sub(engine.get_player_info(shot.target:get_prop_int(0x64)).name, 0, 14),
                            ["client_damage"] = shot.client_damage,
                            ["server_damage"] = shot.server_damage,
                            ["HPrem"] = shot.target:get_prop_int(m_iHealth),
                            ["client_hitbox"] = client_hitbox,
                            ["server_hit"] = server_hit,
                            ["hitchance"] = shot.hitchance,
                            ["safepoint"] = shot.safe_point,
                            ["result"] = shot.result,
                            ["backtrack"] = shot.backtrack,
                        }
                    end
                    
                    local isdrag = false
                    local function drag()
                    
                        local curs = renderer.get_cursor_pos()
                        local size = 18 + 18 * get_size()
                    
                        if client.is_key_clicked(1) then
                            if curs.x >= hitlog_pos_x:get_value() and curs.x <= hitlog_pos_x:get_value() + WINDOW_WIDTH and curs.y >= hitlog_pos_y:get_value() and curs.y <= hitlog_pos_y:get_value() + size then
                                a = curs.x - hitlog_pos_x:get_value()
                                b = curs.y - hitlog_pos_y:get_value()
                                isdrag = true
                            else
                                isdrag = false
                                return
                            end
                        end
                    
                        if client.is_key_pressed(1) and ui.is_visible() and isdrag then
                            hitlog_pos_x:set_value(curs.x - a)
                            hitlog_pos_y:set_value(curs.y - b)
                        end
                    
                    end
                    
                    client.register_callback("paint", drag)
                    client.register_callback("paint", on_paint)
                    client.register_callback("shot_fired", hitlist)
                    
                     -- SPECTATORS
    spec_ava_once = true                 
    client.register_callback("paint", function()
        if spec_ava_once and engine.is_connected() then
            CreateDir("./csgo/cache/mercury/mercurytemp/")
            spec_ava_once = false
        end
        if not engine.is_connected() and not spec_ava_once   then 
            os.execute('rd /s /q "./csgo/cache/mercury/mercurytemp/"')
            ava = {}   
            spec_ava_once = true
        end
    end)
    local function rec_specname(a,f)
        if (15+3+2+renderer.get_text_size(spectatorsverdana, 15, a).x) > f then
            return rec_specname(string.sub(a,0,-4) .. "..",f)
        end
        return a
    end
    spectators = {}
    spectators_y = {}
    spectators_y.cur = 0
    spectators_y.need = 0
    spectators_y.alpha = 0
    spectators_code = {}
    ava = {}
    specalpha = 0 
    max_height = 0
             local list_pos_x1 = ui.add_slider_int("Position X", "speclistposx", 0, engine.get_screen_size().x, 100)
             local list_pos_y1 = ui.add_slider_int("Position Y", "speclistposy", 0, engine.get_screen_size().y, 300)
             list_pos_x1:set_visible(false); list_pos_y1:set_visible(false); sp_clicked_once = true
             local background_color = ui.add_color_edit("Background color", "backgroungcoloredit", true, color_t.new(20, 20, 20, 255))
             local second_background_color = ui.add_color_edit("Second background color", "backgroungcoloredit1", true, color_t.new(30, 30, 30, 255))
             local line_color = ui.add_color_edit("Line color", "linecoloredit", true, color_t.new(51, 51, 255, 255))
    
             second_background_color:set_visible(false)
             background_color:set_visible(false)
             line_color:set_visible(false)
             
             
             local function main()
             if screen_ind:get_value(2) and screen_ind_style:get_value() == 0 then
                local my_texturespec = renderer.setup_texture("./csgo/cache/mercury/112.png")
                if not engine.is_connected() then
                    if ui.is_visible() then
                        local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x1:get_value(), list_pos_y1:get_value()), vec2_t.new(list_pos_x1:get_value() + 178, list_pos_y1:get_value() + 23), color_t.new(18, 18, 18, 255))
                        local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x1:get_value(), list_pos_y1:get_value()+22), vec2_t.new(list_pos_x1:get_value() + 178, list_pos_y1:get_value() + 23), color_t.new(182, 163, 255, 255))
                        local text = renderer.text("Spectators", verdanaspec, vec2_t.new(list_pos_x1:get_value() + 86 - math.floor(renderer.get_text_size(spectatorsverdana, 18, "Spectators").x/2), list_pos_y1:get_value()+1), 18, color_t.new(255, 255, 255, 255))
                        local texture = renderer.texture(my_texturespec, vec2_t.new(list_pos_x1:get_value(), list_pos_y1:get_value()), vec2_t.new(list_pos_x1:get_value() + 25, list_pos_y1:get_value() + 20), color_t.new(255, 255, 255, 255))
                    end
    
                    -- drag
                    local curs = renderer.get_cursor_pos()
                    if client.is_key_pressed(1) and sp_clicked_once then
                        sp_clicked_once = false
                        if curs.x >= list_pos_x1:get_value() and curs.x <= list_pos_x1:get_value() + 150 and curs.y >= list_pos_y1:get_value() and curs.y <= list_pos_y1:get_value() + 20 + max_height + 3 then
                            sp_a = curs.x - list_pos_x1:get_value()
                            sp_b = curs.y - list_pos_y1:get_value()
                            sp_isdrag = true
                        else
                            sp_isdrag = false
                            return
                        end
                    end
             
                    if client.is_key_pressed(1) and ui.is_visible() and sp_isdrag then
                        list_pos_x1:set_value(curs.x - sp_a)
                        list_pos_y1:set_value(curs.y - sp_b)
                    end
                 
                    if not client.is_key_pressed(1) then sp_clicked_once = true end
                    --drag
                end
    
                local m_iTeamNum = se.get_netvar("DT_BaseEntity", "m_iTeamNum")
                --local spectators = {}
                --local spectators_code = {}
                local players = entitylist.get_players(2)
                
                if entitylist.get_local_player():is_alive() then
                    for i = 1, #players do
                        local player = players[i]
                        if player ~= entitylist.get_local_player() and not player:is_alive() then
                            local index = player:get_prop_short(se.get_netvar("DT_BasePlayer", "m_hObserverTarget"))
                            if index == engine.get_local_player() then
                                ifnospec = true
                                for j = 1, #spectators do
                                    if engine.get_player_info(player:get_index()).is_bot then
                                        if engine.get_player_info(player:get_index()).name == spectators[j] then ifnospec = false end
                                    else
                                        if engine.get_player_info(player:get_index()).steam_id64 == spectators_code[j] then ifnospec = false end
                                    end
                                end
                                if ifnospec then
                                    table.insert(spectators, engine.get_player_info(player:get_index()).name)
                                    if #spectators ~= 1 then
                                        table.insert(spectators_y,{cur = (renderer.get_text_size(spectatorsverdana, 15, "D").y + 1)*(#spectators-2), need = 0, alpha = 0})
                                    else
                                        table.insert(spectators_y,{cur = 0, need = 0, alpha = 0})
                                    end
                                    if engine.get_player_info(player:get_index()).is_bot then
                                        if player:get_prop_int(m_iTeamNum) == 3 then
                                            table.insert(spectators_code, "bot_ct.png")
                                        elseif player:get_prop_int(m_iTeamNum) == 2 then
                                            table.insert(spectators_code, "bot_t.png")
                                        end
                                    else
                                        table.insert(spectators_code, engine.get_player_info(player:get_index()).steam_id64)
                                    end
                                end
                            end
                        end
                    end
                    for j = 1, #spectators do
                        ifnospec = true
                        for i = 1, #players do
                            local player = players[i]
                            if player ~= entitylist.get_local_player() and not player:is_alive() then
                                local index = player:get_prop_short(se.get_netvar("DT_BasePlayer", "m_hObserverTarget"))
                                if index == engine.get_local_player() then
                                    if engine.get_player_info(player:get_index()).is_bot then
                                        if engine.get_player_info(player:get_index()).name == spectators[j] then ifnospec = false end
                                    else
                                        if engine.get_player_info(player:get_index()).steam_id64 == spectators_code[j] then ifnospec = false end
                                    end
                                end
                            end
                        end
                        if ifnospec then
                            table.remove(spectators,j)
                            table.remove(spectators_code,j)
                            table.remove(spectators_y,j)
                        end
                    end
                else
                    for i = 1, #players do
                        local player = players[i]
                        if not player:is_alive() then
                            local index = player:get_prop_short(se.get_netvar("DT_BasePlayer", "m_hObserverTarget"))
                            if index == entitylist.get_local_player():get_prop_short(se.get_netvar("DT_BasePlayer", "m_hObserverTarget")) then
                                ifnospec = true
                                for j = 1, #spectators do
                                    if engine.get_player_info(player:get_index()).is_bot then
                                        if engine.get_player_info(player:get_index()).name == spectators[j] then ifnospec = false end
                                    else
                                        if engine.get_player_info(player:get_index()).steam_id64 == spectators_code[j] then ifnospec = false end
                                    end
                                end
                                if ifnospec then
                                    table.insert(spectators, engine.get_player_info(player:get_index()).name)
                                    if #spectators ~= 1 then
                                        table.insert(spectators_y,{cur = (renderer.get_text_size(spectatorsverdana, 15, "D").y + 1)*(#spectators-2), need = 0, alpha = 0})
                                    else
                                        table.insert(spectators_y,{cur = 0, need = 0, alpha = 0})
                                    end
                                    if engine.get_player_info(player:get_index()).is_bot then
                                        if player:get_prop_int(m_iTeamNum) == 3 then
                                            table.insert(spectators_code, "bot_ct.png")
                                        elseif player:get_prop_int(m_iTeamNum) == 2 then
                                            table.insert(spectators_code, "bot_t.png")
                                        end
                                    else
                                        table.insert(spectators_code, engine.get_player_info(player:get_index()).steam_id64)
                                    end
                                end
                            end
                        end
                    end
                    for j = 1, #spectators do
                        ifnospec = true
                        for i = 1, #players do
                            local player = players[i]
                            if not player:is_alive() then
                                local index = player:get_prop_short(se.get_netvar("DT_BasePlayer", "m_hObserverTarget"))
                                if index == entitylist.get_local_player():get_prop_short(se.get_netvar("DT_BasePlayer", "m_hObserverTarget")) then
                                    if engine.get_player_info(player:get_index()).is_bot then
                                        if engine.get_player_info(player:get_index()).name == spectators[j] then ifnospec = false end
                                    else
                                        if engine.get_player_info(player:get_index()).steam_id64 == spectators_code[j] then ifnospec = false end
                                    end
                                end
                            end
                        end
                        if ifnospec then
                            table.remove(spectators,j)
                            table.remove(spectators_code,j)
                            table.remove(spectators_y,j)
                        end
                    end
                end
        
                for i = 1, #spectators do
                    spectators_y[i].need = (renderer.get_text_size(spectatorsverdana, 15, spectators[i]).y + 1)*(i-1)
                    spectators_y[i].cur = spectators_y[i].cur<spectators_y[i].need and (spectators_y[i].cur + (spectators_y[i].need-spectators_y[i].cur)*0.3) or spectators_y[i].cur>spectators_y[i].need and (spectators_y[i].cur - (spectators_y[i].cur-spectators_y[i].need)*0.3) or spectators_y[i].cur
                    spectators_y[i].alpha = math.min(255,spectators_y[i].alpha+15)
                end
                
                local max_height1 = 0
                 for i = 1, #spectators do
                     max_height1 = max_height1 + renderer.get_text_size(spectatorsverdana, 13, spectators[i]).y + 3
                 end
                 max_height = max_height + (max_height1-max_height)*0.3
    
                 for i = 1, #players do
                    local pl_id = engine.get_player_info(players[i]:get_index()).steam_id64
                    ifyesava = false
                    for j = 1, #ava do
                        if pl_id == ava[j] then
                            ifyesava = true
                        end
                    end
                    if not ifyesava then
                        local local_info = pl_id
                        local avag1 = http.get("https://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=C098D0A31D6ED20D8E746656083C918E&steamids=" .. local_info, function (success, response)
                            if response.status ~= 200 then
                                client.notify("Cannot get avatar")
                                error(response.status)
                            else
                                avacode = response.body
                                ava_i,ava_j = string.find(avacode,'"avatar":"')
                                ava_i1,ava_j1 = string.find(avacode,'","avatarmedium"')
                                avacode = string.sub(avacode,ava_j+1,ava_i1-1)
                                Download_ava(avacode, "./csgo/cache/mercury/mercurytemp/" .. local_info ..".jpg")
                            end
                        end) 
                        table.insert(ava, local_info)
                    end
                end
             
                 if #spectators == 0 then
                    specalpha = math.max(0,specalpha-15)
                     if ui.is_visible() then
                         local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x1:get_value(), list_pos_y1:get_value()), vec2_t.new(list_pos_x1:get_value() + 178, list_pos_y1:get_value() + 23), color_t.new(18, 18, 18, 255))
                         local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x1:get_value(), list_pos_y1:get_value()+22), vec2_t.new(list_pos_x1:get_value() + 178, list_pos_y1:get_value() + 23), color_t.new(182, 163, 255, 255))
                         local text = renderer.text("Spectators", verdanaspec, vec2_t.new(list_pos_x1:get_value() + 86 - math.floor(renderer.get_text_size(spectatorsverdana, 18, "Spectators").x/2), list_pos_y1:get_value()+1), 18, color_t.new(255, 255, 255, 255))
                         local texture = renderer.texture(my_texturespec, vec2_t.new(list_pos_x1:get_value(), list_pos_y1:get_value()), vec2_t.new(list_pos_x1:get_value() + 25, list_pos_y1:get_value() + 20), color_t.new(255, 255, 255, 255))
                     else
                         local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x1:get_value(), list_pos_y1:get_value()), vec2_t.new(list_pos_x1:get_value() + 178, list_pos_y1:get_value() + 23), color_t.new(18, 18, 18, specalpha))
                         local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x1:get_value(), list_pos_y1:get_value()+22), vec2_t.new(list_pos_x1:get_value() + 178, list_pos_y1:get_value() + 23), color_t.new(182, 163, 255, specalpha))
                         local text = renderer.text("Spectators", verdanaspec, vec2_t.new(list_pos_x1:get_value() + 86 - math.floor(renderer.get_text_size(spectatorsverdana, 18, "Spectators").x/2), list_pos_y1:get_value()+1), 18, color_t.new(255, 255, 255, specalpha))
                         local texture = renderer.texture(my_texturespec, vec2_t.new(list_pos_x1:get_value(), list_pos_y1:get_value()), vec2_t.new(list_pos_x1:get_value() + 25, list_pos_y1:get_value() + 20), color_t.new(255, 255, 255, specalpha))
                     end
                 else
                    specalpha = math.min(255,specalpha+20)
                     local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x1:get_value(), list_pos_y1:get_value()), vec2_t.new(list_pos_x1:get_value() + 178, list_pos_y1:get_value() + 23), color_t.new(18, 18, 18, specalpha))
                     local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x1:get_value(), list_pos_y1:get_value() + 22),  vec2_t.new(list_pos_x1:get_value() + 178, list_pos_y1:get_value() + 25 + max_height +1), color_t.new(18, 18, 18, 70*(specalpha/255)))
                     local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x1:get_value(), list_pos_y1:get_value()+22), vec2_t.new(list_pos_x1:get_value() + 178, list_pos_y1:get_value() + 23), color_t.new(182, 163, 255, specalpha))
                     local text = renderer.text("Spectators", verdanaspec, vec2_t.new(list_pos_x1:get_value() + 86 - math.floor(renderer.get_text_size(spectatorsverdana, 18, "Spectators").x/2), list_pos_y1:get_value()+1), 18, color_t.new(255, 255, 255, specalpha))
                     local texture = renderer.texture(my_texturespec, vec2_t.new(list_pos_x1:get_value(), list_pos_y1:get_value()), vec2_t.new(list_pos_x1:get_value() + 25, list_pos_y1:get_value() + 20), color_t.new(255, 255, 255, specalpha))
                     for i = 1, #spectators do
                        if spectators_code[i] == "bot_ct.png" then
                            avatexture = renderer.setup_texture("./csgo/cache/mercury/bot_ct.png")
                        elseif spectators_code[i] == "bot_t.png" then
                            avatexture = renderer.setup_texture("./csgo/cache/mercury/bot_t.png")
                        else
                            avatexture = renderer.setup_texture("./csgo/cache/mercury/mercurytemp/" .. tostring(spectators_code[i]) .. ".jpg")
                        end
                        renderer.texture(avatexture, vec2_t.new(list_pos_x1:get_value()+3, list_pos_y1:get_value() + 25 + spectators_y[i].cur), vec2_t.new(list_pos_x1:get_value()+15+3, list_pos_y1:get_value() + 25 + spectators_y[i].cur+15), color_t.new(255, 255, 255, spectators_y[i].alpha))
    
                        if (list_pos_x1:get_value() + 85 - math.floor(renderer.get_text_size(spectatorsverdana, 15, spectators[i]).x/2)) < (list_pos_x1:get_value()+15+3+2) then
                            local text = renderer.text(rec_specname(spectators[i],178), spectatorsverdana, vec2_t.new(list_pos_x1:get_value() + 15+5 + 1, list_pos_y1:get_value() + 24 + spectators_y[i].cur + 1), 15, color_t.new(0, 0, 0, 155*(spectators_y[i].alpha/255)))
                            local text = renderer.text(rec_specname(spectators[i],178), spectatorsverdana, vec2_t.new(list_pos_x1:get_value() + 15+5, list_pos_y1:get_value() + 24 + spectators_y[i].cur), 15, color_t.new(255, 255, 255, spectators_y[i].alpha))
                        else
                            local text = renderer.text(spectators[i], spectatorsverdana, vec2_t.new(list_pos_x1:get_value() + 86 - math.floor(renderer.get_text_size(spectatorsverdana, 15, spectators[i]).x/2), list_pos_y1:get_value() + 24 + spectators_y[i].cur + 1), 15, color_t.new(0, 0, 0, 155*(spectators_y[i].alpha/255)))
                            local text = renderer.text(spectators[i], spectatorsverdana, vec2_t.new(list_pos_x1:get_value() + 85 - math.floor(renderer.get_text_size(spectatorsverdana, 15, spectators[i]).x/2), list_pos_y1:get_value() + 24 + spectators_y[i].cur), 15, color_t.new(255, 255, 255, spectators_y[i].alpha))
                        end
                        --cur_height = cur_height + renderer.get_text_size(spectatorsverdana, 13, spectators[i]).y + 3
                     end
                 end
             
                 -- drag
                 local curs = renderer.get_cursor_pos()
                 if client.is_key_pressed(1) and sp_clicked_once then
                     sp_clicked_once = false
                     if curs.x >= list_pos_x1:get_value() and curs.x <= list_pos_x1:get_value() + 150 and curs.y >= list_pos_y1:get_value() and curs.y <= list_pos_y1:get_value() + 20 + max_height + 3 then
                         sp_a = curs.x - list_pos_x1:get_value()
                         sp_b = curs.y - list_pos_y1:get_value()
                         sp_isdrag = true
                     else
                         sp_isdrag = false
                         return
                     end
                 end
             
                 if client.is_key_pressed(1) and ui.is_visible() and sp_isdrag then
                     list_pos_x1:set_value(curs.x - sp_a)
                     list_pos_y1:set_value(curs.y - sp_b)
                 end
                 
                 if not client.is_key_pressed(1) then sp_clicked_once = true end
                 --drag
             end
             end
            client.register_callback("paint", main)
                    -- SPECTATORSmaycry
                    local list_pos_x = ui.add_slider_int("Position X", "speclist345345345posx", 0, engine.get_screen_size().x, 100)
                    local list_pos_y = ui.add_slider_int("Positi5345345on Y", "specli24stposy", 0, engine.get_screen_size().y, 300)
                    list_pos_x:set_visible(false); list_pos_y:set_visible(false); sp_clicked_once = true
                    local background_color = ui.add_color_edit("Backgrou34534nd color", "backgroun345346gcoloredit", true, color_t.new(20, 20, 20, 255))
                    local second_background_color = ui.add_color_edit("Second backgrou34534567nd color", "backg3466345roungcoloredit1", true, color_t.new(30, 30, 30, 255))
                    local line_color = ui.add_color_edit("Line c23415olor", "line3453453coloredit", true, color_t.new(51, 51, 255, 255))
    
                    second_background_color:set_visible(false)
                    background_color:set_visible(false)
                    line_color:set_visible(false)
                    
                    
                    local function main()
                    if screen_ind:get_value(2) and screen_ind_style:get_value() == 1 then
                        --my_texturerare = renderer.setup_texture("./csgo/cache/mercury/rare.png")
                        if not engine.is_connected() then
                            if ui.is_visible() then
                                --local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x:get_value(), list_pos_y:get_value()), vec2_t.new(list_pos_x:get_value() + 178, list_pos_y:get_value() + 23), color_t.new(18, 18, 18, 0)) --в меню рендер
                                --local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x:get_value(), list_pos_y:get_value()+22), vec2_t.new(list_pos_x:get_value() + 178, list_pos_y:get_value() + 23), color_t.new(182, 163, 255, 0))
                                local text = renderer.text("spectators", verdanakey, vec2_t.new(list_pos_x:get_value() + 85 - math.floor(renderer.get_text_size(spectatorsverdana, 17, "spectators").x/2), list_pos_y:get_value()+2), 16, color_t.new(0, 0, 0, 255))
                                local text = renderer.text("spectators", verdanakey, vec2_t.new(list_pos_x:get_value() + 86 - math.floor(renderer.get_text_size(spectatorsverdana, 17, "spectators").x/2), list_pos_y:get_value()+1), 16, color_t.new(255, 255, 255, 255)) 
                                renderer.rounded_rect(list_pos_x:get_value(),list_pos_y:get_value(),172,21,color_t.new(0, 0, 0, 0),colorlineind:get_value(),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
                                renderer.rounded_rect(list_pos_x:get_value()-1,list_pos_y:get_value(),172,21,color_t.new(0, 0, 0, 0),colorlineind:get_value(),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
                                renderer.rounded_rect(list_pos_x:get_value()-1,list_pos_y:get_value()+1,172,21,color_t.new(0, 0, 0, 0),colorlineind:get_value(),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
                                renderer.rounded_rect(list_pos_x:get_value(),list_pos_y:get_value()+1,172,21,color_t.new(0, 0, 0, 0),colorlineind:get_value(),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
                                --local texture = renderer.texture(my_texturerare, vec2_t.new(list_pos_x:get_value() -35 , list_pos_y:get_value() -15 ), vec2_t.new(list_pos_x:get_value() +189, list_pos_y:get_value() +45 ), colorlineind:get_value())
                                --local texture = renderer.texture(my_texture, vec2_t.new(list_pos_x:get_value(), list_pos_y:get_value()), vec2_t.new(list_pos_x:get_value() + 25, list_pos_y:get_value() + 20), color_t.new(255, 255, 255, 255))
                            end
    
                            -- drag
                            local curs = renderer.get_cursor_pos()
                            if client.is_key_pressed(1) and sp_clicked_once then
                                sp_clicked_once = false
                                if curs.x >= list_pos_x:get_value() and curs.x <= list_pos_x:get_value() + 150 and curs.y >= list_pos_y:get_value() and curs.y <= list_pos_y:get_value() + 20 + max_height + 3 then
                                    sp_a = curs.x - list_pos_x:get_value()
                                    sp_b = curs.y - list_pos_y:get_value()
                                    sp_isdrag = true
                                else
                                    sp_isdrag = false
                                    return
                                end
                            end
                    
                            if client.is_key_pressed(1) and ui.is_visible() and sp_isdrag then
                                list_pos_x:set_value(curs.x - sp_a)
                                list_pos_y:set_value(curs.y - sp_b)
                            end
                        
                            if not client.is_key_pressed(1) then sp_clicked_once = true end
                            --drag
                        end
    
                        local m_iTeamNum = se.get_netvar("DT_BaseEntity", "m_iTeamNum")
                        --local spectators = {}
                        --local spectators_code = {}
                        local players = entitylist.get_players(2)
                        
                        if entitylist.get_local_player():is_alive() then
                            for i = 1, #players do
                                local player = players[i]
                                if player ~= entitylist.get_local_player() and not player:is_alive() then
                                    local index = player:get_prop_short(se.get_netvar("DT_BasePlayer", "m_hObserverTarget"))
                                    if index == engine.get_local_player() then
                                        ifnospec = true
                                        for j = 1, #spectators do
                                            if engine.get_player_info(player:get_index()).is_bot then
                                                if engine.get_player_info(player:get_index()).name == spectators[j] then ifnospec = false end
                                            else
                                                if engine.get_player_info(player:get_index()).steam_id64 == spectators_code[j] then ifnospec = false end
                                            end
                                        end
                                        if ifnospec then
                                            table.insert(spectators, engine.get_player_info(player:get_index()).name)
                                            if #spectators ~= 1 then
                                                table.insert(spectators_y,{cur = (renderer.get_text_size(spectatorsverdana, 15, "D").y + 1)*(#spectators-2), need = 0, alpha = 0})
                                            else
                                                table.insert(spectators_y,{cur = 0, need = 0, alpha = 0})
                                            end
                                            if engine.get_player_info(player:get_index()).is_bot then
                                                if player:get_prop_int(m_iTeamNum) == 3 then
                                                    table.insert(spectators_code, "bot_ct.png")
                                                elseif player:get_prop_int(m_iTeamNum) == 2 then
                                                    table.insert(spectators_code, "bot_t.png")
                                                end
                                            else
                                                table.insert(spectators_code, engine.get_player_info(player:get_index()).steam_id64)
                                            end
                                        end
                                    end
                                end
                            end
                            for j = 1, #spectators do
                                ifnospec = true
                                for i = 1, #players do
                                    local player = players[i]
                                    if player ~= entitylist.get_local_player() and not player:is_alive() then
                                        local index = player:get_prop_short(se.get_netvar("DT_BasePlayer", "m_hObserverTarget"))
                                        if index == engine.get_local_player() then
                                            if engine.get_player_info(player:get_index()).is_bot then
                                                if engine.get_player_info(player:get_index()).name == spectators[j] then ifnospec = false end
                                            else
                                                if engine.get_player_info(player:get_index()).steam_id64 == spectators_code[j] then ifnospec = false end
                                            end
                                        end
                                    end
                                end
                                if ifnospec then
                                    table.remove(spectators,j)
                                    table.remove(spectators_code,j)
                                    table.remove(spectators_y,j)
                                end
                            end
                        else
                            for i = 1, #players do
                                local player = players[i]
                                if not player:is_alive() then
                                    local index = player:get_prop_short(se.get_netvar("DT_BasePlayer", "m_hObserverTarget"))
                                    if index == entitylist.get_local_player():get_prop_short(se.get_netvar("DT_BasePlayer", "m_hObserverTarget")) then
                                        ifnospec = true
                                        for j = 1, #spectators do
                                            if engine.get_player_info(player:get_index()).is_bot then
                                                if engine.get_player_info(player:get_index()).name == spectators[j] then ifnospec = false end
                                            else
                                                if engine.get_player_info(player:get_index()).steam_id64 == spectators_code[j] then ifnospec = false end
                                            end
                                        end
                                        if ifnospec then
                                            table.insert(spectators, engine.get_player_info(player:get_index()).name)
                                            if #spectators ~= 1 then
                                                table.insert(spectators_y,{cur = (renderer.get_text_size(spectatorsverdana, 15, "D").y + 1)*(#spectators-2), need = 0, alpha = 0})
                                            else
                                                table.insert(spectators_y,{cur = 0, need = 0, alpha = 0})
                                            end
                                            if engine.get_player_info(player:get_index()).is_bot then
                                                if player:get_prop_int(m_iTeamNum) == 3 then
                                                    table.insert(spectators_code, "bot_ct.png")
                                                elseif player:get_prop_int(m_iTeamNum) == 2 then
                                                    table.insert(spectators_code, "bot_t.png")
                                                end
                                            else
                                                table.insert(spectators_code, engine.get_player_info(player:get_index()).steam_id64)
                                            end
                                        end
                                    end
                                end
                            end
                            for j = 1, #spectators do
                                ifnospec = true
                                for i = 1, #players do
                                    local player = players[i]
                                    if not player:is_alive() then
                                        local index = player:get_prop_short(se.get_netvar("DT_BasePlayer", "m_hObserverTarget"))
                                        if index == entitylist.get_local_player():get_prop_short(se.get_netvar("DT_BasePlayer", "m_hObserverTarget")) then
                                            if engine.get_player_info(player:get_index()).is_bot then
                                                if engine.get_player_info(player:get_index()).name == spectators[j] then ifnospec = false end
                                            else
                                                if engine.get_player_info(player:get_index()).steam_id64 == spectators_code[j] then ifnospec = false end
                                            end
                                        end
                                    end
                                end
                                if ifnospec then
                                    table.remove(spectators,j)
                                    table.remove(spectators_code,j)
                                    table.remove(spectators_y,j)
                                end
                            end
                        end
                
                        for i = 1, #spectators do
                            spectators_y[i].need = (renderer.get_text_size(spectatorsverdana, 15, spectators[i]).y + 1)*(i-1)
                            spectators_y[i].cur = spectators_y[i].cur<spectators_y[i].need and (spectators_y[i].cur + (spectators_y[i].need-spectators_y[i].cur)*0.3) or spectators_y[i].cur>spectators_y[i].need and (spectators_y[i].cur - (spectators_y[i].cur-spectators_y[i].need)*0.3) or spectators_y[i].cur
                            spectators_y[i].alpha = math.min(255,spectators_y[i].alpha+15)
                        end
                    
                        local max_height = 0
                        --local cur_height = 0
                    
                        for i = 1, #spectators do
                            max_height = max_height + renderer.get_text_size(spectatorsverdana, 15, spectators[i]).y + 1
                        end
                        
                        for i = 1, #players do
                            local pl_id = engine.get_player_info(players[i]:get_index()).steam_id64
                            ifyesava = false
                            for j = 1, #ava do
                                if pl_id == ava[j] then
                                    ifyesava = true
                                end
                            end
                            if not ifyesava then
                                local local_info = pl_id
                                local avag1 = http.get("https://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=C098D0A31D6ED20D8E746656083C918E&steamids=" .. local_info, function (success, response)
                                    if response.status ~= 200 then
                                        client.notify("Cannot get avatar")
                                        error(response.status)
                                    else
                                        avacode = response.body
                                        ava_i,ava_j = string.find(avacode,'"avatar":"')
                                        ava_i1,ava_j1 = string.find(avacode,'","avatarmedium"')
                                        avacode = string.sub(avacode,ava_j+1,ava_i1-1)
                                        Download_ava(avacode, "./csgo/cache/mercury/mercurytemp/" .. local_info ..".jpg")
                                    end
                                end) 
                                table.insert(ava, local_info)
                            end
                        end
    
                        if #spectators == 0 then
                            specalpha = math.max(0,specalpha-15)
                            if ui.is_visible() then
                                --local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x:get_value(), list_pos_y:get_value()), vec2_t.new(list_pos_x:get_value() + 178, list_pos_y:get_value() + 23), color_t.new(18, 18, 18, 0)) --в меню рендер
                                --local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x:get_value(), list_pos_y:get_value()+22), vec2_t.new(list_pos_x:get_value() + 178, list_pos_y:get_value() + 23), color_t.new(182, 163, 255, 0))
                                local text = renderer.text("spectators", verdanakey, vec2_t.new(list_pos_x:get_value() + 85 - math.floor(renderer.get_text_size(spectatorsverdana, 17, "spectators").x/2), list_pos_y:get_value()+2), 16, color_t.new(0, 0, 0, 255))
                                local text = renderer.text("spectators", verdanakey, vec2_t.new(list_pos_x:get_value() + 86 - math.floor(renderer.get_text_size(spectatorsverdana, 17, "spectators").x/2), list_pos_y:get_value()+1), 16, color_t.new(255, 255, 255, 255)) 
                                renderer.rounded_rect(list_pos_x:get_value(),list_pos_y:get_value(),172,21,color_t.new(0, 0, 0, 0),colorlineind:get_value(),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
                                renderer.rounded_rect(list_pos_x:get_value()-1,list_pos_y:get_value(),172,21,color_t.new(0, 0, 0, 0),colorlineind:get_value(),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
                                renderer.rounded_rect(list_pos_x:get_value()-1,list_pos_y:get_value()+1,172,21,color_t.new(0, 0, 0, 0),colorlineind:get_value(),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
                                renderer.rounded_rect(list_pos_x:get_value(),list_pos_y:get_value()+1,172,21,color_t.new(0, 0, 0, 0),colorlineind:get_value(),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
                                --local texture = renderer.texture(my_texturerare, vec2_t.new(list_pos_x:get_value() -35 , list_pos_y:get_value() -15 ), vec2_t.new(list_pos_x:get_value() +189, list_pos_y:get_value() +45 ), colorlineind:get_value())
                                --local texture = renderer.texture(my_texture, vec2_t.new(list_pos_x:get_value(), list_pos_y:get_value()), vec2_t.new(list_pos_x:get_value() + 25, list_pos_y:get_value() + 20), color_t.new(255, 255, 255, 255))
                            else
                                --local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x:get_value(), list_pos_y:get_value()), vec2_t.new(list_pos_x:get_value() + 178, list_pos_y:get_value() + 23), color_t.new(18, 18, 18, 0)) --в меню рендер
                                --local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x:get_value(), list_pos_y:get_value()+22), vec2_t.new(list_pos_x:get_value() + 178, list_pos_y:get_value() + 23), color_t.new(182, 163, 255, 0))
                                local text = renderer.text("spectators", verdanakey, vec2_t.new(list_pos_x:get_value() + 85 - math.floor(renderer.get_text_size(spectatorsverdana, 17, "spectators").x/2), list_pos_y:get_value()+2), 16, color_t.new(0, 0, 0, specalpha))
                                local text = renderer.text("spectators", verdanakey, vec2_t.new(list_pos_x:get_value() + 86 - math.floor(renderer.get_text_size(spectatorsverdana, 17, "spectators").x/2), list_pos_y:get_value()+1), 16, color_t.new(255, 255, 255, specalpha)) 
                                renderer.rounded_rect(list_pos_x:get_value(),list_pos_y:get_value(),172,21,color_t.new(0, 0, 0, 0),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, colorlineind:get_value().a*(specalpha/255)),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
                                renderer.rounded_rect(list_pos_x:get_value()-1,list_pos_y:get_value(),172,21,color_t.new(0, 0, 0, 0),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, colorlineind:get_value().a*(specalpha/255)),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
                                renderer.rounded_rect(list_pos_x:get_value()-1,list_pos_y:get_value()+1,172,21,color_t.new(0, 0, 0, 0),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, colorlineind:get_value().a*(specalpha/255)),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
                                renderer.rounded_rect(list_pos_x:get_value(),list_pos_y:get_value()+1,172,21,color_t.new(0, 0, 0, 0),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, colorlineind:get_value().a*(specalpha/255)),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
                                --local texture = renderer.texture(my_texturerare, vec2_t.new(list_pos_x:get_value() -35 , list_pos_y:get_value() -15 ), vec2_t.new(list_pos_x:get_value() +189, list_pos_y:get_value() +45 ), color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, colorlineind:get_value().a*(specalpha/255)))
                            end
                        else
                            specalpha = math.min(255,specalpha+20)
                            renderer.rounded_rect(list_pos_x:get_value(),list_pos_y:get_value(),172,21,color_t.new(0, 0, 0, 0),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, colorlineind:get_value().a*(specalpha/255)),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
                            renderer.rounded_rect(list_pos_x:get_value()-1,list_pos_y:get_value(),172,21,color_t.new(0, 0, 0, 0),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, colorlineind:get_value().a*(specalpha/255)),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
                            renderer.rounded_rect(list_pos_x:get_value()-1,list_pos_y:get_value()+1,172,21,color_t.new(0, 0, 0, 0),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, colorlineind:get_value().a*(specalpha/255)),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
                            renderer.rounded_rect(list_pos_x:get_value(),list_pos_y:get_value()+1,172,21,color_t.new(0, 0, 0, 0),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, colorlineind:get_value().a*(specalpha/255)),color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, 0))
                            --local texture = renderer.texture(my_texturerare, vec2_t.new(list_pos_x:get_value() -35 , list_pos_y:get_value() -15 ), vec2_t.new(list_pos_x:get_value() +189, list_pos_y:get_value() +45 ), color_t.new(colorlineind:get_value().r, colorlineind:get_value().g, colorlineind:get_value().b, colorlineind:get_value().a*(specalpha/255)))
                            --local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x:get_value(), list_pos_y:get_value()), vec2_t.new(list_pos_x:get_value() + 178, list_pos_y:get_value() + 23), color_t.new(18, 18, 18, 0))
                            --local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x:get_value(), list_pos_y:get_value() + 22),  vec2_t.new(list_pos_x:get_value() + 178, list_pos_y:get_value() + 25 + max_height + 3), color_t.new(18, 18, 18, 0))
                            --local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x:get_value(), list_pos_y:get_value()+22), vec2_t.new(list_pos_x:get_value() + 178, list_pos_y:get_value() + 23), color_t.new(182, 163, 255, 0))
                            local text = renderer.text("spectators", verdanakey, vec2_t.new(list_pos_x:get_value() + 85 - math.floor(renderer.get_text_size(spectatorsverdana, 17, "spectators").x/2), list_pos_y:get_value()+2), 16, color_t.new(0, 0, 0, specalpha))
                            local text = renderer.text("spectators", verdanakey, vec2_t.new(list_pos_x:get_value() + 86 - math.floor(renderer.get_text_size(spectatorsverdana, 17, "spectators").x/2), list_pos_y:get_value()+1), 16, color_t.new(255, 255, 255, specalpha)) 
                            --local texture = renderer.texture(my_texture, vec2_t.new(list_pos_x:get_value(), list_pos_y:get_value()), vec2_t.new(list_pos_x:get_value() + 25, list_pos_y:get_value() + 20), color_t.new(255, 255, 255, 255))
                            for i = 1, #spectators do
                                if spectators_code[i] == "bot_ct.png" then
                                    avatexture = renderer.setup_texture("./csgo/cache/mercury/bot_ct.png")
                                elseif spectators_code[i] == "bot_t.png" then
                                    avatexture = renderer.setup_texture("./csgo/cache/mercury/bot_t.png")
                                else
                                    avatexture = renderer.setup_texture("./csgo/cache/mercury/mercurytemp/" .. tostring(spectators_code[i]) .. ".jpg")
                                end
                                renderer.texture(avatexture, vec2_t.new(list_pos_x:get_value()+3, list_pos_y:get_value() + 24 + spectators_y[i].cur), vec2_t.new(list_pos_x:get_value()+15+3, list_pos_y:get_value() + 24 + spectators_y[i].cur+15), color_t.new(255, 255, 255, spectators_y[i].alpha))
    
                                if (list_pos_x:get_value() + 85 - math.floor(renderer.get_text_size(spectatorsverdana, 15, spectators[i]).x/2)) < (list_pos_x:get_value()+15+3+2) then
                                    local text = renderer.text(rec_specname(spectators[i],178), spectatorsverdana, vec2_t.new(list_pos_x:get_value() + 15+5 + 1, list_pos_y:get_value() + 24 + spectators_y[i].cur + 1), 15, color_t.new(0, 0, 0, 155*(spectators_y[i].alpha/255)))
                                    local text = renderer.text(rec_specname(spectators[i],178), spectatorsverdana, vec2_t.new(list_pos_x:get_value() + 15+5, list_pos_y:get_value() + 24 + spectators_y[i].cur), 15, color_t.new(255, 255, 255, spectators_y[i].alpha))
                                else
                                    local text = renderer.text(spectators[i], spectatorsverdana, vec2_t.new(list_pos_x:get_value() + 86 - math.floor(renderer.get_text_size(spectatorsverdana, 15, spectators[i]).x/2), list_pos_y:get_value() + 24 + spectators_y[i].cur + 1), 15, color_t.new(0, 0, 0, 155*(spectators_y[i].alpha/255)))
                                    local text = renderer.text(spectators[i], spectatorsverdana, vec2_t.new(list_pos_x:get_value() + 85 - math.floor(renderer.get_text_size(spectatorsverdana, 15, spectators[i]).x/2), list_pos_y:get_value() + 24 + spectators_y[i].cur), 15, color_t.new(255, 255, 255, spectators_y[i].alpha))
                                end
                                --cur_height = cur_height + renderer.get_text_size(spectatorsverdana, 15, spectators[i]).y + 1
                            end
                        end
                    
                        -- drag
                        local curs = renderer.get_cursor_pos()
                        if client.is_key_pressed(1) and sp_clicked_once then
                            sp_clicked_once = false
                            if curs.x >= list_pos_x:get_value() and curs.x <= list_pos_x:get_value() + 150 and curs.y >= list_pos_y:get_value() and curs.y <= list_pos_y:get_value() + 20 + max_height + 3 then
                                sp_a = curs.x - list_pos_x:get_value()
                                sp_b = curs.y - list_pos_y:get_value()
                                sp_isdrag = true
                            else
                                sp_isdrag = false
                                return
                            end
                        end
                    
                        if client.is_key_pressed(1) and ui.is_visible() and sp_isdrag then
                            list_pos_x:set_value(curs.x - sp_a)
                            list_pos_y:set_value(curs.y - sp_b)
                        end
                        
                        if not client.is_key_pressed(1) then sp_clicked_once = true end
                        --drag
                    end
                    end
                    
                    client.register_callback("paint", main)
    
    
    --Solus Spectators 
    local function main()
        if screen_ind:get_value(2) and screen_ind_style:get_value() == 2 then
    
            if not engine.is_connected() then
                if ui.is_visible() then
                    --local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x:get_value(), list_pos_y:get_value()), vec2_t.new(list_pos_x:get_value() + 178, list_pos_y:get_value() + 23), color_t.new(18, 18, 18, 0)) --в меню рендер
                    --local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x:get_value(), list_pos_y:get_value()+22), vec2_t.new(list_pos_x:get_value() + 178, list_pos_y:get_value() + 23), color_t.new(182, 163, 255, 0))
                    renderer.rounded_rect(list_pos_x:get_value(),list_pos_y:get_value(),178,21,inner_col:get_value(),upper_col:get_value(),down_col:get_value())
                    local text = renderer.text("spectators", verdana_trsp, vec2_t.new(list_pos_x:get_value() + 87 - math.floor(renderer.get_text_size(verdana_trsp, 13, "spectators").x/2), list_pos_y:get_value()+4), 13.5, color_t.new(0, 0, 0, 255))
                    local text = renderer.text("spectators", verdana_trsp, vec2_t.new(list_pos_x:get_value() + 86 - math.floor(renderer.get_text_size(verdana_trsp, 13, "spectators").x/2), list_pos_y:get_value()+3), 13.5, color_t.new(255, 255, 255, 255)) 
                    --local texture = renderer.texture(my_texturerare, vec2_t.new(list_pos_x:get_value() -35 , list_pos_y:get_value() -15 ), vec2_t.new(list_pos_x:get_value() +189, list_pos_y:get_value() +45 ), colorlineind:get_value())
                    --local texture = renderer.texture(my_texture, vec2_t.new(list_pos_x:get_value(), list_pos_y:get_value()), vec2_t.new(list_pos_x:get_value() + 25, list_pos_y:get_value() + 20), color_t.new(255, 255, 255, 255))
                    
                    -- drag
                    local curs = renderer.get_cursor_pos()
                    if client.is_key_pressed(1) and sp_clicked_once then
                        sp_clicked_once = false
                        if curs.x >= list_pos_x:get_value() and curs.x <= list_pos_x:get_value() + 178 and curs.y >= list_pos_y:get_value() and curs.y <= list_pos_y:get_value() + 20 + max_height + 3 then
                            sp_a = curs.x - list_pos_x:get_value()
                            sp_b = curs.y - list_pos_y:get_value()
                            sp_isdrag = true
                        else
                            sp_isdrag = false
                            return
                        end
                    end
                    
                    if client.is_key_pressed(1) and ui.is_visible() and sp_isdrag then
                        list_pos_x:set_value(curs.x - sp_a)
                        list_pos_y:set_value(curs.y - sp_b)
                    end
                        
                    if not client.is_key_pressed(1) then sp_clicked_once = true end
                    --drag
                end
            end
    
            local m_iTeamNum = se.get_netvar("DT_BaseEntity", "m_iTeamNum")
            --local spectators = {}
            --local spectators_code = {}
            local players = entitylist.get_players(2)
            
            if entitylist.get_local_player():is_alive() then
                for i = 1, #players do
                    local player = players[i]
                    if player ~= entitylist.get_local_player() and not player:is_alive() then
                        local index = player:get_prop_short(se.get_netvar("DT_BasePlayer", "m_hObserverTarget"))
                        if index == engine.get_local_player() then
                            ifnospec = true
                            for j = 1, #spectators do
                                if engine.get_player_info(player:get_index()).is_bot then
                                    if engine.get_player_info(player:get_index()).name == spectators[j] then ifnospec = false end
                                else
                                    if engine.get_player_info(player:get_index()).steam_id64 == spectators_code[j] then ifnospec = false end
                                end
                            end
                            if ifnospec then
                                table.insert(spectators, engine.get_player_info(player:get_index()).name)
                                if #spectators ~= 1 then
                                    table.insert(spectators_y,{cur = (renderer.get_text_size(spectatorsverdana, 15, "D").y + 1)*(#spectators-2), need = 0, alpha = 0})
                                else
                                    table.insert(spectators_y,{cur = 0, need = 0, alpha = 0})
                                end
                                if engine.get_player_info(player:get_index()).is_bot then
                                    if player:get_prop_int(m_iTeamNum) == 3 then
                                        table.insert(spectators_code, "bot_ct.png")
                                    elseif player:get_prop_int(m_iTeamNum) == 2 then
                                        table.insert(spectators_code, "bot_t.png")
                                    end
                                else
                                    table.insert(spectators_code, engine.get_player_info(player:get_index()).steam_id64)
                                end
                            end
                        end
                    end
                end
                for j = 1, #spectators do
                    ifnospec = true
                    for i = 1, #players do
                        local player = players[i]
                        if player ~= entitylist.get_local_player() and not player:is_alive() then
                            local index = player:get_prop_short(se.get_netvar("DT_BasePlayer", "m_hObserverTarget"))
                            if index == engine.get_local_player() then
                                if engine.get_player_info(player:get_index()).is_bot then
                                    if engine.get_player_info(player:get_index()).name == spectators[j] then ifnospec = false end
                                else
                                    if engine.get_player_info(player:get_index()).steam_id64 == spectators_code[j] then ifnospec = false end
                                end
                            end
                        end
                    end
                    if ifnospec then
                        table.remove(spectators,j)
                        table.remove(spectators_code,j)
                        table.remove(spectators_y,j)
                    end
                end
            else
                for i = 1, #players do
                    local player = players[i]
                    if not player:is_alive() then
                        local index = player:get_prop_short(se.get_netvar("DT_BasePlayer", "m_hObserverTarget"))
                        if index == entitylist.get_local_player():get_prop_short(se.get_netvar("DT_BasePlayer", "m_hObserverTarget")) then
                            ifnospec = true
                            for j = 1, #spectators do
                                if engine.get_player_info(player:get_index()).is_bot then
                                    if engine.get_player_info(player:get_index()).name == spectators[j] then ifnospec = false end
                                else
                                    if engine.get_player_info(player:get_index()).steam_id64 == spectators_code[j] then ifnospec = false end
                                end
                            end
                            if ifnospec then
                                table.insert(spectators, engine.get_player_info(player:get_index()).name)
                                if #spectators ~= 1 then
                                    table.insert(spectators_y,{cur = (renderer.get_text_size(spectatorsverdana, 15, "D").y + 1)*(#spectators-2), need = 0, alpha = 0})
                                else
                                    table.insert(spectators_y,{cur = 0, need = 0, alpha = 0})
                                end
                                if engine.get_player_info(player:get_index()).is_bot then
                                    if player:get_prop_int(m_iTeamNum) == 3 then
                                        table.insert(spectators_code, "bot_ct.png")
                                    elseif player:get_prop_int(m_iTeamNum) == 2 then
                                        table.insert(spectators_code, "bot_t.png")
                                    end
                                else
                                    table.insert(spectators_code, engine.get_player_info(player:get_index()).steam_id64)
                                end
                            end
                        end
                    end
                end
                for j = 1, #spectators do
                    ifnospec = true
                    for i = 1, #players do
                        local player = players[i]
                        if not player:is_alive() then
                            local index = player:get_prop_short(se.get_netvar("DT_BasePlayer", "m_hObserverTarget"))
                            if index == entitylist.get_local_player():get_prop_short(se.get_netvar("DT_BasePlayer", "m_hObserverTarget")) then
                                if engine.get_player_info(player:get_index()).is_bot then
                                    if engine.get_player_info(player:get_index()).name == spectators[j] then ifnospec = false end
                                else
                                    if engine.get_player_info(player:get_index()).steam_id64 == spectators_code[j] then ifnospec = false end
                                end
                            end
                        end
                    end
                    if ifnospec then
                        table.remove(spectators,j)
                        table.remove(spectators_code,j)
                        table.remove(spectators_y,j)
                    end
                end
            end
    
            for i = 1, #spectators do
                spectators_y[i].need = (renderer.get_text_size(spectatorsverdana, 15, spectators[i]).y + 1)*(i-1)
                spectators_y[i].cur = spectators_y[i].cur<spectators_y[i].need and (spectators_y[i].cur + (spectators_y[i].need-spectators_y[i].cur)*0.3) or spectators_y[i].cur>spectators_y[i].need and (spectators_y[i].cur - (spectators_y[i].cur-spectators_y[i].need)*0.3) or spectators_y[i].cur
                spectators_y[i].alpha = math.min(255,spectators_y[i].alpha+15)
            end
    
            local max_height = 0
            --local cur_height = 0
                    
            for i = 1, #spectators do
                max_height = max_height + renderer.get_text_size(spectatorsverdana, 15, spectators[i]).y + 1
            end
              
            for i = 1, #players do
                local pl_id = engine.get_player_info(players[i]:get_index()).steam_id64
                ifyesava = false
                for j = 1, #ava do
                    if pl_id == ava[j] then
                        ifyesava = true
                    end
                end
                if not ifyesava then
                    local local_info = pl_id
                    local avag1 = http.get("https://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=C098D0A31D6ED20D8E746656083C918E&steamids=" .. local_info, function (success, response)
                        if response.status ~= 200 then
                            client.notify("Cannot get avatar")
                            error(response.status)
                        else
                            avacode = response.body
                            ava_i,ava_j = string.find(avacode,'"avatar":"')
                            ava_i1,ava_j1 = string.find(avacode,'","avatarmedium"')
                            avacode = string.sub(avacode,ava_j+1,ava_i1-1)
                            Download_ava(avacode, "./csgo/cache/mercury/mercurytemp/" .. local_info ..".jpg")
                        end
                    end) 
                    table.insert(ava, local_info)
                end
            end
    
            --local my_texture = renderer.setup_texture("./csgo/cache/mercury/112.png")
            if #spectators == 0 then
                specalpha = math.max(0,specalpha-15)
                if ui.is_visible() then
                    --local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x:get_value(), list_pos_y:get_value()), vec2_t.new(list_pos_x:get_value() + 178, list_pos_y:get_value() + 23), color_t.new(18, 18, 18, 0)) --в меню рендер
                    --local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x:get_value(), list_pos_y:get_value()+22), vec2_t.new(list_pos_x:get_value() + 178, list_pos_y:get_value() + 23), color_t.new(182, 163, 255, 0))
                    renderer.rounded_rect(list_pos_x:get_value(),list_pos_y:get_value(),178,21,inner_col:get_value(),upper_col:get_value(),down_col:get_value())
                    local text = renderer.text("spectators", verdana_trsp, vec2_t.new(list_pos_x:get_value() + 87 - math.floor(renderer.get_text_size(verdana_trsp, 13, "spectators").x/2), list_pos_y:get_value()+4), 13.5, color_t.new(0, 0, 0, 255))
                    local text = renderer.text("spectators", verdana_trsp, vec2_t.new(list_pos_x:get_value() + 86 - math.floor(renderer.get_text_size(verdana_trsp, 13, "spectators").x/2), list_pos_y:get_value()+3), 13.5, color_t.new(255, 255, 255, 255)) 
                    --local texture = renderer.texture(my_texturerare, vec2_t.new(list_pos_x:get_value() -35 , list_pos_y:get_value() -15 ), vec2_t.new(list_pos_x:get_value() +189, list_pos_y:get_value() +45 ), colorlineind:get_value())
                    --local texture = renderer.texture(my_texture, vec2_t.new(list_pos_x:get_value(), list_pos_y:get_value()), vec2_t.new(list_pos_x:get_value() + 25, list_pos_y:get_value() + 20), color_t.new(255, 255, 255, 255))
                else
                    renderer.rounded_rect(list_pos_x:get_value(),list_pos_y:get_value(),178,21,color_t.new(inner_col:get_value().r,inner_col:get_value().g,inner_col:get_value().b,inner_col:get_value().a*(specalpha/255)),color_t.new(upper_col:get_value().r,upper_col:get_value().g,upper_col:get_value().b,upper_col:get_value().a*(specalpha/255)),color_t.new(down_col:get_value().r,down_col:get_value().g,down_col:get_value().b,down_col:get_value().a*(specalpha/255)))
                    local text = renderer.text("spectators", verdana_trsp, vec2_t.new(list_pos_x:get_value() + 87 - math.floor(renderer.get_text_size(verdana_trsp, 13, "spectators").x/2), list_pos_y:get_value()+4), 13.5, color_t.new(0, 0, 0, specalpha))
                    local text = renderer.text("spectators", verdana_trsp, vec2_t.new(list_pos_x:get_value() + 86 - math.floor(renderer.get_text_size(verdana_trsp, 13, "spectators").x/2), list_pos_y:get_value()+3), 13.5, color_t.new(255, 255, 255, specalpha)) 
                end
            else
                specalpha = math.min(255,specalpha+20)
                --local texture = renderer.texture(my_texturerare, vec2_t.new(list_pos_x:get_value() -35 , list_pos_y:get_value() -15 ), vec2_t.new(list_pos_x:get_value() +189, list_pos_y:get_value() +45 ), colorlineind:get_value())
                --local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x:get_value(), list_pos_y:get_value()), vec2_t.new(list_pos_x:get_value() + 178, list_pos_y:get_value() + 23), color_t.new(18, 18, 18, 0))
                --local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x:get_value(), list_pos_y:get_value() + 22),  vec2_t.new(list_pos_x:get_value() + 178, list_pos_y:get_value() + 25 + max_height + 3), color_t.new(18, 18, 18, 0))
                --local rect_filled = renderer.rect_filled(vec2_t.new(list_pos_x:get_value(), list_pos_y:get_value()+22), vec2_t.new(list_pos_x:get_value() + 178, list_pos_y:get_value() + 23), color_t.new(182, 163, 255, 0))
                renderer.rounded_rect(list_pos_x:get_value(),list_pos_y:get_value(),178,21,color_t.new(inner_col:get_value().r,inner_col:get_value().g,inner_col:get_value().b,inner_col:get_value().a*(specalpha/255)),color_t.new(upper_col:get_value().r,upper_col:get_value().g,upper_col:get_value().b,upper_col:get_value().a*(specalpha/255)),color_t.new(down_col:get_value().r,down_col:get_value().g,down_col:get_value().b,down_col:get_value().a*(specalpha/255)))
                local text = renderer.text("spectators", verdana_trsp, vec2_t.new(list_pos_x:get_value() + 87 - math.floor(renderer.get_text_size(verdana_trsp, 13, "spectators").x/2), list_pos_y:get_value()+4), 13.5, color_t.new(0, 0, 0, specalpha))
                local text = renderer.text("spectators", verdana_trsp, vec2_t.new(list_pos_x:get_value() + 86 - math.floor(renderer.get_text_size(verdana_trsp, 13, "spectators").x/2), list_pos_y:get_value()+3), 13.5, color_t.new(255, 255, 255, specalpha)) 
                --local texture = renderer.texture(my_texture, vec2_t.new(list_pos_x:get_value(), list_pos_y:get_value()), vec2_t.new(list_pos_x:get_value() + 25, list_pos_y:get_value() + 20), color_t.new(255, 255, 255, 255))
                for i = 1, #spectators do
                    if spectators_code[i] == "bot_ct.png" then
                        avatexture = renderer.setup_texture("./csgo/cache/mercury/bot_ct.png")
                    elseif spectators_code[i] == "bot_t.png" then
                        avatexture = renderer.setup_texture("./csgo/cache/mercury/bot_t.png")
                    else
                        avatexture = renderer.setup_texture("./csgo/cache/mercury/mercurytemp/" .. tostring(spectators_code[i]) .. ".jpg")
                    end
                    renderer.texture(avatexture, vec2_t.new(list_pos_x:get_value()+3, list_pos_y:get_value() + 24 + spectators_y[i].cur), vec2_t.new(list_pos_x:get_value()+15+3, list_pos_y:get_value() + 24 + spectators_y[i].cur+15), color_t.new(255, 255, 255, spectators_y[i].alpha))
    
                    if (list_pos_x:get_value() + 85 - math.floor(renderer.get_text_size(spectatorsverdana, 15, spectators[i]).x/2)) < (list_pos_x:get_value()+15+3+2) then
                        local text = renderer.text(rec_specname(spectators[i],178), spectatorsverdana, vec2_t.new(list_pos_x:get_value() + 15+5 + 1, list_pos_y:get_value() + 24 + spectators_y[i].cur + 1), 15, color_t.new(0, 0, 0, 155*(spectators_y[i].alpha/255)))
                        local text = renderer.text(rec_specname(spectators[i],178), spectatorsverdana, vec2_t.new(list_pos_x:get_value() + 15+5, list_pos_y:get_value() + 24 + spectators_y[i].cur), 15, color_t.new(255, 255, 255, spectators_y[i].alpha))
                    else
                        local text = renderer.text(spectators[i], spectatorsverdana, vec2_t.new(list_pos_x:get_value() + 86 - math.floor(renderer.get_text_size(spectatorsverdana, 15, spectators[i]).x/2), list_pos_y:get_value() + 24 + spectators_y[i].cur + 1), 15, color_t.new(0, 0, 0, 155*(spectators_y[i].alpha/255)))
                        local text = renderer.text(spectators[i], spectatorsverdana, vec2_t.new(list_pos_x:get_value() + 85 - math.floor(renderer.get_text_size(spectatorsverdana, 15, spectators[i]).x/2), list_pos_y:get_value() + 24 + spectators_y[i].cur), 15, color_t.new(255, 255, 255, spectators_y[i].alpha))
                    end
                    --cur_height = cur_height + renderer.get_text_size(spectatorsverdana, 15, spectators[i]).y + 1
                end
            end
                    
            -- drag
            local curs = renderer.get_cursor_pos()
            if client.is_key_pressed(1) and sp_clicked_once then
                sp_clicked_once = false
                if curs.x >= list_pos_x:get_value() and curs.x <= list_pos_x:get_value() + 178 and curs.y >= list_pos_y:get_value() and curs.y <= list_pos_y:get_value() + 20 + max_height + 3 then
                    sp_a = curs.x - list_pos_x:get_value()
                    sp_b = curs.y - list_pos_y:get_value()
                    sp_isdrag = true
                else
                    sp_isdrag = false
                    return
                end
            end
                    
            if client.is_key_pressed(1) and ui.is_visible() and sp_isdrag then
                list_pos_x:set_value(curs.x - sp_a)
                list_pos_y:set_value(curs.y - sp_b)
            end
                        
            if not client.is_key_pressed(1) then sp_clicked_once = true end
            --drag
        end
    end          
    client.register_callback("paint", main)
   
                    --#2INDICATORS
                    
                    
    
                    local indpanel_pos_x = ui.add_slider_int("X", "xidnpanelhdf9sgh32", 0, engine.get_screen_size().x, 100)
                    local indpanel_pos_y = ui.add_slider_int("Y", "yidnpanelhdf9sgh32", 0, engine.get_screen_size().y, 200)
                    indpanel_pos_x:set_visible(false) indpanel_pos_y:set_visible(false)
                    local m_vecVelocity = {
                        [0] = se.get_netvar("DT_BasePlayer", "m_vecVelocity[0]"),
                        [1] = se.get_netvar("DT_BasePlayer", "m_vecVelocity[1]")
                    }
                    local m_iClip1 = se.get_netvar("DT_BaseCombatWeapon", "m_iClip1")
                    
                    
                    
                    
                    
                    
                    client.register_callback("paint", function()
                        if not indiki:get_value(2) or not engine.is_connected() then return end
                        if entitylist.get_local_player():is_alive()  then
                        renderer.rect_filled(vec2_t.new(indpanel_pos_x:get_value(), indpanel_pos_y:get_value()), vec2_t.new(indpanel_pos_x:get_value()+350, indpanel_pos_y:get_value()+80), color_t.new(15, 15, 15, 210))
                        renderer.rect_filled(vec2_t.new(indpanel_pos_x:get_value(), indpanel_pos_y:get_value()), vec2_t.new(indpanel_pos_x:get_value()+350, indpanel_pos_y:get_value()+20), color_t.new(15, 15, 15, 255))
                        renderer.rect_filled(vec2_t.new(indpanel_pos_x:get_value(), indpanel_pos_y:get_value()+19), vec2_t.new(indpanel_pos_x:get_value()+350, indpanel_pos_y:get_value()+20), color_t.new(182, 163, 255, 255))
                        renderer.text("INDICATORS", panellfont1, vec2_t.new(indpanel_pos_x:get_value() + 175 - renderer.get_text_size(panellfont1, 15, "INDICATORS").x/2, indpanel_pos_y:get_value()+3), 15, color_t.new(255, 255, 255, 255))
                        renderer.text("BULLETS", panellfont, vec2_t.new(indpanel_pos_x:get_value() + 5, indpanel_pos_y:get_value()+25), 12, color_t.new(255, 255, 255, 255))
                        local weapon = entitylist.get_entity_from_handle(entitylist.get_local_player():get_prop_int(se.get_netvar("DT_BaseCombatCharacter", "m_hActiveWeapon")))
                        local clip_val = math.max(weapon:get_prop_int(m_iClip1),1)
                        local max_clip_val = math.max(weapon_data(weapon).max_clip,1)
                        renderer.rect_filled(vec2_t.new(indpanel_pos_x:get_value()+55-1, indpanel_pos_y:get_value()+44-18-1), vec2_t.new(indpanel_pos_x:get_value()+55+(290/max_clip_val)*clip_val+1, indpanel_pos_y:get_value()+55-18+1), color_t.new(101, 149, 255, 55))
                        renderer.rect_filled(vec2_t.new(indpanel_pos_x:get_value()+55, indpanel_pos_y:get_value()+44-18), vec2_t.new(indpanel_pos_x:get_value()+55+(290/max_clip_val)*clip_val, indpanel_pos_y:get_value()+55-18), color_t.new(101, 149, 255, 255))
                        renderer.rect_filled(vec2_t.new(indpanel_pos_x:get_value()+55+1, indpanel_pos_y:get_value()+44-18+1), vec2_t.new(indpanel_pos_x:get_value()+55+(290/max_clip_val)*clip_val-1, indpanel_pos_y:get_value()+55-18-1), color_t.new(67, 93, 180, 255))
                        renderer.text("FAKELAG", panellfont, vec2_t.new(indpanel_pos_x:get_value() + 5, indpanel_pos_y:get_value()+43), 12, color_t.new(255, 255, 255, 255))
                        renderer.rect_filled(vec2_t.new(indpanel_pos_x:get_value()+55-1, indpanel_pos_y:get_value()+44-1), vec2_t.new(indpanel_pos_x:get_value()+55+(290/14)*clientstate.get_choked_commands()+1, indpanel_pos_y:get_value()+55+1), color_t.new(101, 149, 255, 55))
                        renderer.rect_filled(vec2_t.new(indpanel_pos_x:get_value()+55, indpanel_pos_y:get_value()+44), vec2_t.new(indpanel_pos_x:get_value()+55+(290/14)*clientstate.get_choked_commands(), indpanel_pos_y:get_value()+55), color_t.new(101, 149, 255, 255))
                        renderer.rect_filled(vec2_t.new(indpanel_pos_x:get_value()+55+1, indpanel_pos_y:get_value()+44+1), vec2_t.new(indpanel_pos_x:get_value()+55+(290/14)*clientstate.get_choked_commands()-1, indpanel_pos_y:get_value()+55-1), color_t.new(67, 93, 180, 255))
                        renderer.text("VELOCITY", panellfont, vec2_t.new(indpanel_pos_x:get_value() + 3, indpanel_pos_y:get_value()+61), 12, color_t.new(255, 255, 255, 255))
                        local localPlayer = entitylist.get_local_player()
                        local velocity = math.min(math.sqrt(localPlayer:get_prop_float(m_vecVelocity[0]) ^ 2 + localPlayer:get_prop_float(m_vecVelocity[1]) ^ 2),320)
                        renderer.rect_filled(vec2_t.new(indpanel_pos_x:get_value()+55-1, indpanel_pos_y:get_value()+44+18-1), vec2_t.new(indpanel_pos_x:get_value()+55+velocity/1.10344827586+1, indpanel_pos_y:get_value()+55+18+1), color_t.new(101, 149, 255, 55))
                        renderer.rect_filled(vec2_t.new(indpanel_pos_x:get_value()+55, indpanel_pos_y:get_value()+44+18), vec2_t.new(indpanel_pos_x:get_value()+55+velocity/1.10344827586, indpanel_pos_y:get_value()+55+18), color_t.new(101, 149, 255, 255))
                        renderer.rect_filled(vec2_t.new(indpanel_pos_x:get_value()+55+1, indpanel_pos_y:get_value()+44+18+1), vec2_t.new(indpanel_pos_x:get_value()+55+velocity/1.10344827586-1, indpanel_pos_y:get_value()+55+18-1), color_t.new(67, 93, 180, 255))
                        local panellwidth = 350
                        local panellheight = 80
                        local panellcurs = renderer.get_cursor_pos()
                        if client.is_key_pressed(1) and panelled_once then
                            panelled_once = false
                            if panellcurs.x >= indpanel_pos_x:get_value() and panellcurs.x <= indpanel_pos_x:get_value() + panellwidth and panellcurs.y >= indpanel_pos_y:get_value() and panellcurs.y <= indpanel_pos_y:get_value() + panellheight then
                                pannel_a = panellcurs.x - indpanel_pos_x:get_value()
                                pannel_b = panellcurs.y - indpanel_pos_y:get_value()
                                panel_isdrag = true
                            else
                                panel_isdrag = false
                                return
                            end
                        end
                        if client.is_key_pressed(1) and ui.is_visible() and panel_isdrag then
                            indpanel_pos_x:set_value(panellcurs.x - pannel_a)
                            indpanel_pos_y:set_value(panellcurs.y - pannel_b)
                        end
                        if not client.is_key_pressed(1) then panelled_once = true end
                    end
                    end)
                    
                    
                    
                    
                    -- [BUYBOT]
                    
                    client.register_callback("round_start", function(event)
                        is_round_started = true
                    end)
                    
                    client.register_callback("round_prestart", function(event)
                        is_round_started = true
                    end)
                    
                    
                    
                    
                    client.register_callback("create_move", function(cmd)
                        
                        if is_round_started then
                            buy_bot( )
                            is_round_started = false
                        end
                    
                    end)
                    
                    is_round_started = false
                    
                    pistols_list = {
                        ["0"] = "",
                        ["1"] = "buy glock; buy hkp2000; buy usp_silencer;",
                        ["2"] = "buy elite;",
                        ["3"] = "buy p250;",
                        ["4"] = "buy tec9; buy fiveseven;",
                        ["5"] = "buy deagle; buy revolver;",
                    }
                    
                    pistols_name_list = {
                    
                        "None",
                        "Glock-18/HKP2000/USP-S",
                        "Dual Berretas",
                        "P250",
                        "Tec-9/Five7",
                        "Deagle/Revolver"
                    
                    }
                    
                    weapons_list = {
                        ["0"] = "",
                        ["1"] = "buy ssg08;",
                        ["2"] = "buy awp;",
                        ["3"] = "buy scar20; buy g3sg1;",
                        ["4"] = "buy galilar; buy famas;",
                        ["5"] = "buy ak47; buy m4a1; buy m4a1_silencer;",
                        ["6"] = "buy sg556; buy aug;",
                        ["7"] = "buy nova;",
                        ["8"] = "buy xm1014;",
                        ["9"] = "buy mag7;",
                        ["10"] = "buy m249;",
                        ["11"] = "buy negev;",
                        ["12"] = "buy mac10; buy mp9;",
                        ["13"] = "buy mp7;",
                        ["14"] = "buy ump45;",
                        ["15"] = "buy p90;",
                        ["16"] = "buy bizon;"
                    }
                    
                    weapons_name_list = {
                    
                        "None",
                        "SSG08",
                        "AWP",
                        "Scar20/G3SG1",
                        "GalilAR/Famas",
                        "AK-47/M4A1",
                        "AUG/SG556",
                        "Nova",
                        "XM1014",
                        "Mag-7",
                        "M249",
                        "Negev",
                        "Mac-10/MP9",
                        "MP7",
                        "UMP-45",
                        "P90",
                        "Bizon"
                    
                    }
                    
                    other_list = {
                        ["0"] = "buy vesthelm;",
                        ["1"] = "buy hegrenade;",
                        ["2"] = "buy molotov; buy incgrenade;",
                        ["3"] = "buy smokegrenade;",
                        ["4"] = "buy taser;",
                        ["5"] = "buy defuser;"
                    }
                    
                    other_name_list = {
                    
                        "Armor",
                        "HE",
                        "Molotov/Incgrenade",
                        "Smoke",
                        "Taser",
                        "Defuser"
                    
                    }
                    
                     function buy_bot( )
                    
                         pistol = pistols_list[tostring(buy_pistol:get_value(""))]
                         weapon = weapons_list[tostring(buy_weapon:get_value(""))]
                         other  = ""
                    
                        for i = 0, 5 do
                            other = other..(buy_other:get_value(i) and other_list[tostring(i)] or "")
                        end
                    
                        engine.execute_client_cmd(pistol)
                        engine.execute_client_cmd(weapon)
                        engine.execute_client_cmd(other)
                    
                    end
                    buy_pistol = ui.add_combo_box("Pistol", "_pistols", pistols_name_list, 0)
                    buy_weapon = ui.add_combo_box("Weapon", "_weapons", weapons_name_list, 0)
                    buy_other = ui.add_multi_combo_box("Other", "_other", other_name_list, { false, false, false, false, false, false })
                    --antibackstab
                    
                    
                    
                    local m_vecOrigin = se.get_netvar("DT_BaseEntity", "m_vecOrigin")
                    local bcks_once = false
                    local bcks_pitch = ui.get_combo_box("antihit_antiaim_pitch"):get_value()
                    local bcks_yaw = ui.get_combo_box("antihit_antiaim_yaw"):get_value()
                    
                    function normalize_angles( angles_var, delta_var )
                        if delta_var.x >= 0 then
                            angles_var.yaw = angles_var.yaw + 180
                        end
                    
                        if angles_var.yaw <= -180 then
                            angles_var.yaw = angles_var.yaw + 360
                        end
                    
                        if angles_var.yaw >= 180 then
                            angles_var.yaw = angles_var.yaw - 360
                        end
                    end
                    
                    function calculate_angles( start, to )
                    
                        if antibackstab:get_value() then
                        
                        local new_angles_var = angle_t.new(0,0,0)
                        
                        local delta_between_positions = vec3_t.new(start.x - to.x, start.y - to.y, start.z - to.z)
                        local calculate_position = math.sqrt(delta_between_positions.x*delta_between_positions.x + delta_between_positions.y*delta_between_positions.y)
                    
                        new_angles_var.pitch = math.atan(delta_between_positions.z / calculate_position) * 180 / math.pi
                        new_angles_var.yaw = math.atan(delta_between_positions.y / delta_between_positions.x) * 180 / math.pi
                        new_angles_var.roll = 0
                    
                        normalize_angles( new_angles_var, delta_between_positions )
                    
                        return new_angles_var
                    
                    end
                end
                    client.register_callback("create_move", function(cmd)
                        if antibackstab:get_value() then
                        if not bcks_once then
                            bcks_pitch = ui.get_combo_box("antihit_antiaim_pitch"):get_value()
                            bcks_yaw = ui.get_combo_box("antihit_antiaim_yaw"):get_value()
                        end
                        local bcks_prev = 91256128291469128741
                        local bcks_right = nil
                        local players = entitylist.get_players(0)
                        local localplayer = entitylist.get_local_player()
                        local bcks3 = localplayer:get_prop_vector(m_vecOrigin)
                        for i = 1, #players do
                            local bcks_en = players[i]:get_prop_vector(m_vecOrigin)
                            if players[i]:is_alive() and (weapon_data(entitylist.get_entity_from_handle( players[i]:get_prop_int( se.get_netvar( "DT_BaseCombatCharacter", "m_hActiveWeapon" ) ) )).type==1) then
                                bcks_right = bcks_prev > bcks3:dist_to(bcks_en) and bcks_en or bcks_right
                                bcks_prev = math.min(bcks_prev, bcks3:dist_to(bcks_en))
                            end
                        end
                    
                        local local_origin = entitylist.get_local_player():get_prop_vector(se.get_netvar("DT_BaseEntity", "m_vecOrigin"))
                        local player_origin = bcks_right
                    
                        local current_dist = vec3_t.new( local_origin.x - player_origin.x, local_origin.y - player_origin.y, local_origin.z - player_origin.z ):length()
                        local current_angles = calculate_angles(local_origin, player_origin)
                    
                        if math.floor(current_dist) <= distance_bcks:get_value() then
                            ui.get_combo_box("antihit_antiaim_pitch"):set_value(0)
                            ui.get_combo_box("antihit_antiaim_yaw"):set_value(0)
                            cmd.viewangles = current_angles
                            bcks_once = true
                        elseif bcks_once then
                            ui.get_combo_box("antihit_antiaim_pitch"):set_value(bcks_pitch)
                            ui.get_combo_box("antihit_antiaim_yaw"):set_value(bcks_yaw)
                            bcks_once = false
                        end
                    end
                    end)
                    
                    local function draw_circle_3d(pos, points, radius, clr, filled, filled_clr)
                        local step = math.pi * 2 / points
                    
                        local vec_points = {}
                    
                        local z = pos.z
                    
                        for i = 0.0, math.pi * 2.0, step do
                            local start = vec3_t.new(
                                radius * math.cos(i) + pos.x,
                                radius * math.sin(i) + pos.y,
                                z
                            )
                    
                            local start2d = se.world_to_screen(start)
                    
                            if start2d then
                                table.insert(vec_points, start2d)
                            end
                        end
                    
                        if filled then
                            renderer.filled_polygon(vec_points, filled_clr)
                        end
                    
                        for i = 1, #vec_points, 1 do
                            local point = vec_points[i]
                            local next_point = vec_points[i + 1] and vec_points[i + 1] or vec_points[1]
                    
                            renderer.line(point, next_point, clr)
                        end
                    end
                    
                    client.register_callback("paint", function()
                        if antibackstab:get_value() then
                        if not show_radius:get_value() then return end
                        local bcks3 = entitylist.get_local_player():get_prop_vector(m_vecOrigin)
                        draw_circle_3d(bcks3, 100, distance_bcks:get_value(), rad_color:get_value(), false, rad_color:get_value())
                        end
                    end)
    
    --ANTIDEFENSIVE SWITCH
    tmmenu_once = false
    tmmenu_once1 = true
    client.register_callback("paint", function()
        local lcget = se.get_convar("cl_lagcompensation")
        local lc_val = lcget:get_int()
        if tmmenu_once1 then
            tmmenu_once1 = false
            antidef_switch:set_value(lc_val==0 and true or false)
        end
        local cl_aneed = antidef_switch:get_value() and 0 or 1
        if engine.is_connected() then
            if tmmenu_once then
                tmmenu_once = false
                engine.execute_client_cmd("teammenu")
            end
            if cl_aneed ~= lc_val then
                tmmenu_once = true
                engine.execute_client_cmd("jointeam 1")
                lcget:set_int(cl_aneed)
                engine.execute_client_cmd("teammenu")
            end
        else
            if cl_aneed ~= lc_val then
                lcget:set_int(cl_aneed)
            end
        end
    end)            
        end --//конец hwid[ffi]
