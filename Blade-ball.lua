local NEVERWIN = loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/NEVERWIN/main/source.lua"))()

local Window = NEVERWIN:AddWindow("星月刀刃球","刀刃球 | VERSION BETA 1.0.0 | 测试版")

Window:AddTabLabel('Tab Section')

local Tab = Window:AddTab('功能')

local SectionLeft = Tab:AddSection('Main',"left")

local SectionRight = Tab:AddSection('ESP',"right")

SectionLeft:AddToggle('自动击球',false,function(val)
     _G.Config = {
    MinDistance =0.5,
    DelBallSpeed =0.25,
    Battingtime =0.0001,
    CloseCombatMode = "MinDistance"
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Parry%20V4.0.0",true))()
end)

SectionLeft:AddToggle('自动击球[2]',false,function(val)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tangxianchun/550fx/main/autoParry2.lua"))()
  end)

SectionLeft:AddToggle('连击:使用方法按住防御键',false,function(val)
	getgenv().SpamSpeed = 1
loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Spam",true))()
end)

SectionLeft:AddToggle('自动连击',false,function(val)
    getgenv().SpamSpeed = 1
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tangxianchun/550fx/main/autospam.lua"))()
  end)

SectionLeft:AddSlider('无',1,100,4,function(val)
	print('slide',val)
end)

SectionRight:AddToggle('无',false,function(val)
	print('toggle',val)
end)



local Tab = Window:AddTab('信息')

local a = Tab:AddSection('作者',"left")

local b = Tab:AddSection('日月星辰工作室',"right")

a:AddLabel('日月 official | 日月~ikWYZ')
