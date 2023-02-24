AddCSLuaFile()

local KV_MW = KV_MW or {}

hook.Add("OnEntityCreated", "KV_MW_HeartbeatNPCs", function(ent)
	if !KV_MW.sensorNPCs then return end
    if !ent:IsValid() then return end

    if ent:IsNPC() or ent:IsNextBot() then
        KV_MW.sensorNPCs[#KV_MW.sensorNPCs + 1] = ent
	end
end)

hook.Add("EntityRemoved", "KV_MW_HeartbeatNPCs", function(ent)
	if !KV_MW.sensorNPCs then return end

    if ent:IsNPC() or ent:IsNextBot() then
        table.RemoveByValue(KV_MW.sensorNPCs, ent)
    end
end)

local sensorFade = 0

local function KVHBSAttachemntFunc()
	if (SERVER) then return end
	
	KV_MW.sensorNPCs = KV_MW.sensorNPCs or {}
	local mainScreen = Material("models/weapons/mw2/mw2_sensor_screen_2")
	local sensorScreen = Material("models/weapons/mw2/mw2_sensor_screen_1")
	local sensorDot = Material("models/weapons/mw2/sensordot.png", "ignorez")
	local RTTexture = GetRenderTarget("MWHeartSensor", 512, 512)
	local spotsound_kv = false
	local sx, sy = 250, 326
	local colorNPC = Color(255, 0, 50, 255)
			
	local function DrawSensor(v, plypos, updatepos)
		if (GetConVar("mw_hbs_sensor_dot_defcolor"):GetBool()) then
			FC = Color(50, 175, 50, 255)
			NC = Color(200, 175, 50, 255)
			HC = Color(200, 50, 50, 255)
		else
			Friendly_Color = string.ToColor(GetConVar("mw_hbs_sensorcolor_friendly"):GetString())
			FC = Color(Friendly_Color.r, Friendly_Color.g, Friendly_Color.b, 255)
			Neutral_Color = string.ToColor(GetConVar("mw_hbs_sensorcolor_neutral"):GetString())
			NC = Color(Neutral_Color.r, Neutral_Color.g, Neutral_Color.b, 255)
			Hostile_Color = string.ToColor(GetConVar("mw_hbs_sensorcolor_hostile"):GetString())
			HC = Color(Hostile_Color.r, Hostile_Color.g, Hostile_Color.b, 255)
		end

		if IsValid(v) then
			if !v.KV_MW_SensorPos or updatepos then
				local pos = v:GetPos()
				local dist = pos:DistToSqr(plypos)
				if dist < 320000 then
					v.KV_MW_SensorPos = pos
				else
					v.KV_MW_SensorPos = vector_origin
				end
			end
			local pos = v.KV_MW_SensorPos
			if pos != vector_origin then
				pos.z = plypos.z
						
				pos = ( pos - plypos )*0.33
				pos:Rotate( Angle( 0, -LocalPlayer():EyeAngles().y+90, 0 ) )
				pos.y = -pos.y * 2 + ( (sy+25) * 0.78 )
				pos.x = pos.x + ( sx * 0.5 )
						
				if pos.x > 5 and pos.x < sx+25 and pos.y < sy and pos.y > -100 then
					local class = v:GetClass()
					colorNPC = (IsFriendEntityName(class) and FC) or (IsEnemyEntityName(class) and HC) or NC
					colorNPC.a = sensorFade
					if (GetConVar("mw_hbs_sensordot"):GetBool()) then
						surface.SetDrawColor( colorNPC )
						surface.DrawTexturedRect( pos.x - 16, math.max(-32, pos.y - 16), 64, 128 )
					end
					if !spotsound_kv and updatepos and colorNPC != FC then
						if (GetConVar("mw_hbs_sensorsound"):GetBool()) then
							LocalPlayer():EmitSound("weapons/mw2/heartbeat_sensor/heartsensor_spot.wav", 40, 100 + math.random(-2, 2))
							spotsound_kv = true
						end
					end
				end
			end
		end
	end

	local function DrawFunc(wep, element, wm)
		if wm then return end
		local sframe = mainScreen:GetInt("$frame")
		sensorScreen:SetTexture("$basetexture", RTTexture)
		render.PushRenderTarget( RTTexture, 0, 0, RTTexture:Width(), RTTexture:Height() )
		cam.Start2D()
		local ply = LocalPlayer()
		local plypos = ply:GetPos()
		local updatepos = sframe < 12 and sframe > 4
				
		local sensorNPCs = KV_MW.sensorNPCs
		
		if updatepos then
			sensorFade = 255
		else
			sensorFade = sensorFade-(50*FrameTime())
			spotsound_kv = false
		end
				
		render.Clear(0,0,0,0)
		surface.SetMaterial(sensorDot)
				
		for k,v in ipairs(sensorNPCs) do
			DrawSensor(v, plypos, updatepos)
		end
				
		if !game.SinglePlayer() then
			surface.SetDrawColor( 200, 175, 50, sensorFade )
		end
				
		cam.End2D()
		render.PopRenderTarget()
	end
	
	hook.Add("Think", "KVHBSFuncStart", function() DrawFunc(wep, element, wm) end)
end

if (CLIENT) then
    KV_LangLib_Gadgets_Name = language.GetPhrase("#KV_LangLib_Gadgets.Name")
end

ATTACHMENT.Base = "att_gadget_kv"
ATTACHMENT.Name = KV_LangLib_Gadgets_Name
ATTACHMENT.Model = Model("models/weapons/mw2/atts/heartbeat_sensor/heartsensor.mdl")
ATTACHMENT.Icon = Material("entities/mw2_heartsensor.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:PostProcess(weapon)
	BaseClass.PostProcess(self, weapon)
	KVHBSAttachemntFunc()
end

function ATTACHMENT:OnRemove(weapon)
	BaseClass.OnRemove(self, weapon)
	hook.Remove("Think", "KVHBSFuncStart")
end