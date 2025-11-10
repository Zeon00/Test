local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/BloodLetters/Ash-Libs/refs/heads/main/source.lua"))()
GUI:CreateMain({
    Name = "Ashlabs",
    title = "Arm Wrestle Simulator",
    ToggleUI = "K",
    WindowIcon = "home", -- you can use lucid icons
    -- WindowHeight = 600, -- default height
    -- WindowWidth = 800, -- default width
    Theme = {
        Background = Color3.fromRGB(25, 25, 35),
        Secondary = Color3.fromRGB(35, 35, 45),
        Accent = Color3.fromRGB(138, 43, 226),
        Text = Color3.fromRGB(255, 255, 255),
        TextSecondary = Color3.fromRGB(180, 180, 180),
        Border = Color3.fromRGB(50, 50, 60),
        NavBackground = Color3.fromRGB(20, 20, 30)
    },
    Blur = { -- Buggy
        Enable = false, -- transparent option
        value = 0.2
    },
    Config = { -- not implemented yet
        Enabled = false,
    }
})

local main = GUI:CreateTab("Main", "user-round") -- You can use IconID we didnt impleemnt lucid or any external icons
GUI:CreateSection({
    parent = main, 
    text = "Player"
})

GUI:CreateButton({
    parent = main, 
    text = "Anti AFK", 
    callback = function()
local VirtualUser = game:GetService('VirtualUser')
game:GetService('Players').LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Anti AFK loaded!",
    Text = "Made by Tuuguu936",
    Button1 = "Okay",
    Duration = 5
})
end})
GUI:CreateButton({
    parent = main, 
    text = "Fast Relog", 
    callback = function()
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local placeId = game.PlaceId

-- Ganti sesuai place id target kamu
local targetPlaceId = 126991914853936

if placeId == targetPlaceId then
    -- Tunggu beberapa detik biar game sempat load (opsional)
    task.wait(2)

    -- Auto relog (rejoin ke place yang sama)
    TeleportService:Teleport(targetPlaceId, player)
end
end})
GUI:CreateButton({
    parent = main, 
    text = "Auto Train Strenght", 
    callback = function()
local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Zeon00/Test/refs/heads/main/Auto%20Train"))()
end})
GUI:CreateButton({
    parent = main, 
    text = "Auto Select Attack", 
    callback = function()
local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Zeon00/Test/refs/heads/main/auto%20Attack"))()
end})
GUI:CreateButton({
    parent = main, 
    text = "Auto infinity Tower", 
    callback = function()
local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Zeon00/Test/refs/heads/main/auto%20Infinity%20Tower"))()
end})
GUI:CreateButton({
    parent = main, 
    text = "Auto Behind", 
    callback = function()
local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Zeon00/Test/refs/heads/main/Auto%20behind"))()
end})
