-- Baddies Delta GUI Script
-- Paste into your executor

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

-- Create ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "BaddiesDeltaGUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game:GetService("CoreGui")

-- Main Frame
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 320, 0, 380)
MainFrame.Position = UDim2.new(0.5, -160, 0.5, -190)
MainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 24)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 10)
MainCorner.Parent = MainFrame

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(138, 43, 226)
MainStroke.Thickness = 2
MainStroke.Parent = MainFrame

-- Title Bar
local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 40)
TitleBar.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
TitleBar.BorderSizePixel = 0
TitleBar.Parent = MainFrame

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 10)
TitleCorner.Parent = TitleBar

local TitleFix = Instance.new("Frame")
TitleFix.Size = UDim2.new(1, 0, 0, 10)
TitleFix.Position = UDim2.new(0, 0, 1, -10)
TitleFix.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
TitleFix.BorderSizePixel = 0
TitleFix.Parent = TitleBar

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, -40, 1, 0)
TitleLabel.Position = UDim2.new(0, 12, 0, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "⚡ Baddies Delta"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextSize = 18
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.Parent = TitleBar

-- Close Button
local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -35, 0, 5)
CloseBtn.BackgroundTransparency = 1
CloseBtn.Text = "✕"
CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.TextSize = 16
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.Parent = TitleBar
CloseBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

-- Content Area
local Content = Instance.new("ScrollingFrame")
Content.Size = UDim2.new(1, -20, 1, -55)
Content.Position = UDim2.new(0, 10, 0, 48)
Content.BackgroundTransparency = 1
Content.ScrollBarThickness = 3
Content.ScrollBarImageColor3 = Color3.fromRGB(138, 43, 226)
Content.CanvasSize = UDim2.new(0, 0, 0, 0)
Content.AutomaticCanvasSize = Enum.AutomaticSize.Y
Content.Parent = MainFrame

local ContentLayout = Instance.new("UIListLayout")
ContentLayout.Padding = UDim.new(0, 6)
ContentLayout.Parent = Content

-- Toggle Creator Function
local function CreateToggle(name, callback)
    local ToggleFrame = Instance.new("Frame")
    ToggleFrame.Size = UDim2.new(1, 0, 0, 36)
    ToggleFrame.BackgroundColor3 = Color3.fromRGB(28, 28, 38)
    ToggleFrame.BorderSizePixel = 0
    ToggleFrame.Parent = Content

    local TC = Instance.new("UICorner")
    TC.CornerRadius = UDim.new(0, 8)
    TC.Parent = ToggleFrame

    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(1, -60, 1, 0)
    Label.Position = UDim2.new(0, 12, 0, 0)
    Label.BackgroundTransparency = 1
    Label.Text = name
    Label.TextColor3 = Color3.fromRGB(220, 220, 230)
    Label.TextSize = 14
    Label.Font = Enum.Font.Gotham
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.Parent = ToggleFrame

    local ToggleBtn = Instance.new("TextButton")
    ToggleBtn.Size = UDim2.new(0, 40, 0, 22)
    ToggleBtn.Position = UDim2.new(1, -50, 0.5, -11)
    ToggleBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
    ToggleBtn.BorderSizePixel = 0
    ToggleBtn.Text = ""
    ToggleBtn.Parent = ToggleFrame

    local BtnCorner = Instance.new("UICorner")
    BtnCorner.CornerRadius = UDim.new(1, 0)
    BtnCorner.Parent = ToggleBtn

    local Circle = Instance.new("Frame")
    Circle.Size = UDim2.new(0, 16, 0, 16)
    Circle.Position = UDim2.new(0, 3, 0.5, -8)
    Circle.BackgroundColor3 = Color3.fromRGB(180, 180, 180)
    Circle.BorderSizePixel = 0
    Circle.Parent = ToggleBtn

    local CircleCorner = Instance.new("UICorner")
    CircleCorner.CornerRadius = UDim.new(1, 0)
    CircleCorner.Parent = Circle

    local enabled = false
    ToggleBtn.MouseButton1Click:Connect(function()
        enabled = not enabled
        if enabled then
            ToggleBtn.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
            Circle.Position = UDim2.new(1, -19, 0.5, -8)
            Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        else
            ToggleBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
            Circle.Position = UDim2.new(0, 3, 0.5, -8)
            Circle.BackgroundColor3 = Color3.fromRGB(180, 180, 180)
        end
        callback(enabled)
    end)

    return ToggleFrame
end

-- Section Header
local function CreateSection(text)
    local SectionLabel = Instance.new("TextLabel")
    SectionLabel.Size = UDim2.new(1, 0, 0, 24)
    SectionLabel.BackgroundTransparency = 1
    SectionLabel.Text = text
    SectionLabel.TextColor3 = Color3.fromRGB(138, 43, 226)
    SectionLabel.TextSize = 13
    SectionLabel.Font = Enum.Font.GothamBold
    SectionLabel.TextXAlignment = Enum.TextXAlignment.Left
    SectionLabel.Parent = Content
end

-- === FEATURES ===

-- State
local autoFarmEnabled = false
local espEnabled = false
local speedEnabled = false
local noClipEnabled = false
local infJumpEnabled = false

-- Combat
CreateSection("⚔️ COMBAT")

CreateToggle("Auto Farm", function(state)
    autoFarmEnabled = state
end)

CreateToggle("Kill Aura", function(state)
    -- placeholder for kill aura logic
end)

-- Visuals
CreateSection("👁️ VISUALS")

CreateToggle("ESP / Wallhack", function(state)
    espEnabled = state
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            if state then
                local highlight = Instance.new("Highlight")
                highlight.Name = "BDHighlight"
                highlight.FillColor = Color3.fromRGB(138, 43, 226)
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.FillTransparency = 0.7
                highlight.Parent = player.Character
            else
                local h = player.Character:FindFirstChild("BDHighlight")
                if h then h:Destroy() end
            end
        end
    end
end)

CreateToggle("Fullbright", function(state)
    local lighting = game:GetService("Lighting")
    if state then
        lighting.Brightness = 2
        lighting.GlobalShadows = false
    else
        lighting.Brightness = 1
        lighting.GlobalShadows = true
    end
end)

-- Movement
CreateSection("🏃 MOVEMENT")

CreateToggle("Speed Boost (2x)", function(state)
    speedEnabled = state
end)

CreateToggle("No Clip", function(state)
    noClipEnabled = state
end)

CreateToggle("Infinite Jump", function(state)
    infJumpEnabled = state
end)

-- Teleport
CreateSection("📍 TELEPORT")

CreateToggle("Teleport to Nearest", function(state)
    if state and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local myPos = LocalPlayer.Character.HumanoidRootPart.Position
        local closest, dist = nil, math.huge
        for _, p in pairs(Players:GetPlayers()) do
            if p ~= LocalPlayer and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                local d = (p.Character.HumanoidRootPart.Position - myPos).Magnitude
                if d < dist then closest = p; dist = d end
            end
        end
        if closest then
            LocalPlayer.Character.HumanoidRootPart.CFrame = closest.Character.HumanoidRootPart.CFrame
        end
    end
end)

-- Loops
RunService.Heartbeat:Connect(function()
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
        local hum = LocalPlayer.Character.Humanoid
        if speedEnabled then
            hum.WalkSpeed = 32
        end
        if noClipEnabled then
            for _, part in pairs(LocalPlayer.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end
    end
end)

UIS.JumpRequest:Connect(function()
    if infJumpEnabled and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
        LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)

-- Toggle GUI visibility with RightControl
UIS.InputBegan:Connect(function(input, processed)
    if not processed and input.KeyCode == Enum.KeyCode.RightControl then
        MainFrame.Visible = not MainFrame.Visible
    end
end)

print("[Baddies Delta] GUI Loaded! Press Right Ctrl to toggle.")
