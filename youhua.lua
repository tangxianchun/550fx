--ScriptAuthor_MIAO
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")
local trail = Instance.new("ParticleEmitter")
trail.Color = ColorSequence.new(Color3.fromRGB(255, 0, 0), Color3.fromRGB(0, 255, 0), Color3.fromRGB(0, 0, 255))
trail.Lifetime = NumberRange.new(0.5, 1)
trail.Size = NumberSequence.new(1, 0)
trail.Transparency = NumberSequence.new(0, 1)
trail.Speed = NumberRange.new(10, 20)
trail.Rate = 1000
trail.Parent = rootPart
local lastUsedTime = tick() - 0.5
local lastSlideTime = tick() - 0.5
local slideDuration = 0.2 -- 可调整：滑铲持续时间（秒）
local slideSpeed = 20 -- 可调整：滑铲速度
local defaultSpeed = 30 -- 可调整：默认行走速度

-- 技能
local function createSkillModule()
    local module = {}
    
    function module.canUseSkill()
        local currentTime = tick()
        if currentTime - lastUsedTime >= 0.5 then
            lastUsedTime = currentTime
            return true
        end
        return false
    end

    function module.canSlide()
        local currentTime = tick()
        if currentTime - lastSlideTime >= 0.5 then
            lastSlideTime = currentTime
            return true
        end
        return false
    end

    function module.slide()
        local startTime = tick()
        local slideDirection = rootPart.CFrame.lookVector
        humanoid.WalkSpeed = 0
        while tick() - startTime < slideDuration do
            rootPart.CFrame = rootPart.CFrame + slideDirection * slideSpeed * (tick() - startTime)
            task.wait()
        end
        humanoid.WalkSpeed = defaultSpeed
        humanoid.Sit = false
    end

    return module
end

local skillModule = createSkillModule()

-- 检测设备
local isMobile = game:GetService("UserInputService").TouchEnabled
-- 创建按钮
local function createVirtualButton(text, position, size, callback)
    local button = Instance.new("TextButton")
    button.Text = text
    button.Position = position
    button.Size = size
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 18
    button.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
    button.Parent = game.StarterGui.ScreenGui
    button.MouseButton1Down:Connect(callback)
    return button
end

-- 设置界面
local function createSettingsUI()
    local settingsFrame = Instance.new("Frame")
    settingsFrame.Size = UDim2.new(0.8, 0, 0.6, 0)
    settingsFrame.Position = UDim2.new(0.1, 0, 0.2, 0)
    settingsFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    settingsFrame.Visible = false
    settingsFrame.Parent = game.StarterGui.ScreenGui

    local title = Instance.new("TextLabel")
    title.Text = "设置"
    title.Size = UDim2.new(1, 0, 0.1, 0)
    title.Position = UDim2.new(0, 0, 0, 0)
    title.Font = Enum.Font.SourceSansBold
    title.TextSize = 24
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    title.Parent = settingsFrame

    local sizeLabel = Instance.new("TextLabel")
    sizeLabel.Text = "按钮大小"
    sizeLabel.Size = UDim2.new(1, 0, 0.1, 0)
    sizeLabel.Position = UDim2.new(0, 0, 0.15, 0)
    sizeLabel.Font = Enum.Font.SourceSans
    sizeLabel.TextSize = 18
    sizeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    sizeLabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    sizeLabel.Parent = settingsFrame

    local sizeSlider = Instance.new("Slider")
    sizeSlider.Size = UDim2.new(0.8, 0, 0.05, 0)
    sizeSlider.Position = UDim2.new(0.1, 0, 0.25, 0)
    sizeSlider.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
    sizeSlider.Parent = settingsFrame

    local positionLabel = Instance.new("TextLabel")
    positionLabel.Text = "按钮位置"
    positionLabel.Size = UDim2.new(1, 0, 0.1, 0)
    positionLabel.Position = UDim2.new(0, 0, 0.35, 0)
    positionLabel.Font = Enum.Font.SourceSans
    positionLabel.TextSize = 18
    positionLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    positionLabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    positionLabel.Parent = settingsFrame

    local positionSlider = Instance.new("Slider")
    positionSlider.Size = UDim2.new(0.8, 0, 0.05, 0)
    positionSlider.Position = UDim2.new(0.1, 0, 0.45, 0)
    positionSlider.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
    positionSlider.Parent = settingsFrame

    local saveButton = Instance.new("TextButton")
    saveButton.Text = "保存设置"
    saveButton.Size = UDim2.new(0.4, 0, 0.1, 0)
    saveButton.Position = UDim2.new(0.1, 0, 0.6, 0)
    saveButton.Font = Enum.Font.SourceSansBold
    saveButton.TextSize = 18
    saveButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    saveButton.Parent = settingsFrame

    local cancelButton = Instance.new("TextButton")
    cancelButton.Text = "取消"
    cancelButton.Size = UDim2.new(0.4, 0, 0.1, 0)
    cancelButton.Position = UDim2.new(0.5, 0, 0.6, 0)
    cancelButton.Font = Enum.Font.SourceSansBold
    cancelButton.TextSize = 18
    cancelButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    cancelButton.Parent = settingsFrame

    local function saveSettings()
        print("保存设置")
        settingsFrame.Visible = false
    end

    local function cancelSettings()
        print("取消设置")
        settingsFrame.Visible = false
    end

    saveButton.MouseButton1Down:Connect(saveSettings)
    cancelButton.MouseButton1Down:Connect(cancelSettings)

    return settingsFrame
end

-- 控制逻辑(手机)
if isMobile then
    local skillButton = createVirtualButton("Q", UDim2.new(0.1, 0, 0.8, 0), UDim2.new(0.2, 0, 0.1, 0), function()
        if skillModule.canUseSkill() then
            humanoid.WalkSpeed = 100
            humanoid.MoveVector = Vector3.new(0, 0, -1)
        end
    end)

    local slideButton = createVirtualButton("C", UDim2.new(0.7, 0, 0.8, 0), UDim2.new(0.2, 0, 0.1, 0), function()
        if skillModule.canSlide() then
            humanoid.Sit = true
            task.spawn(skillModule.slide)
        end
    end)

    local settingsButton = createVirtualButton("设置", UDim2.new(0.8, 0, 0.1, 0), UDim2.new(0.15, 0, 0.1, 0), function()
        settingsFrame.Visible = not settingsFrame.Visible
    end)

    local settingsFrame = createSettingsUI()

    local touchStartPos = nil
    local touchMovePos = nil

    game:GetService("UserInputService").TouchStarted:Connect(function(input)
        touchStartPos = input.Position
    end)

    game:GetService("UserInputService").TouchMoved:Connect(function(input)
        touchMovePos = input.Position
        if touchStartPos then
            local direction = (touchMovePos - touchStartPos).Unit
            local moveVector = Vector3.new(direction.X, 0, direction.Y)
            humanoid.MoveVector = moveVector
        end
    end)

    game:GetService("UserInputService").TouchEnded:Connect(function()
        touchStartPos = nil
        touchMovePos = nil
        humanoid.MoveVector = Vector3.new(0, 0, 0)
    end)
end

-- 控制逻辑(PC)
if not isMobile then
    local UIS = game:GetService("UserInputService")
    UIS.InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.Q and skillModule.canUseSkill() then
            local isWPressed = UIS:IsKeyDown(Enum.KeyCode.W)
            local isAPressed = UIS:IsKeyDown(Enum.KeyCode.A)
            local isDPressed = UIS:IsKeyDown(Enum.KeyCode.D)

            local moveVector
            if isWPressed then
                moveVector = Vector3.new(0, 0, -1)
            elseif isAPressed then
                moveVector = Vector3.new(-1, 0, 0)
            elseif isDPressed then
                moveVector = Vector3.new(1, 0, 0)
            else
                moveVector = Vector3.new(0, 0, -1)
            end

            humanoid.WalkSpeed = 100
            humanoid.MoveVector = moveVector
        elseif input.KeyCode == Enum.KeyCode.C and skillModule.canSlide() then
            humanoid.Sit = true
            task.spawn(skillModule.slide)
        end
    end)

    UIS.InputEnded:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.Q then
            humanoid.WalkSpeed = defaultSpeed
            humanoid.MoveVector = Vector3.new(0, 0, 0)
        end
    end)
end
local function setupLocalFunctions()
    local function debugPrint(message)
        print("[DEBUG] " .. message)
    end
    return {
        debugPrint = debugPrint
    }
end

local localFunctions = setupLocalFunctions()
localFunctions.debugPrint("初始化完成")
