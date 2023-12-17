local CoreGui = loadstring(game:HttpGet("https://raw.githubusercontent.com/pyawhh/UI-GUI/main/%E6%B6%88%E6%81%AF%E6%8F%90%E9%86%92%E5%8A%A0%E5%AF%86.txt"))()
local bailib = loadstring(game:HttpGet("https://raw.githubusercontent.com/pyawhh/UI-GUI/main/uiss.txt"))()
local win = bailib:new("星月交辉☪️ | DOORS",'')
local Tab = win:Tab("主要功能", "7743875879")
local Section = Tab:section("脚本公告")
Section:Label("『日月星辰工作室』")
Section:Label("版本:DOORS_Alpha")
Section:Label("更新了怪物预测功能")
Section:Label("还有更多意见反馈渠道:")
Section:Label("QQ群:781759165")
Section:Label("欢迎您的使用")
Section:Label("欢迎您，亲爱的"..game.Players.LocalPlayer.Name.. "")
Section:Label("您的ID:"..game.Players.LocalPlayer.UserId.. "")
Section:Label("你的注入器:"..identifyexecutor())
Section:Label("当前游戏ID为:" .. game.GameId .. ".")
local Section1 = Tab:section("主要功能")
local Tab2 = win:Tab("透视", "6031763426")
local Sectionts = Tab2:section("透视")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TextChatService = game:GetService("TextChatService")
local Lighting = game:GetService("Lighting")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
local Backpack = LocalPlayer.Backpack
local Humanoid = Character:WaitForChild("Humanoid")
local AvatarIcon =
	Players:GetUserThumbnailAsync(LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
local MainUI = LocalPlayer.PlayerGui.MainUI
local Main_Game = MainUI.Initiator.Main_Game
local Modules = Main_Game.RemoteListener.Modules
local SpeedBoost = 0
local ScreechSafeRooms = {}
local PrimaryPart = Character.PrimaryPart
local CurrentRooms = workspace.CurrentRooms
local EntityInfo = ReplicatedStorage.EntityInfo
local ClientModules = ReplicatedStorage.ClientModules
local DeathHint = EntityInfo.DeathHint
local CamLock = EntityInfo.CamLock
local MotorReplication = EntityInfo.MotorReplication
local EntityModules = ClientModules.EntityModules
local ItemESP = false
local EntityESP = false
local OtherESP = false
local EyesOnMap = false
local InstantInteract = false
local IncreasedDistance = false
local InteractNoclip = false
local EnableInteractions = false
local DisableDupe = false
local DisableSeek = false
local NoDark = false
local Noclip = false
local DisableTimothy = false
local DisableA90 = false
local NoclipNext = false
local IsExiting = false
local RemoveDeathHint = false
local ClosetExitFix = false
local NoBreaker = false
local DisableEyes = false
local DisableGlitch = false
local DisableSnare = false
local WasteItems = false
local Guaiwuyc = false
local ScreechModule
local CustomScreechModule
local TimothyModule
local CustomTimothyModule
local A90Module
local CustomA90Module
local DoorRange
local SpoofMotor
local ESP_Items = {
	KeyObtain = { "钥匙", 1.5 },
	LiveHintBook = { "书", 1.5 },
	Lighter = { "打火机", 1.5 },
	Lockpick = { "开锁器", 1.5 },
	Vitamins = { "维他命", 1.5 },
	Crucifix = { "十字架", 1.5 },
	CrucifixWall = { "墙上的十字架", 1.5 },
	SkeletonKey = { "骷髅钥匙", 1.5 },
	Flashlight = { "手电筒", 1.5 },
	Candle = { "蜡烛", 1.5 },
	LiveBreakerPolePickup = { "螺丝", 1.5 },
	Shears = { "大剪刀", 1.5 },
	Battery = { "电池", 1.5 },
	PickupItem = { "纸", 1.5 },
	ElectricalKeyObtain = { "电气房钥匙", 1.5 },
	Shakelight = { "摇晃灯", 1.5 },
	Scanner = { "UNK", 1.5 },
}
local ESP_Entities = {
	RushMoving = { "Rush", 5 },
	AmbushMoving = { "Ambush", 5 },
	FigureRagdoll = { "Figure", 7 },
	FigureLibrary = { "Figure", 7 },
	SeekMoving = { "Seek", 5.5 },
	Screech = { "Screech", 2 },
	Eyes = { "Eyes", 4 },
	Snare = { "地刺", 2 },
	A60 = { "A-60", 10 },
	A120 = { "A-120", 10 },
	A90 = {"A-90", 10}
}
local ESP_Other = { Door = { "门", 4 }, LeverForGate = { "拉杆", 3 }, GoldPile = { "金币", 0.5 }, Bandage = {"创可贴",0.5,}}
local MainFrame = MainUI.MainFrame
local GameData = ReplicatedStorage.GameData
local LatestRoom = GameData.LatestRoom
local Floor = GameData.Floor
local OldEnabled = {}
local Module_Events = require(ClientModules.Module_Events)
local ShatterFunction = Module_Events.shatter
local HideTick = tick()
local GlitchModule = EntityModules.Glitch
local CustomGlitchModule = GlitchModule:Clone()
local Ranks = {
	Creator = {
		Title = "出色的脚本创建者",
		Color = Color3.new(0, 0.8, 0),
	},
	MrHong = {
		Title = "三岁高材生",
		Color = Color3.new(0.9, 0, 0),
	},
	Cool = {
		Title = "酷😎",
		Color = Color3.new(0, 0.7, 1),
	},
	Greg = {
		Title = "星月 official",
		Color = Color3.new(0.3, 0.3, 0.3),
	},
}
local PlayerRanks = {
	["2615068449"] = "Creator",
	["2300945089"] = "MrHong",
	["152169512"] = "Cool",
	["1160958289"] = "Cool",
	["211059753"] = "Greg",
	["47466584"] = "Cool",
}
CustomGlitchModule.Name = "CustomGlitch"
CustomGlitchModule.Parent = GlitchModule.Parent
GlitchModule:Destroy()
EntityInfo.UseEnemyModule.OnClientEvent:Connect(function(Entity, x, ...)
	if Entity == "Glitch" then
		if not DisableGlitch then
			require(CustomGlitchModule).stuff(require(Main_Game), table.unpack({ ... }))
		end
	end
end)
DeathHint.OnClientEvent:Connect(function()
	if RemoveDeathHint then
		task.wait()
		firesignal(DeathHint.OnClientEvent, {}, "Blue")
	end
end)
for _, Player in pairs(Players:GetPlayers()) do
	if Player ~= LocalPlayer then
		ESP_Other[Player.Name] = { Player.DisplayName, 4 }
	end
end
local function ReplacePainting(Painting, NewImage, NewTitle)
	Painting:WaitForChild("Canvas").SurfaceGui.ImageLabel.Image = NewImage
	Painting.Canvas.SurfaceGui.ImageLabel.BackgroundTransparency = 1
	Painting.Canvas.SurfaceGui.ImageLabel.ImageTransparency = 0
	Painting.Canvas.SurfaceGui.ImageLabel.ImageColor3 = Color3.new(1, 1, 1)
	local NewPrompt = Painting:WaitForChild("InteractPrompt"):Clone()
	Painting.InteractPrompt:Destroy()
	NewPrompt.Parent = Painting
	NewPrompt.Triggered:Connect(function()
		require(Main_Game).caption('这幅画的题目是 "' .. NewTitle .. '".')
	end)
end
local function applyLight(value)
    if value then 
        local light = Instance.new('PointLight', game.Players.LocalPlayer.Character.Head)
        light.Name='myqf'
        light.Range = 150
        light.Brightness = 1.7
    else
        pcall(function()
            game.Players.LocalPlayerp.Character.Head.bai:remove();
        end);
    end;
end;
local function ApplyCustoms(DontYield)
	task.wait(DontYield and 0 or 1)
	ScreechModule = Modules:WaitForChild("Screech")
	TimothyModule = Modules.SpiderJumpscare
	A90Module = Modules.A90
	CustomScreechModule = ScreechModule:Clone()
	CustomTimothyModule = TimothyModule:Clone()
	CustomA90Module = A90Module:Clone()
	CustomScreechModule.Name = "CustomScreech"
	CustomTimothyModule.Name = "CustomTimothy"
	CustomA90Module.Name = "CustomA90"
	CustomScreechModule.Parent = ScreechModule.Parent
	CustomTimothyModule.Parent = TimothyModule.Parent
	CustomA90Module.Parent = A90Module.Parent
	ScreechModule:Destroy()
	TimothyModule:Destroy()
	A90Module:Destroy()
end
local function ApplySpeed(Force)
	local Extra = 0
	local Behind = 0
	if Humanoid:GetAttribute("SpeedBoostExtra") then
		Extra = Humanoid:GetAttribute("SpeedBoostExtra")
	end
	if Humanoid:GetAttribute("SpeedBoostBehind") then
		Behind = Humanoid:GetAttribute("SpeedBoostBehind")
	end
	local MaxSpeed = 15 + Humanoid:GetAttribute("SpeedBoost") + Extra + Behind
	if Force then
		local CrouchNerf = 0
		if require(Main_Game).crouching then
			CrouchNerf = 5
		end
		Humanoid.WalkSpeed = MaxSpeed + SpeedBoost - CrouchNerf
	end
	if Humanoid.WalkSpeed <= MaxSpeed then
		Humanoid.WalkSpeed += SpeedBoost
	end
end

local function ApplySettings(Object)
	task.spawn(function()
		task.wait()
		if
			(ESP_Items[Object.Name] or ESP_Entities[Object.Name] or ESP_Other[Object.Name])
			and Object.ClassName == "Model"
		then
			if Object:FindFirstChild("RushNew") then
				if not Object.RushNew:WaitForChild("PlaySound").Playing then
					return
				end
			end
			local Color = ESP_Items[Object.Name] and Color3.new(1, 1)
				or ESP_Entities[Object.Name] and Color3.new(1)
				or Color3.new(0, 1, 1)
			if
				Object.Name == "RushMoving"
				or Object.Name == "AmbushMoving"
				or Object.Name == "Eyes"
				or Object.Name == "A60"
				or Object.Name == "A120"
				or Object.Name == "A90"
			then
				for i = 1, 100 do
					if Object:FindFirstChildOfClass("Part") then
						break
					end
					if i == 100 then
						return
					end
				end
				Object:FindFirstChildOfClass("Part").Transparency = 0.99
				Instance.new("Humanoid", Object)
			end
			local function ApplyHighlight(IsValid, Value)
				if IsValid then
					if Value then
						local TXT = IsValid[1]
						if IsValid[1] == "Door" then
							local RoomName
							if Floor.Value == "Rooms" then
								RoomName = ""
							else
								workspace.CurrentRooms:WaitForChild(tonumber(Object.Parent.Name) + 1, math.huge)
								if not OtherESP then
									return
								end
								local OldString = workspace.CurrentRooms[tonumber(Object.Parent.Name) + 1]
									:GetAttribute("OriginalName")
									:sub(7, 99)
								local NewString = ""
								for i = 1, #OldString do
									if i == 1 then
										NewString = NewString .. OldString:sub(i, i)
										continue
									end
									if
										OldString:sub(i, i) == OldString:sub(i, i):upper()
										and OldString:sub(i - 1, i - 1) ~= "_"
									then
										NewString = NewString .. " "
									end
									if OldString:sub(i, i) ~= "_" then
										NewString = NewString .. OldString:sub(i, i)
									end
								end
								RoomName = " (" .. NewString .. ")"
							end
							TXT = "Door "
								.. (Floor.Value == "Rooms" and "A-" or "")
								.. tonumber(Object.Parent.Name) + 1
								.. RoomName
						end
						if IsValid[1] == "Gold" then
							TXT = Object:GetAttribute("GoldValue") .. " Gold"
						end
						local UI = Instance.new("BillboardGui", Object)
						UI.Size = UDim2.new(0, 1000, 0, 30)
						UI.AlwaysOnTop = true
						UI.StudsOffset = Vector3.new(0, IsValid[2], 0)
						local Label = Instance.new("TextLabel", UI)
						Label.Size = UDim2.new(1, 0, 1, 0)
						Label.BackgroundTransparency = 1
						Label.TextScaled = true
						Label.Text = TXT
						Label.TextColor3 = Color
						Label.TextStrokeTransparency = 0
						Label.TextStrokeColor3 = Color3.new(Color.R / 2, Color.G / 2, Color.B / 2)
					elseif Object:FindFirstChild("BillboardGui") then
						Object.BillboardGui:Destroy()
					end
					local Target = Object
					if IsValid[1] == "Door" and Object.Parent.Name ~= "49" and Object.Parent.Name ~= "50" then
						Target = Object:WaitForChild("Door")
					end
					if Value then
						local Highlight = Instance.new("Highlight", Target)
						Highlight.FillColor = Color
						Highlight.OutlineColor = Color
					elseif Target:FindFirstChild("Highlight") then
						Target.Highlight:Destroy()
					end
				end
			end
			ApplyHighlight(ESP_Items[Object.Name], ItemESP)
			ApplyHighlight(ESP_Entities[Object.Name], EntityESP)
			ApplyHighlight(ESP_Other[Object.Name], OtherESP)
		end
		if Object:IsA("ProximityPrompt") then
			if InstantInteract then
				Object.HoldDuration = -Object.HoldDuration
			end
			if IncreasedDistance and Object.Parent and Object.Parent.Name ~= "Shears" then
				Object.MaxActivationDistance *= IncreasedDistance and 2 or 0.5
			end
			if InteractNoclip then
				Object.RequiresLineOfSight = not InteractNoclip
			end
			if EnableInteractions then
				if Object.Enabled then
					table.insert(OldEnabled, Object)
				end
				Object.Enabled = true
			end
			Object:GetPropertyChangedSignal("Enabled"):Connect(function()
				if EnableInteractions then
					Object.Enabled = true
				end
			end)
		end
		if Object.Name == "DoorFake" then
			Object:WaitForChild("Hidden").CanTouch = not DisableDupe
			if Object:FindFirstChild("LockPart") then
				Object.LockPart:WaitForChild("UnlockPrompt", 1).Enabled = not DisableDupe
			end
			Object.Door.Color = DisableDupe and Color3.new(0.5, 0, 0) or Color3.fromRGB(129, 111, 100)
			Object.Door.SignPart.Color = DisableDupe and Color3.new(0.5, 0, 0) or Color3.fromRGB(129, 111, 100)
			for _, DoorNumber in pairs({ Object.Sign.Stinker, Object.Sign.Stinker.Highlight, Object.Sign.Stinker.Shadow }) do
				DoorNumber.Text = DisableDupe and "DUPE" or string.format("%0.4i", LatestRoom.Value)
			end
		end
		if Object.Parent and Object.Parent.Name == "TriggerEventCollision" then
			Object.CanCollide = not DisableSeek
			Object.CanTouch = not DisableSeek
		end
		if Object.Name == "Painting_Small" then
			local RNG = math.random(1, 19)
			if RNG == 18 then
				ReplacePainting(Object, AvatarIcon, "You")
			elseif RNG == 19 then
				ReplacePainting(Object, "rbxassetid://12380697948", "三岁高材生")
			end
		end
		if Object.Name == "Painting_VeryBig" then
			local RNG = math.random(1, 16)
			if RNG == 16 then
				ReplacePainting(Object, "rbxassetid://12778424825", "明月清风")
			end
		end
		if Object.Name == "Painting_Tall" then
			local RNG = math.random(1, 13)
			if RNG == 13 then
				ReplacePainting(Object, "rbxassetid://12836336900", "星月工作室")
			end
		end
		if Object.Name == "Shears" and Object.Parent.Name == "LootItem" then
			if not Object:FindFirstChild("FakeShears") then
				local FakePrompt = Object.ModulePrompt:Clone()
				Object.ModulePrompt.Enabled = false
				FakePrompt.Parent = Object
				FakePrompt.MaxActivationDistance = 13.1
				FakePrompt.Name = "FakePrompt"
				FakePrompt.Triggered:Connect(function()
					if (Object.Main.Position - PrimaryPart.Position).magnitude < 12 then
						fireproximityprompt(Object.ModulePrompt)
						return
					end
					local NoclipOn = Noclip
					Noclip = false
					repeat
						Character:PivotTo(Object.Main.CFrame + Vector3.new(0, 5, 0))
						fireproximityprompt(Object.ModulePrompt)
						Character.PrimaryPart.Velocity = Vector3.new()
						task.wait()
					until Character:FindFirstChild("Shears")
					Character:PivotTo(PrimaryPart.CFrame + Vector3.new(0, 7, 0))
					Noclip = NoclipOn
				end)
			end
		end
		if Object.Name == "Eyes" then
			EyesOnMap = true
			if DisableEyes then
				MotorReplication:FireServer(0, -120, 0, false)
			end
		end
		if Object.Name == "Snare" then
			Object.Hitbox.CanTouch = not DisableSnare
		end
	end)
end
local function ApplyCharacter(DontYield)
	task.wait(DontYield and 0 or 1)
	Character:GetAttributeChangedSignal("Hiding"):Connect(function()
		HideTick = tick()
		repeat
			task.wait()
		until not PrimaryPart.Anchored
		Character.Collision.CanCollide = not Noclip
		PrimaryPart.CanCollide = not Noclip
		return
	end)
	Lighting:GetPropertyChangedSignal("Ambient"):Connect(function()
		if NoDark then
			Lighting.Ambient = Color3.fromRGB(67, 51, 56)
		end
	end)
	Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(ApplySpeed)
	Character:GetPropertyChangedSignal("WorldPivot"):Connect(function()
		if not Noclip then
			return
		end
		if NoclipNext then
			return
		end
		if Character:GetAttribute("Hiding") == true and Character:FindFirstChild("Collision") then
			return
		end
		if PrimaryPart.Anchored then
			return
		end
		if tick() - HideTick < 1 then
			return
		end
		NoclipNext = true
		task.wait(0.1)
		Character:PivotTo(CFrame.new(Humanoid.MoveDirection * 100000 * -1))
		Character:GetPropertyChangedSignal("WorldPivot"):Wait()
		task.wait(0.1)
		NoclipNext = false
	end)
	Humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(function()
		if
			ClosetExitFix
			and Character:FindFirstChild("Collision")
			and Character:GetAttribute("Hiding") == true
			and tick() - HideTick > 1
		then
			CamLock:FireServer()
		end
	end)
	Main_Game.PromptService.Highlight:Destroy()
end
ApplyCharacter(true)
ApplyCustoms(true)
LocalPlayer.CharacterAdded:Connect(function(NewCharacter)
	Character = NewCharacter
	Humanoid = Character:WaitForChild("Humanoid")
	Character:WaitForChild("Collision").CanCollide = not Noclip
	PrimaryPart = Character.PrimaryPart
	PrimaryPart.CanCollide = not Noclip
	MainUI = LocalPlayer.PlayerGui.MainUI
	Main_Game = MainUI.Initiator.Main_Game
	MainFrame = MainUI.MainFrame
	ApplySpeed(true)
	ApplyCustoms()
	ApplyCharacter()
end)
workspace.DescendantAdded:Connect(ApplySettings)
workspace.ChildRemoved:Connect(function(Object)
	if Object.Name == "Eyes" then
		if not workspace:FindFirstChild("Eyes") then
			EyesOnMap = false
		end
	end
end)
EntityInfo.Screech.OnClientEvent:Connect(function()
	if
		not table.find(ScreechSafeRooms, tostring(LocalPlayer:GetAttribute("CurrentRoom")))
		and CurrentRooms[LocalPlayer:GetAttribute("CurrentRoom")]:GetAttribute("Ambient") == Color3.new()
	then
		require(CustomScreechModule)(require(Main_Game))
	else
		EntityInfo.Screech:FireServer(true)
	end
end)
EntityInfo.SpiderJumpscare.OnClientEvent:Connect(function(...)
	local Args = { ... }
	if not DisableTimothy then
		task.spawn(function()
			require(CustomTimothyModule)(table.unpack(Args))
		end)
	end
end)
EntityInfo.A90.OnClientEvent:Connect(function()
	if not DisableA90 then
		task.spawn(function()
			require(CustomA90Module)(require(Main_Game))
		end)
	end
end)

Section1:Button("购买夜视仪[电梯使用]", function()
_G.UpdateStars = false
_G.OnShop = true
_G.Price = 114514
_G.Description = "要你命3000"
loadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
end)
Section1:Button("夜视仪", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
end)
Section1:Toggle("柜子出入修复", "", false, function(Value)
	applyLight(Value)
end)
Section1:Toggle("柜子出入修复", "", false, function(Value)
	ClosetExitFix = Value
end)
Section1:Toggle("禁用假门", "", false, function(Value)
		DisableDupe = Value
		for _, Object in pairs(workspace.CurrentRooms:GetDescendants()) do
			if Object.Name == "DoorFake" then
				ApplySettings(Object)
			end
		end
	end)
Section1:Toggle("禁用SEEK追逐", "", false, function(Value)
		DisableSeek = Value
		for _, Object in pairs(workspace.CurrentRooms:GetDescendants()) do
			if Object.Name == "Collision" then
				ApplySettings(Object)
			end
		end
	end)
Section1:Toggle("禁用地刺", "", false, function(Value)
		DisableSnare = Value
		for _, Object in pairs(workspace.CurrentRooms:GetDescendants()) do
			if Object.Name == "Snare" then
				ApplySettings(Object)
			end
		end
	end)
Section1:Toggle("启用所有的交互", "", false, function(Value)
		EnableInteractions = Value
		for _, Object in pairs(workspace.CurrentRooms:GetDescendants()) do
			if Object:IsA("ProximityPrompt") then
				if EnableInteractions and Object.Enabled then
					table.insert(OldEnabled, Object)
				end
				Object.Enabled = EnableInteractions
				if not EnableInteractions then
					if table.find(OldEnabled, Object) then
						Object.Enabled = true
					end
				end
				Object:GetPropertyChangedSignal("Enabled"):Connect(function()
					if EnableInteractions then
						Object.Enabled = true
					end
				end)
			end
		end
		if not EnableInteractions then
			for index in pairs(OldEnabled) do
				table.remove(OldEnabled, index)
			end
		end
	end)
	
Section1:Toggle("无视Eyes", "", false, function(Value)
		DisableEyes = Value
		if workspace:FindFirstChild("Eyes") then
			MotorReplication:FireServer(0, DisableEyes and -120 or 0, 0, false)
		end
	end)
	
Section1:Toggle("增加开门范围", "", false, function(Value)
	if Value then
		DoorRange = RunService.Heartbeat:Connect(function()
			if not workspace:FindFirstChild("A120") then
				CurrentRooms:WaitForChild(LatestRoom.Value):WaitForChild("Door"):WaitForChild("ClientOpen"):FireServer()
			end
		end)
	else
		DoorRange:Disconnect()
	end
end)
Section1:Toggle("增加交互范围", "", false, function(Value)
	IncreasedDistance = Value
	for _, Object in pairs(workspace.CurrentRooms:GetDescendants()) do
		if Object:IsA("ProximityPrompt") then
			Object.MaxActivationDistance *= IncreasedDistance and 2 or 0.5
		end
	end
end)
Section1:Toggle("即时互动", "", false, function(Value)
	InstantInteract = Value
	for _, Object in pairs(workspace.CurrentRooms:GetDescendants()) do
		if Object:IsA("ProximityPrompt") then
			Object.HoldDuration = -Object.HoldDuration
		end
	end
end)
Section1:Toggle("更快的交互", "", false, function(Value)
		InteractNoclip = Value
		for _, Object in pairs(workspace.CurrentRooms:GetDescendants()) do
			if Object:IsA("ProximityPrompt") then
				Object.RequiresLineOfSight = not InteractNoclip
			end
		end
	end)
Section1:Toggle("跳过断路器拼图", "", false, function(Value)
		NoBreaker = Value
		while task.wait(1) do
			if not NoBreaker then
				break
			end
			EntityInfo.EBF:FireServer()
		end
	end)
Section1:Toggle("穿墙", "", false, function(Value)
	Noclip = Value
	if Character:FindFirstChild("Collision") then
		Character.Collision.CanCollide = not Noclip
	end
	PrimaryPart.CanCollide = not Noclip
end)

Section1:Slider('设置速度', 'Sliderflag', 0, 6, 26,false, function(s)
	SpeedBoost = s
	ApplySpeed(true)
end)

Section1:Button("立即输入图书馆密码", function()
local Paper = workspace:FindFirstChild("LibraryHintPaper", true)
or workspace:FindFirstChild("LibraryHintPaperHard", true)
				or Players:FindFirstChild("LibraryHintPaper", true)
				or Players:FindFirstChild("LibraryHintPaperHard", true)
			if not Paper then
	notify("明月清风", "需要至少一人有密码纸！!", 3)
				return
			end
			local Hints = 0
			for _, Collected in pairs(LocalPlayer.PlayerGui.PermUI.Hints:GetChildren()) do
				if Collected.Name == "Icon" then
					if Collected:IsA("ImageLabel") then
						for _, Icon in pairs(Paper.UI:GetChildren()) do
							if tonumber(Icon.Name) then
								if Icon.ImageRectOffset == Collected.ImageRectOffset then
									Hints = 1
								end
							end
						end
					end
				end
			end
			if Hints < HintsNeeded then
notify("明月清风", "你需要更多的线索才能使用!", 3)
				return
			end
			local t = {}
			for i = 1, Floor.Value == "Hotel" and 5 or 10 do
				local Icon = Paper.UI[i]
				local Number = -1
				for _, Collected in pairs(LocalPlayer.PlayerGui.PermUI.Hints:GetChildren()) do
					if Collected.Name == "Icon" then
						if Collected.ImageRectOffset == Icon.ImageRectOffset then
							Number = tonumber(Collected.TextLabel.Text)
						end
					end
				end
				table.insert(t, Number)
			end
			for one = 0, t[1] == -1 and 9 or 0 do
				for two = 0, t[2] == -1 and 9 or 0 do
					for three = 0, t[3] == -1 and 9 or 0 do
						for four = 0, t[4] == -1 and 9 or 0 do
							for five = 0, t[5] == -1 and 9 or 0 do
									for six = 0, t[6] == -1 and 9 or 0 do
										for seven = 0, t[7] == -1 and 9 or 0 do
											for eight = 0, t[8] == -1 and 9 or 0 do
												for nine = 0, t[9] == -1 and 9 or 0 do
													for ten = 0, t[10] == -1 and 9 or 0 do
														EntityInfo.PL:FireServer(
															(t[1] == -1 and one or t[1])
																.. (t[2] == -1 and two or t[2])
																.. (t[3] == -1 and three or t[3])
																.. (t[4] == -1 and four or t[4])
																.. (t[5] == -1 and five or t[5])
																.. (t[6] == -1 and six or t[6])
																.. (t[7] == -1 and seven or t[7])
																.. (t[8] == -1 and eight or t[8])
																.. (t[9] == -1 and nine or t[9])
																.. (t[10] == -1 and ten or t[10])
														)
													end
												end
											end
										end
									EntityInfo.PL:FireServer(
										(t[1] == -1 and one or t[1])
											.. (t[2] == -1 and two or t[2])
											.. (t[3] == -1 and three or t[3])
											.. (t[4] == -1 and four or t[4])
											.. (t[5] == -1 and five or t[5])
									)
								end
							end
						end
					end
				end
			end
		end)

Sectionts:Toggle("禁用A90[他无法造成伤害了]", "", false, function(Value)
		DisableA90 = Value
	end)
Sectionts:Toggle("实体透视", "", false, function(Value)
	EntityESP = Value
	for _, Object in pairs(workspace:GetDescendants()) do
		if ESP_Entities[Object.Name] then
			ApplySettings(Object)
		end
	end
end)
Sectionts:Toggle("物品透视", "", false, function(Value)
	ItemESP = Value
	for _, Object in pairs(workspace:GetDescendants()) do
		if ESP_Items[Object.Name] then
			ApplySettings(Object)
		end
	end
end)
Sectionts:Toggle("怪物预测", "", false, function(Value)
	Guaiwuyce = Value
	workspace.ChildAdded:Connect(function(ESP_Entities[Object.Name])
        spawn(function()
        if Object.Name == "RushMoving" and Guaiwuyce == true then
            notify("警告!", "Rush已出现!藏起来!",7)

        elseif Object.Name == "AmbushMoving" and Guaiwuyce == true then
            notify("警告!", "Ambush!已出现藏起来!",7)
        
        elseif Object.Name == "Eyes" and Guaiwuyce == true then
            notify("警告!", "Eyes已出现低头!",7)
        
        elseif Object.Name == "Am60" and Guaiwuyce == true then
            notify("警告!", "A60!已出现藏起来!",7)
         
        elseif Object.Name == "A120" and Guaiwuyce == true then
            notify("警告!", "A120!已出现藏起来!",7)
            
        elseif Object.Name == "A90" and Guaiwuyce == true then
            notify("警告!", "A90已经出现!停下!赶紧的！",7)
                end
            end)
        end)
    end)
Sectionts:Toggle("其他透视", "", false, function(Value)
	OtherESP = Value
	for _, Object in pairs(workspace:GetDescendants()) do
		if ESP_Other[Object.Name] then
			ApplySettings(Object)
		end
	end
end)
Sectionts:Toggle("没有黑暗效果", "", false, function(Value)
		NoDark = Value
		if CurrentRooms[LocalPlayer:GetAttribute("CurrentRoom")]:GetAttribute("IsDark") then
			local Color = not NoDark and Room:GetAttribute("IsDark") and Color3.new() or Color3.fromRGB(67, 51, 56)
			Lighting.Ambient = Color
		end
	end)
Sectionts:Toggle("删除死亡信息", "", false, function(Value)
	RemoveDeathHint = Value
end)
Sectionts:Toggle("删除Glitch突脸[删除视觉上的和声音上的，但依旧有伤害]", "", false, function(Value)
	DisableGlitch = Value
end)
Sectionts:Toggle("删除Timothy突脸[删除视觉上的和声音上的，但依旧有伤害]", "", false, function(Value)
			DisableTimothy = Value
		end)
Sectionts:Toggle("生成分身", "", false, function(Value)
	if Value then
		SpoofMotor = game:GetService("RunService").Heartbeat:Connect(function()
			MotorReplication:FireServer(math.random(1, 100000), math.random(1, 100000), math.random(1, 100000), false)
		end)
	else
		SpoofMotor:Disconnect()
	end
end)

Sectionts:Toggle("牢不可破的灯", "", false, function(Value)
			if Value then
				Module_Events.shatter = function(Room)
					table.insert(ScreechSafeRooms, tostring(Room))
				end
			else
				Module_Events.shatter = ShatterFunction
			end
		end)
		
