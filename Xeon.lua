local allowedPlaceId = 621129760 -- Replace with the correct game ID

if game.PlaceId ~= allowedPlaceId then
    local starterGui = game:GetService("StarterGui")
wait(0)
starterGui:SetCore("SendNotification", {
Title    = "Xeon cannot Run",
Text     = "You are not in the correct game to run this script",
Duration = 15
})
    return
end

-- Your actual script goes below this line
print("Correct game detected. Running script...")


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Xeon 1.0 - Kat", "Midnight")

local starterGui = game:GetService("StarterGui")
wait(0)
starterGui:SetCore("SendNotification", {
Title    = "Script Loaded",
Text     = "Press INSERT to toggle the GUI",
Duration = 15
})

local Tab = Window:NewTab("Combat")
local Combat = Tab:NewSection("Combat")
Combat:NewLabel("Combat")

Combat:NewToggle("Aimbot", "Auto Aims for you", function(state)
    if state then

loadstring(game:HttpGet("https://pastebin.com/raw/CwQcEnEd"))()
local starterGui = game:GetService("StarterGui")
wait(0)
starterGui:SetCore("SendNotification", {
Title    = "Moduel Toggled",
Text     = "Aimbot has been enabled!",
Duration = 5
})  

else
        
local starterGui = game:GetService("StarterGui")
wait(0)
starterGui:SetCore("SendNotification", {
Title    = "Moduel Toggled",
Text     = "Aimbot has been disabled!",
Duration = 5
})
    end
end)

Combat:NewToggle("TriggerBot", "Auto Shoots when somebodys is in your crosshair", function(state)
    if state then

loadstring(game:HttpGet("https://raw.githubusercontent.com/SadMicha/roblox-triggerbot/refs/heads/main/triggerbot.lua"))()

local starterGui = game:GetService("StarterGui")
wait(0)
starterGui:SetCore("SendNotification", {
Title    = "Moduel Toggled",
Text     = "TriggerBot has been enabled!",
Duration = 5
})  

else
        
local starterGui = game:GetService("StarterGui")
wait(0)
starterGui:SetCore("SendNotification", {
Title    = "Moduel Toggled",
Text     = "TriggerBot has been disabled!",
Duration = 5
})
    end
end)

Combat:NewToggle("Kill Aura", "Automatically auto kills players around you Press K", function(state)
    if state then

        -- Create RemoteEvent if it doesn't exist (only for testing)
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local event = ReplicatedStorage:FindFirstChild("KillNearbyPlayers")

if not event then
    event = Instance.new("RemoteEvent")
    event.Name = "KillNearbyPlayers"
    event.Parent = ReplicatedStorage
end

-- Example keybind (press "K" to kill nearby players)
local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.K then
        event:FireServer()
    end
end)


local starterGui = game:GetService("StarterGui")
wait(0)
starterGui:SetCore("SendNotification", {
Title    = "Moduel Toggled",
Text     = "KillAura has been enabled!",
Duration = 5
})  

else
        
local starterGui = game:GetService("StarterGui")
wait(0)
starterGui:SetCore("SendNotification", {
Title    = "Moduel Toggled",
Text     = "KillAura has been disabled!",
Duration = 5
})
    end
end)


local Tab = Window:NewTab("Visual")
local Visual = Tab:NewSection("Visual")
Visual:NewLabel("Visual")

Visual:NewToggle("ESP", "Renders boxes around player", function(state)
    if state then

loadstring(game:HttpGet("https://raw.githubusercontent.com/2192nfianfc/boxesp/refs/heads/main/boxesp.lua"))()


local starterGui = game:GetService("StarterGui")
wait(0)
starterGui:SetCore("SendNotification", {
Title    = "Moduel Toggled",
Text     = "ESP has been enabled!",
Duration = 5
})  

else
        
local starterGui = game:GetService("StarterGui")
wait(0)
starterGui:SetCore("SendNotification", {
Title    = "Moduel Toggled",
Text     = "ESP has been disabled!",
Duration = 5
})
    end
end)

Visual:NewToggle("NameESP", "Like ESP but only Renders the names", function(state)
    if state then

local ESPLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Exunys-ESP/main/src/ESP.lua"))()


local starterGui = game:GetService("StarterGui")
wait(0)
starterGui:SetCore("SendNotification", {
Title    = "Moduel Toggled",
Text     = "NameESP has been enabled!",
Duration = 5
})  

else
        
local starterGui = game:GetService("StarterGui")
wait(0)
starterGui:SetCore("SendNotification", {
Title    = "Moduel Toggled",
Text     = "NameESP has been disabled!",
Duration = 5
})
    end
end)


Visual:NewToggle("HeadESP", "Renders where all players head are at", function(state)
    if state then

loadstring(game:HttpGet("https://pastebin.com/raw/BHECBJbR"))()

local starterGui = game:GetService("StarterGui")
wait(0)
starterGui:SetCore("SendNotification", {
Title    = "Moduel Toggled",
Text     = "HeadESP has been enabled!",
Duration = 5
})  

else
        
local starterGui = game:GetService("StarterGui")
wait(0)
starterGui:SetCore("SendNotification", {
Title    = "Moduel Toggled",
Text     = "HeadESP has been disabled!",
Duration = 5
})
    end
end)

Visual:NewToggle("Tracers", "Renders lines to where all players in the server are", function(state)
    if state then

loadstring(game:HttpGet("https://pastebin.com/raw/didXQtDc"))()

local starterGui = game:GetService("StarterGui")
wait(0)
starterGui:SetCore("SendNotification", {
Title    = "Moduel Toggled",
Text     = "Tracers has been enabled!",
Duration = 5
})  

else
        
local starterGui = game:GetService("StarterGui")
wait(0)
starterGui:SetCore("SendNotification", {
Title    = "Moduel Toggled",
Text     = "Tracers has been disabled!",
Duration = 5
})
    end
end)

local Tab = Window:NewTab("Local Player")
local LocalPlayer = Tab:NewSection("Local Player")

LocalPlayer:NewSlider("Speed", "Makes u flash", 24, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

local Tab = Window:NewTab("Credits")
local Credits = Tab:NewSection("Credits")
Credits:NewLabel("Script Creator: Vapor8x")

local Tab = Window:NewTab("Settings")
local Settings = Tab:NewSection("Settings")
Settings:NewLabel("Settings")

Settings:NewKeybind("UI KeyBind", "Press a key to interlock the ui with your keybind", Enum.KeyCode.Insert, function()
    Library:ToggleUI()
end)
