local TweenService = game:GetService("TweenService")
local PlayerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = PlayerGui

local loadingFrame = Instance.new("Frame")
loadingFrame.Size = UDim2.new(0, 300, 0, 50)
loadingFrame.Position = UDim2.new(0.5, -150, 0.5, -25)
loadingFrame.BackgroundColor3 = Color3.new(0, 0, 0)
loadingFrame.Parent = screenGui

local loadingLabel = Instance.new("TextLabel")
loadingLabel.Size = UDim2.new(1, 0, 1, 0)
loadingLabel.BackgroundTransparency = 1
loadingLabel.TextColor3 = Color3.new(1, 1, 1)
loadingLabel.TextScaled = true
loadingLabel.Parent = loadingFrame

local loadingBar = Instance.new("Frame")
loadingBar.Size = UDim2.new(0, 0, 1, 0)
loadingBar.BackgroundColor3 = Color3.new(0, 1, 0)
loadingBar.Parent = loadingFrame

local function updateLoading(percent)
    loadingLabel.Text = "Loading: " .. percent .. "%"
    local targetSize = UDim2.new(percent / 100, 0, 1, 0)
    TweenService:Create(loadingBar, TweenInfo.new(0.1), {Size = targetSize}):Play()
end

local duration = 13
for i = 0, 100 do
    updateLoading(i)
    wait(duration / 100)
end

loadingLabel.Text = "Loading Scripts!"
loadingBar.Size = UDim2.new(1, 0, 1, 0)
