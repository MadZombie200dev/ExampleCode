
--Made by MadZombie_2005
--This is a script to change the setting of the atmosphere based of the players location made for a game in development 
--This Script Can not be used commercialy


local RunService = game:GetService("RunService")
local TweenService = game:GetService"TweenService"
local player = game.Players.LocalPlayer -- player object
local playerModel = player.Character or player.CharacterAdded:Wait()
local humanoid = playerModel:WaitForChild("Humanoid")
local localfog = playerModel:WaitForChild("PlayerFog")
local fog1 = localfog:WaitForChild("Fog 1")
local fog2 = localfog:WaitForChild("Fog 2")
local lighting = game:GetService("Lighting")

local Zone = require(game:GetService("ReplicatedStorage").Zone)
local container1 = workspace.Zones.SpikeAreaZoneContainer
local container2 = workspace.Zones.ForestAreaZoneContainer
local spikezone = Zone.new(container1)
local forestzone = Zone.new(container2)


local atmo = lighting.Atmosphere
local AreaNumInt = script.Parent["Player Area Number"]
local l_settings = require(script.Parent.AreaLightingSettings) --Settings for lighting
local clouds = workspace.Terrain.Clouds

-----------Defualt-----------
--areanum 0
function area_0()
	--CHANGE AREA VALUE:
	AreaNumInt.Value = 0

	fog1.Enabled = false
	--atmosphere
	local info = TweenInfo.new(5,Enum.EasingStyle.Linear)

	local goal = {}
	goal.Density = l_settings.Density_0
	goal.Glare = l_settings.Glare_0
	goal.Haze = l_settings.Haze_0
	goal.Decay = l_settings.Decay_0
	goal.Color = l_settings.Color_0

	local goal2 = {}
	goal2.Brightness = l_settings.Brightness_0
	goal2.EnvironmentDiffuseScale = l_settings.EnvironmentDiffuseScale_0

	local goal3 = {}
	goal3.Color = l_settings.CloudColor_0

	local tween = TweenService:Create(atmo, info, goal)

	local tween2 = TweenService:Create(lighting, info, goal2)

	local tween3 = TweenService:Create(clouds, info, goal3)

	--other


	tween:Play()
	tween2:Play()
	tween3:Play()

	lighting.SunRays1.Enabled = l_settings.SunRays1_0
	lighting.SunRays2.Enabled = l_settings.SunRays2_0	
	lighting.Bloom.Enabled = l_settings.Bloom_0

	wait(5)
	tween:Cancel()
	tween2:Cancel()
	tween3:Cancel()
end

-----------SPIKE ZONE-----------
--area num 1
spikezone.localPlayerEntered:Connect(function()
	--CHANGE AREA VALUE:
	AreaNumInt.Value = 0
	
	fog1.Enabled = false
	
	local info = TweenInfo.new(5,Enum.EasingStyle.Linear)

	local goal = {}
	goal.Density = l_settings.Density_1
	goal.Glare = l_settings.Glare_1
	goal.Haze = l_settings.Haze_1
	goal.Decay = l_settings.Decay_1
	goal.Color =l_settings.Color_1

	local goal2 = {}
	goal2.Brightness = l_settings.Brightness_1
	goal2.EnvironmentDiffuseScale = l_settings.EnvironmentDiffuseScale_1
	
	local goal3 = {}
	goal3.Color = l_settings.CloudColor_1
	
	local tween = TweenService:Create(atmo, info, goal)

	local tween2 = TweenService:Create(lighting, info, goal2)
	
	local tween3 = TweenService:Create(clouds, info, goal3)

	--other

	tween:Play()
	tween2:Play()
	tween3:Play()
	
	lighting.SunRays1.Enabled = l_settings.SunRays1_1
	lighting.SunRays2.Enabled = l_settings.SunRays2_1	
	lighting.Bloom.Enabled = l_settings.Bloom_1
	
	wait(5)
	tween:Cancel()
	tween2:Cancel()
end)
spikezone.localPlayerExited:Connect(function()
	area_0()
end)

-----------FOREST-----------
--area num 2
forestzone.localPlayerEntered:Connect(function()
	--CHANGE AREA VALUE:
	AreaNumInt.Value = 0

	fog1.Enabled = false

	local info = TweenInfo.new(5,Enum.EasingStyle.Linear)

	local goal = {}
	goal.Density = l_settings.Density_2
	goal.Glare = l_settings.Glare_2
	goal.Haze = l_settings.Haze_2
	goal.Decay = l_settings.Decay_2
	goal.Color =l_settings.Color_2

	local goal2 = {}
	goal2.Brightness = l_settings.Brightness_2
	goal2.EnvironmentDiffuseScale = l_settings.EnvironmentDiffuseScale_2

	local goal3 = {}
	goal3.Color = l_settings.CloudColor_2

	local tween = TweenService:Create(atmo, info, goal)

	local tween2 = TweenService:Create(lighting, info, goal2)

	local tween3 = TweenService:Create(clouds, info, goal3)

	--other

	tween:Play()
	tween2:Play()
	tween3:Play()

	lighting.SunRays1.Enabled = l_settings.SunRays1_2
	lighting.SunRays2.Enabled = l_settings.SunRays2_2	
	lighting.Bloom.Enabled = l_settings.Bloom_2

	wait(5)
	tween:Cancel()
	tween2:Cancel()
end)
forestzone.localPlayerExited:Connect(function()
	area_0()
end)

--MadZombie_2005
