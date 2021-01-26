local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
suricato = module(GetCurrentResourceName(),'config')

RegisterCommand(suricato['commands']['startscript'], function(a,b,c)
	if a ~= 0 then
		id = suricato['functions']['takeId'](a)
		if not suricato['functions']['checkPerm'](id,suricato['permission-check']) then
			TriggerClientEvent(suricato['notify-noperm']['eventname'],a,suricato['notify-noperm']['secondarg'],suricato['notify-noperm']['content'])
			return
		end
	end
	if #b > 0 then
		StartResource(b[1])
	elseif a ~= 0 then
		TriggerClientEvent(suricato['notify-noargs']['eventname'],a,suricato['notify-noargs']['secondarg'],suricato['notify-noargs']['content'])
	else
		print(suricato['print-console-cmd'])
	end
end)

RegisterCommand(suricato['commands']['stopscript'], function(a,b,c)
	if a ~= 0 then
		id = suricato['functions']['takeId'](a)
		if not suricato['functions']['checkPerm'](id,suricato['permission-check']) then
			TriggerClientEvent(suricato['notify-noperm']['eventname'],a,suricato['notify-noperm']['secondarg'],suricato['notify-noperm']['content'])
			return
		end
	end
	if #b > 0 then
		StopResource(b[1])
	elseif a ~= 0 then
		TriggerClientEvent(suricato['notify-noargs']['eventname'],a,suricato['notify-noargs']['secondarg'],suricato['notify-noargs']['content'])
	else
		print(suricato['print-console-cmd'])
	end
end)

RegisterCommand(suricato['commands']['restartscript'], function(a,b,c)
	if a ~= 0 then
		id = suricato['functions']['takeId'](a)
		if not suricato['functions']['checkPerm'](id,suricato['permission-check']) then
			TriggerClientEvent(suricato['notify-noperm']['eventname'],a,suricato['notify-noperm']['secondarg'],suricato['notify-noperm']['content'])
			return
		end
	end
	if #b > 0 then
		StopResource(b[1])
		StartResource(b[1])
	elseif a ~= 0 then
		TriggerClientEvent(suricato['notify-noargs']['eventname'],a,suricato['notify-noargs']['secondarg'],suricato['notify-noargs']['content'])
	else
		print(suricato['print-console-cmd'])
	end
end)