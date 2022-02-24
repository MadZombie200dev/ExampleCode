

--Made by MadZombie_2005
--This is for a spawn menu and camera like what the game "the wild west" has
--This Script Can not be used commercialy


local RunService = game:GetService("RunService")
local screengui = script.Parent
local descendants = screengui:GetDescendants()
local SpawnButton = screengui.spawnbutton
local SpawnButtonVis = SpawnButton.Visible
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character
local selected
local spawned = false
local debounce = false
local locationbuttonaray = {}
local ts = game:GetService("TweenService")
local tweeninfo =  TweenInfo.new(1,Enum.EasingStyle.Circular)
local cf = Instance.new("CFrameValue")
local camera = workspace.CurrentCamera
local conn
local goal
local lastbutton = ""

local debounce2 = false
--local is_hiden  = false


script.Parent.Enabled = true




--fade
function fade(guiobj, inout )
	--fade out
	if inout == "out" then
		for i = 0,1,.2 do
			wait(0.01)

			guiobj.TextTransparency = i
			
		end
		guiobj.Visible = false
		
	end
	--fade in
	if inout == "in" then
		guiobj.Visible = true
		guiobj.TextTransparency = 1
		for i = 1,0,-.2 do
			wait(0.01)

			guiobj.TextTransparency = i

		end
	end
end


--on start of game
if not character or not character.Parent then
	character = player.CharacterAdded:wait()
end

repeat wait() until workspace.CurrentCamera


--start campos
camera.CameraType = Enum.CameraType.Scriptable
startcamcframe = workspace.camerapart.CFrame
camera.CFrame = startcamcframe
cf.Value = workspace.camerapart.CFrame

-- when pressed
function tweencam(tweengoal)
	
	--tween back to the start cam
	if startcamcframe ~= cf.Value then
		local startcamgoal = {
			Value = startcamcframe
		}
		
		
		tween = ts:Create(cf,tweeninfo, startcamgoal)
		tween:Play()


		--change cam poss
		local conn = RunService.RenderStepped:Connect(function(dt)
			camera.CFrame = cf.Value
		end)
		tween.Completed:Connect(function()
			if conn then
				conn:Disconnect()
			end
		end)
		tween.Completed:Wait()
	end
	--tween creat
	tween = ts:Create(cf,tweeninfo,tweengoal)
	tween:Play()
	
	--change cam poss
	local conn = RunService.RenderStepped:Connect(function(dt)
		camera.CFrame = cf.Value
	end)

	tween.Completed:Connect(function()
		if conn then
			conn:Disconnect()
		end
	end)


end




function onpress(name)
	selected = name.Name
	if debounce2 == false then
		if lastbutton ~= name.Name then 
			lastbutton = name.Name
			
			debounce2 = true
			print(name)
			local selectedCamPart = workspace:FindFirstChild("camerapart".. name.Name)
			
			
				--camera.CameraType = Enum.CameraType.Scriptable
				--camera.CFrame = camerapartval.CFrame
				--tween goal
			local goal = {
				Value = selectedCamPart.CFrame -- error line
			}
					
			tweencam(goal)
					
					
			if SpawnButton.Visible == false then
				fade(SpawnButton, "in")
			end
			wait(.5)
			debounce2 = false
		end
		
	end
end



function yeehaw()
	local randomItem = game.Workspace:WaitForChild("Spawns"):FindFirstChild(selected):GetChildren()[math.random(1, #game.Workspace:WaitForChild("Spawns"):FindFirstChild(selected):GetChildren())]
	game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,true) 
	if randomItem ~= nil then
		local HumanoidRootPart = character.HumanoidRootPart
		HumanoidRootPart.CFrame = randomItem.CFrame
		camera.CameraSubject = character.Humanoid
		camera.CameraType = "Custom"
		camera.CFrame = character.Head.CFrame
	else
		yeehaw()
	end
end

function spawnpressed(selected1)
	tween:Cancel()
	
	
	if not debounce then
		debounce = true
		
		if selected ~= nil then
			if game.Workspace:WaitForChild("Spawns") ~= nil then
				yeehaw()
			end
		end
	end
	
	SpawnButton.Visible = false
	player.PlayerGui.Inventory.Frame.Open.Visible = true
	
	for i,v in ipairs(locationbuttonaray) do
		fade(v,"out")
	end
end









--location buttons
for index, descendant in pairs(descendants) do
	--local isLocationButton = descendants:FindFirstChild("type")
	for i, v in pairs(descendant:GetChildren()) do
		if v.Name == 'type' and v:IsA("BoolValue") then
			locationbuttonaray[#locationbuttonaray+1] = descendant
			descendant.Activated:Connect(function()
				onpress(descendant)
				
			end)
		end
	end
	
end

function respawned(arry)
	for i,v in ipairs(locationbuttonaray) do
		fade(v,"in")
	end
end

--spawn button
SpawnButton.Activated:Connect(function() 
	spawnpressed(selected)
	end)
--player died
character:WaitForChild("Humanoid").Died:Connect(function()
	--spawned = false
	respawned(locationbuttonaray)
end)


while true do wait()
	debounce = false
	wait(1)
end
