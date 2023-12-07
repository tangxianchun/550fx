local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("星月交辉刀刃球 V2")

local Bladeball = PhantomForcesWindow:NewSection("刀刃球")

Bladeball:CreateToggle("Auto Parry ", function()loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Parry",true))()
  end)

Bladeball:CreateToggle("Auto Spam V1 (Credits=JoeHub)", function()loadstring(game:HttpGet("https://raw.githubusercontent.com/DonGabrielle/AutoDetectV4/main/MainBalls"))()
end)

Bladeball:CreateButton("Auto Spam V2", function()loadstring(game:HttpGet("https://pastebin.com/raw/t2391h1A"))()
end)

Bladeball:CreateToggle("AutoDetectV1", function ()loadstring(game:HttpGet(('https://pastebin.com/raw/HPNBFGSf'),true))()
end)

Bladeball:CreateButton("ToggleBlockSpam:By Hosvile", function()game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Script by Hosvile",
    Text = "Hold Block button to Spam",
    Duration = 5
})

getgenv().SpamSpeed = 25 -- 1-25

if not getgenv().exeSpam then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/Toggle%20Block%20Spam",true))()
end

getgenv().exeSpam = true
  end)

Bladeball:CreateButton("Fps Booster", function()_G.Settings = {
    Players = {
        ["Ignore Me"] = true, -- Ignore your Character
        ["Ignore Others"] = true-- Ignore other Characters
    },
    Meshes = {
        Destroy = false, -- Destroy Meshes
        LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
    },
    Images = {
        Invisible = true, -- Invisible Images
        LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
        Destroy = false, -- Destroy Images
    },
    ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
    ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
    ["No Explosions"] = true, -- Makes Explosion's invisible
    ["No Clothes"] = true, -- Removes Clothing from the game
    ["Low Water Graphics"] = true, -- Removes Water Quality
    ["No Shadows"] = true, -- Remove Shadows
    ["Low Rendering"] = true, -- Lower Rendering
    ["Low Quality Parts"] = true -- Lower quality parts
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
  end)

Bladeball:CreateToggle("Destroy Particle", function()loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/Destroy%20Particle%20Emitters",true))()
  end)

Bladeball:CreateButton("HoldToSpam:By Hosvile",
function()getgenv().SpamSpeed = 9
loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Spam",true))()
  end) 

Bladeball:CreateToggle("Aiming Mechanism", 
function()loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/M%3ABlade%20Ball%20Mechanism",true))()
  end)
  
BladeBall:CreateToggle("Auto Clash", 
function()loadstring(game:HttpGet("https://pastebin.com/raw/t2391h1A"))()
 end)
