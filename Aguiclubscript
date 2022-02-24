
--Made by MadZombie_2005
--This Is a part of a roblox "club" jukebox system I made as a demo made this system in a day
--This Script Can not be used commercialy


local button = script.Parent

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local queuesongfire = ReplicatedStorage:WaitForChild("queuesongevent")
local robux = false
local warning = button.Parent.Parent.Warning




button.MouseButton1Click:Connect(function()
	local id = button.Parent.TextBox.Text
	local idlnk = "rbxassetid://" ..  id
	print(id)
	print(idlnk)
	local sound = Instance.new("Sound", game.Workspace)
	sound.SoundId = idlnk
	
	repeat
		wait()
	until sound.IsLoaded
	
	local len_song = sound.TimeLength
	
	print(len_song)
	
	if len_song < 240 then
		queuesongfire:FireServer(id, len_song, robux)
	else
		warning.Text = "TOO LONG MUST BE UNDER 4 MINUTES"
		wait(3)
		warning.Text = ""
	end
	
	
	
	
	
end)
