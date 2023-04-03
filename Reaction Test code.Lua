local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("By Varap228", "RJTheme3")
local Tab_ccred = Window:NewTab("Credits")
local Section_ccred = Tab_ccred:NewSection("Ctrl click tp")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main")
Section_ccred:NewButton("copy my github", "", function()
	setclipboard("https://github.com/Varap228/-Reaction-Test-script")
	game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Copy",
	Text = "My github copied to clipboard", 
	Icon = ""
})
end)
Section_ccred:NewButton("copy my pastebin", "", function()
	setclipboard("https://pastebin.com/ij04VicR")
	game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Copy",
	Text = "My pastebin copied to clipboard", 
	Icon = ""
})
end)
for i,n in pairs(workspace.Lobby.Glass:GetChildren()) do
	n.CanCollide = false
end
function noclipON()
	game:GetService("Workspace").Tutorial.CanCollide = false
	game:GetService("Workspace").Clicks.CanCollide = false
	for i,b in pairs(workspace.Lobby:GetChildren()) do
		print(b)
		b.CanCollide = false
	end
	game:GetService("Workspace").Lobby.Part.CanCollide = true
end
function noclipOFF()
	game:GetService("Workspace").Tutorial.CanCollide = true
	game:GetService("Workspace").Clicks.CanCollide = true
	for i,b in pairs(workspace.Lobby:GetChildren()) do
		b.CanCollide = true
	end
end
Section:NewButton("become mobile", "", function()
    game:GetService("Workspace").Camera.CameraType = "Custom"
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
end)
Section:NewToggle("Noclip", "", function(state)
    if state then
        noclipON()
    else
        noclipOFF()
    end
end)
Section:NewButton("remove light", "makes everything brighter", function()
    game:GetService("Lighting").Atmosphere:destroy()
end)
Section:NewKeybind("remove gui", "hides the script on the button", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()
Mouse.Button1Down:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
if not Mouse.Target then return end
Plr.Character:MoveTo(Mouse.Hit.p)
end)
local object = game.Workspace.Lobby.Button 
local newParent = game.Workspace
object.Parent = newParent
