util.AddNetworkString("ps2HUD_OpenMenu")

if SERVER then
	AddCSLuaFile()
	AddCSLuaFile('cl_ps2hud.lua')
	AddCSLuaFile('config.lua')
	
	print("|----------------------------|")
	print("|----==[Pointshop2 HUD]==----|")
	print("|----------------------------|")
	print("|Loading file 'config.lua'   |")
	print("|Loading file 'cl_ps2hud.lua'|")
	print("|----------------------------|")
	print("|  ADDON SUCCESSFULY LOADED  |")
	print("|----------------------------|")
end

if CLIENT then
	include('cl_ps2hud.lua')
	include('config.lua')
end