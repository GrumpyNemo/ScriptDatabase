--Created by Nemo / game: https://www.roblox.com/games/8892207911/Ragdoll-Engine
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Char = Player.Character
local PushTool = Player.Backpack:FindFirstChild("Push") or Char:FindFirstChild("Push")
local PushedScript = Char:FindFirstChild("Pushed")

local function GetClosest()
    local Character = Char
    local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
    if not (Character or HumanoidRootPart) then return end

    local TargetDistance = math.huge
    local Target

    for i,v in ipairs(Players:GetPlayers()) do
        if v ~= Player and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            local TargetHRP = v.Character.HumanoidRootPart
            local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
            if mag < TargetDistance then
                TargetDistance = mag
                Target = v
            end
        end
    end
    if TargetDistance > 4 then
        else
        return Target  
    end
end
Spawn(function()
    while wait() do
        if PushedScript then
            PushedScript:Destroy()
        end
    end
end)

Spawn(function()
    while wait() do
        if PushTool.Parent == Char then
            local ClosestPlayer = GetClosest()
            if ClosestPlayer then
                if ClosestPlayer.ClassName == "Player" then
                    print(ClosestPlayer.Name)
                    PushTool.PushTool:FireServer(game.Workspace[ClosestPlayer.Name])PushTool.PushTool:FireServer(game.Workspace[ClosestPlayer.Name])PushTool.PushTool:FireServer(game.Workspace[ClosestPlayer.Name])
                    PushTool.PushTool:FireServer(game.Workspace[ClosestPlayer.Name])PushTool.PushTool:FireServer(game.Workspace[ClosestPlayer.Name])PushTool.PushTool:FireServer(game.Workspace[ClosestPlayer.Name])
                    PushTool.PushTool:FireServer(game.Workspace[ClosestPlayer.Name])PushTool.PushTool:FireServer(game.Workspace[ClosestPlayer.Name])PushTool.PushTool:FireServer(game.Workspace[ClosestPlayer.Name])
                end
            end
        end
    end
end)
