_G.NoCooldownProximity = false
_G.NoClip = false

local Loading = false
local Loading1 = false
local CooldownProximity = nil
local FloatConnection = nil
local NoClipConnection = nil

local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

Notification:Notify(
        {Title = "欢迎使用猫帝脚本", Description = "加载中......"},
        {OutlineColor = Color3.fromRGB(0, 0, 0),Time = 9, Type = "image"},
        {Image = "http://www.roblox.com/asset/?id=103186685894907", ImageColor = Color3.fromRGB(255, 255, 255)})

local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

Notification:Notify(
        {Title = "加载成功", Description = "倒卖死全家"},
        {OutlineColor = Color3.fromRGB(0, 0, 0),Time = 9, Type = "image"},
        {Image = "http://www.roblox.com/asset/?id=103186685894907", ImageColor = Color3.fromRGB(255, 255, 255)})

local L = loadstring or load
local Notis = 'https://raw.githubusercontent.com/CF-Trail/random/main/FE2Notifs.lua'
local NotificationLib = "https://raw.githubusercontent.com/BloodLetters/Ash-Libs/refs/heads/main/source.lua"
local EspLib = "https://raw.githubusercontent.com/ImamGV/Script/main/ESP"
local Lib = "https://raw.githubusercontent.com/OAO-Kamu/UI-Library-Interface/refs/heads/main/SP%20LibraryMain.lua"
local SY = "https://raw.githubusercontent.com/AxerRe/ProSite/refs/heads/main/views/Axrewatermark.lib"
local splib = L(game:HttpGet(Lib))()
local LibESP = L(game:HttpGet(EspLib))()
local GUI = L(game:HttpGet(NotificationLib))()
local notifs = L(game:HttpGet(Notis))()
local WatermarkLib = L(game:HttpGet(SY))()
--======================================================================================================================================================================================================================================--
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
--======================================================================================================================================================================================================================================--
local V = "V2.1"
local Window = splib:MakeWindow({
 Name = "猫帝脚本 " .. V,
 HidePremium = false,
 Setting = true,
 ToggleIcon = "rbxassetid://90914786306039",
 CloseCallback = true
})
WatermarkLib:Create({
    Hotkey = Enum.KeyCode.Home,
    CustomText = "猫帝脚本水印 | By: 猫帝 亻尔女子 | {FPS} FPS"
})

Tab = Window:MakeTab({
  IsMobile = true,
  Name = "本地信息",
  Icon = "rbxassetid://4483345998"
})
Tab:AddLabel("您的用户名: "..game.Players.LocalPlayer.Name)
Tab:AddLabel("您的名称: "..game.Players.LocalPlayer.DisplayName)
Tab:AddLabel("您的语言: "..game.Players.LocalPlayer.LocaleId)
Tab:AddLabel("您的国家: "..game:GetService("LocalizationService"):GetCountryRegionForPlayerAsync(game.Players.LocalPlayer))
Tab:AddLabel("您的账户年龄(天): "..game.Players.LocalPlayer.AccountAge)
Tab:AddLabel("您的账户年龄(年): "..math.floor(game.Players.LocalPlayer.AccountAge/365*100)/(100))
Tab:AddLabel("您使用的注入器："..identifyexecutor())
Tab:AddLabel("您当前的服务器ID: "..game.PlaceId)
Tab:AddLabel("脚本由: 猫帝制作， Ui拿的是别人的ui所以只能看这边qwq")
Tab:AddLabel("缝合脚本完全免费倒卖的死全家")
Tab:AddLabel("qq群:947637628")
Tab:AddLabel("获取最新就加↓")
ATab = Window:MakeTab({
  IsMobile = true,
  Name = "通用",
  Icon = "rbxassetid://4483345998"
})
ATab:AddSlider({
  Name = "速度调节",
  Min = 16,
  Max = 1000,
  Default = 16,
  Increment = 1,
  ValueName = "速度",
  Flag = "Speed",
  Callback = function(j)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = j
  end    
})
ATab:AddSlider({
  Name = "跳跃高度调节",
  Min = 50,
  Max = 1000,
  Default = 50,
  Increment = 1,
  ValueName = "跳跃",
  Flag = "Jump",
  Callback = function(p)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = p
  end    
})

ATab:AddTextbox({
    Name = "速度",
    Desc = "设置speed",
    Default = "0",
    TextDisappear = true,
    Callback = function(j)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = j
    end           
})

ATab:AddTextbox({
    Name = "跳跃",
    Desc = "设置Jump",
    Default = "0",
    TextDisappear = true,
    Callback = function(p)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = p
    end           
})

ATab:AddSlider({
  Name = "速度V2",
  Min = 0,
  Max = 10,
  Default = 0,
  Increment = 1,
  ValueName = "速度",
  Flag = "Speed",
  Callback = function(value)
    local tpWalk = {}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")

local teleportDistance = value 
local isTeleporting = true 


local function DisableDefaultMovement()
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
end


local function EnableDefaultMovement()
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, true)
end


local function Teleport()
    if not isTeleporting or not rootPart or not humanoid then
        return
    end

    
    local moveDirection = humanoid.MoveDirection
    if moveDirection.Magnitude == 0 then
        return
    end

    
    local teleportVector = moveDirection * teleportDistance

    
    local raycastParams = RaycastParams.new()
    raycastParams.FilterDescendantsInstances = {character}
    raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

    local raycastResult = workspace:Raycast(rootPart.Position, teleportVector, raycastParams)

    if raycastResult then
        
        teleportVector = (raycastResult.Position - rootPart.Position).Unit * teleportDistance
    end

    
    rootPart.CFrame = rootPart.CFrame + teleportVector
end


function tpWalk:Enabled(enabled)
    isTeleporting = enabled
    if enabled then DisableDefaultMovement() else EnableDefaultMovement() end
end

function tpWalk:GetEnabled()
    return isTeleporting
end

function tpWalk:SetSpeed(speed)
    teleportDistance = speed or 0.1
end

function tpWalk:GetSpeed()
    return teleportDistance
end


RunService.Heartbeat:Connect(function()
    if isTeleporting then
        Teleport()
    end
end)

return tpWalk
  end    
})

ATab:AddTextbox({
    Name = "速度V2",
    Desc = "设置speed",
    Default = "0",
    TextDisappear = true,
    Callback = function(value)
local tpWalk = {}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")

local teleportDistance = value 
local isTeleporting = true 


local function DisableDefaultMovement()
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
end


local function EnableDefaultMovement()
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, true)
end


local function Teleport()
    if not isTeleporting or not rootPart or not humanoid then
        return
    end

    
    local moveDirection = humanoid.MoveDirection
    if moveDirection.Magnitude == 0 then
        return 
    end

    
    local teleportVector = moveDirection * teleportDistance

    
    local raycastParams = RaycastParams.new()
    raycastParams.FilterDescendantsInstances = {character}
    raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

    local raycastResult = workspace:Raycast(rootPart.Position, teleportVector, raycastParams)

    if raycastResult then
        
        teleportVector = (raycastResult.Position - rootPart.Position).Unit * teleportDistance
    end

    
    rootPart.CFrame = rootPart.CFrame + teleportVector
end


function tpWalk:Enabled(enabled)
    isTeleporting = enabled
    if enabled then DisableDefaultMovement() else EnableDefaultMovement() end
end

function tpWalk:GetEnabled()
    return isTeleporting
end

function tpWalk:SetSpeed(speed)
    teleportDistance = speed or 0.1
end

function tpWalk:GetSpeed()
    return teleportDistance
end


RunService.Heartbeat:Connect(function()
    if isTeleporting then
        Teleport()
    end
end)

return tpWalk
    end           
})
ATab:AddTextbox({
    Name = "玩家传送",
    Desc = "传送到某个玩家",
    Default = "0",
    TextDisappear = true,
    Callback = function(Value)
        local targetPlayer = nil
        for _, player in pairs(game.Players:GetPlayers()) do
            if string.lower(player.Name) == string.lower(Value) then
                targetPlayer = player
                break
            end
        end
        
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local localPlayer = game.Players.LocalPlayer
            if localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
                localPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = targetPlayer.Character.HumanoidRootPart.CFrame
            end
        end
    end           
})

ATab:AddButton({
    Name = "飞行v3",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/UVAj0uWu"))()
    end
})

ATab:AddButton({
    Name = "猫帝飞行",
    Desc = "qwq",
    Callback = function()
            local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")
local closebutton = Instance.new("TextButton")
local mini = Instance.new("TextButton")
local mini2 = Instance.new("TextButton")

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 190, 0, 57)

up.Name = "上升"
up.Parent = Frame
up.BackgroundColor3 = Color3.fromRGB(79, 255, 152)
up.Size = UDim2.new(0, 44, 0, 28)
up.Font = Enum.Font.SourceSans
up.Text = "上升"
up.TextColor3 = Color3.fromRGB(0, 0, 0)
up.TextSize = 14.000

down.Name = "下降"
down.Parent = Frame
down.BackgroundColor3 = Color3.fromRGB(215, 255, 121)
down.Position = UDim2.new(0, 0, 0.491228074, 0)
down.Size = UDim2.new(0, 44, 0, 28)
down.Font = Enum.Font.SourceSans
down.Text = "下降"
down.TextColor3 = Color3.fromRGB(0, 0, 0)
down.TextSize = 14.000

onof.Name = "猫帝"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(255, 249, 74)
onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
onof.Size = UDim2.new(0, 56, 0, 28)
onof.Font = Enum.Font.SourceSans
onof.Text = "fly"
onof.TextColor3 = Color3.fromRGB(0, 0, 0)
onof.TextSize = 14.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(242, 60, 255)
TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "猫帝 V2"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

plus.Name = "加"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(133, 145, 255)
plus.Position = UDim2.new(0.231578946, 0, 0, 0)
plus.Size = UDim2.new(0, 45, 0, 28)
plus.Font = Enum.Font.SourceSans
plus.Text = "+"
plus.TextColor3 = Color3.fromRGB(0, 0, 0)
plus.TextScaled = true
plus.TextSize = 14.000
plus.TextWrapped = true

speed.Name = "速度"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
speed.Size = UDim2.new(0, 44, 0, 28)
speed.Font = Enum.Font.SourceSans
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(0, 0, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true

mine.Name = "减"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(123, 255, 247)
mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
mine.Size = UDim2.new(0, 45, 0, 29)
mine.Font = Enum.Font.SourceSans
mine.Text = "-"
mine.TextColor3 = Color3.fromRGB(0, 0, 0)
mine.TextScaled = true
mine.TextSize = 14.000
mine.TextWrapped = true

closebutton.Name = "Close"
closebutton.Parent = main.Frame
closebutton.BackgroundColor3 = Color3.fromRGB(225, 25, 0)
closebutton.Font = "SourceSans"
closebutton.Size = UDim2.new(0, 45, 0, 28)
closebutton.Text = "X"
closebutton.TextSize = 30
closebutton.Position =  UDim2.new(0, 0, -1, 27)

mini.Name = "minimize"
mini.Parent = main.Frame
mini.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini.Font = "SourceSans"
mini.Size = UDim2.new(0, 45, 0, 28)
mini.Text = "-"
mini.TextSize = 40
mini.Position = UDim2.new(0, 44, -1, 27)

mini2.Name = "minimize2"
mini2.Parent = main.Frame
mini2.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini2.Font = "SourceSans"
mini2.Size = UDim2.new(0, 45, 0, 28)
mini2.Text = "+"
mini2.TextSize = 40
mini2.Position = UDim2.new(0, 44, -1, 57)
mini2.Visible = false

speeds = 1

local speaker = game:GetService("Players").LocalPlayer

local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

nowe = false

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "猫帝 V2";
	Text = "By 猫帝";
	Icon = "rbxthumb://type=Asset&id=123371892256547&w=150&h=150"})
Duration = 5;

Frame.Active = true -- main = gui
Frame.Draggable = true

onof.MouseButton1Down:connect(function()

	if nowe == true then
		nowe = false

		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	else 
		nowe = true



		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		local Char = game.Players.LocalPlayer.Character
		local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

		for i,v in next, Hum:GetPlayingAnimationTracks() do
			v:AdjustSpeed(0)
		end
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
	end




	if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then



		local plr = game.Players.LocalPlayer
		local torso = plr.Character.Torso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", torso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = torso.CFrame
		local bv = Instance.new("BodyVelocity", torso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			game:GetService("RunService").RenderStepped:Wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end
			--	game.Players.LocalPlayer.Character.Animate.Disabled = true
			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false




	else
		local plr = game.Players.LocalPlayer
		local UpperTorso = plr.Character.UpperTorso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", UpperTorso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = UpperTorso.CFrame
		local bv = Instance.new("BodyVelocity", UpperTorso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end

			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false



	end





end)

local tis

up.MouseButton1Down:connect(function()
	tis = up.MouseEnter:connect(function()
		while tis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
		end
	end)
end)

up.MouseLeave:connect(function()
	if tis then
		tis:Disconnect()
		tis = nil
	end
end)

local dis

down.MouseButton1Down:connect(function()
	dis = down.MouseEnter:connect(function()
		while dis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
		end
	end)
end)

down.MouseLeave:connect(function()
	if dis then
		dis:Disconnect()
		dis = nil
	end
end)


game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
	wait(0.7)
	game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	game.Players.LocalPlayer.Character.Animate.Disabled = false

end)


plus.MouseButton1Down:connect(function()
	speeds = speeds + 1
	speed.Text = speeds
	if nowe == true then


		tpwalking = false
		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
	end
end)
mine.MouseButton1Down:connect(function()
	if speeds == 1 then
		speed.Text = 'cannot be less than 1'
		wait(1)
		speed.Text = speeds
	else
		speeds = speeds - 1
		speed.Text = speeds
		if nowe == true then
			tpwalking = false
			for i = 1, speeds do
				spawn(function()

					local hb = game:GetService("RunService").Heartbeat	


					tpwalking = true
					local chr = game.Players.LocalPlayer.Character
					local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
					while tpwalking and hb:Wait() and chr and hum and hum.Parent do
						if hum.MoveDirection.Magnitude > 0 then
							chr:TranslateBy(hum.MoveDirection)
						end
					end

				end)
			end
		end
	end
end)

closebutton.MouseButton1Click:Connect(function()
	main:Destroy()
end)

mini.MouseButton1Click:Connect(function()
	up.Visible = false
	down.Visible = false
	onof.Visible = false
	plus.Visible = false
	speed.Visible = false
	mine.Visible = false
	mini.Visible = false
	mini2.Visible = true
	main.Frame.BackgroundTransparency = 1
	closebutton.Position =  UDim2.new(0, 0, -1, 57)
end)

mini2.MouseButton1Click:Connect(function()
	up.Visible = true
	down.Visible = true
	onof.Visible = true
	plus.Visible = true
	speed.Visible = true
	mine.Visible = true
	mini.Visible = true
	mini2.Visible = false
	main.Frame.BackgroundTransparency = 0 
	closebutton.Position =  UDim2.new(0, 0, -1, 27)
end)
    end
})

ATab:AddToggle({
    Name = "夜视",
    Desc = "开启或关闭夜视模式",
    Default = false,
    IsMobile = false,
    Flag = "NightVisionToggle",
    Save = false,
    Callback = function(Value)
        if Value then
            game.Lighting.Ambient = Color3.new(1, 1, 1)
        else
            game.Lighting.Ambient = Color3.new(0, 0, 0)
        end
    end
})

ATab:AddButton({
    Name = "可以让你超越光速",
    Desc = "What",
    Callback = function()
            local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- === GUI Setup ===
local gui = Instance.new("ScreenGui")
gui.Name = "EgorToggle"
gui.ResetOnSpawn = false
gui.Parent = playerGui

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 130, 0, 40)
button.Position = UDim2.new(0, 10, 1, -60)
button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
button.TextColor3 = Color3.new(1, 1, 1)
button.TextSize = 20
button.Font = Enum.Font.SourceSansBold
button.Text = "假延迟: 关"
button.Parent = gui

-- === State Variables ===
local egorEnabled = false
local runAnimId = "rbxassetid://913376220" -- Roblox default run
local runTrack = nil
local runConnection = nil

-- === Setup Run Animation ===
local function playRunAnimation(humanoid)
	local animator = humanoid:FindFirstChildWhichIsA("Animator")
	if not animator then
		animator = Instance.new("Animator", humanoid)
	end

	local runAnim = Instance.new("Animation")
	runAnim.AnimationId = runAnimId
	runTrack = animator:LoadAnimation(runAnim)
	runTrack.Priority = Enum.AnimationPriority.Movement
	runTrack:AdjustSpeed(6)
	runTrack:Play()

	runConnection = game:GetService("RunService").RenderStepped:Connect(function()
		if humanoid.MoveDirection.Magnitude == 0 then
			if runTrack.IsPlaying then runTrack:Stop() end
		else
			if not runTrack.IsPlaying then
				runTrack:Play()
				runTrack:AdjustSpeed(6)
			end
		end
	end)
end

local function stopRunAnimation()
	if runTrack then runTrack:Stop() end
	if runConnection then runConnection:Disconnect() end
end

-- === Toggle Egor Mode ===
local function enableEgor()
	local char = player.Character
	if not char then return end
	local humanoid = char:FindFirstChild("Humanoid")
	if not humanoid then return end

	humanoid.WalkSpeed = 3
	playRunAnimation(humanoid)
	button.Text = "假延迟: 开"
end

local function disableEgor()
	local char = player.Character
	if not char then return end
	local humanoid = char:FindFirstChild("Humanoid")
	if not humanoid then return end

	humanoid.WalkSpeed = 16
	stopRunAnimation()
	button.Text = "假延迟: 关"
end

-- === Button Toggle ===
button.MouseButton1Click:Connect(function()
	egorEnabled = not egorEnabled
	if egorEnabled then enableEgor() else disableEgor() end
end)

-- === On Character Spawn ===
local function onCharacterAdded(char)
	local humanoid = char:WaitForChild("Humanoid")
	char:WaitForChild("Animate") -- Keep default animations like jump
	task.wait(0.5)

	if egorEnabled then
		enableEgor()
	else
		disableEgor()
	end
end

if player.Character then onCharacterAdded(player.Character) end
player.CharacterAdded:Connect(onCharacterAdded)
    end
})

ATab:AddButton({
    Name = "无头和断腿",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Permanent-Headless-And-korblox-Script-4140"))()
    end
})

ATab:AddButton({
    Name = "IY",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
    end
})

BTab = Window:MakeTab({
  IsMobile = true,
  Name = "范围",
  Icon = "rbxassetid://4483345998"
})
BTab:AddTextbox({
    Name = "自定义范围",
    Desc = "设置范围大小",
    Default = "0",
    TextDisappear = true,
    Callback = function(Value)
        _G.HeadSize = Value
        _G.Disabled = true 
        game:GetService('RunService').RenderStepped:connect(function()
            if _G.Disabled then
                for i,v in next, game:GetService('Players'):GetPlayers() do
                    if v.Name ~= game:GetService('Players').LocalPlayer.Name then 
                        pcall(function()
                            v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) 
                            v.Character.HumanoidRootPart.Transparency = 0.7 
                            v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really red")
                            v.Character.HumanoidRootPart.Material = "Neon"
                            v.Character.HumanoidRootPart.CanCollide = false
                        end)
                    end 
                end 
            end
        end)
    end           
})

ATab:AddButton({
    Name = "猫帝飞行",
    Desc = "qwq",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/iqiqiqezbro/sedfksijfmlhymaodi/8e35b0bdd6f1c4c90c9657699f565dcd96dff272/%E7%8C%AB%E5%B8%9DFLY"))()
    end
})

ATab:AddButton({
    Name = "FE传送",
    Desc = "获得物品点击物品点击别的地方即可传送",
    Callback = function()
            mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[FE] TELEPORT TOOL" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
    end
})

ATab:AddButton({
    Name = "撸管R6",
    Desc = "撸管主义者",
    Callback = function()
            loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))("Spider Script")
    end
})

ATab:AddButton({
    Name = "撸管R15",
    Desc = "撸管主义者",
    Callback = function()
            loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
    end
})

ATab:AddButton({
    Name = "坐标仪",
    Desc = "What",
    Callback = function()
            local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer

local coordSystem = {
    isEnabled = true,
    gui = nil,
    updateConn = nil,
    currentPos = Vector3.new(0, 0, 0)
}

local function createCoordUI()
    local gui = Instance.new("ScreenGui")
    gui.Name = "CoordDisplay"
    gui.Parent = player.PlayerGui

    local container = Instance.new("Frame")
    container.Size = UDim2.new(0, 240, 0, 60)
    container.Position = UDim2.new(1, -250, 0, 10)
    container.BackgroundTransparency = 1
    container.Parent = gui

    local coordFrame = Instance.new("Frame")
    coordFrame.Size = UDim2.new(0, 200, 1, 0)
    coordFrame.BackgroundColor3 = Color3.new(0, 0, 0)
    coordFrame.BackgroundTransparency = 0.7
    coordFrame.BorderSizePixel = 1
    coordFrame.Parent = container

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.TextSize = 14
    textLabel.Text = "坐标加载别乱动 动你妈直接死"
    textLabel.Parent = coordFrame

    local copyBtn = Instance.new("TextButton")
    copyBtn.Size = UDim2.new(0, 35, 1, 0)
    copyBtn.Position = UDim2.new(0, 205, 0, 0)
    copyBtn.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    copyBtn.BackgroundTransparency = 0.5
    copyBtn.Text = "复制坐标"
    copyBtn.TextColor3 = Color3.new(1, 1, 1)
    copyBtn.TextSize = 14
    copyBtn.BorderSizePixel = 1
    copyBtn.Parent = container

    copyBtn.MouseButton1Click:Connect(function()
        if setclipboard and coordSystem.currentPos then
            local coordStr = string.format("X: %.2f, Y: %.2f, Z: %.2f",
                coordSystem.currentPos.X,
                coordSystem.currentPos.Y,
                coordSystem.currentPos.Z
            )
            setclipboard(coordStr)
        end
    end)

    local isDragging = false
    local dragStartPos = nil
    local containerStartPos = nil

    container.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch then
            isDragging = true
            dragStartPos = input.Position
            containerStartPos = container.Position
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if isDragging and input.UserInputType == Enum.UserInputType.Touch then
            local delta = input.Position - dragStartPos
            container.Position = UDim2.new(
                containerStartPos.X.Scale,
                containerStartPos.X.Offset + delta.X,
                containerStartPos.Y.Scale,
                containerStartPos.Y.Offset + delta.Y
            )
        end
    end)

    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch and isDragging then
            isDragging = false
        end
    end)

    return { gui = gui, container = container, text = textLabel }
end

coordSystem.gui = createCoordUI()

local function formatCoord(pos)
    return string.format("X: %.2f\nY: %.2f\nZ: %.2f", pos.X, pos.Y, pos.Z)
end

local function updateCoord()
    local char = player.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if root then
        coordSystem.currentPos = root.Position
        coordSystem.gui.text.Text = formatCoord(root.Position)
    else
        coordSystem.gui.text.Text = "坐标初始化"
        coordSystem.currentPos = nil
    end
end

coordSystem.updateConn = RunService.Heartbeat:Connect(updateCoord)
updateCoord()

game:GetService("Players").LocalPlayer.PlayerGui.ChildRemoved:Connect(function(child)
    if child == coordSystem.gui then
        if coordSystem.updateConn then
            coordSystem.updateConn:Disconnect()
        end
    end
end)

    end
})

BTab:AddButton({
    Name = "普通范围",
    Desc = "启用普通范围Hitbox",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/jiNwDbCN"))()
    end
})

BTab:AddButton({
    Name = "中等范围",
    Desc = "启用中等范围Hitbox",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/x13bwrFb"))()
    end
})

BTab:AddButton({
    Name = "全图范围",
    Desc = "启用全图范围Hitbox",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/KKY9EpZU"))()
    end
})

BTab:AddButton({
    Name = "终极范围",
    Desc = "启用终极范围Hitbox",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/CAQ9x4A7"))()
    end
})

CTab = Window:MakeTab({
  IsMobile = true,
  Name = "音乐",
  Icon = "rbxassetid://4483345998"
})
CTab:AddTextbox({
    Name = "自定义音乐",
    Desc = "自定义",
    Default = "0",
    TextDisappear = true,
    Callback = function(Value)
        local soundId = tonumber(Value)
        if soundId then
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://" .. soundId
            sound.Volume = 0.5
            sound.Parent = workspace
            sound:Play()
        end
    end           
})

CTab:AddButton({
    Name = "阳光彩虹小白马",
    Desc = "播放音乐",
    Callback = function()
            local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://5160230627"
        sound.Parent = game.Workspace
        sound:Play()
        setclipboard("5160230627")
        Notification:Notify(
            {Title = "猫帝脚本", Description = "已复制到粘贴板..."},
            {OutlineColor = Color3.fromRGB(255, 0, 0), Time = 5, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=7733747106", ImageColor = Color3.fromRGB(0, 0, 255)}
        )
    end
})

CTab:AddButton({
    Name = "哈基米山歌",
    Desc = "播放音乐",
    Callback = function()
            local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://71090232224338"
        sound.Parent = game.Workspace
        sound:Play()
        setclipboard("71090232224338")
        Notification:Notify(
            {Title = "猫帝脚本", Description = "已复制到粘贴板..."},
            {OutlineColor = Color3.fromRGB(255, 0, 0), Time = 5, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=7733747106", ImageColor = Color3.fromRGB(0, 0, 255)}
        )
    end
})

CTab:AddButton({
    Name = "压力之歌",
    Desc = "播放音乐",
    Callback = function()
            local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://74856563303589"
        sound.Parent = game.Workspace
        sound:Play()
        setclipboard("74856563303589")
        Notification:Notify(
            {Title = "猫帝脚本", Description = "已复制到粘贴板..."},
            {OutlineColor = Color3.fromRGB(255, 0, 0), Time = 5, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=7733747106", ImageColor = Color3.fromRGB(0, 0, 255)}
        )
    end
})

CTab:AddButton({
    Name = "早安越南",
    Desc = "播放早安越南",
    Callback = function()
        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://8295016126"
        sound.Parent = game.Workspace
        sound:Play()
        setclipboard("8295016126")
        Notification:Notify(
            {Title = "猫帝脚本中心", Description = "已复制到粘贴板..."},
            {OutlineColor = Color3.fromRGB(255, 0, 0), Time = 5, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=7733747106", ImageColor = Color3.fromRGB(0, 0, 255)}
        )
    end
})

DTab = Window:MakeTab({
  IsMobile = true,
  Name = "成为乞丐",
  Icon = "rbxassetid://4483345998"
})

DTab:AddButton({
    Name = "无限钱",
    Desc = "What",
    Callback = function()
            -- services --

local runService = game:GetService("RunService")
local players = game:GetService("Players")
local localPlayer = players.LocalPlayer
local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
-- utils --
function findfirstchild(parent, childName)
return parent and parent:FindFirstChild(childName)
end
function findfirstchildwhichisa(parent, childName)
return parent and parent:FindFirstChildWhichIsA(childName)
end
-- objects --
local basesFolder = findfirstchild(workspace, "Bases")
-- table(s) --
local data = {
myBase = nil,
begPrompt = nil,
basePrompt = nil,
}
-- main code --
for _, base in ipairs(basesFolder:GetChildren()) do
if not base then continue end
local owner = findfirstchild(base, "Owner")
if not owner or owner.Value ~= localPlayer then continue end
data.myBase = base
local begPrompt = findfirstchild(base, "BegPrompt")
if not begPrompt then continue end
data.begPrompt = begPrompt
local basePrompt = findfirstchildwhichisa(begPrompt, "ProximityPrompt")
data.basePrompt = basePrompt
break
end
local hrp = findfirstchild(character, "HumanoidRootPart")
if hrp then
hrp.CFrame = data.begPrompt.CFrame
fireproximityprompt(data.basePrompt)
end
if cashConnection then
cashConnection:Disconnect()
cashConnection = nil
end
getgenv().cashConnection = runService.Heartbeat:Connect(function()
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("MinigameEvent"):FireServer(true)
end)
    end
})

ETab = Window:MakeTab({
  IsMobile = true,
  Name = "忍者传奇",
  Icon = "rbxassetid://4483345998"
})

ETab:AddToggle({
    Name = "自动购买剑",
    Desc = "自动购买剑类武器",
    Default = false,
    IsMobile = false,
    Flag = "AutoBuySwordsToggle",
    Save = true,
    Callback = function(Value)
        autobuyswords = Value
        if autobuyswords then
            buyswords()
        end
    end
})

ETab:AddToggle({
    Name = "自动购买腰带",
    Desc = "自动购买腰带装备",
    Default = false,
    IsMobile = false,
    Flag = "AutoBuyBeltsToggle",
    Save = true,
    Callback = function(Value)
        autobuybelts = Value
        if autobuybelts then
            buybelts()
        end
    end
})

ETab:AddToggle({
    Name = "自动购买称号（等级）",
    Desc = "自动购买等级称号",
    Default = false,
    IsMobile = false,
    Flag = "AutoBuyRanksToggle",
    Save = true,
    Callback = function(Value)
        autobuyranks = Value
        if autobuyranks then
            buyranks()
        end
    end
})

ETab:AddToggle({
    Name = "自动购买忍术",
    Desc = "自动购买忍术技能",
    Default = false,
    IsMobile = false,
    Flag = "AutoBuySkillToggle",
    Save = true,
    Callback = function(Value)
        autobuyskill = Value
        if autobuyskill then
            buyskill()
        end
    end
})

ETab:AddToggle({
    Name = "自动购买（全部打开）",
    Desc = "自动购买所有可购买的物品",
    Default = false,
    IsMobile = false,
    Flag = "AutoBuyAllToggle",
    Save = true,
    Callback = function(Value)
        autobuyshurikens = Value
        if autobuyshurikens then
            buyshurikens()
        end
    end
})

ETab:AddButton({
    Name = "自动挥剑",
    Desc = "haha",
    Callback = function()
            while true do
local args = {
	"swingKatana"
}
game:GetService("Players").LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack(args))
wait(0.01)
end
    end
})

ETab:AddToggle({
    Name = "自动售卖",
    Desc = "自动售卖物品",
    Default = false,
    IsMobile = false,
    Flag = "AutoSellToggle",
    Save = true,
    Callback = function(Value)
        autosell = Value
        if autosell then
            selling()
        end
    end
})

ETab:AddToggle({
    Name = "存满了自动售卖",
    Desc = "库存满时自动售卖",
    Default = false,
    IsMobile = false,
    Flag = "AutoSellMaxToggle",
    Save = true,
    Callback = function(Value)
        autosellmax = Value
        if autosellmax then
            maxsell()
        end
    end
})

ETab:AddTextbox({
    Name = "自定义跳跃",
    Desc = "设置跳跃",
    Default = "0",
    TextDisappear = true,
    Callback = function(Value)
game.Players.LocalPlayer.multiJumpCount.Value=Value
    end           
})

ETab:AddButton({
    Name = "解锁所有岛",
    Desc = "自动传送到所有岛屿解锁区域",
    Callback = function()
        for _, v in next, game.workspace.islandUnlockParts:GetChildren() do
            if v then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.islandSignPart.CFrame
                wait(.5)
            end
        end
    end
})

ETab:AddButton({
    Name = "附魔岛",
    Desc = "传送到附魔岛",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(83.028564453125, 766.3915405273438, -128.62686157226562)
    end
})

ETab:AddButton({
    Name = "星界岛",
    Desc = "传送到星界岛",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.43006896972656, 2014.091064453125, 247.5571746826172)
    end
})

ETab:AddButton({
    Name = "神秘岛",
    Desc = "传送到神秘岛",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(162.7420654296875, 4047.7841796875, 13.378257751464844)
    end
})

ETab:AddButton({
    Name = "太空岛",
    Desc = "传送到太空岛",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(184.0364227294922, 5657.091796875, 161.54000854492188)
    end
})

ETab:AddButton({
    Name = "冻土岛",
    Desc = "传送到冻土岛",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(186.7508544921875, 9285.08984375, 158.16287231445312)
    end
})

ETab:AddButton({
    Name = "沙暴",
    Desc = "传送到沙暴岛",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(183.7511749267578, 17686.236328125, 147.5008087158203)
    end
})

ETab:AddButton({
    Name = "雷暴",
    Desc = "传送到雷暴岛",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(186.87640380859375, 24069.9296875, 158.25582885742188)
    end
})

ETab:AddButton({
    Name = "远古炼狱岛",
    Desc = "传送到远古炼狱岛",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(166.48052978515625, 28256.201171875, 160.25828552246094)
    end
})

ETab:AddButton({
    Name = "午夜暗影岛",
    Desc = "传送到午夜暗影岛",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(182.76388549804688, 33206.88671875, 136.66305541992188)
    end
})

ETab:AddButton({
    Name = "神秘灵魂岛",
    Desc = "传送到神秘灵魂岛",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(157.39967346191406, 39317.4765625, 146.05630493164062)
    end
})

ETab:AddButton({
    Name = "冬季奇迹岛",
    Desc = "传送到冬季奇迹岛",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(168.73797607421875, 46010.4609375, 158.589599609375)
    end
})

ETab:AddButton({
    Name = "黄金大师岛",
    Desc = "传送到黄金大师岛",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(184.56202697753906, 52607.671875, 166.47279357910156)
    end
})

ETab:AddButton({
    Name = "龙传奇岛",
    Desc = "传送到龙传奇岛",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(166.83065795898438, 59594.58984375, 150.16586303710938)
    end
})

ETab:AddButton({
    Name = "赛博传奇岛",
    Desc = "传送到赛博传奇岛",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(167.66766357421875, 66669.0703125, 142.27223205566406)
    end
})

ETab:AddButton({
    Name = "天岚超能岛",
    Desc = "传送到天岚超能岛",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(182.09237670898438, 70271.0625, 157.14857482910156)
    end
})

ETab:AddButton({
    Name = "混沌传奇岛",
    Desc = "传送到混沌传奇岛",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(177.88784790039062, 74442.7578125, 143.346435546875)
    end
})

ETab:AddButton({
    Name = "灵魂融合岛",
    Desc = "传送到灵魂融合岛",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(183.39129638671875, 79746.890625, 163.01148986816406)
    end
})

ETab:AddButton({
    Name = "黑暗元素岛",
    Desc = "传送到黑暗元素岛",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(169.4972381591797, 83198.890625, 170.53890991210938)
    end
})

ETab:AddButton({
    Name = "禅心岛",
    Desc = "传送到禅心岛",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(173.4744873046875, 87050.9765625, 141.89602661132812)
    end
})

ETab:AddButton({
    Name = "炽热漩涡之岛",
    Desc = "传送到炽热漩涡之岛",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(178.33023071289062, 91245.96875, 152.53775024414062)
    end
})

FTab = Window:MakeTab({
  IsMobile = true,
  Name = "墨水游戏",
  Icon = "rbxassetid://4483345998"
})

FTab:AddButton({
    Name = "TX",
    Desc = "What",
    Callback = function()
            loadstring("\u{006c}\u{006f}\u{0061}\u{0064}\u{0073}\u{0074}\u{0072}\u{0069}\u{006e}\u{0067}\u{0028}\u{0067}\u{0061}\u{006d}\u{0065}\u{003a}\u{0048}\u{0074}\u{0074}\u{0070}\u{0047}\u{0065}\u{0074}\u{0028}\u{0022}\u{0068}\u{0074}\u{0074}\u{0070}\u{0073}\u{003a}\u{002f}\u{002f}\u{0072}\u{0061}\u{0077}\u{002e}\u{0067}\u{0069}\u{0074}\u{0068}\u{0075}\u{0062}\u{0075}\u{0073}\u{0065}\u{0072}\u{0063}\u{006f}\u{006e}\u{0074}\u{0065}\u{006e}\u{0074}\u{002e}\u{0063}\u{006f}\u{006d}\u{002f}\u{004a}\u{0073}\u{0059}\u{0062}\u{0036}\u{0036}\u{0036}\u{002f}\u{0054}\u{0055}\u{0049}\u{0058}\u{0055}\u{0049}\u{005f}\u{0071}\u{0075}\u{006e}\u{002d}\u{0038}\u{0030}\u{0039}\u{0037}\u{0037}\u{0031}\u{0031}\u{0034}\u{0031}\u{002f}\u{0072}\u{0065}\u{0066}\u{0073}\u{002f}\u{0068}\u{0065}\u{0061}\u{0064}\u{0073}\u{002f}\u{0054}\u{0055}\u{0049}\u{0058}\u{0055}\u{0049}\u{002f}\u{004d}\u{0053}\u{0059}\u{0058}\u{0022}\u{0029}\u{0029}\u{0028}\u{0029}")()
    end
})

FTab:AddButton({
    Name = "XA",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Xingtaiduan/Script/refs/heads/main/Games/墨水游戏.lua"))()
    end
})

FTab:AddButton({
    Name = "猫帝",
    Desc = "不建议配置不好的人用否则会卡住",
    Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/E05uAfGr"))()
    end
})

GTab = Window:MakeTab({
  IsMobile = true,
  Name = "死铁轨",
  Icon = "rbxassetid://4483345998"
})

GTab:AddButton({
    Name = "死铁轨1",
    Desc = "What",
    Callback = function()
            dev = "YX"
Server = "Dead rails"
script = "Rise of the Legend Hub"
loadstring(request({Url="https://github.com/XiaoyeQWQ/VEP/raw/refs/heads/main/Rise-Of-Legend-HUB-Dead-rail.txt"}).Body)()
    end
})

GTab:AddButton({
    Name = "sanb死铁轨",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/iopjklbnmsss/SansHubScript/refs/heads/main/SansHub"))()
    end
})

GTab:AddButton({
    Name = "油管大佬做的死铁轨脚本",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"))()
    end
})

HTab = Window:MakeTab({
  IsMobile = true,
  Name = "91天",
  Icon = "rbxassetid://4483345998"
})

HTab:AddButton({
    Name = "虚空汉化",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/99%E5%A4%9C%E8%99%9A%E7%A9%BA.txt"))()
    end
})

HTab:AddButton({
    Name = "xa",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Xingtaiduan/Script/refs/heads/main/Games/森林中的99夜.lua"))()
    end
})

HTab:AddButton({
    Name = "99天cat",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Guo61/Cat-/refs/heads/main/%E5%A4%A77899"))()
    end
})

YTab = Window:MakeTab({
  IsMobile = true,
  Name = "自然灾害模拟器",
  Icon = "rbxassetid://4483345998"
})

YTab:AddButton({
    Name = "自然灾害菜单",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringUjHI6RQpz2o8", true))()
    end
})

YTab:AddButton({
    Name = "自然灾害模拟器汉化",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/xiao122231/xiao122231/main/%E8%87%AA%E7%84%B6%E7%81%BE%E5%AE%B3"))()
    end
})

YTab:AddButton({
    Name = "自然灾害模拟器外网搬运",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringUjHI6RQpz2o8", true))()
    end
})

YTab:AddButton({
    Name = "指南针崩服",
    Desc = "必须要有指南针",
    Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/EUF0R9Rn"))()
    end
})

YTab:AddButton({
    Name = "防止坠落",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/MSTTOPPER/Scripts/refs/heads/main/FlashBack"))()
    end
})

YTab:AddButton({
    Name = "xa自然灾害",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Xingtaiduan/Script/refs/heads/main/Games/自然灾害.lua"))()
    end
})

JTab = Window:MakeTab({
  IsMobile = true,
  Name = "51区",
  Icon = "rbxassetid://4483345998"
})

JTab:AddButton({
    Name = "1",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Saktk-In-Area51/main/Area51", true))()
    end
})

JTab:AddButton({
    Name = "2",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Saktk-In-Area51/main/Area51", true))()
    end
})

KTab = Window:MakeTab({
  IsMobile = true,
  Name = "破坏者谜团2",
  Icon = "rbxassetid://4483345998"
})

KTab:AddButton({
    Name = "1",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Ihaveash0rtnamefordiscord/Releases/main/MurderMystery2HighlightESP"))(' Watermelon ?')
    end
})

KTab:AddButton({
    Name = "xa破坏者谜团2",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Xingtaiduan/Script/refs/heads/main/Games/破坏者谜团2.lua"))()
    end
})

KTab:AddButton({
    Name = "3",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet(("https://raw.githubusercontent.com/Ethanoj1/EclipseMM2/master/Script"),true))()
    end
})

KTab:AddButton({
    Name = "2",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet(("https://raw.githubusercontent.com/Ethanoj1/EclipseMM2/master/Script"),true))()
    end
})

LTab = Window:MakeTab({
  IsMobile = true,
  Name = "穷小子打工记",
  Icon = "rbxassetid://4483345998"
})

LTab:AddButton({
    Name = "神情穷小子打工记",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/gycgchgyfytdttr/QQ-9-2-8-9-50173/refs/heads/main/newsqnb.lua"))()
    end
})

MTab = Window:MakeTab({
  IsMobile = true,
  Name = "刀刃球",
  Icon = "rbxassetid://4483345998"
})

MTab:AddButton({
    Name = "xa",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Xingtaiduan/Script/refs/heads/main/Games/刀刃球.lua"))()
    end
})

MTab:AddButton({
    Name = "argon",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/ArgonHubX.lua"))()
    end
})

MTab:AddButton({
    Name = "退休搬运",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://paste.gg/p/anonymous/0425151104df470cb8203508e256b40a/files/aff63dcd12b04bfe8f6d9851eb6b2d3e/raw"))()
    end
})

MTab:AddButton({
    Name = "刀刃球格挡",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Parry%20V4.0.0",true))()
    end
})

NTab = Window:MakeTab({
  IsMobile = true,
  Name = "doors",
  Icon = "rbxassetid://4483345998"
})

NTab:AddButton({
    Name = "xa",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Xingtaiduan/Script/refs/heads/main/Games/Doors.lua"))()
    end
})

NTab:AddButton({
    Name = "ms",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/poopdoors_edited/main/poopdoors_edited.lua"),true))()
    end
})

NTab:AddButton({
    Name = "BlackKingq",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet(('https://pastebin.com/raw/R8QMbhzv')))()
    end
})

OTab = Window:MakeTab({
  IsMobile = true,
  Name = "被遗弃",
  Icon = "rbxassetid://4483345998"
})

OTab:AddButton({
    Name = "xa",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Xingtaiduan/Script/refs/heads/main/Games/被遗弃.lua"))()
    end
})

OTab:AddButton({
    Name = "被遗弃汉语",
    Desc = "What",
    Callback = function()
            loadstring(utf8.char((function() return table.unpack({108,111,97,100,115,116,114,105,110,103,40,103,97,109,101,58,72,116,116,112,71,101,116,40,34,104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,67,104,105,110,97,81,89,47,45,47,109,97,105,110,47,37,69,54,37,56,51,37,56,53,37,69,52,37,66,65,37,57,49,34,41,41,40,41})end)()))()
    end
})

PTab = Window:MakeTab({
  IsMobile = true,
  Name = "ohio",
  Icon = "rbxassetid://4483345998"
})

PTab:AddButton({
    Name = "XAohio",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Xingtaiduan/Script/refs/heads/main/Games/俄亥俄州.lua"))()
    end
})

PTab:AddButton({
    Name = "熊脚本ohio",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Bear-script0/OHIO/main/%E7%86%8A%E8%84%9A%E6%9C%AC%E6%99%AE%E9%80%9A%E7%89%88"))()
    end
})

PTab:AddButton({
    Name = "皮脚本ohio",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/pijiaobenMSJMleng/ehhdvdhd/refs/heads/main/xiaopi77xiaopi77mainQQ1002100032-Roblox-Pi-script.lua"))()
    end
})

ATab:AddButton({
    Name = "透视1",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/cool83birdcarfly02six/UNIVERSALESPLTX/main/README.md'),true))()
    end
})

ATab:AddButton({
    Name = "透视2",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
    end
})

QTab = Window:MakeTab({
  IsMobile = true,
  Name = "脚本中心",
  Icon = "rbxassetid://4483345998"
})

QTab:AddButton({
    Name = "皮脚本v2",
    Desc = "What",
    Callback = function()
            getgenv().XiaoPi="皮脚本QQ群1002100032" loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua"))()
    end
})

QTab:AddButton({
    Name = "皇脚本",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\87\115\78\83\122\78\110\100"))()
    end
})

QTab:AddButton({
    Name = "导管脚本",
    Desc = "What",
    Callback = function()
            loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()
    end
})

QTab:AddButton({
    Name = "XK脚本",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet(('https://github.com/DevSloPo/DVES/raw/main/XK%20Hub')))()
    end
})

QTab:AddButton({
    Name = "NN脚本",
    Desc = "What",
    Callback = function()
            loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\115\100\104\100\98\120\117\98\47\110\110\115\105\101\106\119\47\109\97\105\110\47\71\85\73\89\68\83\83\46\108\117\97\34\41\41\40\41\10")()
    end
})

QTab:AddButton({
    Name = "神光脚本",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,56,102,50,76,99,113,113,80})end)())))()
    end
})

QTab:AddButton({
    Name = "脚本中心",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()
    end
})

QTab:AddButton({
    Name = "空情",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/8628/%E9%9D%99?sign=uxlt7ravTFmP3TZLNgN7zImLHxJWhH93SEbKgFA_PRc%3D%3A0"))()
    end
})

QTab:AddButton({
    Name = "XC脚本",
    Desc = "What",
    Callback = function()
            getgenv().XC="作者XC"loadstring(game:HttpGet("https://pastebin.com/raw/PAFzYx0F"))()
    end
})

UTab = Window:MakeTab({
  IsMobile = true,
  Name = "获取Robux",
  Icon = "rbxassetid://4483345998"
})

UTab:AddButton({
    Name = "150Robux",
    Desc = "What",
    Callback = function()
            game.Players.LocalPlayer:Kick('回去查看吧🤓')
    end
})

UTab:AddButton({
    Name = "500Robux",
    Desc = "What",
    Callback = function()
            game.Players.LocalPlayer:Kick('回去查看吧🤓')
    end
})

UTab:AddButton({
    Name = "1000Robux",
    Desc = "What",
    Callback = function()
            game.Players.LocalPlayer:Kick('回去查看吧🤓')
    end
})

UTab:AddButton({
    Name = "10000Robux",
    Desc = "What",
    Callback = function()
            game.Players.LocalPlayer:Kick('回去查看吧🤓')
    end
})

UTab:AddButton({
    Name = "100000Roblox",
    Desc = "What",
    Callback = function()
            game.Players.LocalPlayer:Kick('回去查看吧🤓')
    end
})

UTab:AddButton({
    Name = "会员",
    Desc = "What",
    Callback = function()
            game.Players.LocalPlayer:Kick('你被骗了🤓')
    end
})

ATab:AddButton({
    Name = "DEXV4",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AnAvaragelilmemer/AnAvaragelilmemer/main/dexv4"))()
    end
})

ATab:AddSlider({
  Name = "视角调节",
  Min = 0,
  Max = 200,
  Default = 70,
  Increment = 1,
  ValueName = "调节视角",
  Flag = "awa",
  Callback = function(v)
    game.Workspace.CurrentCamera.FieldOfView = v
  end    
})

ATab:AddTextbox({
    Name = "视角",
    Desc = "设置视角",
    Default = "70",
    TextDisappear = true,
    Callback = function(v)
game.Workspace.CurrentCamera.FieldOfView = v
    end           
})

ATab:AddButton({
    Name = "显示帧率",
    Desc = "What",
    Callback = function()
             -- Gui to Lua 
 -- Version: 3.2 
  
 -- Instances:
 local ScreenGui = Instance.new("ScreenGui") 
 local FpsLabel = Instance.new("TextLabel")
 
 --Properties:
 
 ScreenGui.Name = "FPSGui" 
 ScreenGui.ResetOnSpawn = false 
 ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling 
 
 FpsLabel.Name = "FPSLabel" 
 FpsLabel.Size = UDim2.new(0, 100, 0, 50) 
 FpsLabel.Position = UDim2.new(0, 10, 0, 10) 
 FpsLabel.BackgroundTransparency = 1 
 FpsLabel.Font = Enum.Font.SourceSansBold 
 FpsLabel.Text = "帧率: 0" 
 FpsLabel.TextSize = 20 
 FpsLabel.TextColor3 = Color3.new(1, 1, 1) 
 FpsLabel.Parent = ScreenGui 
  
 function updateFpsLabel() 
     local fps = math.floor(1 / game:GetService("RunService").RenderStepped:Wait()) 
     FpsLabel.Text = "帧率: " .. fps 
 end 
  
  game:GetService("RunService").RenderStepped:Connect(updateFpsLabel) 
  
 ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")


 animateCredits()
    end
})

ATab:AddButton({
    Name = "免费动作",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Gazer-Ha/Free-emote/refs/heads/main/Delta%20mad%20stuffs"))()
    end
})

PTab:AddButton({
    Name = "1",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/FZIKNEZNTAXSUGVD/-1/main/TM%E8%84%9A%E6%9C%ACTM"))()
    end
})

ATab:AddButton({
    Name = "旋转",
    Desc = "What",
    Callback = function()
                 --BROUGHT TO YOU BY RSCRIPTS.NET--

if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
spawn(function()
local speaker = game.Players.LocalPlayer
local Anim = Instance.new("Animation")
     Anim.AnimationId = "rbxassetid://27432686"
     local bruh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
bruh:Play()
bruh:AdjustSpeed(0)
speaker.Character.Animate.Disabled = true
local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=8114290584"
hi.Volume = 2
hi.Looped = false
hi.archivable = false
hi.Parent = game.Workspace
hi:Play()
wait(1.5)
local spinSpeed = 30
local Spin = Instance.new("BodyAngularVelocity")
Spin.Name = "Spinning"
Spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
Spin.MaxTorque = Vector3.new(0, math.huge, 0)
Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)
wait(3.5)
while speaker.Character.Humanoid.Health > 0 do
   wait(0)
speaker.Character.Humanoid.HipHeight = speaker.Character.Humanoid.HipHeight + 0
end
end)
else
spawn(function()
local speaker = game.Players.LocalPlayer
local Anim = Instance.new("Animation")
     Anim.AnimationId = "rbxassetid://507776043"
     local bruh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
bruh:Play()
bruh:AdjustSpeed(0)
speaker.Character.Animate.Disabled = true
local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=8114290584"
hi.Volume = 0
hi.Looped = false
hi.archivable = false
hi.Parent = game.Workspace
hi:Play()
wait()
local spinSpeed = 30
local Spin = Instance.new("BodyAngularVelocity")
Spin.Name = "Spinning"
Spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
Spin.MaxTorque = Vector3.new(0, math.huge, 0)
Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)
wait(3.5)
while speaker.Character.Humanoid.Health > 0 do
   wait(0)
speaker.Character.Humanoid.HipHeight = speaker.Character.Humanoid.HipHeight + 0
end
end)    
end
    end
})

ATab:AddButton({
    Name = "在聊天框中绘画",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ocfi/Draw-To-Chat-Obfuscated/refs/heads/main/Draw%20to%20Chat"))()
    end
})

ATab:AddButton({
    Name = "锁定视角",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/gdLR5Z7X"))()
    end
})

ATab:AddButton({
    Name = "聊天绕过",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/BingusWR/Fechatbypassroblox/refs/heads/main/Fe%20Roblox%20ChatBypass"))()
    end
})

Tab:AddButton({
    Name = "复制qq群",
    Desc = "What",
    Callback = function()
            setclipboard("947637628")
    end
})

ATab:AddToggle({
    Name = "穿墙",
    Desc = "穿墙",
    Default = false,
    IsMobile = false,
    Flag = "NightVisionToggle",
    Save = false,
    Callback = function(Value)
		if Value then
		    Noclip = true
		    Stepped = game.RunService.Stepped:Connect(function()
			    if Noclip == true then
				    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
			    else
				    Stepped:Disconnect()
			    end
		    end)
	    else
		    Noclip = false
	    end
    end
})

NTab:AddButton({
    Name = "1",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/Nc2drNDz"))()
    end
})

NTab:AddButton({
    Name = "doors花园脚本",
    Desc = "What",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/TeamNullFire/NullFire/main/loader.lua"))()
    end
})

CTab:AddButton({
    Name = "不到",
    Desc = "What",
    Callback = function()
            local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://8161248815" 
     sound.Parent = game.Workspace 
     sound:Play() 
    end
})

CTab:AddButton({
    Name = "南梁必听",
    Desc = "What",
    Callback = function()
            local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://6797864253" 
     sound.Parent = game.Workspace 
     sound:Play() 
    end
})

ATab:AddButton({
    Name = "飞车",
    Desc = "mmm",
    Callback = function()
            --MADE BY WARRIOR ROBERR
-- Version: 3.2

-- Instances:
local Flymguiv2 = Instance.new("ScreenGui")
local Drag = Instance.new("Frame")
local FlyFrame = Instance.new("Frame")
local ddnsfbfwewefe = Instance.new("TextButton")
local Speed = Instance.new("TextBox")
local Fly = Instance.new("TextButton")
local Speeed = Instance.new("TextLabel")
local Stat = Instance.new("TextLabel")
local Stat2 = Instance.new("TextLabel")
local Unfly = Instance.new("TextButton")
local Vfly = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")
local Flyon = Instance.new("Frame")
local W = Instance.new("TextButton")
local S = Instance.new("TextButton")

--Properties:

Flymguiv2.Name = "Flym gui v2"
Flymguiv2.Parent = game.CoreGui
Flymguiv2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Drag.Name = "Drag"
Drag.Parent = Flymguiv2
Drag.Active = true
Drag.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
Drag.BorderSizePixel = 0
Drag.Draggable = true
Drag.Position = UDim2.new(0.482438415, 0, 0.454874992, 0)
Drag.Size = UDim2.new(0, 237, 0, 27)

FlyFrame.Name = "FlyFrame"
FlyFrame.Parent = Drag
FlyFrame.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
FlyFrame.BorderSizePixel = 0
FlyFrame.Draggable = true
FlyFrame.Position = UDim2.new(-0.00200000009, 0, 0.989000022, 0)
FlyFrame.Size = UDim2.new(0, 237, 0, 139)

ddnsfbfwewefe.Name = "ddnsfbfwewefe"
ddnsfbfwewefe.Parent = FlyFrame
ddnsfbfwewefe.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
ddnsfbfwewefe.BorderSizePixel = 0
ddnsfbfwewefe.Position = UDim2.new(-0.000210968778, 0, -0.00395679474, 0)
ddnsfbfwewefe.Size = UDim2.new(0, 237, 0, 27)
ddnsfbfwewefe.Font = Enum.Font.SourceSans
ddnsfbfwewefe.Text = "Script made by WarriorRoberr"
ddnsfbfwewefe.TextColor3 = Color3.fromRGB(255, 255, 255)
ddnsfbfwewefe.TextScaled = true
ddnsfbfwewefe.TextSize = 14.000
ddnsfbfwewefe.TextWrapped = true

Speed.Name = "Speed"
Speed.Parent = FlyFrame
Speed.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
Speed.BorderColor3 = Color3.fromRGB(0, 0, 191)
Speed.BorderSizePixel = 0
Speed.Position = UDim2.new(0.445025861, 0, 0.402877688, 0)
Speed.Size = UDim2.new(0, 111, 0, 33)
Speed.Font = Enum.Font.SourceSans
Speed.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
Speed.Text = "50"
Speed.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed.TextScaled = true
Speed.TextSize = 14.000
Speed.TextWrapped = true

Fly.Name = "Fly"
Fly.Parent = FlyFrame
Fly.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
Fly.BorderSizePixel = 0
Fly.Position = UDim2.new(0.0759493634, 0, 0.705797076, 0)
Fly.Size = UDim2.new(0, 199, 0, 32)
Fly.Font = Enum.Font.SourceSans
Fly.Text = "Enable"
Fly.TextColor3 = Color3.fromRGB(255, 255, 255)
Fly.TextScaled = true
Fly.TextSize = 14.000
Fly.TextWrapped = true
Fly.MouseButton1Click:Connect(function()
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	Fly.Visible = false
	Stat2.Text = "On"
	Stat2.TextColor3 = Color3.fromRGB(0, 255, 0)
	Unfly.Visible = true
	Flyon.Visible = true
	local BV = Instance.new("BodyVelocity",HumanoidRP)
	local BG = Instance.new("BodyGyro",HumanoidRP)
	BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	game:GetService('RunService').RenderStepped:connect(function()
	BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
	BG.D = 5000
	BG.P = 100000
	BG.CFrame = game.Workspace.CurrentCamera.CFrame
	end)
end)

Speeed.Name = "Speeed"
Speeed.Parent = FlyFrame
Speeed.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Speeed.BorderSizePixel = 0
Speeed.Position = UDim2.new(0.0759493634, 0, 0.402877688, 0)
Speeed.Size = UDim2.new(0, 87, 0, 32)
Speeed.ZIndex = 0
Speeed.Font = Enum.Font.SourceSans
Speeed.Text = "Speed:"
Speeed.TextColor3 = Color3.fromRGB(255, 255, 255)
Speeed.TextScaled = true
Speeed.TextSize = 14.000
Speeed.TextWrapped = true

Stat.Name = "Stat"
Stat.Parent = FlyFrame
Stat.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Stat.BorderSizePixel = 0
Stat.Position = UDim2.new(0.299983799, 0, 0.239817441, 0)
Stat.Size = UDim2.new(0, 85, 0, 15)
Stat.Font = Enum.Font.SourceSans
Stat.Text = "Status:"
Stat.TextColor3 = Color3.fromRGB(255, 255, 255)
Stat.TextScaled = true
Stat.TextSize = 14.000
Stat.TextWrapped = true

Stat2.Name = "Stat2"
Stat2.Parent = FlyFrame
Stat2.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Stat2.BorderSizePixel = 0
Stat2.Position = UDim2.new(0.546535194, 0, 0.239817441, 0)
Stat2.Size = UDim2.new(0, 27, 0, 15)
Stat2.Font = Enum.Font.SourceSans
Stat2.Text = "Off"
Stat2.TextColor3 = Color3.fromRGB(255, 0, 0)
Stat2.TextScaled = true
Stat2.TextSize = 14.000
Stat2.TextWrapped = true

Unfly.Name = "Unfly"
Unfly.Parent = FlyFrame
Unfly.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
Unfly.BorderSizePixel = 0
Unfly.Position = UDim2.new(0.0759493634, 0, 0.705797076, 0)
Unfly.Size = UDim2.new(0, 199, 0, 32)
Unfly.Visible = false
Unfly.Font = Enum.Font.SourceSans
Unfly.Text = "Disable"
Unfly.TextColor3 = Color3.fromRGB(255, 255, 255)
Unfly.TextScaled = true
Unfly.TextSize = 14.000
Unfly.TextWrapped = true
Unfly.MouseButton1Click:Connect(function()
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	Fly.Visible = true
	Stat2.Text = "Off"
	Stat2.TextColor3 = Color3.fromRGB(255, 0, 0)
	wait()
	Unfly.Visible = false
	Flyon.Visible = false
	HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
	HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
end)

Vfly.Name = "Vfly"
Vfly.Parent = Drag
Vfly.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
Vfly.BorderSizePixel = 0
Vfly.Size = UDim2.new(0, 57, 0, 27)
Vfly.Font = Enum.Font.SourceSans
Vfly.Text = "VFly"
Vfly.TextColor3 = Color3.fromRGB(255, 255, 255)
Vfly.TextScaled = true
Vfly.TextSize = 14.000
Vfly.TextWrapped = true

Close.Name = "Close"
Close.Parent = Drag
Close.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.875, 0, 0, 0)
Close.Size = UDim2.new(0, 27, 0, 27)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true
Close.MouseButton1Click:Connect(function()
	Flymguiv2:Destroy()
end)

Minimize.Name = "Minimize"
Minimize.Parent = Drag
Minimize.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
Minimize.BorderSizePixel = 0
Minimize.Position = UDim2.new(0.75, 0, 0, 0)
Minimize.Size = UDim2.new(0, 27, 0, 27)
Minimize.Font = Enum.Font.SourceSans
Minimize.Text = "-"
Minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
Minimize.TextScaled = true
Minimize.TextSize = 14.000
Minimize.TextWrapped = true
function Mini()
	if Minimize.Text == "-" then
		Minimize.Text = "+"
		FlyFrame.Visible = false
	elseif Minimize.Text == "+" then
		Minimize.Text = "-"
		FlyFrame.Visible = true
	end
end
Minimize.MouseButton1Click:Connect(Mini)

Flyon.Name = "Fly on"
Flyon.Parent = Flymguiv2
Flyon.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Flyon.BorderSizePixel = 0
Flyon.Position = UDim2.new(0.117647067, 0, 0.550284624, 0)
Flyon.Size = UDim2.new(0.148000002, 0, 0.314999998, 0)
Flyon.Visible = false
Flyon.Active = true
Flyon.Draggable = true

W.Name = "W"
W.Parent = Flyon
W.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
W.BorderSizePixel = 0
W.Position = UDim2.new(0.134719521, 0, 0.0152013302, 0)
W.Size = UDim2.new(0.708999991, 0, 0.499000013, 0)
W.Font = Enum.Font.SourceSans
W.Text = "^"
W.TextColor3 = Color3.fromRGB(255, 255, 255)
W.TextScaled = true
W.TextSize = 14.000
W.TextWrapped = true
W.TouchLongPress:Connect(function()
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * 0
end)

W.MouseButton1Click:Connect(function()
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * 0
end)

S.Name = "S"
S.Parent = Flyon
S.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
S.BorderSizePixel = 0
S.Position = UDim2.new(0.134000003, 0, 0.479999989, 0)
S.Rotation = 180.000
S.Size = UDim2.new(0.708999991, 0, 0.499000013, 0)
S.Font = Enum.Font.SourceSans
S.Text = "^"
S.TextColor3 = Color3.fromRGB(255, 255, 255)
S.TextScaled = true
S.TextSize = 14.000
S.TextWrapped = true
S.TouchLongPress:Connect(function()
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * 0
end)

S.MouseButton1Click:Connect(function()
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * 0
end)
    end
})

ATab:AddToggle({
    Name = "自动互动",
    Desc = "开启或关闭",
    Default = false,
    IsMobile = false,
    Flag = "NightVisionToggle",
    Save = false,
    Callback = function(state)
        if state then
            autoInteract = true
            while autoInteract do
                for _, descendant in pairs(workspace:GetDescendants()) do
                    if descendant:IsA("ProximityPrompt") then
                        fireproximityprompt(descendant)
                    end
                end
                task.wait(0.25) -- Adjust the wait time as needed
            end
        else
            autoInteract = false
        end
    end
})

ATab:AddToggle({
    Name = "无限跳跃",
    Desc = "开启或关闭",
    Default = false,
    IsMobile = false,
    Flag = "NightVisionToggle",
    Save = false,
    Callback = function(Value)
        Jump = Value
        game.UserInputService.JumpRequest:Connect(function()
            if Jump then
                game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
            end
        end)
    end
})

ATab:AddButton({
    Name = "音乐播放器",
    Desc = "更好的播放音乐",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Maan04ka/CodingScripts/main/MusicUI.lua"))()
    end
})

CTab:AddButton({
    Name = "义勇军进行曲",
    Desc = "国歌🇨🇳",
    Callback = function()
            local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://1845918434"
    sound.Parent = game.Workspace
    sound:Play()
    end
})

CTab:AddButton({
    Name = "彩虹瀑布",
    Desc = "what",
    Callback = function()
            local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://1837879082"
    sound.Parent = game.Workspace
    sound:Play()
    end
})

UTab = Window:MakeTab({
  IsMobile = true,
  Name = "起床战争",
  Icon = "rbxassetid://4483345998"
})

UTab:AddButton({
    Name = "vape v3.1",
    Desc = "what",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Alan0947383/Demonic-HUB-V2/main/S-C-R-I-P-T.lua",true))()
    end
})

UTab:AddButton({
    Name = "vape v4",
    Desc = "what",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/V4ForRoblox/main/NewMainScript.lua", true))()
    end
})

YTab:AddButton({
    Name = "辅助黑洞",
    Desc = "what",
    Callback = function()
            if "you wanna use rochips universal" then
	local z_x,z_z="gzrux646yj/raw/main.ts","https://glot.io/snippets/"
	local im,lonely,z_c=task.wait,game,loadstring
	z_c(lonely:HttpGet(z_z..""..z_x))()
	return ("This will load in about 2 - 30 seconds" or "according to your device and executor")
end
    end
})

YTab:AddButton({
    Name = "辅助黑洞2",
    Desc = "what",
    Callback = function()
            loadstring(game:HttpGet("https://gist.githubusercontent.com/AxolotlBmgo/8888080921c2b426a32dd9ff587baff1/raw/d45e03afed3c1716f36523bbf6dd741d3d2aad00/gistfile1.txt"))()
    end
})

YTab:AddButton({
    Name = "掌管黑洞的神",
    Desc = "别人无法看到",
    Callback = function()
            local UserInputService = game:GetService("UserInputService")
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local MaxRange = 100  -- Set your maximum range

local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character
local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")

if not HumanoidRootPart then
    print("Cannot find the HumanoidRootPart of your character. Please ensure your character has been fully loaded.")
    return
end

local Attachment1 = Instance.new("Attachment", HumanoidRootPart)

local function TeleportPart(v)
    if v:IsA("Part") and v.Parent ~= Character and not v:IsDescendantOf(Character) then
        Mouse.TargetFilter = v
        for _, x in next, v:GetChildren() do
            if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                x:Destroy()
            end
        end
        if v:FindFirstChild("Attachment") then
            v:FindFirstChild("Attachment"):Destroy()
        end

        v.CanCollide = false 

        local AlignPosition = Instance.new("AlignPosition", v)
        local Attachment2 = Instance.new("Attachment", v)

        AlignPosition.MaxForce = math.huge 
        AlignPosition.MaxVelocity = math.huge 
        AlignPosition.Responsiveness = math.huge  -- Always within suction range
        AlignPosition.Attachment0 = Attachment2
        AlignPosition.Attachment1 = Attachment1
    end
end

local function TeleportAllParts()
    for _, v in next, game:GetService("Workspace"):GetDescendants() do
        TeleportPart(v)
    end
end

TeleportAllParts()

game:GetService("Workspace").DescendantAdded:Connect(TeleportPart)

UserInputService.InputBegan:Connect(function(Key, Chat)
    if Key.KeyCode == Enum.KeyCode.E and not Chat then
        Attachment1.WorldCFrame = Mouse.Hit + Vector3.new(0, 5, 0)
    end
end)

spawn(function()
    while game:GetService("RunService").RenderStepped:Wait() do
        Attachment1.WorldCFrame = Mouse.Hit + Vector3.new(0, 5, 0)
        -- Force to stay within the suction range
        for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("Part") and v.Parent ~= Character and not v:IsDescendantOf(Character) then
                local dist = (v.Position - HumanoidRootPart.Position).Magnitude
                if dist > MaxRange then
                    v.Position = HumanoidRootPart.Position + (v.Position - HumanoidRootPart.Position).Unit * MaxRange
                end
            end
        end
    end
end)
    end
})

YTab:AddButton({
    Name = "非常L的黑洞",
    Desc = "需要配合指令tpua",
    Callback = function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/SAZXHUB/Control-update/main/README.md'),true))()
    end
})

YTab:AddButton({
    Name = "普通的黑洞",
    Desc = "需要按E控制",
    Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/Sx6PY4gV"))()
    end
})

YTab:AddButton({
    Name = "普通的黑洞2",
    Desc = "点击即跟随",
    Callback = function()
            loadstring(game:HttpGet(('https://pastefy.app/BbXuvVkK/raw'),true))()
    end
})

YTab:AddButton({
    Name = "高级黑洞",
    Desc = "按E控制",
    Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/Kgtw4gt7"))()
    end
})

YTab:AddButton({
    Name = "黑洞script",
    Desc = "what",
    Callback = function()
            print('Hello World!');local UserInputService = game:GetService("UserInputService")
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()

local Folder = Instance.new("Folder", game:GetService("Workspace"))
local Part = Instance.new("Part", Folder)
Part.Anchored = true
Part.CanCollide = false
Part.Transparency = 1

local Attachment1 = Instance.new("Attachment", Part)

local Updated = Mouse.Hit + Vector3.new(0, 5, 0)
local ForceStrength = math.huge

local function TeleportPart(v)
   if v:IsA("Part") and v.Anchored == false and v.Parent ~= game:GetService("Players").LocalPlayer.Character then
       Mouse.TargetFilter = v
       for _, x in next, v:GetChildren() do
           if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
               x:Destroy()
           end
       end
       if v:FindFirstChild("Attachment") then
           v:FindFirstChild("Attachment"):Destroy()
       end

       v.CanCollide = false

       local Torque = Instance.new("BodyAngularVelocity", v)
       Torque.AngularVelocity = Vector3.new(0, math.rad(ForceStrength * 4), 0) -- 更快的旋转速度

       local AlignPosition = Instance.new("AlignPosition", v)
       local Attachment2 = Instance.new("Attachment", v)

       AlignPosition.MaxForce = math.huge
       AlignPosition.MaxVelocity = math.huge
       AlignPosition.Responsiveness = math.huge  -- 始终在吸取范围内
       AlignPosition.Attachment0 = Attachment2
       AlignPosition.Attachment1 = Attachment1
   end
end

local function TeleportAllParts()
   for _, v in next, game:GetService("Workspace"):GetDescendants() do
       if v:IsA("Part") and v.Parent ~= game:GetService("Players").LocalPlayer.Character then
           TeleportPart(v)
       end
   end
end

TeleportAllParts()

game:GetService("Workspace").DescendantAdded:Connect(function(v)
   if v:IsA("Part") and v.Parent ~= game:GetService("Players").LocalPlayer.Character then
       TeleportPart(v)
   end
end)

UserInputService.InputBegan:Connect(function(Key, Chat)
   if Key.KeyCode == Enum.KeyCode.E and not Chat then
       Updated = Mouse.Hit + Vector3.new(0, 5, 0)
   end
end)

spawn(function()
   while game:GetService("RunService").RenderStepped:Wait() do
       Attachment1.WorldCFrame = Updated
   end
end)

--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Workspace = game:GetService("Workspace")

local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

if not getgenv().Network then
    getgenv().Network = {
        BaseParts = {},
        Velocity = Vector3.new(14.46262424, 14.46262424, 14.46262424)
    }

    Network.RetainPart = function(Part)
        if typeof(Part) == "Instance" and Part:IsA("BasePart") and Part:IsDescendantOf(Workspace) then
            table.insert(Network.BaseParts, Part)
            Part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
            Part.CanCollide = false
        end
    end

    local function EnablePartControl()
        LocalPlayer.ReplicationFocus = Workspace
        RunService.Heartbeat:Connect(function()
            sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
            for _, Part in pairs(Network.BaseParts) do
                if Part:IsDescendantOf(Workspace) then
                    Part.Velocity = Network.Velocity
                end
            end
        end)
    end

    EnablePartControl()
end

local function ForcePart(v)
    if v:IsA("Part") and not v.Anchored and not v.Parent:FindFirstChild("Humanoid") and not v.Parent:FindFirstChild("Head") and v.Name ~= "Handle" and v.Parent ~= LocalPlayer.Character then
        for _, x in next, v:GetChildren() do
            if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                x:Destroy()
            end
        end
        if v:FindFirstChild("Attachment") then
            v:FindFirstChild("Attachment"):Destroy()
        end
        if v:FindFirstChild("AlignPosition") then
            v:FindFirstChild("AlignPosition"):Destroy()
        end
        if v:FindFirstChild("Torque") then
            v:FindFirstChild("Torque"):Destroy()
        end
        v.CanCollide = false
        local Torque = Instance.new("Torque", v)
        Torque.Torque = Vector3.new(100000, 100000, 100000)
        local AlignPosition = Instance.new("AlignPosition", v)
        local Attachment2 = Instance.new("Attachment", v)
        Torque.Attachment0 = Attachment2
        AlignPosition.MaxForce = 9999999999999999
        AlignPosition.MaxVelocity = math.huge
        AlignPosition.Responsiveness = 200
        AlignPosition.Attachment0 = Attachment2
        AlignPosition.Attachment1 = Attachment1
    end
end

local blackHoleActive = true

local function toggleBlackHole()
    blackHoleActive = not blackHoleActive
    if blackHoleActive then
        for _, v in next, Workspace:GetDescendants() do
            ForcePart(v)
        end

        Workspace.DescendantAdded:Connect(function(v)
            if blackHoleActive then
                ForcePart(v)
            end
        end)

        spawn(function()
            while blackHoleActive and RunService.RenderStepped:Wait() do
                Attachment1.WorldCFrame = humanoidRootPart.CFrame
            end
        end)
    end
end

local function createControlButton()
    local screenGui = Instance.new("ScreenGui")
    local button = Instance.new("TextButton")

    screenGui.Name = "BlackHoleControlGUI"
    screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

    button.Name = "ToggleBlackHoleButton"
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = UDim2.new(0.5, -100, 0, 100)
    button.Text = "Desativar Buraco Negro"
    button.Parent = screenGui

    button.MouseButton1Click:Connect(function()
        toggleBlackHole()
        if blackHoleActive then
            button.Text = "Desativar Buraco Negro"
        else
            button.Text = "Ativar Buraco Negro"
        end
    end)
end

createControlButton()
toggleBlackHole()
    end
})

YTab:AddButton({
    Name = "黑洞script2",
    Desc = "what",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/lililiugg/main/jm114514.lua"))()
    end
})

YTab:AddButton({
    Name = "黑洞script3",
    Desc = "what",
    Callback = function()
            local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Workspace = game:GetService("Workspace")
 
local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
 
local Folder = Instance.new("Folder", Workspace)
local Part = Instance.new("Part", Folder)
local Attachment1 = Instance.new("Attachment", Part)
Part.Anchored = true
Part.CanCollide = false
Part.Transparency = 1
 
if not getgenv().Network then
    getgenv().Network = {
        BaseParts = {},
        Velocity = Vector3.new(14.46262424, 14.46262424, 14.46262424)
    }
 
    Network.RetainPart = function(Part)
        if typeof(Part) == "Instance" and Part:IsA("BasePart") and Part:IsDescendantOf(Workspace) then
            table.insert(Network.BaseParts, Part)
            Part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
            Part.CanCollide = false
        end
    end
 
    local function EnablePartControl()
        LocalPlayer.ReplicationFocus = Workspace
        RunService.Heartbeat:Connect(function()
            sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
            for _, Part in pairs(Network.BaseParts) do
                if Part:IsDescendantOf(Workspace) then
                    Part.Velocity = Network.Velocity
                end
            end
        end)
    end
 
    EnablePartControl()
end
 
local function ForcePart(v)
    if v:IsA("Part") and not v.Anchored and not v.Parent:FindFirstChild("Humanoid") and not v.Parent:FindFirstChild("Head") and v.Name ~= "Handle" then
        for _, x in next, v:GetChildren() do
            if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                x:Destroy()
            end
        end
        if v:FindFirstChild("Attachment") then
            v:FindFirstChild("Attachment"):Destroy()
        end
        if v:FindFirstChild("AlignPosition") then
            v:FindFirstChild("AlignPosition"):Destroy()
        end
        if v:FindFirstChild("Torque") then
            v:FindFirstChild("Torque"):Destroy()
        end
        v.CanCollide = false
        local Torque = Instance.new("Torque", v)
        Torque.Torque = Vector3.new(100000, 100000, 100000)
        local AlignPosition = Instance.new("AlignPosition", v)
        local Attachment2 = Instance.new("Attachment", v)
        Torque.Attachment0 = Attachment2
        AlignPosition.MaxForce = 9999999999999999
        AlignPosition.MaxVelocity = math.huge
        AlignPosition.Responsiveness = 200
        AlignPosition.Attachment0 = Attachment2
        AlignPosition.Attachment1 = Attachment1
    end
end
 
local blackHoleActive = true
 
local function toggleBlackHole()
    blackHoleActive = not blackHoleActive
    if blackHoleActive then
        for _, v in next, Workspace:GetDescendants() do
            ForcePart(v)
        end
 
        Workspace.DescendantAdded:Connect(function(v)
            if blackHoleActive then
                ForcePart(v)
            end
        end)
 
        spawn(function()
            while blackHoleActive and RunService.RenderStepped:Wait() do
                Attachment1.WorldCFrame = humanoidRootPart.CFrame
            end
        end)
    end
end
 
local function createControlButton()
    local screenGui = Instance.new("ScreenGui")
    local button = Instance.new("TextButton")
 
    screenGui.Name = "BlackHoleControlGUI"
    screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
 
    button.Name = "ToggleBlackHoleButton"
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = UDim2.new(0.5, -100, 0, 100)
    button.Text = "Desativar Buraco Negro"
    button.Parent = screenGui
 
    button.MouseButton1Click:Connect(function()
        toggleBlackHole()
        if blackHoleActive then
            button.Text = "Desativar Buraco Negro"
        else
            button.Text = "Ativar Buraco Negro"
        end
    end)
end
 
createControlButton()
toggleBlackHole()
    end
})

YTab:AddButton({
    Name = "黑洞script4",
    Desc = "what",
    Callback = function()
            loadstring(game:HttpGet("https://pastefy.app/pYhER1z4/raw"))()
    end
})

YTab:AddButton({
    Name = "黑洞script5",
    Desc = "what",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/BingusWR/BLACKHOLDSCRIPT/refs/heads/main/BLACK%20HOLD%20SCRIPT"))()
    end
})

YTab:AddButton({
    Name = "黑洞script6",
    Desc = "what",
    Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/qPcm2zPy"))()
    end
})

YTab:AddButton({
    Name = "黑洞脚本7环绕v2",
    Desc = "what",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/BOOSBS/666/refs/heads/main/656"))()
    end
})

YTab:AddButton({
    Name = "黑洞script8环绕v3",
    Desc = "what",
    Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/BOOSBS/666/refs/heads/main/656"))()
    end
})

YTab:AddButton({
    Name = "黑洞脚本环绕",
    Desc = "what",
    Callback = function()
            local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Workspace = game:GetService("Workspace")

local angle = 1
local radius = 10
local blackHoleActive = false

local function setupPlayer()
    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local Folder = Instance.new("Folder", Workspace)
    local Part = Instance.new("Part", Folder)
    local Attachment1 = Instance.new("Attachment", Part)
    Part.Anchored = true
    Part.CanCollide = false
    Part.Transparency = 1

    return humanoidRootPart, Attachment1
end

local humanoidRootPart, Attachment1 = setupPlayer()

if not getgenv().Network then
    getgenv().Network = {
        BaseParts = {},
        Velocity = Vector3.new(14.46262424, 14.46262424, 14.46262424)
    }

    Network.RetainPart = function(part)
        if typeof(part) == "Instance" and part:IsA("BasePart") and part:IsDescendantOf(Workspace) then
            table.insert(Network.BaseParts, part)
            part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
            part.CanCollide = false
        end
    end

    local function EnablePartControl()
        LocalPlayer.ReplicationFocus = Workspace
        RunService.Heartbeat:Connect(function()
            sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
            for _, part in pairs(Network.BaseParts) do
                if part:IsDescendantOf(Workspace) then
                    part.Velocity = Network.Velocity
                end
            end
        end)
    end

    EnablePartControl()
end

local function ForcePart(v)
    if v:IsA("Part") and not v.Anchored and not v.Parent:FindFirstChild("Humanoid") and not v.Parent:FindFirstChild("Head") and v.Name ~= "Handle" then
        for _, x in next, v:GetChildren() do
            if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                x:Destroy()
            end
        end
        if v:FindFirstChild("Attachment") then
            v:FindFirstChild("Attachment"):Destroy()
        end
        if v:FindFirstChild("AlignPosition") then
            v:FindFirstChild("AlignPosition"):Destroy()
        end
        if v:FindFirstChild("Torque") then
            v:FindFirstChild("Torque"):Destroy()
        end
        v.CanCollide = false
        
        local Torque = Instance.new("Torque", v)
        Torque.Torque = Vector3.new(1000000, 1000000, 1000000)
        local AlignPosition = Instance.new("AlignPosition", v)
        local Attachment2 = Instance.new("Attachment", v)
        Torque.Attachment0 = Attachment2
        AlignPosition.MaxForce = math.huge
        AlignPosition.MaxVelocity = math.huge
        AlignPosition.Responsiveness = 500
        AlignPosition.Attachment0 = Attachment2
        AlignPosition.Attachment1 = Attachment1
    end
end

local function toggleBlackHole()
    blackHoleActive = not blackHoleActive
    if blackHoleActive then
        for _, v in next, Workspace:GetDescendants() do
            ForcePart(v)
        end

        Workspace.DescendantAdded:Connect(function(v)
            if blackHoleActive then
                ForcePart(v)
            end
        end)

        spawn(function()
            while blackHoleActive and RunService.RenderStepped:Wait() do
                angle = angle + math.rad(2)

                local offsetX = math.cos(angle) * radius
                local offsetZ = math.sin(angle) * radius

                Attachment1.WorldCFrame = humanoidRootPart.CFrame * CFrame.new(offsetX, 0, offsetZ)
            end
        end)
    else
        Attachment1.WorldCFrame = CFrame.new(0, -1000, 0)
    end
end

LocalPlayer.CharacterAdded:Connect(function()
    humanoidRootPart, Attachment1 = setupPlayer()
    if blackHoleActive then
        toggleBlackHole()
    end
end)

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/miroeramaa/TurtleLib/main/TurtleUiLib.lua"))()
local window = library:Window("Projeto LKB")

window:Slider("Radius Blackhole",1,100,10, function(Value)
   radius = Value
end)

window:Toggle("Blackhole", true, function(Value)
       if Value then
            toggleBlackHole()
        else
            blackHoleActive = false
        end
end)

spawn(function()
    while true do
        RunService.RenderStepped:Wait()
        if blackHoleActive then
            angle = angle + math.rad(angleSpeed)
        end
    end
end)

toggleBlackHole()
    end
})

YTab:AddButton({
    Name = "黑洞脚本传送式",
    Desc = "别人看不到",
    Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/U29jR1Cf"))()
    end
})

WTab = Window:MakeTab({
  IsMobile = true,
  Name = "吃吃世界",
  Icon = "rbxassetid://4483345998"
})

WTab:AddButton({
    Name = "猫帝",
    Desc = "haha",
    Callback = function()
            local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

WindUI:Notify({
    Title = "Cat Emperor",
    Content = "猫帝",
    Duration = 5,
})

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
local hum = Character.HumanoidRootPart
local PlayerGui = LocalPlayer.PlayerGui

local Window = WindUI:CreateWindow({
    Title = "Cat EmperorHub",
    Icon = "rbxassetid://123371892256547",
    IconThemed = true,
    Author = "猫帝",
    Folder = "Cat EmperorHub",
    Size = UDim2.fromOffset(300, 270),
    Transparent = true,
    Theme = "Dark",
    User = {
        Enabled = true,
        Callback = function() print("clicked") end,
        Anonymous = false
    },
    SideBarWidth = 200,
    -- HideSearchBar = true,
    ScrollBarEnabled = true,
    -- Background = "rbxassetid://13511292247", -- rbxassetid only
})

Window:EditOpenButton({
    Title = "打开UI",
    Icon = "star",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 2,
    Color = ColorSequence.new(
        Color3.fromHex("FF0F7B"), 
        Color3.fromHex("F89B29")
    ),
    Draggable = true,
})

MainSection = Window:Section({
    Title = "Cat Emperor",
    Opened = true,
})

Main = MainSection:Tab({ Title = "自动", Icon = "Sword" })
Maii = MainSection:Tab({ Title = "玩家",Icon = "Sword" })

local main = {
    AutoGrab = false,
    AutoEat = false,
    AutoThrow = false,
    AutoSell = false,
    AutoBox = false,
    AutoTele = false,
    AutoMap = false,
}

Main:Toggle({
    Title = "自动抓",
    Image = "bird",
    Value = main.AutoGrab,
    Callback = function(state)
        main.AutoGrab = state
        spawn(function()
            while main.AutoGrab and task.wait(2) do
                game:GetService("Players").LocalPlayer.Character.Events.Grab:FireServer(false,false,false)
            end
        end)
    end
})
Main:Toggle({
    Title = "自动吃",
    Image = "bird",
    Value = main.AutoEat,
    Callback = function(state)
        main.AutoEat = state
        spawn(function()
        while main.AutoEat and task.wait() do
        game:GetService("Players").LocalPlayer.Character.Events.Eat:FireServer()
        end
      end)
    end
}) 
Main:Toggle({
    Title = "自动扔",
    Image = "bird",
    Value = main.AutoThrow,
    Callback = function(state)
    main.AutoThrow = state
    spawn(function()
    while main.AutoThrow and task.wait() do
    game:GetService("Players").LocalPlayer.Character.Events.Throw:FireServer()
     end
    end)
   end
})
Main:Toggle({
    Title = "自动卖",
    Image = "bird",
    Value = main.AutoSell,
    Callback = function(state)
    main.AutoSell = state
    spawn(function()
    while main.AutoSell and task.wait() do
    game:GetService("Players").LocalPlayer.Character.Events.Sell:FireServer()
     end
    end)
   end
})
Main:Toggle({
     Title = "自动领箱子",
     Image = "bird",
     Value = main.AutoBox,
     Callback = function(state)
     main.AutoBox = state
     spawn(function()
     while main.AutoBox and task.wait() do
     game:GetService("ReplicatedStorage").Events.RewardEvent:FireServer(game:GetService("Players").LocalPlayer.TimedRewards.SmallReward)
       end
      end)
     end
})
Maii:Input({
    Title = "速度",
    Desc = "设置移动速度",
    Value = "",
    InputIcon = "bird",
    Type = "Input",
    Placeholder = "输入数字（如30）",
    Callback = function(Value)
        local speed = tonumber(Value)
        if not speed then
            print("请输入有效的数字")
            return
        end
        
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = speed
            print("移速已设置为：" .. speed)
        else
            print("未找到角色的Humanoid")
        end
    end
})
Maii:Input({
    Title = "跳跃高度",
    Desc = "设置跳跃高度",
    Value = "",
    InputIcon = "bird",
    Type = "Input",
    Placeholder = "输入数字（如30）",
    Callback = function(Value)
        
        local jumpPower = tonumber(Value)
        if not jumpPower then
            print("请输入有效的数字")
            return
        end
        
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.JumpPower = jumpPower
            print("跳跃高度已设置为：" .. jumpPower)
        else
            print("未找到角色的Humanoid")
        end
    end
})
Maii:Button({
   Title = "无限跳",
   Desc = "重置人物即可关闭",
   Locked = false,
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
	end
})
Main:Toggle({
    Title = "移除地图",
    Image = "bird",
    Value = main.AutoMap,
    Callback = function(state)
    main.AutoMap = state
    spawn(function()
    while main.AutoMap and task.wait() do
     workspace.Map.Buildings:Destroy()
    workspace.Map.Fragmentable:Destroy()
    workspace.Chunks:Destroy()
     end
    end)
   end
})
Main:Toggle({
    Title = "自动传送",
    Image = "bird",
    Value = main.AutoTele,
    Callback = function(state)
        main.AutoTele = state
        
        if main.teleThread then
            task.cancel(main.teleThread)
            main.teleThread = nil
        end
        
        if state then
            main.teleThread = spawn(function()
                while main.AutoTele do
                    local player = game.Players.LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local hrp = character:FindFirstChild("HumanoidRootPart")
                    if not hrp then
                        task.wait(1)
                        continue
                    end
                    
                    if main.AutoTele then
                        hrp.CFrame = CFrame.new(67.5105209350586, 2.617709159851074, 49.95643615722656)
                    else break end
                    task.wait(2)
                    
                    if main.AutoTele then
                        hrp.CFrame = CFrame.new(66.61660766601562, 2.617709159851074, 27.347152709960938)
                    else break end
                    task.wait(2)
                    
                    if main.AutoTele then
                        hrp.CFrame = CFrame.new(62.12251281738281, 2.617709159851074, 11.004171371459961)
                    else break end
                    task.wait(2)
                    
                    if main.AutoTele then
                        hrp.CFrame = CFrame.new(57.77750778198242, 2.617709159851074, -3.3018038272857666)
                    else break end
                    task.wait(2)
                    
                    if main.AutoTele then
                        hrp.CFrame = CFrame.new(52.71255874633789, 2.617709159851074, -17.906509399414062)
                    else break end
                    task.wait(2)
                    
                    if main.AutoTele then
                        hrp.CFrame = CFrame.new(38.93976593017578, 2.617709159851074, -35.72473907470703)
                    else break end
                    task.wait(2)
                    
                    if main.AutoTele then
                        hrp.CFrame = CFrame.new(25.061079025268555, 2.617709159851074, -46.44431686401367)
                    else break end
                    task.wait(2)
                    
                    if main.AutoTele then
                        hrp.CFrame = CFrame.new(7.925309658050537, 2.617709159851074, -58.25339889526367)
                    else break end
                    task.wait(2)
                    
                    if main.AutoTele then
                        hrp.CFrame = CFrame.new(-13.032307624816895, 2.617709159851074, -62.51304626464844)
                    else break end
                    task.wait(2)
                    
                    if main.AutoTele then
                        hrp.CFrame = CFrame.new(-28.29254150390625, 2.617709159851074, -54.87309265136719)
                    else break end
                    task.wait(2)
                    
                    if main.AutoTele then
                        hrp.CFrame = CFrame.new(-56.19231414794922, 2.617709159851074, -32.02164840698242)
                    else break end
                    task.wait(2)
                    
                    if main.AutoTele then
                        hrp.CFrame = CFrame.new(-64.64066314697266, 2.617709159851074, -20.583925247192383)
                    else break end
                    task.wait(2)
                    
                    if main.AutoTele then
                        hrp.CFrame = CFrame.new(-91.2260513305664, 2.617709159851074, -12.719565391540527)
                    else break end
                    task.wait(2)
                    
                    if main.AutoTele then
                        hrp.CFrame = CFrame.new(-116.47618103027344, 2.6177096366882324, -9.312110900878906)
                    else break end
                    task.wait(2)
                    
                    if main.AutoTele then
                        hrp.CFrame = CFrame.new(-139.49990844726562, 2.6177096366882324, 23.60348892211914)
                    else break end
                    task.wait(2)
                    
                    if main.AutoTele then
                        hrp.CFrame = CFrame.new(-139.42808532714844, 2.6177096366882324, 55.475135803222656)
                    else break end
                    task.wait(2)
                    
                    if main.AutoTele then
                        hrp.CFrame = CFrame.new(-137.9814453125, 2.6177096366882324, 78.55432891845703)
                    else break end
                    task.wait(2)
                    
                    if main.AutoTele then
                        hrp.CFrame = CFrame.new(-136.70278930664062, 2.6177096366882324, 95.68263244628906)
                    else break end
                    task.wait(2)
                    
                    if main.AutoTele then
                        hrp.CFrame = CFrame.new(-156.70278930664062, 3.6177096366882324, 100.68263244628906)
                    else break end
                    task.wait(2)
                    
                    if main.AutoTele then
                        hrp.CFrame = CFrame.new(-38.68806838989258, 2.617709159851074, -48.66199493408203)
                    else break end
                    task.wait(2)
                end
                main.teleThread = nil
            end)
        end
    end
})
    end
})

ATab:AddToggle({
    Name = "快速互动",
    Desc = "开启或关闭",
    Default = false,
    IsMobile = false,
    Value = false,
    Flag = "NightVisionToggle",
    Save = false,
    Callback = function(value)
        _G.NoCooldownProximity = value
        if value then
            for i, v in pairs(Workspace:GetDescendants()) do
                if v.ClassName == "ProximityPrompt" then
                    v.HoldDuration = 0
                end
            end
            if CooldownProximity then
                CooldownProximity:Disconnect()
            end
            CooldownProximity = Workspace.DescendantAdded:Connect(function(Cooldown)
                if _G.NoCooldownProximity and Cooldown:IsA("ProximityPrompt") then
                    Cooldown.HoldDuration = 0
                end
            end)
        else
            if CooldownProximity then
                CooldownProximity:Disconnect()
                CooldownProximity = nil
            end
        end
    end
})

ATab:AddButton({
    Name = "无敌少侠脚本r15",
    Desc = "what",
    Callback = function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Invinicible-Flight-R15-45414"))()
    end
})

ATab:AddButton({
    Name = "电脑键盘",
    Desc = "what",
    Callback = function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/manimcool21/Keyboard-FE/main/Protected%20(3).lua'),true))()
    end
})