local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "GPT_Hub"
gui.ResetOnSpawn = false

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 200, 0, 120)
frame.Position = UDim2.new(0, 20, 0.5, -60)
frame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
frame.BorderSizePixel = 0

local uicorner = Instance.new("UICorner", frame)
uicorner.CornerRadius = UDim.new(0, 10)

local learnBtn = Instance.new("TextButton", frame)
learnBtn.Size = UDim2.new(1, -20, 0, 40)
learnBtn.Position = UDim2.new(0, 10, 0, 10)
learnBtn.Text = "📚 Learning"
learnBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
learnBtn.TextColor3 = Color3.new(1, 1, 1)

local botBtn = Instance.new("TextButton", frame)
botBtn.Size = UDim2.new(1, -20, 0, 40)
botBtn.Position = UDim2.new(0, 10, 0, 70)
botBtn.Text = "🤖 Bot"
botBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
botBtn.TextColor3 = Color3.new(1, 1, 1)

learnBtn.MouseButton1Click:Connect(function()
    _G.GPTLearning = true
    print("📚 GPT está observando cómo juegas...")
end)

botBtn.MouseButton1Click:Connect(function()
    _G.GPTControl = true
    print("🤖 GPT ahora controla al jugador...")
end)
