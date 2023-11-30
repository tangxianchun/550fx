 local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tangxianchun/550fx/main/daorenqiuUI.lua", true))()

 local win = lib:Create("星月交辉","刀刃球") 
 local a = win:tab("脚本",true) 
 local b = win:tab("其他",false)
 local c = win:tab("信息",false)  
 
 a:label("欢迎您，亲爱的"..game.Players.LocalPlayer.Name.. "")
 
 a:label("你的注入器"..identifyexecutor())
 
 b:button("人物基础脚本",function()
 loadstring(game:HttpGet("https://pastebin.com/raw/De4aYHDY"))()
 end)
 
 b:button("无限产量",function()
 --控制面板
 
local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

 a:button("xdevslasher",function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/xdevslasher/Siriusisbetter/main/xyz.bb.lua",true))()
 end)

 a:button("MainLoader",function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
 end)

 a:button("GBiFB5kE",function()
  loadstring(game:HttpGet("https://pastebin.com/raw/GBiFB5kE"))()
 end)

 a:button("GenesisZ_Loader",function() 
  loadstring(game:Https("https://raw.githubusercontent.com/SyrTop/GenZ/main/GenesisLoader/GenesisZ_Loader.txt"))()
 end)
  
 a:button("SymphonyHub『需密钥』",function() 
     local a,b,c,d=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,"https://itsjidy.github.io/SymphonyHub/Loader.html"c(a and b, "Your Executor does not support.")a(b({Url=d,Method="GET"}).Body)()
 end) 
 
  a:button("REDzHUB",function() 
     loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BladeBall/main/eng"))()
 end) 
 
 a:button("catsus",function() 
    _G.Config = {
    MinDistance = 0.5,
    DelBallSpeed = 0.15 or 0.25 or 0.35,
}
_G.CloseCombatMode = "Lag" -- [ "Lag","NotLag"  ] 

_G.UI_Size = 30 -- config ui size

loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/-beta-/main/AutoParry.lua"))()
 end) 
 
 a:button("Red Circl and Inferno",function() 
     --⭕Red Circle Auto-Block:
     
getgenv().visualizer = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/RedCircleBlock"))()
-- CLICK 'X' TO ENABLE SPAM MODE

-- 🔥Inferno Hub V2:

loadstring(game:HttpGet("https://github.com/SadlekAski/Scripts/raw/main/Blade%20Ball/Equip%20any%20ability.lua"))()
 end)
 
 a:button("Luax-crack",function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/OopssSorry/luax-crack/main/loader.lua"))()
 end) 
 
 a:button("nexus",function() 
     loadstring(game:HttpGet("https://raw.githubusercontent.com/s-o-a-b/nexus/main/loadstring"))()
 end) 
 a:button("free-fuji『密钥：FreeFuji』",function() 
     loadstring(game:HttpGet("https://shz.al/~free-fuji-v2"))()
 end) 
 
 a:button("Hosvile『主』",function() 
     _G.Config = {
    MinDistance = 10,
    DelBallSpeed = 0.000000000000000001,
}
_G.CloseCombatMode = "ping"

_G.UI_Size = 10 -- config ui size

loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Parry%20V4.0.0",true))()
 end) 

a:button("ThatSick『密钥：INDISCORD』",function()
 script_key=""; -- Put your key here if you have VIP
loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatSick/HighlightMM2/main/Main"))()
end)
  
 b:toggle("摆设",true,function(v) 
     
 end) 
 
 b:input("消息","在此键入...",true,function(v) 
     print(v)     
 end) 
  
 c:label("由星月交辉制作") 
  
