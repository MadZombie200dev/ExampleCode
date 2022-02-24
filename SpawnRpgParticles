--MadZombie_2005
--This Script Can not be used commercialy
game.Players.PlayerAdded:Connect(function(player)
	--print(player.Name.." joined")
	player.CharacterAdded:Connect(function(character)
		
		print(player.Name.." spawned")
		print(Vector3)
		local object = player
		

		
		local emitter3 = Instance.new("ParticleEmitter")
		-- Number of particles = Rate * Lifetime
		emitter3.Rate = 1 -- Particles per second
		emitter3.Lifetime = NumberRange.new(3,3) -- How long the particles should be alive (min, max)
		emitter3.Enabled = true 

		-- Visual properties
		emitter3.Texture = "rbxassetid://6149140114"
		-- For Color, build a ColorSequence using ColorSequenceKeypoint
		local colorKeypoints = {
			-- API: ColorSequenceKeypoint.new(time, color)
			ColorSequenceKeypoint.new( 0, Color3.new(1, 1, 1)),  -- At t=0, White
			ColorSequenceKeypoint.new(.5, Color3.new(1, 0, 0)), -- At t=.5, Orange
			ColorSequenceKeypoint.new( 1, Color3.new(1, 0, 0))   -- At t=1, Red
		}
		emitter3.Color = ColorSequence.new(colorKeypoints)
		local numberKeypoints = {
			-- API: NumberSequenceKeypoint.new(time, size, envelop)
			NumberSequenceKeypoint.new( 0, 1);    -- At t=0, fully transparent
			NumberSequenceKeypoint.new(.1, 0);    -- At t=.1, fully opaque
			NumberSequenceKeypoint.new(.5, .0);  -- At t=.5, mostly opaque
			NumberSequenceKeypoint.new(.7, .0);    -- At t=1, fully transparent
			NumberSequenceKeypoint.new( .8, .1);
			NumberSequenceKeypoint.new( 1, .0);

		}
		emitter3.Transparency = NumberSequence.new(numberKeypoints)
		emitter3.LightEmission = 1 -- When particles overlap, multiply their color to be brighter
		emitter3.LightInfluence = 4 -- Don't be affected by world lighting

		-- Speed properties
		emitter3.EmissionDirection = Enum.NormalId.Front -- Emit forwards
		emitter3.Speed = NumberRange.new(0, 0) -- Speed of zero
		emitter3.Drag = 0 -- Apply no drag to particle motion
		emitter3.VelocitySpread = NumberRange.new(0, 0)
		emitter3.VelocityInheritance = 0 -- Don't inherit parent velocity
		emitter3.Acceleration = Vector3.new(0, 0, 0)
		emitter3.LockedToPart = false -- Don't lock the particles to the parent 
		emitter3.SpreadAngle = Vector2.new(0,0) -- No spread angle on either axis

		-- Simulation properties
		local numberKeypoints2 = {
			NumberSequenceKeypoint.new(0, 0);  -- At t=0, size of 0
			NumberSequenceKeypoint.new(.5, 6); -- At t=1, size of 10
			NumberSequenceKeypoint.new(.7, 8); -- At t=1, size of 10
			NumberSequenceKeypoint.new(.9, 8); -- At t=1, size of 10
			NumberSequenceKeypoint.new(.93, 10); -- At t=1, size of 10
			NumberSequenceKeypoint.new(.96, 5); -- At t=1, size of 10
			NumberSequenceKeypoint.new(1, 0); -- At t=1, size of 10
		}
		emitter3.Size = NumberSequence.new(numberKeypoints2)
		emitter3.ZOffset = -1 -- Render slightly behind the actual position
		emitter3.Rotation = NumberRange.new(0, 360) -- Start at random rotation
		emitter3.RotSpeed = NumberRange.new(90) -- Do not rotate during simulation

		-- Create an attachment so particles emit from the exact same spot (concentric rings)
		local attachment = Instance.new("Attachment", script.Parent)
		attachment.Position = Vector3.new(0, 5, 0) -- Move the attachment upwards a little
		emitter3.Parent = attachment
		wait(3)
		emitter3.Rate = 0
		local emitter2 = Instance.new("ParticleEmitter")
		-- Number of particles = Rate * Lifetime
		emitter2.Rate = 40-- Particles per second
		emitter2.Lifetime = NumberRange.new(1,1.5) -- How long the particles should be alive (min, max)
		emitter2.Enabled = true 

		-- Visual properties
		emitter2.Texture = "rbxassetid://6149000064" -- A transparent image of a white ring
		-- For Color, build a ColorSequence using ColorSequenceKeypoint
		local colorKeypoints = {
			-- API: ColorSequenceKeypoint.new(time, color)
			ColorSequenceKeypoint.new( 0, Color3.new(1, 1, 1)),  -- At t=0, White
			ColorSequenceKeypoint.new(.5, Color3.new(1, .5, 0)), -- At t=.5, Orange
			ColorSequenceKeypoint.new( 1, Color3.new(1, 0, 0))   -- At t=1, Red
		}
		emitter2.Color = ColorSequence.new(colorKeypoints)
		local numberKeypoints = {
			-- API: NumberSequenceKeypoint.new(time, size, envelop)
			NumberSequenceKeypoint.new( 0, 1);    -- At t=0, fully transparent
			NumberSequenceKeypoint.new(.1, 1);    -- At t=.1, fully opaque
			NumberSequenceKeypoint.new(.5, .7);  -- At t=.5, mostly opaque
			NumberSequenceKeypoint.new(.7, .5);    -- At t=1, fully transparent
			NumberSequenceKeypoint.new( .8, .1);
			NumberSequenceKeypoint.new( 1, .0);

		}
		emitter2.Transparency = NumberSequence.new(numberKeypoints)
		emitter2.LightEmission = 1 -- When particles overlap, multiply their color to be brighter
		emitter2.LightInfluence = 0 -- Don't be affected by world lighting

		-- Speed properties
		emitter2.EmissionDirection = Enum.NormalId.Top -- Emit forwards
		emitter2.Speed = NumberRange.new(-5, 5) -- Speed of zero
		emitter2.Drag = 0 -- Apply no drag to particle motion
		emitter2.VelocitySpread = NumberRange.new(-2, 2)
		emitter2.VelocityInheritance = 0 -- Don't inherit parent velocity
		emitter2.Acceleration = Vector3.new(0, 0, 0)
		emitter2.LockedToPart = false -- Don't lock the particles to the parent 
		emitter2.SpreadAngle = Vector2.new(-180,180) -- No spread angle on either axis

		-- Simulation properties
		local numberKeypoints2 = {
			NumberSequenceKeypoint.new(0, 0);  -- At t=0, size of 0
			NumberSequenceKeypoint.new(.5, .7); -- At t=1, size of 10
			NumberSequenceKeypoint.new(.7, .8); -- At t=1, size of 10
			NumberSequenceKeypoint.new(.93, .81); -- At t=1, size of 10
			NumberSequenceKeypoint.new(1, 0); -- At t=1, size of 10
		}
		emitter2.Size = NumberSequence.new(numberKeypoints2)
		emitter2.ZOffset = -1 -- Render slightly behind the actual position
		emitter2.Rotation = NumberRange.new(0, 360) -- Start at random rotation
		emitter2.RotSpeed = NumberRange.new(1) -- Do not rotate during simulation

		-- Create an attachment so particles emit from the exact same spot (concentric rings)
		local attachment = Instance.new("Attachment", script.Parent)
		attachment.Position = Vector3.new(0, 5, 0) -- Move the attachment upwards a little
		emitter2.Parent = attachment

		local emitter = Instance.new("ParticleEmitter")
		-- Number of particles = Rate * Lifetime
		emitter.Rate = 1 -- Particles per second
		emitter.Lifetime = NumberRange.new(6,6) -- How long the particles should be alive (min, max)
		emitter.Enabled = true 

		-- Visual properties
		emitter.Texture = "rbxassetid://6148922104" -- A transparent image of a white ring
		-- For Color, build a ColorSequence using ColorSequenceKeypoint
		local colorKeypoints = {
			-- API: ColorSequenceKeypoint.new(time, color)
			ColorSequenceKeypoint.new( 0, Color3.new(1, 1, 1)),  -- At t=0, White
			ColorSequenceKeypoint.new(.5, Color3.new(1, 0, 0)), -- At t=.5, Orange
			ColorSequenceKeypoint.new( 1, Color3.new(1, 0, 0))   -- At t=1, Red
		}
		emitter.Color = ColorSequence.new(colorKeypoints)
		local numberKeypoints = {
			-- API: NumberSequenceKeypoint.new(time, size, envelop)
			NumberSequenceKeypoint.new( 0, 1);    -- At t=0, fully transparent
			NumberSequenceKeypoint.new(.1, 0);    -- At t=.1, fully opaque
			NumberSequenceKeypoint.new(.5, .0);  -- At t=.5, mostly opaque
			NumberSequenceKeypoint.new(.7, .0);    -- At t=1, fully transparent
			NumberSequenceKeypoint.new( .8, .1);
			NumberSequenceKeypoint.new( 1, .0);

		}
		emitter.Transparency = NumberSequence.new(numberKeypoints)
		emitter.LightEmission = 1 -- When particles overlap, multiply their color to be brighter
		emitter.LightInfluence = 0 -- Don't be affected by world lighting

		-- Speed properties
		emitter.EmissionDirection = Enum.NormalId.Front -- Emit forwards
		emitter.Speed = NumberRange.new(0, 0) -- Speed of zero
		emitter.Drag = 0 -- Apply no drag to particle motion
		emitter.VelocitySpread = NumberRange.new(0, 0)
		emitter.VelocityInheritance = 0 -- Don't inherit parent velocity
		emitter.Acceleration = Vector3.new(0, 0, 0)
		emitter.LockedToPart = false -- Don't lock the particles to the parent 
		emitter.SpreadAngle = Vector2.new(0,0) -- No spread angle on either axis

		-- Simulation properties
		local numberKeypoints2 = {
			NumberSequenceKeypoint.new(0, 0);  -- At t=0, size of 0
			NumberSequenceKeypoint.new(.1, 6); -- At t=1, size of 10
			NumberSequenceKeypoint.new(.15, 9); -- At t=1, size of 10
			NumberSequenceKeypoint.new(.2, 8); -- At t=1, size of 10
			NumberSequenceKeypoint.new(.93, 8.1); -- At t=1, size of 10
			NumberSequenceKeypoint.new(1, 0); -- At t=1, size of 10
		}
		emitter.Size = NumberSequence.new(numberKeypoints2)
		emitter.ZOffset = -1 -- Render slightly behind the actual position
		emitter.Rotation = NumberRange.new(0, 360) -- Start at random rotation
		emitter.RotSpeed = NumberRange.new(140) -- Do not rotate during simulation

		-- Create an attachment so particles emit from the exact same spot (concentric rings)
		local attachment = Instance.new("Attachment", script.Parent)
		attachment.Position = Vector3.new(0, 5, 0) -- Move the attachment upwards a little
		emitter.Parent = attachment
		wait(2)
		print("e")
		--player.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(0, 50, 0))
		
		
		
		emitter.Rate = 0
		wait(1)
		player.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-50, 5, -95))
		wait(2)
		emitter2.Rate = 0
		wait(2)
		emitter:Destroy()
		emitter2:Destroy()
		emitter3:Destroy()
		
		
		
		character.Humanoid.Died:Connect(function()
			--print(player.Name.." died")
		end)
	end)
end)
