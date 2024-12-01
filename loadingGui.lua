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

wait(1) -- Attendi 1 secondo per mostrare il messaggio finale

screenGui:Destroy() -- Rimuovi la GUI di caricamento

-- Crea la nuova GUI
local newScreenGui = Instance.new("ScreenGui")
newScreenGui.Parent = PlayerGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0.5, 0, 0.5, 0)
mainFrame.Position = UDim2.new(0.25, 0, 0.25, 0)
mainFrame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
mainFrame.Parent = newScreenGui

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0.1, 0)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.TextScaled = true
titleLabel.Text = "Speed Hub X | Version: 4.0.4"
titleLabel.Parent = mainFrame

local homeLabel = Instance.new("TextLabel")
homeLabel.Size = UDim2.new(1, 0, 0.1, 0)
homeLabel.Position = UDim2.new(0, 0, 0.1, 0)
homeLabel.BackgroundTransparency = 1
homeLabel.TextColor3 = Color3.new(1, 1, 1)
homeLabel.TextScaled = true
homeLabel.Text = "Home"
homeLabel.Parent = mainFrame

-- Aggiungi le altre sezioni come desiderato
local discordLabel = Instance.new("TextLabel")
discordLabel.Size = UDim2.new(1, 0, 0.1, 0)
discordLabel.Position = UDim2.new(0, 0, 0.2, 0)
discordLabel.BackgroundTransparency = 1
discordLabel.TextColor3 = Color3.new(1, 1, 1)
discordLabel.TextScaled = true
discordLabel.Text = "Discord"
discordLabel.Parent = mainFrame

local localPlayerLabel = Instance.new("TextLabel")
localPlayerLabel.Size = UDim2.new(1, 0, 0.1, 0)
localPlayerLabel.Position = UDim2.new(0, 0, 0.3, 0)
localPlayerLabel.BackgroundTransparency = 1
localPlayerLabel.TextColor3 = Color3.new(1, 1, 1)
localPlayerLabel.TextScaled = true
localPlayerLabel.Text = "LocalPlayer"
localPlayerLabel.Parent = mainFrame

-- Continua ad aggiungere le altre sezioni come nella schermata fornita
