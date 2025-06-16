if not _G.GPTLearning then return end

local RunService = game:GetService("RunService")

RunService.RenderStepped:Connect(function()
    local char = game.Players.LocalPlayer.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        local pos = char.HumanoidRootPart.Position
        -- Aquí es donde se "aprende" lo que el jugador hace (simulado)
        print("📍 Posición observada: ", pos)
    end
end)

