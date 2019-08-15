surface.CreateFont( "PointshopFont", {
	font = "Verdana",
	extended = true,
	size = 25,
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )

surface.CreateFont( "PointsPS2", {
	font = "Verdana",
	extended = true,
	size = 20,
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )

function DrawHUD()
    draw.RoundedBox(cfgps.corner,cfgps.posX,cfgps.posY,450,50,Color(50,50,50))
    draw.SimpleText("Pointshop","PointshopFont",cfgps.posX+150,cfgps.posY+0,Color(255,255,255))
    draw.SimpleText("2","PointshopFont",cfgps.posX+250,cfgps.posY+0,Color(255,200,0))

    draw.SimpleText(cfgps.pointsName.." : "..LocalPlayer().PS2_Wallet.points,"PointsPS2",cfgps.posX+20,cfgps.posY+25,cfgps.pointsColor)
	draw.SimpleText(cfgps.premiumPointsName.." : "..LocalPlayer().PS2_Wallet.premiumPoints,"PointsPS2",cfgps.posX+200,cfgps.posY+25,cfgps.pointsPremiumColor)

	--Clock--
	if cfgps.timeAndDate == true then
	draw.RoundedBox(15,cfgps.posX+55,cfgps.posY+50,300,25,Color(45,45,45))
	draw.SimpleText(os.date("%H:%M:%S - %d/%m/%Y",os.time()),"PointsPS2",cfgps.posX+205,cfgps.posY+50,Color(255,255,255),TEXT_ALIGN_CENTER)
	end
end

hook.Add("HUDPaint", "DrawHUD", DrawHUD)

