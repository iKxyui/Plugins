--[[ Setup ]]--
local RemoteInvoke = {}

--[[ Modules ]]--
local PlSettings = require(script.Parent._Settings)

--[[ Methods ]]--
function RemoteInvoke:InvokeAllClients(RemoteInstance,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,Var10)
	coroutine.resume(coroutine.create(function()
		for _,GetPlayerObj in pairs(game:GetService("Players"):GetPlayers()) do
			task.spawn(function()
				pcall(function()
					return RemoteInstance:InvokeClient(GetPlayerObj,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,Var10)
				end)
			end)
		end
	end))
end

return RemoteInvoke