local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local v23 = Instance.new("ScreenGui")
local v24 = Instance.new("Frame")
local v25 = Instance.new("TextButton")
v23.Name = "GodmodeMobile"
v23.Parent = game:WaitForChild("CoreGui")
v23.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
game:GetService("CoreGui").GodmodeMobile.Enabled = false
v24.Parent = v23
v24.BackgroundColor3 = Color3.fromRGB(405 - (255 + 150), 255, 0 + 0)
v24.Position = UDim2.new(0.412993044, 0, 0.0562249012 + 0, 0)
v24.Size = UDim2.new(0 - 0, 645 - 445, 0, 1785 - (404 + 1335))
v25.Parent = v24
v25.BackgroundColor3 = Color3.fromRGB(661 - (183 + 223), 0 - 0, 0 + 0)
v25.Position = UDim2.new(0.0350000001 + 0, 0, 0.0652173907, 0)
v25.Size = UDim2.new(337 - (10 + 327), 187, 0, 40)
v25.Font = Enum.Font.SourceSans
v25.Text = "上帝模式:关/开"
v25.TextColor3 = Color3.fromRGB(0 + 0, 0, 0)
v25.TextSize = 374 - (118 + 220)
v25.MouseButton1Down:connect(function()
	if _G.godkuy == true then
		local v238 = 0
		local v239
		local v240
		local v241
		while true do
			if v238 == (1 + 1) then
				v239 = game.Players.LocalPlayer.Character:FindFirstChild("Collision")
				v239.Position = v239.Position + Vector3.new(449 - (108 + 341), 5, 0)
				v240 = nil
				v238 = 2 + 1
			end
			if v238 == (21 - 16) then
				v241.Volume = 1498 - (711 + 782)
				v241.PlayOnRemove = true
				v241:Destroy()
				break
			end
			if v238 == (5 - 2) then
				function v240(v511)
					firesignal(game.ReplicatedStorage.EntityInfo.Caption.OnClientEvent, v511)
				end
				v240("上帝模式关闭[三岁高材生]")
				v25.Text = "上帝模式 : 关闭"
				v238 = 4
			end
			if v238 == (473 - (270 + 199)) then
				v241 = Instance.new("Sound")
				v241.Parent = game.SoundService
				v241.SoundId = "rbxassetid://4590657391"
				v238 = 2 + 3
			end
			if v238 == 0 then
				_G.godkuy = false
				getgenv().colgod = false
				for v512, v513 in next, game.Players.LocalPlayer.Character:GetDescendants() do
					if v513.IsA(v513, "BasePart") and (getgenv().colgod == false) then
						v513.CanCollide = true
					end
				end
				v238 = 1820 - (580 + 1239)
			end
			if v238 == 1 then
				v239 = game.Players.LocalPlayer.Character:FindFirstChild("Collision")
				v239.Position = v239.Position + Vector3.new(0 - 0, 5 + 0, 0 + 0)
				wait(0.5 + 0)
				v238 = 4 - 2
			end
		end
	elseif _G.godkuy == false then
		local v370 = 0
		local v371
		local v372
		local v373
		while true do
			if v370 == 2 then
				function v372(v707)
					firesignal(game.ReplicatedStorage.EntityInfo.Caption.OnClientEvent, v707)
				end
				v372("上帝模式启用[三岁高材生]")
				v25.Text = "上帝模式 : 启用"
				v373 = Instance.new("Sound")
				v370 = 2 + 1
			end
			if v370 == (1170 - (645 + 522)) then
				v373.Parent = game.SoundService
				v373.SoundId = "rbxassetid://4590657391"
				v373.Volume = 1795 - (1010 + 780)
				v373.PlayOnRemove = true
				v370 = 4 + 0
			end
			if v370 == (19 - 15) then
				v373:Destroy()
				break
			end
			if v370 == (0 - 0) then
				_G.godkuy = true
				v371 = game.Players.LocalPlayer.Character:FindFirstChild("Collision")
				v371.Position = v371.Position - Vector3.new(0, 1841 - (1045 + 791), 0 - 0)
				wait(0.5 - 0)
				v370 = 506 - (351 + 154)
			end
			if v370 == (1575 - (1281 + 293)) then
				getgenv().colgod = true
				v371 = game.Players.LocalPlayer.Character:FindFirstChild("Collision")
				v371.Position = v371.Position - Vector3.new(266 - (28 + 238), 10 - 5, 1559 - (1381 + 178))
				v372 = nil
				v370 = 2
			end
		end
	end
end)
local Window = OrionLib:MakeWindow({Name = "上帝模式", HidePremium = false, SaveConfig = true, IntroText = "日月星辰工作室", ConfigFolder = "日月星辰工作室"})
local Tab = Window:MakeTab({
	Name = "功能",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddToggle({
	Name = "上帝模式",
	Default = true,
	Callback = function(v0)
		local v1 = 0
		while true do
			if 0 == v1 then
				_G.gopdfs = v0
				if _G.gopdfs == true then
					game:GetService("CoreGui").GodmodeMobile.Enabled = true
				elseif _G.gopdfs == false then
					game:GetService("CoreGui").GodmodeMobile.Enabled = false
				end
				break
			end
		end
	end
})
