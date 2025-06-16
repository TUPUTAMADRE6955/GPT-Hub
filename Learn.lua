if not _G.GPTControl then return end

local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local hrp = char:WaitForChild("HumanoidRootPart")

-- Simulación básica de movimiento automatizado
while _G.GPTControl and task.wait(0.5) do
    if hrp then
        hrp.CFrame = hrp.CFrame * CFrame.new(1, 0, 0) -- se mueve a la derecha
        print("🤖 GPT movió al jugador...")
    end
end
