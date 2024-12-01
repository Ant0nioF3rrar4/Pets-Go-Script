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

local function createSection(parent, position, text)
    local sectionLabel = Instance.new("TextLabel")
    sectionLabel.Size = UDim2.new(1, 0, 0.1, 0)
    sectionLabel.Position = position
    sectionLabel.BackgroundTransparency = 1
    sectionLabel.TextColor3 = Color3.new(1, 1, 1)
    sectionLabel.TextScaled = true
    sectionLabel.Text = text
    sectionLabel.Parent = parent
    return sectionLabel
end

createSection(mainFrame, UDim2.new(0, 0, 0.1, 0), "Home")
createSection(mainFrame, UDim2.new(0, 0, 0.2, 0), "Main")
createSection(mainFrame, UDim2.new(0, 0, 0.3, 0), "Item")
createSection(mainFrame, UDim2.new(0, 0, 0.4, 0), "Webhook")
createSection(mainFrame, UDim2.new(0, 0, 0.5, 0), "Miscellaneous")
createSection(mainFrame, UDim2.new(0, 0, 0.6, 0), "Settings")

-- Aggiungi altre sezioni e pulsanti come desiderato
local function createButton(parent, position, text)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.8, 0, 0.1, 0)
    button.Position = position
    button.BackgroundTransparency = 0.5
    button.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    button.TextColor3 = Color3.new(1, 1, 1)
    button.TextScaled = true
    button.Text = text
    button.Parent = parent
    return button
end

local discordButton = createButton(mainFrame, UDim2.new(0.1, 0, 0.7, 0), "Discord Invite")
discordButton.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/inviteLink") -- Sostituisci con il link reale
end)

local infiniteJumpToggle = createButton(mainFrame, UDim2.new(0.1, 0, 0.8, 0), "Toggle Infinite Jump")
infiniteJumpToggle.MouseButton1Click:Connect(function()
    -- Aggiungi qui il codice per abilitare/disabilitare il salto infinito
end)

local ctrlTeleportToggle = createButton(mainFrame, UDim2.new(0.1, 0, 0.9, 0), "CTRL + Click to Teleport")
ctrlTeleportToggle.MouseButton1Click:Connect(function()
    -- Aggiungi qui il codice per abilitare/disabilitare il teletrasporto
end)
