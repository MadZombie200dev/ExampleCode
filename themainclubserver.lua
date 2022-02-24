
--Made by MadZombie_2005
--This Is a part of a roblox "club" jukebox system I made as a demo made this system in a day
--This Script Can not be used commercialy


local ReplicatedStorage = game:GetService("ReplicatedStorage")
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")


local SongInfoEvent = Instance.new("RemoteEvent")
SongInfoEvent.Parent = game.ReplicatedStorage
SongInfoEvent.Name = "SongInfoEvent"

local queuesongevent = Instance.new("RemoteEvent", ReplicatedStorage)
local moneypurchaseevent = Instance.new("RemoteEvent", ReplicatedStorage)
local levelupevent = Instance.new("RemoteEvent", ReplicatedStorage)
local productId = 1198115137
local money_1_productId = 1198121688
local song_playing = false
local song1st  = false
local song_list = {}

queuesongevent.Name = "queuesongevent"
moneypurchaseevent.Name = "moneypurchaseevent"
levelupevent.Name = "levelupevent"
local song_list_len = 0
local function onaddsong(player, id, len_song, robux)
	
	
	
	if robux == true then
		game:GetService("MarketplaceService"):PromptProductPurchase(player, productId)
		
		MarketplaceService.ProcessReceipt = function(receiptInfo)
			if receiptInfo.ProductId == productId then
				local player = Players:GetPlayerByUserId(receiptInfo.PlayerId)
				if player then
					print(1)
					
					table.insert(song_list, {id,len_song,player.Name})
					

					song_list_len += 1
					print(player.Name, id)
					song1st = true
					print(song_list_len)
					print(song_list)
					return Enum.ProductPurchaseDecision.PurchaseGranted
				else
					print(player.Name, id)
					print(song_list_len)

					print(song_list)
					return Enum.ProductPurchaseDecision.NotProcessedYet
				end
			end
		end
	elseif robux == false then
		if player.leaderstats.Money.Value >= 100 then
			table.insert(song_list, {id,len_song,player.Name})
			song_list_len += 1
			print(player.Name, id)
			song1st = true
			print(song_list_len)
			print(song_list)
			player.leaderstats.Money.Value -= 100
		end
			
	end
		
	
	
	
end

queuesongevent.OnServerEvent:Connect(onaddsong)

local function moneypurchase(player, amount, product_id)
	
	game:GetService("MarketplaceService"):PromptProductPurchase(player, product_id)
	MarketplaceService.ProcessReceipt = function(receiptInfo)
		if receiptInfo.ProductId == product_id then
			local player = Players:GetPlayerByUserId(receiptInfo.PlayerId)
			if player then
				print(1)
				player.leaderstats.Money.Value += amount
				
				return Enum.ProductPurchaseDecision.PurchaseGranted
			else
					
				return Enum.ProductPurchaseDecision.NotProcessedYet
			end
		end
	end
	
end

moneypurchaseevent.OnServerEvent:Connect(moneypurchase)


local function levelup(player)

	player.leaderstats.Level.Value += 1
	player.leaderstats.Money.Value += 10
end

levelupevent.OnServerEvent:Connect(levelup)



local sound = Instance.new("Sound", game.Workspace)
sound.Name = "PlaYSong"
while true do
	wait(1)
	
	if song_playing == false then
		if song_list_len > 0 then
			
			local playing_song = song_list[1][1]
			local link = "rbxassetid://" .. playing_song
			print(link)
			sound.SoundId = link
			local songname = game:GetService("MarketplaceService"):GetProductInfo(playing_song).Name 
			local songinfo = songname .. " - " .. song_list[1][2] .. "| Requested by: " .. song_list[1][3]
			SongInfoEvent:FireAllClients(songinfo)
			
			
			sound.Looped = false
			sound:Play()	
			song_playing = true
			sound.Ended:Wait()
			print("sound ended")
			song_playing = false
			table.remove(song_list,1) 
			print(song_list)
			song_list_len -= 1
		--elseif song_list_len == 0: then
		end	
		
	end
	
end



