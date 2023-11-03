-- Gui to Lua
-- Version: 3.2

-- Instances:

local SonicX = Instance.new("ScreenGui")
local MainGUI = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TabBar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local ProfilePage = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local UICorner_3 = Instance.new("UICorner")
local UICorner_4 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local BasicHaxBtn = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local ExecutorBtn = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local HomeBtn = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local ScriptsBtn = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local ThemeBtn = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Tabs = Instance.new("Folder")
local ExecutorTab = Instance.new("Frame")
local Title = Instance.new("Frame")
local UICorner_10 = Instance.new("UICorner")
local TextLabel_3 = Instance.new("TextLabel")
local Exec = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local Clear = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local Save = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local ImageLabel_2 = Instance.new("ImageLabel")
local security = Instance.new("TextLabel")
local EditorFrame = Instance.new("ScrollingFrame")
local Source = Instance.new("TextBox")
local Comments_ = Instance.new("TextLabel")
local Globals_ = Instance.new("TextLabel")
local Keywords_ = Instance.new("TextLabel")
local RemoteHighlight_ = Instance.new("TextLabel")
local Strings_ = Instance.new("TextLabel")
local Tokens_ = Instance.new("TextLabel")
local Numbers_ = Instance.new("TextLabel")
local Lines = Instance.new("TextLabel")
local Add = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local Decrease = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local SaveDialog = Instance.new("Frame")
local UICorner_16 = Instance.new("UICorner")
local Panel = Instance.new("Frame")
local UICorner_17 = Instance.new("UICorner")
local TextLabel_4 = Instance.new("TextLabel")
local X = Instance.new("TextButton")
local UICorner_18 = Instance.new("UICorner")
local FileName = Instance.new("TextBox")
local FormatName = Instance.new("TextBox")
local NameP = Instance.new("Frame")
local UICorner_19 = Instance.new("UICorner")
local TextLabel_5 = Instance.new("TextLabel")
local ExP = Instance.new("Frame")
local UICorner_20 = Instance.new("UICorner")
local TextLabel_6 = Instance.new("TextLabel")
local Savebtn = Instance.new("TextButton")
local UICorner_21 = Instance.new("UICorner")
local HomeTab = Instance.new("Frame")
local Title_2 = Instance.new("Frame")
local UICorner_22 = Instance.new("UICorner")
local TextLabel_7 = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local UICorner_23 = Instance.new("UICorner")
local TextLabel_8 = Instance.new("TextLabel")
local ImageLabel_3 = Instance.new("ImageLabel")
local UICorner_24 = Instance.new("UICorner")
local TextLabel_9 = Instance.new("TextLabel")
local TextLabel_10 = Instance.new("TextLabel")
local ImageLabel_4 = Instance.new("ImageLabel")
local UICorner_25 = Instance.new("UICorner")
local TextLabel_11 = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local UICorner_26 = Instance.new("UICorner")
local TextLabel_12 = Instance.new("TextLabel")
local ImageLabel_5 = Instance.new("ImageLabel")
local UICorner_27 = Instance.new("UICorner")
local TextLabel_13 = Instance.new("TextLabel")
local CLink = Instance.new("TextButton")
local UICorner_28 = Instance.new("UICorner")
local ScriptsTab = Instance.new("Frame")
local Title_3 = Instance.new("Frame")
local UICorner_29 = Instance.new("UICorner")
local TextLabel_14 = Instance.new("TextLabel")
local SonicsScripts = Instance.new("ScrollingFrame")
local ToggleCFarm = Instance.new("TextButton")
local UICorner_30 = Instance.new("UICorner")
local FruitFinder = Instance.new("TextButton")
local UICorner_31 = Instance.new("UICorner")
local SonicHub = Instance.new("TextButton")
local UICorner_32 = Instance.new("UICorner")
local AutoBuyHaki = Instance.new("TextButton")
local UICorner_33 = Instance.new("UICorner")
local AutoBuySword = Instance.new("TextButton")
local UICorner_34 = Instance.new("UICorner")
local AimbotBf = Instance.new("TextButton")
local UICorner_35 = Instance.new("UICorner")
local ChillzScripts = Instance.new("ScrollingFrame")
local ChatSplitter = Instance.new("TextButton")
local UICorner_36 = Instance.new("UICorner")
local WIP = Instance.new("TextButton")
local UICorner_37 = Instance.new("UICorner")
local Sonic = Instance.new("TextLabel")
local Chillz = Instance.new("TextLabel")
local BasicHaxTab = Instance.new("Frame")
local Title_4 = Instance.new("Frame")
local UICorner_38 = Instance.new("UICorner")
local TextLabel_15 = Instance.new("TextLabel")
local WS = Instance.new("TextBox")
local UICorner_39 = Instance.new("UICorner")
local btnWS = Instance.new("TextButton")
local UICorner_40 = Instance.new("UICorner")
local JP = Instance.new("TextBox")
local UICorner_41 = Instance.new("UICorner")
local btnJP = Instance.new("TextButton")
local UICorner_42 = Instance.new("UICorner")
local wstitle = Instance.new("Frame")
local UICorner_43 = Instance.new("UICorner")
local TextLabel_16 = Instance.new("TextLabel")
local jptitle = Instance.new("Frame")
local UICorner_44 = Instance.new("UICorner")
local TextLabel_17 = Instance.new("TextLabel")
local CommonScripts = Instance.new("Frame")
local UICorner_45 = Instance.new("UICorner")
local TextLabel_18 = Instance.new("TextLabel")
local IY = Instance.new("TextButton")
local UICorner_46 = Instance.new("UICorner")
local DexExp = Instance.new("TextButton")
local UICorner_47 = Instance.new("UICorner")
local Rspy = Instance.new("TextButton")
local UICorner_48 = Instance.new("UICorner")
local Hoho = Instance.new("TextButton")
local UICorner_49 = Instance.new("UICorner")
local G = Instance.new("TextBox")
local UICorner_50 = Instance.new("UICorner")
local btnG = Instance.new("TextButton")
local UICorner_51 = Instance.new("UICorner")
local gravtitle = Instance.new("Frame")
local UICorner_52 = Instance.new("UICorner")
local TextLabel_19 = Instance.new("TextLabel")
local btnGR = Instance.new("TextButton")
local UICorner_53 = Instance.new("UICorner")
local ThemeTab = Instance.new("Frame")
local Title_5 = Instance.new("Frame")
local UICorner_54 = Instance.new("UICorner")
local TextLabel_20 = Instance.new("TextLabel")
local X_2 = Instance.new("TextButton")
local UICorner_55 = Instance.new("UICorner")
local Icon = Instance.new("ImageButton")
local UICorner_56 = Instance.new("UICorner")

--Properties:

SonicX.Name = "SonicX"
SonicX.Parent = game.CoreGui
SonicX.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SonicX.ResetOnSpawn = false

MainGUI.Name = "MainGUI"
MainGUI.Parent = SonicX
MainGUI.Active = true
MainGUI.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainGUI.BorderColor3 = Color3.fromRGB(30, 30, 30)
MainGUI.Position = UDim2.new(0.0750394911, 0, 0.0619834699, 0)
MainGUI.Size = UDim2.new(0, 544, 0, 260)
MainGUI.Visible = false

UICorner.CornerRadius = UDim.new(0, 14)
UICorner.Parent = MainGUI

TabBar.Name = "TabBar"
TabBar.Parent = MainGUI
TabBar.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
TabBar.BorderColor3 = Color3.fromRGB(37, 37, 37)
TabBar.Size = UDim2.new(0, 116, 0, 260)

UICorner_2.CornerRadius = UDim.new(0, 14)
UICorner_2.Parent = TabBar

ProfilePage.Name = "ProfilePage"
ProfilePage.Parent = TabBar
ProfilePage.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
ProfilePage.BorderColor3 = Color3.fromRGB(37, 37, 37)
ProfilePage.Size = UDim2.new(0, 116, 0, 48)

ImageLabel.Parent = ProfilePage
ImageLabel.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
ImageLabel.Position = UDim2.new(0.103448279, 0, 0.148411423, 0)
ImageLabel.Size = UDim2.new(0, 32, 0, 32)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner_3.CornerRadius = UDim.new(10, 8)
UICorner_3.Parent = ImageLabel

UICorner_4.CornerRadius = UDim.new(0, 14)
UICorner_4.Parent = ProfilePage

TextLabel.Parent = ProfilePage
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.413793117, 0, 0.125000015, 0)
TextLabel.Size = UDim2.new(0, 57, 0, 21)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Name"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = ProfilePage
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.448275864, 0, 0.5625, 0)
TextLabel_2.Size = UDim2.new(0, 49, 0, 15)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "00:00:00"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

BasicHaxBtn.Name = "BasicHaxBtn"
BasicHaxBtn.Parent = TabBar
BasicHaxBtn.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
BasicHaxBtn.BorderColor3 = Color3.fromRGB(44, 44, 44)
BasicHaxBtn.Position = UDim2.new(0, 0, 0.494314432, 0)
BasicHaxBtn.Size = UDim2.new(0, 116, 0, 27)
BasicHaxBtn.Font = Enum.Font.Ubuntu
BasicHaxBtn.Text = "     Basic Hacks"
BasicHaxBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
BasicHaxBtn.TextSize = 14.000
BasicHaxBtn.TextXAlignment = Enum.TextXAlignment.Left

UICorner_5.CornerRadius = UDim.new(0, 1)
UICorner_5.Parent = BasicHaxBtn

ExecutorBtn.Name = "ExecutorBtn"
ExecutorBtn.Parent = TabBar
ExecutorBtn.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
ExecutorBtn.BorderColor3 = Color3.fromRGB(44, 44, 44)
ExecutorBtn.Position = UDim2.new(0, 0, 0.313712388, 0)
ExecutorBtn.Size = UDim2.new(0, 116, 0, 27)
ExecutorBtn.Font = Enum.Font.Ubuntu
ExecutorBtn.Text = "     Executor"
ExecutorBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecutorBtn.TextSize = 14.000
ExecutorBtn.TextXAlignment = Enum.TextXAlignment.Left

UICorner_6.CornerRadius = UDim.new(0, 1)
UICorner_6.Parent = ExecutorBtn

HomeBtn.Name = "HomeBtn"
HomeBtn.Parent = TabBar
HomeBtn.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
HomeBtn.BorderColor3 = Color3.fromRGB(44, 44, 44)
HomeBtn.Position = UDim2.new(0, 0, 0.209866226, 0)
HomeBtn.Size = UDim2.new(0, 116, 0, 27)
HomeBtn.Font = Enum.Font.Ubuntu
HomeBtn.Text = "     Home"
HomeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
HomeBtn.TextSize = 14.000
HomeBtn.TextXAlignment = Enum.TextXAlignment.Left

UICorner_7.CornerRadius = UDim.new(0, 1)
UICorner_7.Parent = HomeBtn

ScriptsBtn.Name = "ScriptsBtn"
ScriptsBtn.Parent = TabBar
ScriptsBtn.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
ScriptsBtn.BorderColor3 = Color3.fromRGB(44, 44, 44)
ScriptsBtn.Position = UDim2.new(0, 0, 0.404013455, 0)
ScriptsBtn.Size = UDim2.new(0, 116, 0, 27)
ScriptsBtn.Font = Enum.Font.Ubuntu
ScriptsBtn.Text = "     Scripts"
ScriptsBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptsBtn.TextSize = 14.000
ScriptsBtn.TextXAlignment = Enum.TextXAlignment.Left

UICorner_8.CornerRadius = UDim.new(0, 1)
UICorner_8.Parent = ScriptsBtn

ThemeBtn.Name = "ThemeBtn"
ThemeBtn.Parent = TabBar
ThemeBtn.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
ThemeBtn.BorderColor3 = Color3.fromRGB(44, 44, 44)
ThemeBtn.Position = UDim2.new(0, 0, 0.813545108, 0)
ThemeBtn.Size = UDim2.new(0, 116, 0, 27)
ThemeBtn.Visible = false
ThemeBtn.Font = Enum.Font.Ubuntu
ThemeBtn.Text = "     Theme"
ThemeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ThemeBtn.TextSize = 14.000
ThemeBtn.TextXAlignment = Enum.TextXAlignment.Left

UICorner_9.CornerRadius = UDim.new(0, 1)
UICorner_9.Parent = ThemeBtn

Tabs.Name = "Tabs"
Tabs.Parent = MainGUI

ExecutorTab.Name = "ExecutorTab"
ExecutorTab.Parent = Tabs
ExecutorTab.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ExecutorTab.BackgroundTransparency = 1.000
ExecutorTab.Position = UDim2.new(0.212346643, 0, 0, 0)
ExecutorTab.Size = UDim2.new(0, 428, 0, 260)
ExecutorTab.Visible = false

Title.Name = "Title"
Title.Parent = ExecutorTab
Title.Active = true
Title.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Title.Position = UDim2.new(0.00112950685, 0, 0, 0)
Title.Size = UDim2.new(0, 427, 0, 33)

UICorner_10.CornerRadius = UDim.new(0, 14)
UICorner_10.Parent = Title

TextLabel_3.Parent = Title
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.264636993, 0, 0, 0)
TextLabel_3.Size = UDim2.new(0, 200, 0, 33)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Sonic X - Executor"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 25.000
TextLabel_3.TextWrapped = true

Exec.Name = "Exec"
Exec.Parent = ExecutorTab
Exec.BackgroundColor3 = Color3.fromRGB(208, 0, 0)
Exec.Position = UDim2.new(0.0373831764, 0, 0.845947385, 0)
Exec.Size = UDim2.new(0, 83, 0, 29)
Exec.Font = Enum.Font.Ubuntu
Exec.Text = "Execute"
Exec.TextColor3 = Color3.fromRGB(255, 255, 255)
Exec.TextSize = 19.000
Exec.TextWrapped = true

UICorner_11.Parent = Exec

Clear.Name = "Clear"
Clear.Parent = ExecutorTab
Clear.BackgroundColor3 = Color3.fromRGB(208, 0, 0)
Clear.Position = UDim2.new(0.266355157, 0, 0.845947385, 0)
Clear.Size = UDim2.new(0, 83, 0, 29)
Clear.Font = Enum.Font.Ubuntu
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
Clear.TextSize = 19.000
Clear.TextWrapped = true

UICorner_12.Parent = Clear

Save.Name = "Save"
Save.Parent = ExecutorTab
Save.BackgroundColor3 = Color3.fromRGB(208, 0, 0)
Save.Position = UDim2.new(0.75, 0, 0.845947385, 0)
Save.Size = UDim2.new(0, 83, 0, 29)
Save.Font = Enum.Font.Ubuntu
Save.Text = "Save"
Save.TextColor3 = Color3.fromRGB(255, 255, 255)
Save.TextSize = 19.000
Save.TextWrapped = true

UICorner_13.Parent = Save

ScrollingFrame.Parent = ExecutorTab
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderColor3 = Color3.fromRGB(30, 30, 30)
ScrollingFrame.Position = UDim2.new(0.0373831764, 0, 0.184615389, 0)
ScrollingFrame.Size = UDim2.new(0, 402, 0, 165)

ImageLabel_2.Parent = ScrollingFrame
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ImageLabel_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(-0.000357856974, 0, -0.0536057726, 27)
ImageLabel_2.Size = UDim2.new(0, 388, 0, 100000000)

security.Name = "security"
security.Parent = ImageLabel_2
security.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
security.Size = UDim2.new(0, 552, 0, 258)
security.Visible = false
security.Font = Enum.Font.Code
security.TextColor3 = Color3.fromRGB(0, 0, 0)
security.TextSize = 14.000

EditorFrame.Name = "EditorFrame"
EditorFrame.Parent = ImageLabel_2
EditorFrame.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
EditorFrame.BackgroundTransparency = 1.000
EditorFrame.BorderColor3 = Color3.fromRGB(61, 61, 61)
EditorFrame.Size = UDim2.new(1, 0, 1, 0)
EditorFrame.ZIndex = 3
EditorFrame.BottomImage = "rbxassetid://148970562"
EditorFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
EditorFrame.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar
EditorFrame.MidImage = "rbxassetid://148970562"
EditorFrame.ScrollBarThickness = 5
EditorFrame.TopImage = "rbxassetid://148970562"

Source.Name = "Source"
Source.Parent = EditorFrame
Source.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Source.BackgroundTransparency = 1.000
Source.Position = UDim2.new(0, 30, 0, 0)
Source.Size = UDim2.new(0.945652187, 0, 1, 0)
Source.ZIndex = 3
Source.ClearTextOnFocus = false
Source.Font = Enum.Font.Code
Source.MultiLine = true
Source.PlaceholderColor3 = Color3.fromRGB(204, 204, 204)
Source.Text = ""
Source.TextColor3 = Color3.fromRGB(204, 204, 204)
Source.TextSize = 15.000
Source.TextXAlignment = Enum.TextXAlignment.Left
Source.TextYAlignment = Enum.TextYAlignment.Top

Comments_.Name = "Comments_"
Comments_.Parent = Source
Comments_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Comments_.BackgroundTransparency = 1.000
Comments_.Size = UDim2.new(1, 0, 1, 0)
Comments_.ZIndex = 5
Comments_.Font = Enum.Font.Code
Comments_.Text = ""
Comments_.TextColor3 = Color3.fromRGB(59, 200, 59)
Comments_.TextSize = 15.000
Comments_.TextXAlignment = Enum.TextXAlignment.Left
Comments_.TextYAlignment = Enum.TextYAlignment.Top

Globals_.Name = "Globals_"
Globals_.Parent = Source
Globals_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Globals_.BackgroundTransparency = 1.000
Globals_.Size = UDim2.new(1, 0, 1, 0)
Globals_.ZIndex = 5
Globals_.Font = Enum.Font.Code
Globals_.Text = ""
Globals_.TextColor3 = Color3.fromRGB(132, 214, 247)
Globals_.TextSize = 15.000
Globals_.TextXAlignment = Enum.TextXAlignment.Left
Globals_.TextYAlignment = Enum.TextYAlignment.Top

Keywords_.Name = "Keywords_"
Keywords_.Parent = Source
Keywords_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keywords_.BackgroundTransparency = 1.000
Keywords_.Size = UDim2.new(1, 0, 1, 0)
Keywords_.ZIndex = 5
Keywords_.Font = Enum.Font.Code
Keywords_.Text = ""
Keywords_.TextColor3 = Color3.fromRGB(248, 109, 124)
Keywords_.TextSize = 15.000
Keywords_.TextXAlignment = Enum.TextXAlignment.Left
Keywords_.TextYAlignment = Enum.TextYAlignment.Top

RemoteHighlight_.Name = "RemoteHighlight_"
RemoteHighlight_.Parent = Source
RemoteHighlight_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RemoteHighlight_.BackgroundTransparency = 1.000
RemoteHighlight_.Size = UDim2.new(1, 0, 1, 0)
RemoteHighlight_.ZIndex = 5
RemoteHighlight_.Font = Enum.Font.Code
RemoteHighlight_.Text = ""
RemoteHighlight_.TextColor3 = Color3.fromRGB(0, 144, 255)
RemoteHighlight_.TextSize = 15.000
RemoteHighlight_.TextXAlignment = Enum.TextXAlignment.Left
RemoteHighlight_.TextYAlignment = Enum.TextYAlignment.Top

Strings_.Name = "Strings_"
Strings_.Parent = Source
Strings_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Strings_.BackgroundTransparency = 1.000
Strings_.Size = UDim2.new(1, 0, 1, 0)
Strings_.ZIndex = 5
Strings_.Font = Enum.Font.Code
Strings_.Text = ""
Strings_.TextColor3 = Color3.fromRGB(173, 241, 149)
Strings_.TextSize = 15.000
Strings_.TextXAlignment = Enum.TextXAlignment.Left
Strings_.TextYAlignment = Enum.TextYAlignment.Top

Tokens_.Name = "Tokens_"
Tokens_.Parent = Source
Tokens_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tokens_.BackgroundTransparency = 1.000
Tokens_.Size = UDim2.new(1, 0, 1, 0)
Tokens_.ZIndex = 5
Tokens_.Font = Enum.Font.Code
Tokens_.Text = ""
Tokens_.TextColor3 = Color3.fromRGB(255, 255, 255)
Tokens_.TextSize = 15.000
Tokens_.TextXAlignment = Enum.TextXAlignment.Left
Tokens_.TextYAlignment = Enum.TextYAlignment.Top

Numbers_.Name = "Numbers_"
Numbers_.Parent = Source
Numbers_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Numbers_.BackgroundTransparency = 1.000
Numbers_.Size = UDim2.new(1, 0, 1, 0)
Numbers_.ZIndex = 4
Numbers_.Font = Enum.Font.Code
Numbers_.Text = ""
Numbers_.TextColor3 = Color3.fromRGB(255, 198, 0)
Numbers_.TextSize = 15.000
Numbers_.TextXAlignment = Enum.TextXAlignment.Left
Numbers_.TextYAlignment = Enum.TextYAlignment.Top

Lines.Name = "Lines"
Lines.Parent = EditorFrame
Lines.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Lines.BorderColor3 = Color3.fromRGB(50, 50, 50)
Lines.Size = UDim2.new(0, 29, 1, 0)
Lines.ZIndex = 4
Lines.Font = Enum.Font.Code
Lines.Text = "1\\n"
Lines.TextColor3 = Color3.fromRGB(255, 255, 255)
Lines.TextSize = 15.000
Lines.TextYAlignment = Enum.TextYAlignment.Top

Add.Name = "Add"
Add.Parent = ExecutorTab
Add.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
Add.Position = UDim2.new(0.0350467265, 0, 0.126923084, 0)
Add.Size = UDim2.new(0, 27, 0, 12)
Add.Font = Enum.Font.SourceSans
Add.Text = "+"
Add.TextColor3 = Color3.fromRGB(255, 255, 255)
Add.TextSize = 14.000

UICorner_14.Parent = Add

Decrease.Name = "Decrease"
Decrease.Parent = ExecutorTab
Decrease.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
Decrease.Position = UDim2.new(0.102803737, 0, 0.126923084, 0)
Decrease.Size = UDim2.new(0, 27, 0, 12)
Decrease.Font = Enum.Font.SourceSans
Decrease.Text = "-"
Decrease.TextColor3 = Color3.fromRGB(255, 255, 255)
Decrease.TextSize = 14.000

UICorner_15.Parent = Decrease

SaveDialog.Name = "SaveDialog"
SaveDialog.Parent = ExecutorTab
SaveDialog.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
SaveDialog.BorderColor3 = Color3.fromRGB(30, 30, 30)
SaveDialog.Position = UDim2.new(1.01869142, 0, -1.46683306e-08, 0)
SaveDialog.Size = UDim2.new(0, 263, 0, 150)
SaveDialog.Visible = false

UICorner_16.Parent = SaveDialog

Panel.Name = "Panel"
Panel.Parent = SaveDialog
Panel.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Panel.BorderColor3 = Color3.fromRGB(39, 39, 39)
Panel.Size = UDim2.new(0, 263, 0, 25)

UICorner_17.Parent = Panel

TextLabel_4.Parent = Panel
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(0.0456273779, 0, 0, 0)
TextLabel_4.Size = UDim2.new(0, 62, 0, 25)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "Save As"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 17.000
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left

X.Name = "X"
X.Parent = Panel
X.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
X.BorderColor3 = Color3.fromRGB(39, 39, 39)
X.Position = UDim2.new(0.874524713, 0, 0, 0)
X.Size = UDim2.new(0, 25, 0, 25)
X.Font = Enum.Font.Jura
X.Text = "X"
X.TextColor3 = Color3.fromRGB(255, 255, 255)
X.TextSize = 19.000

UICorner_18.Parent = X

FileName.Name = "FileName"
FileName.Parent = SaveDialog
FileName.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
FileName.BorderColor3 = Color3.fromRGB(39, 39, 39)
FileName.Position = UDim2.new(0.368821293, 0, 0.293333352, 0)
FileName.Size = UDim2.new(0, 146, 0, 22)
FileName.Font = Enum.Font.SourceSans
FileName.PlaceholderText = "File Name Here"
FileName.Text = ""
FileName.TextColor3 = Color3.fromRGB(255, 255, 255)
FileName.TextScaled = true
FileName.TextSize = 14.000
FileName.TextWrapped = true
FileName.TextXAlignment = Enum.TextXAlignment.Left

FormatName.Name = "FormatName"
FormatName.Parent = SaveDialog
FormatName.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
FormatName.BorderColor3 = Color3.fromRGB(39, 39, 39)
FormatName.Position = UDim2.new(0.368821293, 0, 0.566666663, 0)
FormatName.Size = UDim2.new(0, 146, 0, 22)
FormatName.Font = Enum.Font.SourceSans
FormatName.Text = ".txt"
FormatName.TextColor3 = Color3.fromRGB(255, 255, 255)
FormatName.TextScaled = true
FormatName.TextSize = 14.000
FormatName.TextWrapped = true
FormatName.TextXAlignment = Enum.TextXAlignment.Left

NameP.Name = "NameP"
NameP.Parent = SaveDialog
NameP.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
NameP.BorderColor3 = Color3.fromRGB(39, 39, 39)
NameP.Position = UDim2.new(0.0722433478, 0, 0.280000001, 0)
NameP.Size = UDim2.new(0, 74, 0, 25)

UICorner_19.Parent = NameP

TextLabel_5.Parent = NameP
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.Position = UDim2.new(0.145453334, 0, 0.0399999991, 0)
TextLabel_5.Size = UDim2.new(0, 52, 0, 22)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "File Name"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextSize = 17.000

ExP.Name = "ExP"
ExP.Parent = SaveDialog
ExP.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
ExP.BorderColor3 = Color3.fromRGB(39, 39, 39)
ExP.Position = UDim2.new(0.0722433478, 0, 0.553333342, 0)
ExP.Size = UDim2.new(0, 74, 0, 25)

UICorner_20.Parent = ExP

TextLabel_6.Parent = ExP
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.Position = UDim2.new(0.145453334, 0, 0.0399999991, 0)
TextLabel_6.Size = UDim2.new(0, 52, 0, 22)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = "Extension"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextSize = 17.000

Savebtn.Name = "Savebtn"
Savebtn.Parent = SaveDialog
Savebtn.BackgroundColor3 = Color3.fromRGB(209, 0, 0)
Savebtn.BorderColor3 = Color3.fromRGB(39, 39, 39)
Savebtn.Position = UDim2.new(0.733840287, 0, 0.793333411, 0)
Savebtn.Size = UDim2.new(0, 62, 0, 25)
Savebtn.Font = Enum.Font.Ubuntu
Savebtn.Text = "Save"
Savebtn.TextColor3 = Color3.fromRGB(255, 255, 255)
Savebtn.TextSize = 19.000

UICorner_21.Parent = Savebtn

HomeTab.Name = "HomeTab"
HomeTab.Parent = Tabs
HomeTab.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
HomeTab.BackgroundTransparency = 1.000
HomeTab.Position = UDim2.new(0.212346643, 0, 0, 0)
HomeTab.Size = UDim2.new(0, 428, 0, 260)

Title_2.Name = "Title"
Title_2.Parent = HomeTab
Title_2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Title_2.Position = UDim2.new(0.00112950685, 0, 0, 0)
Title_2.Size = UDim2.new(0, 427, 0, 33)

UICorner_22.CornerRadius = UDim.new(0, 14)
UICorner_22.Parent = Title_2

TextLabel_7.Parent = Title_2
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.Position = UDim2.new(0.264636993, 0, 0, 0)
TextLabel_7.Size = UDim2.new(0, 200, 0, 33)
TextLabel_7.Font = Enum.Font.SourceSans
TextLabel_7.Text = "Sonic X - Home"
TextLabel_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.TextSize = 25.000
TextLabel_7.TextWrapped = true

Frame.Parent = HomeTab
Frame.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Frame.BorderColor3 = Color3.fromRGB(39, 39, 39)
Frame.Position = UDim2.new(0.495327115, 0, 0.173076928, 0)
Frame.Size = UDim2.new(0, 196, 0, 193)

UICorner_23.Parent = Frame

TextLabel_8.Parent = Frame
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.Position = UDim2.new(0.117347106, 0, 0.0155439815, 0)
TextLabel_8.Size = UDim2.new(0, 150, 0, 33)
TextLabel_8.Font = Enum.Font.SourceSans
TextLabel_8.Text = "Made by (SonicTeam)"
TextLabel_8.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.TextSize = 19.000
TextLabel_8.TextWrapped = true

ImageLabel_3.Parent = Frame
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(95, 8, 0)
ImageLabel_3.BorderColor3 = Color3.fromRGB(39, 39, 39)
ImageLabel_3.Position = UDim2.new(0.0459183678, 0, 0.186528474, 0)
ImageLabel_3.Size = UDim2.new(0, 51, 0, 51)
ImageLabel_3.Image = "http://www.roblox.com/asset/?id=12353508099"

UICorner_24.Parent = ImageLabel_3

TextLabel_9.Parent = Frame
TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BackgroundTransparency = 1.000
TextLabel_9.Position = UDim2.new(0.3418369, 0, 0.186528414, 0)
TextLabel_9.Size = UDim2.new(0, 122, 0, 33)
TextLabel_9.Font = Enum.Font.SourceSans
TextLabel_9.Text "SonicTuru#1030"
TextLabel_9.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.TextSize = 21.000
TextLabel_9.TextWrapped = true
TextLabel_9.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_10.Parent = Frame
TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BackgroundTransparency = 1.000
TextLabel_10.Position = UDim2.new(0.3418369, 0, 0.595854878, 0)
TextLabel_10.Size = UDim2.new(0, 122, 0, 33)
TextLabel_10.Font = Enum.Font.SourceSans
TextLabel_10.Text = AZY#0348"
TextLabel_10.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.TextSize = 21.000
TextLabel_10.TextWrapped = true
TextLabel_10.TextXAlignment = Enum.TextXAlignment.Left

ImageLabel_4.Parent = Frame
ImageLabel_4.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ImageLabel_4.BorderColor3 = Color3.fromRGB(39, 39, 39)
ImageLabel_4.Position = UDim2.new(0.0459183678, 0, 0.595854878, 0)
ImageLabel_4.Size = UDim2.new(0, 51, 0, 51)
ImageLabel_4.Image = "http://www.roblox.com/asset/?id=12353508099"

UICorner_25.Parent = ImageLabel_4

TextLabel_11.Parent = Frame
TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.BackgroundTransparency = 1.000
TextLabel_11.Position = UDim2.new(0.3418369, 0, 0.430051744, 0)
TextLabel_11.Size = UDim2.new(0, 64, 0, 33)
TextLabel_11.Font = Enum.Font.SourceSans
TextLabel_11.Text = "And"
TextLabel_11.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.TextSize = 21.000
TextLabel_11.TextWrapped = true

Frame_2.Parent = HomeTab
Frame_2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Frame_2.BorderColor3 = Color3.fromRGB(39, 39, 39)
Frame_2.Position = UDim2.new(0.0186915994, 0, 0.173076928, 0)
Frame_2.Size = UDim2.new(0, 196, 0, 193)

UICorner_26.Parent = Frame_2

TextLabel_12.Parent = Frame_2
TextLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.BackgroundTransparency = 1.000
TextLabel_12.Size = UDim2.new(0, 195, 0, 33)
TextLabel_12.Font = Enum.Font.SourceSans
TextLabel_12.Text = "Sonic X"
TextLabel_12.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.TextSize = 25.000
TextLabel_12.TextWrapped = true

ImageLabel_5.Parent = Frame_2
ImageLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_5.BorderColor3 = Color3.fromRGB(39, 39, 39)
ImageLabel_5.Position = UDim2.new(0.244897962, 0, 0.186528504, 0)
ImageLabel_5.Size = UDim2.new(0, 100, 0, 100)
ImageLabel_5.Image = "http://www.roblox.com/asset/?id=12353508099"

UICorner_27.Parent = ImageLabel_5

TextLabel_13.Parent = Frame_2
TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.BackgroundTransparency = 1.000
TextLabel_13.Position = UDim2.new(0.00510204071, 0, 0.740932643, 0)
TextLabel_13.Size = UDim2.new(0, 195, 0, 23)
TextLabel_13.Font = Enum.Font.SourceSans
TextLabel_13.Text = "Made By SonicTeam!"
TextLabel_13.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.TextSize = 25.000
TextLabel_13.TextWrapped = true

CLink.Name = "CLink"
CLink.Parent = Frame_2
CLink.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
CLink.BorderColor3 = Color3.fromRGB(200, 200, 200)
CLink.Position = UDim2.new(0, 0, 0.854922295, 0)
CLink.Size = UDim2.new(0, 196, 0, 28)
CLink.Font = Enum.Font.SourceSans
CLink.Text = "Copy Link Discord"
CLink.TextColor3 = Color3.fromRGB(255, 255, 255)
CLink.TextSize = 14.000

UICorner_28.Parent = CLink

ScriptsTab.Name = "ScriptsTab"
ScriptsTab.Parent = Tabs
ScriptsTab.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ScriptsTab.BackgroundTransparency = 1.000
ScriptsTab.Position = UDim2.new(0.212346643, 0, 0, 0)
ScriptsTab.Size = UDim2.new(0, 428, 0, 260)
ScriptsTab.Visible = false

Title_3.Name = "Title"
Title_3.Parent = ScriptsTab
Title_3.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Title_3.Position = UDim2.new(0.00112950685, 0, 0, 0)
Title_3.Size = UDim2.new(0, 427, 0, 33)

UICorner_29.CornerRadius = UDim.new(0, 14)
UICorner_29.Parent = Title_3

TextLabel_14.Parent = Title_3
TextLabel_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.BackgroundTransparency = 1.000
TextLabel_14.Position = UDim2.new(0.264636993, 0, 0, 0)
TextLabel_14.Size = UDim2.new(0, 200, 0, 33)
TextLabel_14.Font = Enum.Font.SourceSans
TextLabel_14.Text = "Sonic X - Scripts"
TextLabel_14.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.TextSize = 25.000
TextLabel_14.TextWrapped = true

SonicsScripts.Name = "SonicsScripts"
SonicsScripts.Parent = ScriptsTab
SonicsScripts.Active = true
SonicsScripts.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
SonicsScripts.BorderColor3 = Color3.fromRGB(22, 22, 22)
SonicsScripts.Position = UDim2.new(0.0443925224, 0, 0.27692309, 0)
SonicsScripts.Size = UDim2.new(0, 178, 0, 166)

ToggleCFarm.Name = "ToggleCFarm"
ToggleCFarm.Parent = SonicsScripts
ToggleCFarm.BackgroundColor3 = Color3.fromRGB(208, 0, 0)
ToggleCFarm.Position = UDim2.new(0, 0, 0.0134615386, 0)
ToggleCFarm.Size = UDim2.new(0, 161, 0, 29)
ToggleCFarm.Font = Enum.Font.Ubuntu
ToggleCFarm.Text = "Toggle Chest Farm"
ToggleCFarm.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleCFarm.TextSize = 19.000
ToggleCFarm.TextWrapped = true

UICorner_30.Parent = ToggleCFarm

FruitFinder.Name = "FruitFinder"
FruitFinder.Parent = SonicsScripts
FruitFinder.BackgroundColor3 = Color3.fromRGB(208, 0, 0)
FruitFinder.Position = UDim2.new(0, 0, 0.0826923102, 0)
FruitFinder.Size = UDim2.new(0, 161, 0, 29)
FruitFinder.Font = Enum.Font.Ubuntu
FruitFinder.Text = "Fruit Finder"
FruitFinder.TextColor3 = Color3.fromRGB(255, 255, 255)
FruitFinder.TextSize = 19.000
FruitFinder.TextWrapped = true

UICorner_31.Parent = FruitFinder

SonicHub.Name = "SonicHub"
SonicHub.Parent = SonicsScripts
SonicHub.BackgroundColor3 = Color3.fromRGB(208, 0, 0)
SonicHub.Position = UDim2.new(0, 0, 0.150000006, 0)
SonicHub.Size = UDim2.new(0, 161, 0, 29)
SonicHub.Font = Enum.Font.Ubuntu
SonicHub.Text = "Sonic Hub"
SonicHub.TextColor3 = Color3.fromRGB(255, 255, 255)
SonicHub.TextSize = 19.000
SonicHub.TextWrapped = true

UICorner_32.Parent = SonicHub

AutoBuyHaki.Name = "AutoBuyHaki"
AutoBuyHaki.Parent = SonicsScripts
AutoBuyHaki.BackgroundColor3 = Color3.fromRGB(208, 0, 0)
AutoBuyHaki.Position = UDim2.new(0, 0, 0.221153855, 0)
AutoBuyHaki.Size = UDim2.new(0, 161, 0, 29)
AutoBuyHaki.Font = Enum.Font.Ubuntu
AutoBuyHaki.Text = "AutoBuy Haki Color"
AutoBuyHaki.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoBuyHaki.TextSize = 18.000
AutoBuyHaki.TextWrapped = true

UICorner_33.Parent = AutoBuyHaki

AutoBuySword.Name = "AutoBuySword"
AutoBuySword.Parent = SonicsScripts
AutoBuySword.BackgroundColor3 = Color3.fromRGB(208, 0, 0)
AutoBuySword.Position = UDim2.new(0, 0, 0.294230789, 0)
AutoBuySword.Size = UDim2.new(0, 161, 0, 29)
AutoBuySword.Font = Enum.Font.Ubuntu
AutoBuySword.Text = "AutoBuy Legend Sword"
AutoBuySword.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoBuySword.TextSize = 15.000
AutoBuySword.TextWrapped = true

UICorner_34.Parent = AutoBuySword

AimbotBf.Name = "AimbotBf"
AimbotBf.Parent = SonicsScripts
AimbotBf.BackgroundColor3 = Color3.fromRGB(208, 0, 0)
AimbotBf.Position = UDim2.new(0, 0, 0.365999997, 0)
AimbotBf.Size = UDim2.new(0, 161, 0, 29)
AimbotBf.Font = Enum.Font.Ubuntu
AimbotBf.Text = "Aimbot Blox Fruit"
AimbotBf.TextColor3 = Color3.fromRGB(255, 255, 255)
AimbotBf.TextSize = 19.000
AimbotBf.TextWrapped = true

UICorner_35.Parent = AimbotBf

ChillzScripts.Name = "ChillzScripts"
ChillzScripts.Parent = ScriptsTab
ChillzScripts.Active = true
ChillzScripts.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
ChillzScripts.BorderColor3 = Color3.fromRGB(22, 22, 22)
ChillzScripts.Position = UDim2.new(0.532710254, 0, 0.27692309, 0)
ChillzScripts.Size = UDim2.new(0, 178, 0, 166)

ChatSplitter.Name = "ChatSplitter"
ChatSplitter.Parent = ChillzScripts
ChatSplitter.BackgroundColor3 = Color3.fromRGB(208, 0, 0)
ChatSplitter.Position = UDim2.new(0, 0, 0.0134615386, 0)
ChatSplitter.Size = UDim2.new(0, 161, 0, 29)
ChatSplitter.Font = Enum.Font.Ubuntu
ChatSplitter.Text = "ChatSplitter"
ChatSplitter.TextColor3 = Color3.fromRGB(255, 255, 255)
ChatSplitter.TextSize = 19.000
ChatSplitter.TextWrapped = true

UICorner_36.Parent = ChatSplitter

WIP.Name = "WIP"
WIP.Parent = ChillzScripts
WIP.BackgroundColor3 = Color3.fromRGB(208, 0, 0)
WIP.Position = UDim2.new(0, 0, 0.0826923102, 0)
WIP.Size = UDim2.new(0, 161, 0, 29)
WIP.Visible = false
WIP.Font = Enum.Font.Ubuntu
WIP.Text = "WIP"
WIP.TextColor3 = Color3.fromRGB(255, 255, 255)
WIP.TextSize = 19.000
WIP.TextWrapped = true

UICorner_37.Parent = WIP

Sonic.Name = "Sonic"
Sonic.Parent = ScriptsTab
Sonic.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Sonic.BackgroundTransparency = 1.000
Sonic.Position = UDim2.new(0.0426743403, 0, 0.150000006, 0)
Sonic.Size = UDim2.new(0, 178, 0, 33)
Sonic.Font = Enum.Font.SourceSans
Sonic.Text = "Sonic's Scripts"
Sonic.TextColor3 = Color3.fromRGB(255, 255, 255)
Sonic.TextSize = 25.000
Sonic.TextWrapped = true

Chillz.Name = "Chillz"
Chillz.Parent = ScriptsTab
Chillz.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Chillz.BackgroundTransparency = 1.000
Chillz.Position = UDim2.new(0.530992091, 0, 0.150000006, 0)
Chillz.Size = UDim2.new(0, 177, 0, 33)
Chillz.Font = Enum.Font.SourceSans
Chillz.Text = "Chillz's Scripts"
Chillz.TextColor3 = Color3.fromRGB(255, 255, 255)
Chillz.TextSize = 25.000
Chillz.TextWrapped = true

BasicHaxTab.Name = "BasicHaxTab"
BasicHaxTab.Parent = Tabs
BasicHaxTab.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
BasicHaxTab.BackgroundTransparency = 1.000
BasicHaxTab.Position = UDim2.new(0.212346643, 0, 0, 0)
BasicHaxTab.Size = UDim2.new(0, 428, 0, 260)
BasicHaxTab.Visible = false

Title_4.Name = "Title"
Title_4.Parent = BasicHaxTab
Title_4.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Title_4.Position = UDim2.new(0.00112950685, 0, 0, 0)
Title_4.Size = UDim2.new(0, 427, 0, 33)

UICorner_38.CornerRadius = UDim.new(0, 14)
UICorner_38.Parent = Title_4

TextLabel_15.Parent = Title_4
TextLabel_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_15.BackgroundTransparency = 1.000
TextLabel_15.Position = UDim2.new(0.264636993, 0, 0, 0)
TextLabel_15.Size = UDim2.new(0, 200, 0, 33)
TextLabel_15.Font = Enum.Font.SourceSans
TextLabel_15.Text = "Sonic X - Basic Hacks"
TextLabel_15.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_15.TextSize = 25.000
TextLabel_15.TextWrapped = true

WS.Name = "WS"
WS.Parent = BasicHaxTab
WS.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
WS.BorderColor3 = Color3.fromRGB(14, 14, 14)
WS.Position = UDim2.new(0.0350466222, 0, 0.253846169, 0)
WS.Size = UDim2.new(0, 70, 0, 28)
WS.Font = Enum.Font.SourceSans
WS.Text = ""
WS.TextColor3 = Color3.fromRGB(255, 255, 255)
WS.TextScaled = true
WS.TextSize = 14.000
WS.TextWrapped = true

UICorner_39.Parent = WS

btnWS.Name = "btnWS"
btnWS.Parent = BasicHaxTab
btnWS.BackgroundColor3 = Color3.fromRGB(208, 0, 0)
btnWS.Position = UDim2.new(0.231308416, 0, 0.250615388, 0)
btnWS.Size = UDim2.new(0, 52, 0, 29)
btnWS.Font = Enum.Font.Ubuntu
btnWS.Text = "Off"
btnWS.TextColor3 = Color3.fromRGB(255, 255, 255)
btnWS.TextSize = 19.000
btnWS.TextWrapped = true

UICorner_40.Parent = btnWS

JP.Name = "JP"
JP.Parent = BasicHaxTab
JP.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
JP.BorderColor3 = Color3.fromRGB(14, 14, 14)
JP.Position = UDim2.new(0.0350466222, 0, 0.492307723, 0)
JP.Size = UDim2.new(0, 70, 0, 28)
JP.Font = Enum.Font.SourceSans
JP.Text = ""
JP.TextColor3 = Color3.fromRGB(255, 255, 255)
JP.TextScaled = true
JP.TextSize = 14.000
JP.TextWrapped = true

UICorner_41.Parent = JP

btnJP.Name = "btnJP"
btnJP.Parent = BasicHaxTab
btnJP.BackgroundColor3 = Color3.fromRGB(208, 0, 0)
btnJP.Position = UDim2.new(0.231308416, 0, 0.489076912, 0)
btnJP.Size = UDim2.new(0, 52, 0, 29)
btnJP.Font = Enum.Font.Ubuntu
btnJP.Text = "Off"
btnJP.TextColor3 = Color3.fromRGB(255, 255, 255)
btnJP.TextSize = 19.000
btnJP.TextWrapped = true

UICorner_42.Parent = btnJP

wstitle.Name = "wstitle"
wstitle.Parent = BasicHaxTab
wstitle.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
wstitle.Position = UDim2.new(0.0338397883, 0, 0.184615389, 0)
wstitle.Size = UDim2.new(0, 70, 0, 18)

UICorner_43.CornerRadius = UDim.new(0, 14)
UICorner_43.Parent = wstitle

TextLabel_16.Parent = wstitle
TextLabel_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_16.BackgroundTransparency = 1.000
TextLabel_16.Position = UDim2.new(-0.00679146918, 0, 0, 0)
TextLabel_16.Size = UDim2.new(0, 70, 0, 18)
TextLabel_16.Font = Enum.Font.SourceSans
TextLabel_16.Text = "WalkSpeed"
TextLabel_16.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_16.TextSize = 15.000
TextLabel_16.TextWrapped = true

jptitle.Name = "jptitle"
jptitle.Parent = BasicHaxTab
jptitle.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
jptitle.Position = UDim2.new(0.0338397883, 0, 0.419230759, 0)
jptitle.Size = UDim2.new(0, 70, 0, 18)

UICorner_44.CornerRadius = UDim.new(0, 14)
UICorner_44.Parent = jptitle

TextLabel_17.Parent = jptitle
TextLabel_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_17.BackgroundTransparency = 1.000
TextLabel_17.Position = UDim2.new(-0.00679146918, 0, -0.055555582, 0)
TextLabel_17.Size = UDim2.new(0, 70, 0, 18)
TextLabel_17.Font = Enum.Font.SourceSans
TextLabel_17.Text = "JumpPower"
TextLabel_17.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_17.TextSize = 15.000
TextLabel_17.TextWrapped = true

CommonScripts.Name = "CommonScripts"
CommonScripts.Parent = BasicHaxTab
CommonScripts.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
CommonScripts.Position = UDim2.new(0.0875781029, 0, 0.715384603, 0)
CommonScripts.Size = UDim2.new(0, 352, 0, 51)

UICorner_45.CornerRadius = UDim.new(0, 14)
UICorner_45.Parent = CommonScripts

TextLabel_18.Parent = CommonScripts
TextLabel_18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_18.BackgroundTransparency = 1.000
TextLabel_18.Position = UDim2.new(-0.00240846118, 0, 0, 0)
TextLabel_18.Size = UDim2.new(0, 96, 0, 17)
TextLabel_18.Font = Enum.Font.SourceSans
TextLabel_18.Text = "Common Scripts"
TextLabel_18.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_18.TextSize = 15.000
TextLabel_18.TextWrapped = true

IY.Name = "IY"
IY.Parent = CommonScripts
IY.BackgroundColor3 = Color3.fromRGB(208, 0, 0)
IY.Position = UDim2.new(0.0267629623, 0, 0.469468951, 0)
IY.Size = UDim2.new(0, 75, 0, 19)
IY.Font = Enum.Font.Ubuntu
IY.Text = "Infinite Yield"
IY.TextColor3 = Color3.fromRGB(255, 255, 255)
IY.TextSize = 12.000
IY.TextWrapped = true

UICorner_46.CornerRadius = UDim.new(0, 6)
UICorner_46.Parent = IY

DexExp.Name = "DexExp"
DexExp.Parent = CommonScripts
DexExp.BackgroundColor3 = Color3.fromRGB(208, 0, 0)
DexExp.Position = UDim2.new(0.268240213, 0, 0.469468951, 0)
DexExp.Size = UDim2.new(0, 75, 0, 19)
DexExp.Font = Enum.Font.Ubuntu
DexExp.Text = "Dex Explorer"
DexExp.TextColor3 = Color3.fromRGB(255, 255, 255)
DexExp.TextSize = 12.000
DexExp.TextWrapped = true

UICorner_47.CornerRadius = UDim.new(0, 6)
UICorner_47.Parent = DexExp

Rspy.Name = "Rspy"
Rspy.Parent = CommonScripts
Rspy.BackgroundColor3 = Color3.fromRGB(208, 0, 0)
Rspy.Position = UDim2.new(0.504035711, 0, 0.469468951, 0)
Rspy.Size = UDim2.new(0, 75, 0, 19)
Rspy.Font = Enum.Font.Ubuntu
Rspy.Text = "Remote Spy"
Rspy.TextColor3 = Color3.fromRGB(255, 255, 255)
Rspy.TextSize = 12.000
Rspy.TextWrapped = true

UICorner_48.CornerRadius = UDim.new(0, 6)
UICorner_48.Parent = Rspy

Hoho.Name = "Hoho"
Hoho.Parent = CommonScripts
Hoho.BackgroundColor3 = Color3.fromRGB(208, 0, 0)
Hoho.Position = UDim2.new(0.742672026, 0, 0.469468951, 0)
Hoho.Size = UDim2.new(0, 75, 0, 19)
Hoho.Font = Enum.Font.Ubuntu
Hoho.Text = "Hoho Hub"
Hoho.TextColor3 = Color3.fromRGB(255, 255, 255)
Hoho.TextSize = 12.000
Hoho.TextWrapped = true

UICorner_49.CornerRadius = UDim.new(0, 6)
UICorner_49.Parent = Hoho

G.Name = "G"
G.Parent = BasicHaxTab
G.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
G.BorderColor3 = Color3.fromRGB(14, 14, 14)
G.Position = UDim2.new(0.397196174, 0, 0.253846169, 0)
G.Size = UDim2.new(0, 70, 0, 28)
G.Font = Enum.Font.SourceSans
G.Text = ""
G.TextColor3 = Color3.fromRGB(255, 255, 255)
G.TextScaled = true
G.TextSize = 14.000
G.TextWrapped = true

UICorner_50.Parent = G

btnG.Name = "btnG"
btnG.Parent = BasicHaxTab
btnG.BackgroundColor3 = Color3.fromRGB(208, 0, 0)
btnG.Position = UDim2.new(0.593457937, 0, 0.250615388, 0)
btnG.Size = UDim2.new(0, 52, 0, 29)
btnG.Font = Enum.Font.Ubuntu
btnG.Text = "Set"
btnG.TextColor3 = Color3.fromRGB(255, 255, 255)
btnG.TextSize = 19.000
btnG.TextWrapped = true

UICorner_51.Parent = btnG

gravtitle.Name = "gravtitle"
gravtitle.Parent = BasicHaxTab
gravtitle.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
gravtitle.Position = UDim2.new(0.395989329, 0, 0.184615389, 0)
gravtitle.Size = UDim2.new(0, 70, 0, 18)

UICorner_52.CornerRadius = UDim.new(0, 14)
UICorner_52.Parent = gravtitle

TextLabel_19.Parent = gravtitle
TextLabel_19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_19.BackgroundTransparency = 1.000
TextLabel_19.Position = UDim2.new(-0.00679146918, 0, 0, 0)
TextLabel_19.Size = UDim2.new(0, 70, 0, 18)
TextLabel_19.Font = Enum.Font.SourceSans
TextLabel_19.Text = "Gravity"
TextLabel_19.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_19.TextSize = 15.000
TextLabel_19.TextWrapped = true

btnGR.Name = "btnGR"
btnGR.Parent = BasicHaxTab
btnGR.BackgroundColor3 = Color3.fromRGB(208, 0, 0)
btnGR.Position = UDim2.new(0.75, 0, 0.250615388, 0)
btnGR.Size = UDim2.new(0, 52, 0, 29)
btnGR.Font = Enum.Font.Ubuntu
btnGR.Text = "Reset"
btnGR.TextColor3 = Color3.fromRGB(255, 255, 255)
btnGR.TextSize = 19.000
btnGR.TextWrapped = true

UICorner_53.Parent = btnGR

ThemeTab.Name = "ThemeTab"
ThemeTab.Parent = Tabs
ThemeTab.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ThemeTab.BackgroundTransparency = 1.000
ThemeTab.Position = UDim2.new(0.212346643, 0, 0, 0)
ThemeTab.Size = UDim2.new(0, 428, 0, 260)
ThemeTab.Visible = false

Title_5.Name = "Title"
Title_5.Parent = ThemeTab
Title_5.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Title_5.Position = UDim2.new(0.00112950685, 0, 0, 0)
Title_5.Size = UDim2.new(0, 427, 0, 33)

UICorner_54.CornerRadius = UDim.new(0, 14)
UICorner_54.Parent = Title_5

TextLabel_20.Parent = Title_5
TextLabel_20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_20.BackgroundTransparency = 1.000
TextLabel_20.Position = UDim2.new(0.264636993, 0, 0, 0)
TextLabel_20.Size = UDim2.new(0, 200, 0, 33)
TextLabel_20.Font = Enum.Font.SourceSans
TextLabel_20.Text = "SonicX - Executor"
TextLabel_20.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_20.TextSize = 25.000
TextLabel_20.TextWrapped = true

X_2.Name = "X"
X_2.Parent = MainGUI
X_2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
X_2.BorderColor3 = Color3.fromRGB(39, 39, 39)
X_2.Position = UDim2.new(0.938410938, 0, 0, 0)
X_2.Size = UDim2.new(0, 33, 0, 33)
X_2.Font = Enum.Font.Unknown
X_2.Text = "X"
X_2.TextColor3 = Color3.fromRGB(255, 255, 255)
X_2.TextSize = 19.000

UICorner_55.CornerRadius = UDim.new(0, 14)
UICorner_55.Parent = X_2

Icon.Name = "Icon"
Icon.Parent = SonicX
Icon.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Icon.BackgroundTransparency = 0
Icon.Position = UDim2.new(0.0464059711, 0, 0, 0)
Icon.Size = UDim2.new(0, 37, 0, 37)
Icon.Image = "http://www.roblox.com/asset/?id=12372811765"

UICorner_56.Parent = Icon

-- Scripts:

local function JYHKVZD_fake_script() -- ImageLabel.LocalScript 
	local script = Instance.new('LocalScript', ImageLabel)

	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local img = script.Parent
	img.Image = Players:GetUserThumbnailAsync(player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
end
coroutine.wrap(JYHKVZD_fake_script)()
local function LVCUFKO_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	local txt = script.Parent
	
	txt.Text = game:GetService("Players").LocalPlayer.DisplayName
end
coroutine.wrap(LVCUFKO_fake_script)()
local function MKAZNB_fake_script() -- TextLabel_2.LocalScript 
	local script = Instance.new('LocalScript', TextLabel_2)

	local textObject = script.Parent
	
	while true do
		local currentTime = os.time()
		local hour = tonumber(os.date("%H", currentTime))
		textObject.Text = os.date("%X", currentTime)
		wait(1)
	end
	
end
coroutine.wrap(MKAZNB_fake_script)()
local function MEEYP_fake_script() -- BasicHaxBtn.LocalScript 
	local script = Instance.new('LocalScript', BasicHaxBtn)

	local btn = script.Parent
	
	--tabs
	local exec = script.Parent.Parent.Parent.Tabs.ExecutorTab
	local home = script.Parent.Parent.Parent.Tabs.HomeTab
	local scs = script.Parent.Parent.Parent.Tabs.ScriptsTab
	local th = script.Parent.Parent.Parent.Tabs.ThemeTab
	local basichax = script.Parent.Parent.Parent.Tabs.BasicHaxTab
	
	btn.MouseEnter:Connect(function()
		btn.BackgroundColor3 = Color3.fromRGB(255, 0, 8)
	end)
	btn.MouseLeave:Connect(function()
		btn.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	end)
	
	btn.MouseButton1Click:Connect(function()
		exec.Visible = false
		exec.Active = false
	
		home.Visible = false
		home.Active = false
	
		scs.Visible = false
		scs.Active = false
	
		th.Visible = false
		th.Active = false
	
		basichax.Visible = true
		basichax.Active = true
	end)
end
coroutine.wrap(MEEYP_fake_script)()
local function JFXTTNM_fake_script() -- ExecutorBtn.LocalScript 
	local script = Instance.new('LocalScript', ExecutorBtn)

	local btn = script.Parent
	
	--tabs
	local exec = script.Parent.Parent.Parent.Tabs.ExecutorTab
	local home = script.Parent.Parent.Parent.Tabs.HomeTab
	local scs = script.Parent.Parent.Parent.Tabs.ScriptsTab
	local th = script.Parent.Parent.Parent.Tabs.ThemeTab
	local basichax = script.Parent.Parent.Parent.Tabs.BasicHaxTab
	
	btn.MouseEnter:Connect(function()
		btn.BackgroundColor3 = Color3.fromRGB(255, 0, 8)
	end)
	btn.MouseLeave:Connect(function()
		btn.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	end)
	
	btn.MouseButton1Click:Connect(function()
		exec.Visible = true
		exec.Active = true
	
		home.Visible = false
		home.Active = false
	
		scs.Visible = false
		scs.Active = false
	
		th.Visible = false
		th.Active = false
	
		basichax.Visible = false
		basichax.Active = false
	end)
end
coroutine.wrap(JFXTTNM_fake_script)()
local function QPEM_fake_script() -- HomeBtn.LocalScript 
	local script = Instance.new('LocalScript', HomeBtn)

	local btn = script.Parent
	--tabs
	local exec = script.Parent.Parent.Parent.Tabs.ExecutorTab
	local home = script.Parent.Parent.Parent.Tabs.HomeTab
	local scs = script.Parent.Parent.Parent.Tabs.ScriptsTab
	local th = script.Parent.Parent.Parent.Tabs.ThemeTab
	local basichax = script.Parent.Parent.Parent.Tabs.BasicHaxTab
	
	btn.MouseEnter:Connect(function()
		btn.BackgroundColor3 = Color3.fromRGB(255, 0, 8)
	end)
	btn.MouseLeave:Connect(function()
		btn.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	end)
	
	btn.MouseButton1Click:Connect(function()
		exec.Visible = false
		exec.Active = false
		
		home.Visible = true
		home.Active = true
		
		scs.Visible = false
		scs.Active = false
		
		th.Visible = false
		th.Active = false
		
		basichax.Visible = false
		basichax.Active = false
	end)
end
coroutine.wrap(QPEM_fake_script)()
local function MRBRVN_fake_script() -- ScriptsBtn.LocalScript 
	local script = Instance.new('LocalScript', ScriptsBtn)

	local btn = script.Parent
	
	--tabs
	local exec = script.Parent.Parent.Parent.Tabs.ExecutorTab
	local home = script.Parent.Parent.Parent.Tabs.HomeTab
	local scs = script.Parent.Parent.Parent.Tabs.ScriptsTab
	local th = script.Parent.Parent.Parent.Tabs.ThemeTab
	local basichax = script.Parent.Parent.Parent.Tabs.BasicHaxTab
	
	btn.MouseEnter:Connect(function()
		btn.BackgroundColor3 = Color3.fromRGB(255, 0, 8)
	end)
	btn.MouseLeave:Connect(function()
		btn.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	end)
	
	btn.MouseButton1Click:Connect(function()
		exec.Visible = false
		exec.Active = false
	
		home.Visible = false
		home.Active = false
	
		scs.Visible = true
		scs.Active = true
	
		th.Visible = false
		th.Active = false
	
		basichax.Visible = false
		basichax.Active = false
	end)
end
coroutine.wrap(MRBRVN_fake_script)()
local function YMFYK_fake_script() -- ThemeBtn.LocalScript 
	local script = Instance.new('LocalScript', ThemeBtn)

	local btn = script.Parent
	
	--tabs
	local exec = script.Parent.Parent.Parent.Tabs.ExecutorTab
	local home = script.Parent.Parent.Parent.Tabs.HomeTab
	local scs = script.Parent.Parent.Parent.Tabs.ScriptsTab
	local th = script.Parent.Parent.Parent.Tabs.ThemeTab
	local basichax = script.Parent.Parent.Parent.Tabs.BasicHaxTab
	
	btn.MouseEnter:Connect(function()
		btn.BackgroundColor3 = Color3.fromRGB(255, 0, 8)
	end)
	btn.MouseLeave:Connect(function()
		btn.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	end)
	
	
	btn.MouseButton1Click:Connect(function()
		exec.Visible = false
		exec.Active = false
	
		home.Visible = false
		home.Active = false
	
		scs.Visible = false
		scs.Active = false
	
		th.Visible = true
		th.Active = true
	
		basichax.Visible = false
		basichax.Active = false
	end)
end
coroutine.wrap(YMFYK_fake_script)()
local function UGCQY_fake_script() -- Exec.LocalScript 
	local script = Instance.new('LocalScript', Exec)

	local txtbox = script.Parent.Parent.ScrollingFrame.ImageLabel.EditorFrame.Source
	local btn =script.Parent
	
	btn.MouseButton1Click:Connect(function()
		loadstring(txtbox.Text)()
	end)
end
coroutine.wrap(UGCQY_fake_script)()
local function REVYK_fake_script() -- Clear.LocalScript 
	local script = Instance.new('LocalScript', Clear)

	local txtbox = script.Parent.Parent.ScrollingFrame.ImageLabel.EditorFrame.Source
	local btn =script.Parent
	
	btn.MouseButton1Click:Connect(function()
		txtbox.Text = ""
	end)
end
coroutine.wrap(REVYK_fake_script)()
local function FKTPN_fake_script() -- Save.LocalScript 
	local script = Instance.new('LocalScript', Save)

	local btn =script.Parent
	
	btn.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.ExecutorTab.SaveDialog.Visible = true
		script.Parent.Parent.Parent.ExecutorTab.SaveDialog.Active = true
	end)
end
coroutine.wrap(FKTPN_fake_script)()
local function IRKDO_fake_script() -- ImageLabel_2.LocalScript 
	local script = Instance.new('LocalScript', ImageLabel_2)

	local lua_keywords = {"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while"}
	local global_env = {"getrawmetatable", "game", "workspace", "script", "math", "string", "table", "print", "wait", "BrickColor", "Color3", "next", "pairs", "ipairs", "select", "unpack", "Instance", "Vector2", "Vector3", "CFrame", "Ray", "UDim2", "Enum", "assert", "error", "warn", "tick", "loadstring", "_G", "shared", "getfenv", "setfenv", "newproxy", "setmetatable", "getmetatable", "os", "debug", "pcall", "ypcall", "xpcall", "rawequal", "rawset", "rawget", "tonumber", "tostring", "type", "typeof", "_VERSION", "coroutine", "delay", "require", "spawn", "LoadLibrary", "settings", "stats", "time", "UserSettings", "version", "Axes", "ColorSequence", "Faces", "ColorSequenceKeypoint", "NumberRange", "NumberSequence", "NumberSequenceKeypoint", "gcinfo", "elapsedTime", "collectgarbage", "PhysicalProperties", "Rect", "Region3", "Region3int16", "UDim", "Vector2int16", "Vector3int16"}
	local Source = script.Parent.EditorFrame.Source
	local Lines = Source.Parent.Lines
	local Highlight = function(string, keywords)
		local K = {}
		local S = string
		local Token =
			{
				["="] = true,
				["."] = true,
				[","] = true,
				["("] = true,
				[")"] = true,
				["["] = true,
				["]"] = true,
				["{"] = true,
				["}"] = true,
				[":"] = true,
				["*"] = true,
				["/"] = true,
				["+"] = true,
				["-"] = true,
				["%"] = true,
				[";"] = true,
				["~"] = true
			}
		for i, v in pairs(keywords) do
			K[v] = true
		end
		S = S:gsub(".", function(c)
			if Token[c] ~= nil then
				return "\32"
			else
				return c
			end
		end)
		S = S:gsub("%S+", function(c)
			if K[c] ~= nil then
				return c
			else
				return (" "):rep(#c)
			end
		end)
		return S
	end
	local hTokens = function(string)
		local Token =
			{
				["="] = true,
				["."] = true,
				[","] = true,
				["("] = true,
				[")"] = true,
				["["] = true,
				["]"] = true,
				["{"] = true,
				["}"] = true,
				[":"] = true,
				["*"] = true,
				["/"] = true,
				["+"] = true,
				["-"] = true,
				["%"] = true,
				[";"] = true,
				["~"] = true
			}
		local A = ""
		string:gsub(".", function(c)
			if Token[c] ~= nil then
				A = A .. c
			elseif c == "\n" then
				A = A .. "\n"
			elseif c == "\t" then
				A = A .. "\t"
			else
				A = A .. "\32"
			end
		end)
		return A
	end
	
	local strings = function(string)
		local highlight = ""
		local quote = false
		string:gsub(".", function(c)
			if quote == false and c == "\"" then
				quote = true
			elseif quote == true and c == "\"" then
				quote = false
			end
			if quote == false and c == "\"" then
				highlight = highlight .. "\""
			elseif c == "\n" then
				highlight = highlight .. "\n"
			elseif c == "\t" then
				highlight = highlight .. "\t"
			elseif quote == true then
				highlight = highlight .. c
			elseif quote == false then
				highlight = highlight .. "\32"
			end
		end)
		return highlight
	end
	local comments = function(string)
		local ret = ""
		string:gsub("[^\r\n]+", function(c)
			local comm = false
			local i = 0
			c:gsub(".", function(n)
				i = i + 1
				if c:sub(i, i + 1) == "--" then
					comm = true
				end
				if comm == true then
					ret = ret .. n
				else
					ret = ret .. "\32"
				end
			end)
			ret = ret
		end)
		return ret
	end
	local numbers = function(string)
		local A = ""
		string:gsub(".", function(c)
			if tonumber(c) ~= nil then
				A = A .. c
			elseif c == "\n" then
				A = A .. "\n"
			elseif c == "\t" then
				A = A .. "\t"
			else
				A = A .. "\32"
			end
		end)
		return A
	end
	local highlight_source = function(type)
		if type == "Text" then
			Source.Text = Source.Text:gsub("\13", "")
			Source.Text = Source.Text:gsub("\t", "      ")
			local s = Source.Text
			Source.Keywords_.Text = Highlight(s, lua_keywords)
			Source.Globals_.Text = Highlight(s, global_env)
			Source.RemoteHighlight_.Text = Highlight(s, {"FireServer", "fireServer", "InvokeServer", "invokeServer"})
			Source.Tokens_.Text = hTokens(s)
			Source.Numbers_.Text = numbers(s)
			Source.Strings_.Text = strings(s)
			local lin = 1
			s:gsub("\n", function()
				lin = lin + 1
			end)
			Lines.Text = ""
			for i = 1, lin do
				Lines.Text = Lines.Text .. i .. "\n"
			end
		end
	end
	highlight_source("Text")
	Source.Changed:Connect(highlight_source)
end
coroutine.wrap(IRKDO_fake_script)()
local function VAVI_fake_script() -- Add.LocalScript 
	local script = Instance.new('LocalScript', Add)

	local scrollingFrame = script.Parent.Parent.ScrollingFrame
	
	local function onClick()
		local canvasSize = scrollingFrame.CanvasSize
		canvasSize = UDim2.new(canvasSize.X.Scale, canvasSize.X.Offset, canvasSize.Y.Scale, canvasSize.Y.Offset + 70)
		scrollingFrame.CanvasSize = canvasSize
	end
	
	script.Parent.MouseButton1Click:Connect(onClick)
	
end
coroutine.wrap(VAVI_fake_script)()
local function FXILXFX_fake_script() -- Decrease.LocalScript 
	local script = Instance.new('LocalScript', Decrease)

	local scrollingFrame = script.Parent.Parent.ScrollingFrame
	
	local function onClick()
		local canvasSize = scrollingFrame.CanvasSize
		if canvasSize.Y.Offset >= 60 then
			canvasSize = UDim2.new(canvasSize.X.Scale, canvasSize.X.Offset, canvasSize.Y.Scale, canvasSize.Y.Offset - 70)
			scrollingFrame.CanvasSize = canvasSize
		end
	end
	
	script.Parent.MouseButton1Click:Connect(onClick)
	
end
coroutine.wrap(FXILXFX_fake_script)()
local function XHCY_fake_script() -- X.LocalScript 
	local script = Instance.new('LocalScript', X)

	local btn = script.Parent
	
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Visible = false
		script.Parent.Parent.Parent.Active = false
		script.Parent.Parent.Parent.Position = UDim2.new(1.019, 0, -0, 0)
	end)
	
	btn.MouseEnter:Connect(function()
		btn.BackgroundColor3 = Color3.fromRGB(209, 0, 8)
	end)
	btn.MouseLeave:Connect(function()
		btn.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	end)
end
coroutine.wrap(XHCY_fake_script)()
local function EEARZZ_fake_script() -- SaveDialog.LocalScript 
	local script = Instance.new('LocalScript', SaveDialog)

	script.Parent.Draggable = true
	script.Parent.Active = true
end
coroutine.wrap(EEARZZ_fake_script)()
local function EHQMLS_fake_script() -- Savebtn.LocalScript 
	local script = Instance.new('LocalScript', Savebtn)

	local txtbox = script.Parent.Parent.Parent.ScrollingFrame.ImageLabel.EditorFrame.Source
	local name = script.Parent.Parent.FileName
	local ex = script.Parent.Parent.FormatName
	local btn = script.Parent
	
	btn.MouseButton1Click:Connect(function()
		writefile(""..name.Text..ex.Text.."", txtbox.Text)
		script.Parent.Parent.Active = false
		script.Parent.Parent.Visible = false
		script.Parent.Parent.Position = UDim2.new(1.019, 0 ,-0, 0)
	end)
end
coroutine.wrap(EHQMLS_fake_script)()
local function WGFKJY_fake_script() -- ImageLabel_3.LocalScript 
	local script = Instance.new('LocalScript', ImageLabel_3)

	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local img = script.Parent
	img.Image = Players:GetUserThumbnailAsync(3229297325, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
end
coroutine.wrap(WGFKJY_fake_script)()
local function BYEHJW_fake_script() -- ImageLabel_4.LocalScript 
	local script = Instance.new('LocalScript', ImageLabel_4)

	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local img = script.Parent
	img.Image = Players:GetUserThumbnailAsync(2020031856, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
end
coroutine.wrap(BYEHJW_fake_script)()
local function GHOL_fake_script() -- CLink.LocalScript 
	local script = Instance.new('LocalScript', CLink)

	script.Parent.MouseButton1Click:Connect(function()
		setclipboard("discord.gg/EXXcUpqymC")
	end)
end
coroutine.wrap(GHOL_fake_script)()
local function UHNB_fake_script() -- ToggleCFarm.LocalScript 
	local script = Instance.new('LocalScript', ToggleCFarm)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/NickelHUBB/SonicTuru/main/ChestFarmOp"))()
	end)
end
coroutine.wrap(UHNB_fake_script)()
local function SHHAVYD_fake_script() -- FruitFinder.LocalScript 
	local script = Instance.new('LocalScript', FruitFinder)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/NickelHUBB/SonicTuru/main/FruitFarmOp"))()
	end)
end
coroutine.wrap(SHHAVYD_fake_script)()
local function XBBQZN_fake_script() -- SonicHub.LocalScript 
	local script = Instance.new('LocalScript', SonicHub)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/NickelHUBB/SonicTuru/main/SonicHub"))()
	end)
end
coroutine.wrap(XBBQZN_fake_script)()
local function YOQBV_fake_script() -- AutoBuyHaki.LocalScript 
	local script = Instance.new('LocalScript', AutoBuyHaki)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/NickelHUBB/SonicTuru/main/AutoBuyHakiColor"))()
	end)
end
coroutine.wrap(YOQBV_fake_script)()
local function VFWA_fake_script() -- AutoBuySword.LocalScript 
	local script = Instance.new('LocalScript', AutoBuySword)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/NickelHUBB/SonicTuru/main/AutoBuyLegendarySword"))()
	end)
end
coroutine.wrap(VFWA_fake_script)()
local function KMUB_fake_script() -- AimbotBf.LocalScript 
	local script = Instance.new('LocalScript', AimbotBf)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/NickelHUBB/SonicTuru/main/AutoBuyLegendarySword"))()
	end)
end
coroutine.wrap(KMUB_fake_script)()
local function BXXHYTE_fake_script() -- ChatSplitter.LocalScript 
	local script = Instance.new('LocalScript', ChatSplitter)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/NickelHUBB/SonicTuru/main/ChestFarmOp"))()
	end)
end
coroutine.wrap(BXXHYTE_fake_script)()
local function YLGQ_fake_script() -- WIP.LocalScript 
	local script = Instance.new('LocalScript', WIP)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/NickelHUBB/SonicTuru/main/FruitFarmOp"))()
	end)
end
coroutine.wrap(YLGQ_fake_script)()
local function CACTFJG_fake_script() -- btnWS.LocalScript 
	local script = Instance.new('LocalScript', btnWS)

	local txtbox = script.Parent.Parent.WS
	local btn = script.Parent
	local value = false
	
	btn.MouseButton1Click:Connect(function()
		if value == false then
			value = true
			btn.Text = "On"
			while true do
				if value == true then
					game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(txtbox.Text)
				elseif value == false then
					break
				end
				wait(0.5)
			end
		elseif value == true then
			value = false
			btn.Text = "Off"
			while true do
				if value == true then
					game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(txtbox.Text)
				elseif value == false then
					break
				end
				wait(0.5)
			end
		end
	end)
end
coroutine.wrap(CACTFJG_fake_script)()
local function VTAX_fake_script() -- btnJP.LocalScript 
	local script = Instance.new('LocalScript', btnJP)

	local txtbox = script.Parent.Parent.JP
	local btn = script.Parent
	local value = false
	
	btn.MouseButton1Click:Connect(function()
		if value == false then
			value = true
			btn.Text = "On"
			while true do
				if value == true then
					game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(txtbox.Text)
				elseif value == false then
					break
				end
				wait(0.5)
			end
		elseif value == true then
			value = false
			btn.Text = "Off"
			while true do
				if value == true then
					game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(txtbox.Text)
				elseif value == false then
					break
				end
				wait(0.5)
			end
		end
	end)
end
coroutine.wrap(VTAX_fake_script)()
local function WEVWY_fake_script() -- IY.LocalScript 
	local script = Instance.new('LocalScript', IY)

	local btn = script.Parent
	
	btn.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end)
end
coroutine.wrap(WEVWY_fake_script)()
local function WEBEAWC_fake_script() -- DexExp.LocalScript 
	local script = Instance.new('LocalScript', DexExp)

	local btn = script.Parent
	
	btn.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Dex-2.0'))()
	end)
end
coroutine.wrap(WEBEAWC_fake_script)()
local function NUID_fake_script() -- Rspy.LocalScript 
	local script = Instance.new('LocalScript', Rspy)

	local btn = script.Parent
	
	btn.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua"))();
	end)
end
coroutine.wrap(NUID_fake_script)()
local function CUTZL_fake_script() -- Hoho.LocalScript 
	local script = Instance.new('LocalScript', Hoho)

	local btn = script.Parent
	
	btn.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
	end)
end
coroutine.wrap(CUTZL_fake_script)()
local function EDLBZYI_fake_script() -- btnG.LocalScript 
	local script = Instance.new('LocalScript', btnG)

	local txtbox = script.Parent.Parent.G
	local btn = script.Parent
	
	btn.MouseButton1Click:Connect(function()
		workspace.Gravity = tonumber(txtbox.Text)
	end)
end
coroutine.wrap(EDLBZYI_fake_script)()
local function KSPIP_fake_script() -- btnGR.LocalScript 
	local script = Instance.new('LocalScript', btnGR)

	local btn = script.Parent
	
	btn.MouseButton1Click:Connect(function()
		workspace.Gravity = 196.2
	end)
end
coroutine.wrap(KSPIP_fake_script)()
local function WVJUZ_fake_script() -- MainGUI.LocalScript 
	local script = Instance.new('LocalScript', MainGUI)

	script.Parent.Draggable = true
	script.Parent.Active = true
end
coroutine.wrap(WVJUZ_fake_script)()
local function LUQS_fake_script() -- X_2.LocalScript 
	local script = Instance.new('LocalScript', X_2)

	local btn = script.Parent
	local gui = script.Parent.Parent
	local abtn = script.Parent.Parent.Parent.Icon
	
	btn.MouseButton1Click:Connect(function()
		gui.Visible = false
		gui.Active = false
		
		abtn.Visible = true
		abtn.Active = true
	end)
	
	btn.MouseEnter:Connect(function()
		btn.BackgroundColor3 = Color3.fromRGB(209, 0, 8)
	end)
	btn.MouseLeave:Connect(function()
		btn.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	end)
	
	
end
coroutine.wrap(LUQS_fake_script)()
local function LZCKCL_fake_script() -- Icon.LocalScript 
	local script = Instance.new('LocalScript', Icon)

	local btn = script.Parent
	local gui = script.Parent.Parent.MainGUI
	
	btn.Draggable = true
	btn.Active = true
	btn.MouseButton1Click:Connect(function()
		gui.Visible = true
		gui.Active = true
		
		btn.Visible = false
		btn.Active = false
	end)
end
coroutine.wrap(LZCKCL_fake_script)()
