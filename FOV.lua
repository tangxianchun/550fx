player = game.Players.LocalPlayer

mouse = player:GetMouse()

gui = nil
getgui = game:GetObjects("rbxassetid://12701698194")
for i,v in pairs(getgui) do
    gui = v
end
gui.Parent = player.PlayerGui

player.CameraMaxZoomDistance = math.huge

mouseletgo = false

cam = workspace.CurrentCamera

XOFF = 0
YOFF = 0
ZOFF = 0
FOV = 0.5

gui.base.slider1.knob.MouseButton1Down:Connect(function()
	while task.wait() do
		if mouseletgo == true then break end
		local reletivepos = mouse.X - gui.base.slider1.AbsolutePosition.X 
		local percentage = math.clamp(reletivepos / gui.base.slider1.AbsoluteSize.X,0,1)
		FOV = percentage
		gui.base.slider1.knob.Rotation = percentage*360-180
		gui.base.slider1.knob.Position = UDim2.new(percentage - 0.035 ,0, -0.8, 0)
	end
end)

gui.base.slider2.knob.MouseButton1Down:Connect(function()
	while task.wait() do
		if mouseletgo == true then break end
		local reletivepos = mouse.X - gui.base.slider2.AbsolutePosition.X 
		local percentage = math.clamp(reletivepos / gui.base.slider2.AbsoluteSize.X,0,1)
		XOFF = percentage*10-5
		gui.base.slider2.knob.Rotation = percentage*360-180
		gui.base.slider2.knob.Position = UDim2.new(percentage - 0.035 ,0, -0.8, 0)
	end
end)

gui.base.slider3.knob.MouseButton1Down:Connect(function()
	while task.wait() do
		if mouseletgo == true then break end
		local reletivepos = mouse.X - gui.base.slider3.AbsolutePosition.X 
		local percentage = math.clamp(reletivepos / gui.base.slider3.AbsoluteSize.X,0,1)
		YOFF = percentage*10-5
		gui.base.slider3.knob.Rotation = percentage*360-180
		gui.base.slider3.knob.Position = UDim2.new(percentage - 0.035 ,0, -0.8, 0)
	end
end)

gui.base.slider4.knob.MouseButton1Down:Connect(function()
	while task.wait() do
		if mouseletgo == true then break end
		local reletivepos = mouse.X - gui.base.slider4.AbsolutePosition.X 
		local percentage = math.clamp(reletivepos / gui.base.slider4.AbsoluteSize.X,0,1)
		ZOFF = percentage*10-5
		gui.base.slider4.knob.Rotation = percentage*360-180
		gui.base.slider4.knob.Position = UDim2.new(percentage - 0.035 ,0, -0.8, 0)
	end
end)


mouse.Button1Up:Connect(function()
	mouseletgo = true
	task.wait()
	mouseletgo = false
end)
gui.base.slider1.knob.MouseButton1Up:Connect(function()
	mouseletgo = true
	task.wait()
	mouseletgo = false
end)
gui.base.slider2.knob.MouseButton1Up:Connect(function()
	mouseletgo = true
	task.wait()
	mouseletgo = false
end)
gui.base.slider3.knob.MouseButton1Up:Connect(function()
	mouseletgo = true
	task.wait()
	mouseletgo = false
end)
gui.base.slider4.knob.MouseButton1Up:Connect(function()
	mouseletgo = true
	task.wait()
	mouseletgo = false
end)


game:GetService("RunService").RenderStepped:connect(function() 
	cam.CoordinateFrame=cam.CoordinateFrame*CFrame.new(0,0,0,FOV+0.001,0,0,0,FOV+0.001,0,0,0,1)
    player.Character.Humanoid.CameraOffset = Vector3.new(XOFF,YOFF,ZOFF)
end)


local TweenService = game:GetService("TweenService")

ttoggle = false
gui.base.hidebutton.MouseButton1Up:Connect(function()
	if ttoggle == false then do
			ttoggle = true
			local targetPosition = UDim2.new(-0.25, 0, 0.546, 0)
			local tweenInfo = TweenInfo.new(2,Enum.EasingStyle.Bounce)
			local tween = TweenService:Create(gui.base, tweenInfo, {Position = targetPosition})
			tween:Play()
			
			local targetRotation = 0
			local tweenInfo = TweenInfo.new(2,Enum.EasingStyle.Bounce)
			local tween = TweenService:Create(gui.base.arrow, tweenInfo, {Rotation = targetRotation})
			tween:Play()
			
		end else
		ttoggle = false
		local targetPosition = UDim2.new(-0.005, 0, 0.546, 0)
		local tweenInfo = TweenInfo.new(2,Enum.EasingStyle.Bounce)
		local tween = TweenService:Create(gui.base, tweenInfo, {Position = targetPosition})
		tween:Play()
		
		local targetRotation = 180
		local tweenInfo = TweenInfo.new(2,Enum.EasingStyle.Bounce)
		local tween = TweenService:Create(gui.base.arrow, tweenInfo, {Rotation = targetRotation})
		tween:Play()
	end
end)


while wait() do
	gui.base.outline.UIGradient.Rotation += 0.2
	gui.base.cred2.UIGradient.Rotation += 0.2
	gui.base.hidebutton.Rotation += 0.2
	gui.base.hidebutton.UIStroke.UIGradient.Rotation -= 0.5
end
