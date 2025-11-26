-- Fish It Lite Fast Fish (LZ Executor)
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

player.CharacterAdded:Wait()
wait(1)

local function FindRemote(part)
    for _, v in ipairs(ReplicatedStorage:GetDescendants()) do
        if v:IsA("RemoteEvent") and string.find(string.lower(v.Name), string.lower(part)) then
            return v
        end
    end
    return nil
end

local cast = FindRemote("Cast") or FindRemote("Fishing")
if not cast then return end

spawn(function()
    while wait(0.1) do
        if player.Character then
            pcall(function() cast:FireServer() end)
        end
    end
end)

print("✅ LZ Executor: Fish It Lite Fast Fish Active!")
