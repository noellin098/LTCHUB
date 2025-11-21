-- test.lua - prueba visual de loadstring

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- borrar GUI viejo si existe
local old = playerGui:FindFirstChild("LTC_TEST_GUI")
if old then
    old:Destroy()
end

local gui = Instance.new("ScreenGui")
gui.Name = "LTC_TEST_GUI"
gui.ResetOnSpawn = false
gui.Parent = playerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 320, 0, 80)
frame.Position = UDim2.new(0.5, -160, 0, 40)
frame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
frame.BorderSizePixel = 0
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = frame

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(255, 40, 40)
stroke.Thickness = 2
stroke.Parent = frame

local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, -20, 1, -20)
label.Position = UDim2.new(0, 10, 0, 10)
label.BackgroundTransparency = 1
label.Font = Enum.Font.GothamBold
label.TextSize = 20
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.Text = "✅ Loadstring funciona, Noellin"
label.TextWrapped = true
label.Parent = frame
