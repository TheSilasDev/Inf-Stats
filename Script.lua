settings().Network.IncomingReplicationLag = 0.15


task.delay(
    40,
    function()
        if not game:IsLoaded() then
            game:Shutdown()
        end
    end
)

if not game:IsLoaded() then
    game.Loaded:Wait()
end



task.delay(60, function()
    if Mode == "Autofarm" then
        game:Shutdown()
    end
end)

local Hits = 0
local DragonThrowBought = false
local M2Ready = false
local Boosted = false
local CellQuest = false
local DoneSomething = false
local TimeAt = 0
local Mode = "Autofarm"
local LastBoost = os.clock()
local TimeAbovePing = 0
local PS = false
local MaxPing = 240
--Variables

local Player = game:GetService('Players').LocalPlayer
local Char = Player.Character or Player.CharacterAdded:Wait()
--Player Variables

local VirtualUser=game:service'VirtualUser'
    Player.Idled:connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)
--Anti-AFK

task.delay(
    60,
    function()
        if not Player.Character then
            game:Shutdown()
        end
        if game.CoreGui.RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt") then
            game:Shutdown()
        end
    end
)

game.CoreGui.ChildAdded:Connect(
    function(v)
        if v.Name == "ErrorPrompt" then
            game:Shutdown()
        end
    end
)

if #game.Players:GetPlayers() == 1 then
    PS = true
end

--Functions


local function LevelSequence()
    DoneSomething = true
    if not PS and getgenv().StealthMode then
        game:Shutdown()
    end

    

    Player.PlayerGui:WaitForChild("HUD")

    Player.Backpack.ServerTraits.ChatStart:FireServer(game:GetService("Workspace").FriendlyNPCs["Korin"].Chat.Chat) --crazy stuff here
    --didn't see that one coming did you?
    task.wait(0.55)
local args = {
    [1] = {
        [1] = "k"
    }
}

    game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance:FireServer(unpack(args))
        task.wait(0.55)
        local args = {
        [1] = {
            [1] = "DRINK"
        }
    }
    
    game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance:FireServer(unpack(args))
    
    task.wait(0.55)

    local ChatStart = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
    ChatStart:FireServer(workspace.FriendlyNPCs["Bulma"])
    task.wait(0.55)
    local ChatAdvance = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
    ChatAdvance:FireServer(
        {
            [1] = "k"
        }
    )
    local ChatAdvance = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
    ChatAdvance:FireServer(
        {
            [1] = "k"
        }
    )
    task.wait(0.55)
    local ChatAdvance = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
    ChatAdvance:FireServer(
        {
            [1] = "Yes"
        }
    )
    task.wait(0.55)
    local ChatAdvance = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
    ChatAdvance:FireServer(
        {
            [1] = "k"
        }
    )
    task.wait(1.3)
    local ChatStart = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
    ChatStart:FireServer(workspace.FriendlyNPCs["Spaceship"])
    task.wait(0.55)

    local ChatAdvance = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
    ChatAdvance:FireServer(
        {
            [1] = "k"
        }
    )
    local ChatAdvance = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
    ChatAdvance:FireServer(
        {
            [1] = "k"
        }
    )
    task.wait(0.55)
    local ChatAdvance = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
    ChatAdvance:FireServer(
        {
            [1] = "No"
        }
    )
    local ChatAdvance = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
    ChatAdvance:FireServer(
        {
            [1] = "k"
        }
    )
    wait(0.7)
    local ChatStart = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
    ChatStart:FireServer(workspace.FriendlyNPCs["Trunks [Future]"])
    task.wait(0.55)
    local ChatAdvance = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
    ChatAdvance:FireServer(
        {
            [1] = "k"
        }
    )
    local ChatAdvance = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
    ChatAdvance:FireServer(
        {
            [1] = "k
