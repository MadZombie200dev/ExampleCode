
--Made by MadZombie_2005
--This Is a part of a roblox "club" jukebox system I made as a demo made this system in a day
--This Script Can not be used commercialy


--MOVE SEVER SIDE OR HACKERS WILL JUST LEVEL UP USING CHEATS
local player = game:GetService("Players").LocalPlayer
wait(1)
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local levelupevent = ReplicatedStorage:WaitForChild("levelupevent")
local acount_type = player.leaderstats.AccountType.Value
local acount_level = player.leaderstats.Level
local level_time = 60
local mult 
if acount_type == 0 then
	mult = 2
end
if acount_type == 1 then
	mult = 1.5
end
if acount_type == 2 then
	mult = 1
end
if acount_type == 3 then
	mult = .5
end

while true do
	wait(level_time * mult)
	levelupevent:FireServer()
	
end
