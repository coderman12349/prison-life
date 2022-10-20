
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("PL Hub (Prison Life)", "DarkTheme")

    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    MainSection:NewDropdown("Give Gun", "Gives the localplayer a gun", {"M9", "Remington 870", "AK-47"}, function(v)
        local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[v].ITEMPICKUP
        local Event = game:GetService("Workspace").Remote.ItemHandler
        Event:InvokeServer(A_1)
    end) 

    MainSection:NewButton("Chat Bypasser (13+)", "Bypasses chat", function()
        print("Clicked")
        getgenv().method = "fn" loadstring(game:HttpGet("https://raw.githubusercontent.com/daddysyn/synergy/additional/betterbypasser",true))()
    end)


MainSection:NewDropdown("Gun Mod", "Makes the gun op", {"M9", "Remington 870", "AK-47"}, function(v)
   local module = nil
   if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
       module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
   elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then 
        module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
   end
   if module ~= nil then 
       module["MaxAmmo"] = math.huge
       module["CurrentAmmo"] = math.huge
       module["StoredAmmo"] = math.huge
   end
end)

-- PLAYER
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")
PlayerSection:NewSlider("WalkSpeed", "Changes the walkspeed", 500, 0, function(v) 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)
PlayerSection:NewSlider("Jump Power", "Changes the jump power", 500, 0, function(v) 
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)

PlayerSection:NewSlider("FOV", "Changes Fov", 120, 0, function(v) -- 500 (MaxValue) | 0 (MinValue)
    game.Workspace.CurrentCamera.FieldOfView = v
end)

PlayerSection:NewButton("Reset WS/JP/FOV", "Resets your walkspeed and jumppower and FOV", function(v)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    game.Workspace.CurrentCamera.FieldOfView = 60
end)
-- EXTRA
local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("Credits")
CreditsSection:NewButton("Made by ! logan !#0294", "Person who made it", function()
    print("Clicked")
end)

-- Infinite Yield 
local InfiniteYield = Window:NewTab("InfiniteYield")
local InfiniteYieldSection = InfiniteYield:NewSection("InfiniteYield")
InfiniteYieldSection:NewButton("Infinite Yield", "Loads infinite yield", function(x)
    print("Clicked")
 loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)