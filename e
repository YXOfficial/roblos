
 repStorage = game:GetService("ReplicatedStorage")
 Player = game:GetService("Players").LocalPlayer
 lplr = game:GetService("Players").LocalPlayer
Mouse = lplr:GetMouse()
Character = Player.Character
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
if lplr == Player then
	Cam.CameraSubject = Character:FindFirstChildOfClass("Humanoid")
end
if lplr == Player then
	game:GetService("RunService").RenderStepped:Connect(function()
		Player.Character = Character
		Cam.CameraSubject = Character:FindFirstChildOfClass("Humanoid")
	end)
end
Character.PrimaryPart = Character.HumanoidRootPart
Character.Parent = workspace
Humanoid = Character.Humanoid
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local TIME = 0

local sick = Instance.new("Sound",Torso)
sick.Parent = Torso
sick.Volume = 10
sick.MaxDistance = 666666
sick.EmitterSize = 666666



IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

radian = RAD
random = math.random
Vec3 = Vector3.new
Inst = Instance.new
cFrame = CFrame.new
Euler = CFrame.fromEulerAnglesXYZ
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new
angles = CFrame.Angles
Cf = CFrame.new
Cos = math.cos
Sin = math.sin
Abs = math.abs
Rad = math.rad

--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

Animation_Speed = 1.5
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)
local Speed = 12
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local DoGlitch = false
local DAMAGEMULTIPLIER = 1
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local COMBO = 1
local HOLD = false
local stopeverything = false
local Rooted = false
local TOBANISH = {}
local LINES = {"dont be a fucking retard next time ok?...","Understand the power and bow to it...","Try not to be such a fucking idiot next time...","Your sins have been Rewritten...","I have set you free...","Be careful Next Time...","this is your last chance...","Use your Life better...","Your life has been Reseted...","Your life got Rewritten..."}
local SINE = 0
local sine = 0
local vissine = 0
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local VALUE1 = false
local VALUE2 = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
local Weapon = IT("Model")
local Effects = IT("Folder", Weapon)
Effects.Name = "Effects"
local UNANCHOR = true
local VSONGS = {322621962,569026863,502771070,408862087,1471935327,236336857,2280063143,334259331,344685843,1479420512,297754476,591661590,1571736139,2988953773,130768805,2516100492,580535766,213546066,555947343,394236634,195822354,224584376,1576288222,199265353}
local NK = {271068069,247967952,265024602,252591491,252591097,316039490,1222970152,1222970152}
local Hue = 0
AntiBullet = true
local PLAYANIMS = true
local HITFLOOR, HITPOS = nil
local WEAPONEQUIPPED = false
local INTRODONE = false
local EffectModel = Instance.new("Model",Effects) EffectModel.Name = "EffectModel" Character.Archivable=true
local MODE = "SPECTRUM"
local MODECOLOR = C3(1,0,0)
local MODESONG = 614032233
resume,create,wrap,status,running,yield,canyield=coroutine.resume,coroutine.create,coroutine.wrap,coroutine.status,coroutine.running,coroutine.yield,coroutine.isyieldable 
local spinc = 1
local WEAPONGUI = IT("ScreenGui")
local SKILLTEXTCOLOR = C3(0.5,0,0)
local SKILLFONT = Enum.Font.Antique
local SKILLTEXTSIZE = 7.5
local PlayerSize = 1
local FT,FRA,FLA,FRL,FLL = Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh")
FT.MeshId,FT.Scale = "rbxasset://fonts/torso.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FRA.MeshId,FRA.Scale = "rbxasset://fonts/rightarm.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FLA.MeshId,FLA.Scale = "rbxasset://fonts/leftarm.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FRL.MeshId,FRL.Scale = "rbxasset://fonts/rightleg.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FLL.MeshId,FLL.Scale = "rbxasset://fonts/leftleg.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
--//=================================\\
--\\=================================//

local FONTS = {
	Enum.Font.Antique,
	Enum.Font.Arcade,
	Enum.Font.Arial,
	Enum.Font.ArialBold,
	Enum.Font.Bodoni,
	Enum.Font.Cartoon,
	Enum.Font.Code,
	Enum.Font.Fantasy,
	Enum.Font.Garamond,
	Enum.Font.Highway,
	Enum.Font.Legacy,
	Enum.Font.SciFi,
	Enum.Font.SourceSans,
	Enum.Font.SourceSansBold,
	Enum.Font.SourceSansItalic,
	Enum.Font.SourceSansLight,
	Enum.Font.SourceSansSemibold
}

local MATERIALS = {
	Enum.Material.Brick,
	Enum.Material.Cobblestone,
	Enum.Material.Concrete,
	Enum.Material.CorrodedMetal,
	Enum.Material.DiamondPlate,
	Enum.Material.Fabric,
	Enum.Material.Foil,
	Enum.Material.ForceField,
	Enum.Material.Glass,
	Enum.Material.Granite,
	Enum.Material.Grass,
	Enum.Material.Ice,
	Enum.Material.Marble,
	Enum.Material.Metal,
	Enum.Material.Neon,
	Enum.Material.Pebble,
	Enum.Material.Plastic,
	Enum.Material.Sand,
	Enum.Material.Slate,
	Enum.Material.SmoothPlastic,
	Enum.Material.Wood,
	Enum.Material.WoodPlanks
}

--//=================================\\
--|| SAZERENOS' ARTIFICIAL HEARTBEAT
--\\=================================//

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")

frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.ArtificialHB:Fire()
			end
		lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

--//=================================\\
--\\=================================//
--//=================================\\
--||         RAINBOW FUNCTION
--\\=================================//
local cR=255
local cG=0
local cB=0
local flg5=1 local omgidk=1
local add=15
game:GetService("RunService").Stepped:connect(function()
	if omgidk>10000 then omgidk=0 end
	omgidk=omgidk+1
	if cR>=255 then flg5=1 end
	if cG>=255 then flg5=2 end
	if cB>=255 then flg5=3 end
	if flg5==1 then cR=cR-add cG=cG+add end
	if flg5==2 then cG=cG-add cB=cB+add end
	if flg5==3 then cB=cB-add cR=cR+add end
	rainbowcolor=Color3.fromRGB(cR,cG,cB)
end)

--//=================================\\
--|| 	      SOME FUNCTIONS
--\\=================================//

function warnedpeople2(whom)
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		coroutine.resume(coroutine.create(function()
			if v.PlayerGui:FindFirstChild("ARRIVAL")~= nil then
				v.PlayerGui:FindFirstChild("ARRIVAL"):destroy()
			end
			local droppingFrame = false
			local scrg = Instance.new("ScreenGui",v.PlayerGui)
			scrg.Name = "ARRIVAL"
			local mainFrame = Instance.new("Frame", scrg)
			mainFrame.Name = "MainFrame"
			mainFrame.BackgroundTransparency = 1
			mainFrame.BorderSizePixel = 0
			mainFrame.Size = UDim2.new(1, 0, -0.013, 100)
			mainFrame.Position = UDim2.new(0, 0, 0.365, 0)
			local TextFrame = Instance.new("TextLabel",mainFrame)
			TextFrame.Name = "TextFrame"
			TextFrame.Font = "Arcade"
			TextFrame.Text = ""
			TextFrame.TextScaled = true
			TextFrame.TextSize = 9
			TextFrame.TextStrokeTransparency = 1
			TextFrame.BackgroundTransparency = 1
			TextFrame.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextFrame.TextStrokeColor3 = BrickColor.Black().Color
			TextFrame.Size = UDim2.new(1, 0, 0, 92)
			TextFrame.Position = UDim2.new(0, 0, 0, 0)
			local fvalen = 0.55
			local fval = -0.49
			coroutine.resume(coroutine.create(function()
				while true do
					Swait()
					mainFrame.BackgroundColor3 = C3(0,0,0)
					mainFrame.BorderColor3 = C3(0, 0, 0)
					if(not droppingFrame)then
						mainFrame.Rotation = 0 - 2 * COS(SINE / 24)
					end
					TextFrame.TextStrokeTransparency = 0
				end
			end))
			for i = 1,string.len(whom),1 do
				TextFrame.Text = string.sub(whom,1,i)
				wait(0.2)
			end
			wait(2)
			droppingFrame = true
			mainFrame.Rotation = 0
			local vinc2 = 1
			for i = 0, 99 do
				Swait()
				vinc2 = vinc2 + 0.25
				mainFrame.Position = mainFrame.Position + UDim2.new(0,0,0.0005*vinc2,0)
			end
			scrg:Destroy()
		end))
	end
end

function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end
function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
	for _, c in pairs(workspace:children()) do
		local hum = c:findFirstChildOfClass("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("Head")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if magni >= mag and c.Name ~= Player.Name then
					Kill(c)
				end
			end
		end
	end
end
function sphere2(bonuspeed,type,pos,scale,value,value2,value3,color)
	local type = type
	local rng = Instance.new("Part", Effects)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = "Sphere"
	rngm.Scale = scale
	local scaler2 = 1
	local scaler2b = 1
	local scaler2c = 1
	if type == "Add" then
		scaler2 = 1*value
		scaler2b = 1*value2
		scaler2c = 1*value3
	elseif type == "Divide" then
		scaler2 = 1/value
		scaler2b = 1/value2
		scaler2c = 1/value3
	end
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed
				scaler2b = scaler2b - 0.01*value/bonuspeed
				scaler2c = scaler2c - 0.01*value/bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed
				scaler2b = scaler2b - 0.01/value*bonuspeed
				scaler2c = scaler2c - 0.01/value*bonuspeed
			end
			rng.Transparency = rng.Transparency + 0.01*bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2b*bonuspeed, scaler2c*bonuspeed)
		end
		rng:Destroy()
	end))
end
function slash(bonuspeed,rotspeed,rotatingop,typeofshape,type,typeoftrans,pos,scale,value,color)
	local type = type
	local rotenable = rotatingop
	local rng = Instance.new("Part", Effects)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	if typeoftrans == "In" then
		rng.Transparency = 1
	end
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = "FileMesh"
	if typeofshape == "Normal" then
		rngm.MeshId = "rbxassetid://662586858"
	elseif typeofshape == "Round" then
		rngm.MeshId = "rbxassetid://662585058"
	end
	rngm.Scale = scale
	local scaler2 = 1/10
	if type == "Add" then
		scaler2 = 1*value/10
	elseif type == "Divide" then
		scaler2 = 1/value/10
	end
	local randomrot = math.random(1,2)
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed/10
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed/10
			end
			if rotenable == true then
				if randomrot == 1 then
					rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(rotspeed*bonuspeed/2),0)
				elseif randomrot == 2 then
					rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(-rotspeed*bonuspeed/2),0)
				end
			end
			if typeoftrans == "Out" then
				rng.Transparency = rng.Transparency + 0.01*bonuspeed
			elseif typeoftrans == "In" then
				rng.Transparency = rng.Transparency - 0.01*bonuspeed
			end
			rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed/10, 0, scaler2*bonuspeed/10)
		end
		rng:Destroy()
	end))
end
function CastZapRay(StartPos, Vec, Length, Ignore, DelayIfHit)
	local Direction = CFrame.new(StartPos, Vec).lookVector
	local Ignore = ((type(Ignore) == "table" and Ignore) or {Ignore})
	local RayHit, RayPos, RayNormal = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(StartPos, Direction * Length), Ignore)
	if RayHit and CheckIntangible(RayHit) then
		if DelayIfHit then
			wait()
		end
		RayHit, RayPos, RayNormal = CastZapRay((RayPos + (Vec * 0.01)), Vec, (Length - ((StartPos - RayPos).magnitude)), Ignore, DelayIfHit)
	end
	return RayHit, RayPos, RayNormal
end
function MagicSphere2(size,waitt,cframe,color)
	local wave = CreatePart(3, Effects, "Neon", 0, 1, BRICKC(color), "Effect", VT(1,1,1))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "Sphere"
	mesh.Scale = VT(size,size,size)
	mesh.Offset = VT(0,0,0)
	wave.CFrame = cframe
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, waitt do
			Swait()
			mesh.Scale = mesh.Scale - VT(size/waitt,size/waitt,size/waitt)
			wave.Transparency = wave.Transparency - (1/waitt)
		end
		wave:remove()
	end))
end
function PixelBlock(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
	local type = type
	local rng = Instance.new("Part", Effects)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = "Brick"
	rngm.Scale = VT(x1,y1,z1)
	local scaler2 = 1
	local speeder = FastSpeed/10
	if type == "Add" then
		scaler2 = 1*value
	elseif type == "Divide" then
		scaler2 = 1/value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed
			end
			speeder = speeder - 0.01*FastSpeed*bonuspeed/10
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
			--rng.Transparency = rng.Transparency + 0.01*bonuspeed
			rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
		end
		rng:Destroy()
	end))
end
function CreateStar(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos,ori)
	local type = type
	local rng = Instance.new("Part")
	rng.Anchored = true
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0

	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
	local rngm = Instance.new("SpecialMesh")
	rngm.MeshType = "Sphere"
	--rngm.MeshId = "rbxassetid://3054497727"
	rngm.Scale = Vector3.new(x1*20,y1*20,z1*20)
	rngm.Parent = rng
	rng.Parent = Effects
	local scaler2 = 1
	local speeder = FastSpeed
	if type == "Add" then
		scaler2 = 1*value
	elseif type == "Divide" then
		scaler2 = 1/value
	end
	coroutine.resume(coroutine.create(function()
		if ori == true then
			rng.Orientation = Vector3.new(0,0,0)
		end
		for i = 0,10/bonuspeed,0.1 do
			Swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed
			end
			speeder = speeder - 0.01*FastSpeed*bonuspeed
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
			rng.Transparency = rng.Transparency + 0.01*bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
		end
		rng:Destroy()
	end))
end
function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function CreateRing(SIZE,DOESROT,ROT,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CFRAME
	wave.Color = C3(1,0,0)
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			if DOESROT == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0,ROT,0)
			end
			wave.Transparency = wave.Transparency + (0.5/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function SwitchModeEffectHSC()
	ATTACK = true
	local DaLoop = game:GetService("RunService").Heartbeat:Connect(function()
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.35 * COS(sine / 2), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.35 * COS(sine / 2), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.35 * COS(sine / 2)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end)
	CreateSound(363808674, Torso, 9e9, 1, false)
	for i=0, 0.1,.05 do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.35 * COS(sine / 2)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(25), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-50)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(70), RAD(0), RAD(60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.35 * COS(sine / 2), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.35 * COS(sine / 2), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	Swait(6)
	WAEFFX({Time = 60, EffectType = "Sphere", Size = VT(0.5,0.55,0.5), Size2 = VT(0.5,4,0.5), Transparency = 0, Transparency2 = 1, CFrame = Head.CFrame*CF(0.4, 0.2, -0.8), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1, 0, 0), SoundID = 743521450, SoundPitch = 1.15, SoundVolume = 6})
	WAEFFX({Time = 60, EffectType = "Sphere", Size = VT(0.55,0.5,0.5), Size2 = VT(4,0.5,0.5), Transparency = 0, Transparency2 = 1, CFrame = Head.CFrame*CF(0.4, 0.2, -0.8), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1, 0, 0), SoundID = 743521450, SoundPitch = 0.95, SoundVolume = 6})
	CreateSound(363808674, Torso, 9e9, 1, false)
	for i=0, 0.1,.05 do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.35 * COS(sine / 2)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(-25), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(70), RAD(0), RAD(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.35 * COS(sine / 2), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.35 * COS(sine / 2), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	task.wait(0.4)
	CreateSound(157878578, Torso,9e9,1,false)
	for i = 0,50 do
		sphereMK(2.5,-1,"Add",Torso.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2.5,2.5,25,-.025,BrickColor.new("Really black"),0)
		slash(math.random(10,20)/10,5,true,"Round","Add","Out",Torso.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-30,30)),math.rad(math.random(-30,30)),math.rad(math.random(-40,40))),Vector3.new(.05,.01,.05),math.random(50,60)/250,BrickColor.new("Really black"))
	end
	DaLoop:Disconnect()
	ATTACK = false
end
function CHANGEMODES(changeto)
	CreateSound(155202884, Torso, 2, 1.4, false)
	local POS = RootPart.Position
	for i = 1, 5 do
		WACKYEFFECT({
			Time = 25,
			EffectType = "Sphere",
			Size = VT(2, 2, 2),
			Size2 = VT(0, 0, 500),
			Transparency = 1,
			Transparency2 = 0,
			CFrame = CF(POS),
			MoveToPos = nil,
			RotationX = MRANDOM(-2, 2),
			RotationY = MRANDOM(-12, 12),
			RotationZ = MRANDOM(-2, 2),
			Material = "Neon",
			Color = Torso.Color,
			SoundID = nil,
			SoundPitch = nil,
			SoundVolume = nil
		})
	end
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(30,30,30), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
end

function AdvancedChatfunc(Text, Timer, Delay, ChatterSound)
	local chat = coroutine.wrap(function()
		if Character:FindFirstChild("SpeechBoard") ~= nil then
			Character:FindFirstChild("SpeechBoard"):destroy()
		end
		local naeeym2 = IT("BillboardGui", Character)
		naeeym2.Size = UD2(80, 35, 3, 15)
		naeeym2.StudsOffset = VT(0, 5, 0)
		naeeym2.Adornee = Head
		naeeym2.Name = "SpeechBoard"
		naeeym2.AlwaysOnTop = true
		local tecks2 = IT("TextLabel", naeeym2)
		tecks2.BackgroundTransparency = 1
		tecks2.BorderSizePixel = 0
		tecks2.Text = ""
		tecks2.Font = FONTS[MRANDOM(1,#FONTS)]
		tecks2.TextSize = 35
		tecks2.TextStrokeTransparency = 0.3
		tecks2.TextColor3 = MODECOLOR
		tecks2.TextStrokeColor3 = MODECOLOR
		tecks2.Size = UDim2.new(1, 0, 0.5, 0)
		local FINISHED = false
		local DONE = false
		coroutine.wrap(function()
			while wait() do
				tecks2.Font = FONTS[MRANDOM(1,#FONTS)]
				tecks2.TextColor3 = MODECOLOR
				tecks2.TextStrokeColor3 = MODECOLOR
				if DONE == true then
					break
				end
			end
		end)()
		coroutine.resume(coroutine.create(function()
			for i = 1, string.len(Text) do
				if naeeym2.Parent ~= Character then
					FINISHED = true
				end
				if ChatterSound ~= false and naeeym2.Parent == Character then
					CreateSound(265970978, Head, 7, MRANDOM(-6,12)/4, false)
				end
				tecks2.Text = string.sub(Text, 1, i)
				Swait(Timer)
			end
			FINISHED = true
		end))
		repeat
			wait()
		until FINISHED == true
		wait(Delay)
		naeeym2.Name = "FadingDialogue"
		if Character:FindFirstChild("SpeechBoard") == nil then
			coroutine.resume(coroutine.create(function()
				for i = 1, 35 do
					Swait()
				end
			end))
		end
		for i = 1, 45 do
			Swait()
			naeeym2.StudsOffset = naeeym2.StudsOffset + VT(0, (2 - 0.044444444444444446 * i) / 45, 0)
			tecks2.TextTransparency = tecks2.TextTransparency + 0.022222222222222223
			tecks2.TextStrokeTransparency = tecks2.TextTransparency
		end
		naeeym2:Destroy()
		DONE = true
	end)
	chat()
end

function warnedpeople(text)
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		coroutine.resume(coroutine.create(function()
			if v.PlayerGui:FindFirstChild("Spinny")~= nil then
				v.PlayerGui:FindFirstChild("Spinny"):destroy()
			end
			local scrg = Instance.new("ScreenGui",v.PlayerGui)
			scrg.Name = "Spinny"
			local wobble = Instance.new("Frame",scrg)
			wobble.Name = "Wobble"
			wobble.BackgroundTransparency = 0.5
			wobble.Size = UDim2.new(1.1,0,1.1,0)
			wobble.Position = UDim2.new(-0.08,0,0.943,0)
			local wobble2 = Instance.new("Frame",scrg)
			wobble2.Name = "wobble2"
			wobble2.BackgroundTransparency = 0.5
			wobble2.Size = UDim2.new(1.1,0,0.09,0)
			wobble2.Position = UDim2.new(-0.08,0,0.878,0)
			local Visuals = Instance.new("Frame",scrg)
			Visuals.Name = "Visuals"
			Visuals.BackgroundTransparency = 0.3
			Visuals.Size = UDim2.new(0,100,0,100)
			Visuals.Position = UDim2.new(0.462,0,0.826,0)
			local glow = Instance.new("ImageLabel",scrg)
			glow.Name = "glow"
			glow.BackgroundTransparency = 1
			glow.ImageTransparency = 0
			glow.Image = "rbxassetid://2344870656"
			glow.Size = UDim2.new(0,0,0,0)
			glow.Position = UDim2.new(0.026,0,-0.235,0)
			local Visuals2 = Instance.new("Frame",scrg)
			Visuals2.Name = "Visuals2"
			Visuals2.BackgroundTransparency = 0.3
			Visuals2.Size = UDim2.new(0,50,0,50)
			Visuals2.Position = UDim2.new(0.48,0,0.867,0)
			local TextFrame = Instance.new("TextLabel",scrg)
			TextFrame.Name = "Farmer"
			TextFrame.Font = "Arcade"
			TextFrame.Text = text
			TextFrame.TextScaled = true
			TextFrame.TextSize = 60
			TextFrame.BackgroundTransparency = 1
			TextFrame.Size = UDim2.new(0.8,0,0,42)
			TextFrame.Position = UDim2.new(0.11,0,0.867,0)
			local fvalen = 0.55
			local fval = -0.49
			coroutine.resume(coroutine.create(function()
				while true do
					Swait()
					TextFrame.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextFrame.TextStrokeColor3 = C3(0, 0, 0)
					TextFrame.TextStrokeTransparency = 0
					TextFrame.Rotation = 0 + MRANDOM(-3, 3)
					TextFrame.Position = UDim2.new(0.11, 0 + MRANDOM(-3, 3), 0.867, 0 + MRANDOM(-3, 3))
					TextFrame.Font = Enum.Font.Arcade
					glow.ImageColor3 = C3(0, 0, 0)
					wobble.Rotation = 0 - 2 * COS(SINE / 24)
					wobble2.Rotation = 0 - 2 * COS(SINE / 30)
					wobble2.BackgroundColor3 = C3(0.1,0.1,0.1)
					wobble2.BorderColor3 = C3(0.4,0,0)
					wobble2.BorderSizePixel = 2
					Visuals.Rotation = Visuals.Rotation + MRANDOM(-5, 5)
					Visuals2.Rotation = Visuals2.Rotation + MRANDOM(-10, 10)
					Visuals.BackgroundColor3 = C3(0.1,0.1,0.1)
					Visuals.BorderColor3 = C3(0.4,0,0)
					Visuals2.BackgroundColor3 = C3(0.1,0.1,0.1)
					Visuals2.BorderColor3 = C3(0.4,0,0)
					wobble.BackgroundColor3 = C3(0.1,0.1,0.1)
					wobble.BorderColor3 = C3(0.4,0,0)
					wobble.BorderSizePixel = 2
				end
			end))
			coroutine.resume(coroutine.create(function()
				for i = 0, 205 do
					Swait()
				end
				scrg:Destroy()
			end))
		end))
	end
end

function onChatted(text)
	warnedpeople(text)
end


function ShakeCam(Length,Intensity)
	coroutine.resume(coroutine.create(function()
		local intensity = 1 * Intensity
		local rotM = 0.01 * Intensity
		for i = 0, Length, 0.1 do
			Swait()
			intensity = intensity - 0.05 * Intensity / Length
			rotM = rotM - 5.0E-4 * Intensity / Length
			Humanoid.CameraOffset = Vector3.new(RAD(MRANDOM(-intensity, intensity)), RAD(MRANDOM(-intensity, intensity)), RAD(MRANDOM(-intensity, intensity)))
			Cam.CFrame = Cam.CFrame * CF(RAD(MRANDOM(-intensity, intensity)), RAD(MRANDOM(-intensity, intensity)), RAD(MRANDOM(-intensity, intensity))) * EULER(RAD(MRANDOM(-intensity, intensity)) * rotM, RAD(MRANDOM(-intensity, intensity)) * rotM, RAD(MRANDOM(-intensity, intensity)) * rotM)
		end
		Humanoid.CameraOffset = Vector3.new(0, 0, 0)
	end))
end

function MagicSphere(SIZE,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Effect", VT(1,1,1), true)
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "Sphere"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CFRAME
	wave.Color = C3(1,0,0)
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			wave.Transparency = wave.Transparency + (1/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function Slice(SIZE,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(1,1,1), true)
	local mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "448386996", "", VT(0,SIZE/10,SIZE/10), VT(0,0,0))
	wave.CFrame = CFRAME
	wave.Color = C3(1,0,0)
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale * GROW
			wave.Transparency = wave.Transparency + (0.5/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end


function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
 
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end

function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = TEXTCOLOR
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = false
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end

function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
end

function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end


local S = IT("Sound")
function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			repeat wait(1) until NEWSOUND.Playing == false or NEWSOUND.Parent ~= PARENT
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end

function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

function WACKYEFFECT2(Table)
	local TYPE = Table.EffectType or "Sphere"
	local SIZE = Table.Size or VT(1, 1, 1)
	local ENDSIZE = Table.Size2 or VT(0, 0, 0)
	local TRANSPARENCY = Table.Transparency or 0
	local ENDTRANSPARENCY = Table.Transparency2 or 1
	local CFRAME = Table.CFrame or Torso.CFrame
	local MOVEDIRECTION = Table.MoveToPos or nil
	local ROTATION1 = Table.RotationX or 0
	local ROTATION2 = Table.RotationY or 0
	local ROTATION3 = Table.RotationZ or 0
	local MATERIAL = Table.Material --or "Neon"
	local COLOR = Table.Color or C3(1, 1, 1)
	local TIME = Table.Time or 45
	local SOUNDID = Table.SoundID or nil
	local SOUNDPITCH = Table.SoundPitch or nil
	local SOUNDVOLUME = Table.SoundVolume or nil
	local USEBOOMERANGMATH = Table.UseBoomerangMath or false
	local BOOMERANG = Table.Boomerang or 0
	local SIZEBOOMERANG = Table.SizeBoomerang or 0
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND
		local EFFECT = CreatePart(3, Effects, "Neon", 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1, 1, 1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		local MSH
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh", EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0, 0, -SIZE.X / 8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X, SIZE.X, 0.1), VT(0, 0, 0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "168892432", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Star" then 
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "2760116123", "", SIZE, VT(0,0,0))   	
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "450656451", "", SIZE, VT(0, 0, 0))
		end
		coroutine.resume(coroutine.create(function()
			if MSH ~= nil then
				local BOOMR1 = 1 + BOOMERANG / 50
				local BOOMR2 = 1 + SIZEBOOMERANG / 50
				local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
				local GROWTH
				if USEBOOMERANGMATH == true then
					GROWTH = (SIZE - ENDSIZE) * (BOOMR2 + 1)
				else
					GROWTH = SIZE - ENDSIZE
				end
				local TRANS = TRANSPARENCY - ENDTRANSPARENCY
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				else
					EFFECT.CFrame = CFRAME
				end
				if USEBOOMERANGMATH == true then
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - VT(GROWTH.X * (1 - LOOP / TIME * BOOMR2), GROWTH.Y * (1 - LOOP / TIME * BOOMR2), GROWTH.Z * (1 - LOOP / TIME * BOOMR2)) * BOOMR2 / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
							local ORI = EFFECT.Orientation
							EFFECT.CFrame = CF(EFFECT.Position, MOVEDIRECTION) * CF(0, 0, -MOVESPEED * (1 - LOOP / TIME * BOOMR1))
							EFFECT.Orientation = ORI
						end
					end
				else
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - GROWTH / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
				end
				EFFECT.Transparency = 1
				if PLAYSSOUND == false then
					EFFECT:remove()
				else
					repeat
						Swait()
					until EFFECT:FindFirstChildOfClass("Sound") == nil
					EFFECT:remove()
				end
			elseif PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat
					Swait()
				until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		end))
		return EFFECT
	end))
end 
function sphereMK(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
	local type = type
	local rng = Instance.new("Part", Effects)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = "Sphere"
	rngm.Scale = VT(x1,y1,z1)
	local scaler2 = 1
	local speeder = FastSpeed
	if type == "Add" then
		scaler2 = 1*value
	elseif type == "Divide" then
		scaler2 = 1/value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed
			end
			speeder = speeder - 0.01*FastSpeed*bonuspeed
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
			rng.Transparency = rng.Transparency + 0.01*bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, 0)
		end
		rng:Destroy()
	end))
end
function Effect(tblee)
	coroutine.resume(coroutine.create(function()
		local origpos = (tblee.cf or nil)
		local moveto = (tblee.moveto or nil)
		local color = (tblee.clr or Color3.new(0,0,0))
		local color2 = (tblee.clr2 or nil)
		local defaultsize = (tblee.size or Vector3.new(2,2,2))
		local material = (tblee.mat or "Neon")
		local locker = (tblee.lock or false)
		local rotateX = (tblee.radX or 0)
		local rotateY = (tblee.radY or 0)
		local rotateZ = (tblee.radZ or 0)
		local secondsize = (tblee.size2 or Vector3.new(4,4,4))
		local acttime = (tblee.waits or 100)
		local transpar = (tblee.tran or 0)
		local transpar2 = (tblee.tran2 or 1)
		local typeofmesh = (tblee.mtype or "S")
		local boomerang = (tblee.bmr or false)
		local sizeboomerang = (tblee.sbm or 0)
		local moveboomerang = (tblee.mbm or 0)
		local sou = (tblee.pls or false)
		local vo = (tblee.vol or 1)
		local pitc = (tblee.pit or 1)
		local i = (tblee.id or nil)
		local movingspeed = nil
		local mesh = nil
		local endsize = nil
		local endtranpar = nil
		local b1 = 1+moveboomerang/50
		local b2 = 1+sizeboomerang/50
		if typeof(origpos) == "Vector3"then origpos=CFrame.new(origpos) end 
		if typeof(moveto) == "CFrame"then moveto=moveto.p end 
		if typeof(color) == "BrickColor"and color2 ~= "Random"then color=color.Color end 
		if typeof(color2) == "BrickColor"and color2 ~= "Random"then color2=color2.Color end
		if origpos then
			local p=Instance.new("Part",EffectModel)p.Anchored=true p.CanCollide=false p.CFrame=origpos p.Material=material p.Size=Vector3.new(1,1,1)p.CanCollide=false p.Transparency=transpar p.CastShadow=false p.Locked=true
			if color == "Random" then
				p.BrickColor=BrickColor.Random()
			else
				p.Color=color
			end
			if typeofmesh == "Box" or typeofmesh == "B" or typeofmesh == 1 then
				mesh=Instance.new("BlockMesh",p)mesh.Scale=defaultsize
			elseif typeofmesh == "Sphere" or typeofmesh == "S" or typeofmesh == 2 then
				mesh=Instance.new("SpecialMesh",p)mesh.MeshType="Sphere"mesh.Scale=defaultsize
			elseif typeofmesh == "Cylinder" or typeofmesh == "C" or typeofmesh == 3 then
				mesh=Instance.new("SpecialMesh",p)mesh.MeshType="Cylinder"mesh.Scale=defaultsize
			end
			if locker == true then
				p.Position = origpos.p
				if typeofmesh == "Cylinder" or typeofmesh == "C" or typeofmesh == "3" then 
					p.CFrame = CFrame.new(p.Position,moveto)*CFrame.new(0,0,-(p.Size.Z/1.5))*CFrame.Angles(0,math.rad(90),0)
				else
					p.CFrame = CFrame.new(p.Position,moveto)*CFrame.new(0,0,-(p.Size.Z/1.5))
				end
			else
				if typeofmesh == "Cylinder" or typeofmesh == "C" or typeofmesh == "3" then 
					p.CFrame = origpos*CFrame.Angles(0,math.rad(90),0)
				else
					p.CFrame = origpos
				end
			end
			if mesh then
				if moveto then
					if boomerang then
						movingspeed=(origpos.p - moveto).Magnitude/acttime*b1
					else
						movingspeed=(origpos.p - moveto).Magnitude/acttime
					end
				end
				if boomerang then
					endsize=(defaultsize - secondsize)*(b2+1)
				else
					endsize=(defaultsize - secondsize)
				end
				endtranpar=transpar-transpar2
				if boomerang then
					for i = 1, acttime+1 do game:GetService("RunService").Heartbeat:wait() if doquality == true then break end
						mesh.Scale=mesh.Scale-(Vector3.new((endsize.X)*((1 - (i/acttime)*b2)),(endsize.Y)*((1 - (i/acttime)*b2)),(endsize.Z)*((1 - (i/acttime)*b2)))*b2)/acttime
						p.Transparency = p.Transparency - endtranpar/acttime
						p.CFrame=p.CFrame*CFrame.Angles(math.rad(rotateX),math.rad(rotateY),math.rad(rotateZ))
						if color2=="Random" then
							p.BrickColor=BrickColor.Random()			
						elseif color2 and color2~="Random" then
							p.Color = color:Lerp(color2,i/acttime)
						end
						if moveto ~= nil then
							local a = p.Orientation
							if typeofmesh == "Cylinder" or typeofmesh == "C" or typeofmesh == "3" then 
								p.CFrame = CFrame.new(p.Position,moveto)*CFrame.new(0,0,-(movingspeed)*((1-(i/acttime)*b1)))*CFrame.Angles(0,math.rad(90),0)
							else
								p.CFrame = CFrame.new(p.Position,moveto)*CFrame.new(0,0,-(movingspeed)*((1-(i/acttime)*b1)))
							end
							p.Orientation = a
						end
					end
				else
					for i = 1, acttime+1 do game:GetService("RunService").Heartbeat:wait() if doquality == true then break end
						mesh.Scale=mesh.Scale-endsize/acttime
						p.Transparency = p.Transparency - endtranpar/acttime
						p.CFrame=p.CFrame*CFrame.Angles(math.rad(rotateX),math.rad(rotateY),math.rad(rotateZ))
						if color2=="Random" then
							p.BrickColor=BrickColor.Random()			
						elseif color2 and color2~="Random" then
							p.Color = color:Lerp(color2,i/acttime)
						end
						if moveto ~= nil then
							local a = p.Orientation
							if typeofmesh == "Cylinder" or typeofmesh == "C" or typeofmesh == "3" then 
								p.CFrame = CFrame.new(p.Position,moveto)*CFrame.new(0,0,-movingspeed)*CFrame.Angles(0,math.rad(90),0)
							else
								p.CFrame = CFrame.new(p.Position,moveto)*CFrame.new(0,0,-movingspeed)
							end
							p.Orientation = a
						end
					end
				end
				p:Destroy()
			end
		elseif origpos == nil then
			warn("Origpos is nil!")
		end
	end))
end
function WACKYEFFECThid(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or VT(1,1,1))
	local ENDSIZE = (Table.Size2 or VT(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or C3(1,1,1))
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1,1,1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0,0,0))
		elseif TYPE == "Block" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = VT(SIZE.X,SIZE.X,SIZE.X)
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
		elseif TYPE == "Lightning" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "5655974069", "", SIZE, VT(0,0,0))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "1236145839", "", VT(SIZE.X,1,SIZE.X), VT(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "1236145839", "", VT(0.1,0.1,0.1), VT(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		elseif TYPE == "Hat" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "173774068", "", SIZE, VT(0,0,0))
		elseif TYPE == "Arm" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "2828256740", "", SIZE, VT(0,0,0))
		elseif TYPE == "torso" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "48112070", "", SIZE, VT(0,0,0))
		elseif TYPE == "Head" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "539723444", "", SIZE, VT(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			for LOOP = 1, TIME+1 do
				Swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = VT(0,0,-MSH.Scale.X/8)
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
				else
					EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
				end
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				SOUND.Stopped:Connect(function()
					EFFECT:remove()
				end)
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end
function WAEFFX(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or Vector3.new(1,1,1))
	local ENDSIZE = (Table.Size2 or Vector3.new(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or shade)
	local hOK,sOK,vOK = Color3.toHSV(COLOR)
	local RAINBOWPART = false
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3,Effects,MATERIAL,0,TRANSPARENCY,shade,"Effect",Vector3.new(1,1,1),true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID,EFFECT,SOUNDVOLUME,SOUNDPITCH,false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"Sphere","","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Block" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = Vector3.new(SIZE.X,SIZE.Y,SIZE.Z)
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","20329976","",SIZE,Vector3.new(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","559831844","",Vector3.new(SIZE.X,SIZE.X,0.1),Vector3.new(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662586858","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662585058","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","1051557","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","4770583","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","9756362","",SIZE,Vector3.new(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			EFFECT.CFrame = CFRAME
			for LOOP = 1,TIME+1 do
				swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = Vector3.new(0,0,-MSH.Scale.X/8)
				end
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME*ANGLES(RAD(MATHR(0,360)),RAD(MATHR(0,360)),RAD(MATHR(0,360)))
				else
					EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
				EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat if stopeverything then task.wait(HUGE) end swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat if stopeverything then task.wait(HUGE) end swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end
function WACKYEFFECT(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or VT(1,1,1))
	local ENDSIZE = (Table.Size2 or VT(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or C3(1,1,1))
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1,1,1), true)
		EFFECT.Color = MODECOLOR
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0,0,0))
		elseif TYPE == "Block" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = VT(SIZE.X,SIZE.X,SIZE.X)
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X,SIZE.X,0.1), VT(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		elseif TYPE == "star" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "120647846", "", SIZE, VT(1,1,1))
		elseif TYPE == "Heart" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "105992239", "", SIZE, VT(1,1,1))
		elseif TYPE == "trollar" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","6748297565","",SIZE,Vector3.new())
		end
		
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			for LOOP = 1, TIME+1 do
				Swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = VT(0,0,-MSH.Scale.X/8)
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
				else
					EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
				end
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				SOUND.Stopped:Connect(function()
					EFFECT:remove()
				end)
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end

function MakeForm(PART,TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	end
end
function SpawnTrail4(FROM,TO,BIG)
	local TRAIL = CreatePart(3, Effects, "Neon", 0, 0, "Lime green", "Trail", VT(45,45,45))           
	MakeForm(TRAIL,"Cyl")
	local DIST = (FROM - TO).Magnitude
	if BIG == true then
		TRAIL.Size = VT(2,DIST,5)
	else
		TRAIL.Size = VT(2,DIST,5)
	end
	TRAIL.Color = MODECOLOR
	TRAIL.CFrame = CF(FROM, TO) * CF(0, 0, -DIST/2) * ANGLES(RAD(90),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 55 do
			Swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.03
		end
		TRAIL:remove()
	end))
end
function SpawnTrail(FROM,TO,BIG)
local TRAIL = CreatePart(3, Effects, "Neon", 0, 0, "Lime green", "Trail", VT(45,45,45))           
MakeForm(TRAIL,"Cyl")
	local DIST = (FROM - TO).Magnitude
	if BIG == true then
		TRAIL.Size = VT(2,DIST,5)
	else
		TRAIL.Size = VT(2,DIST,5)
	end
	TRAIL.Color = MODECOLOR
	TRAIL.CFrame = CF(FROM, TO) * CF(0, 0, -DIST/2) * ANGLES(RAD(90),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 55 do
			Swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.03
		end
		TRAIL:remove()
	end))
end

function SpawnTrail2(FROM2,TO2,BIG2)
	local TRAIL = CreatePart(3, Effects, "SmoothPlastic", 1, 0, BrickColor.Random(), "Trail", VT(0,0,0))
	MakeForm(TRAIL,"Cyl")
	local DIST = (FROM2 - TO2).Magnitude
	if BIG2 == true then
		TRAIL.Size = VT(10,DIST,10)
	else
		TRAIL.Size = VT(10,DIST,10)
	end
	TRAIL.CFrame = CF(FROM2, TO2) * CF(0, 0, -DIST/2) * ANGLES(RAD(90),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 5 do
			Swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.1
		end
		TRAIL:remove()
	end))
end


Debris = game:GetService("Debris")

function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos,EndPos).lookVector
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end

function turnto(position)
	RootPart.CFrame=CFrame.new(RootPart.CFrame.p,VT(position.X,RootPart.Position.Y,position.Z)) * CFrame.new(0, 0, 0)
end

local extrawingmod1 = Instance.new("Model",Character)
local extrawingmod2 = Instance.new("Model",Character)

function CreateParta(parent,transparency,reflectance,material,color)
local p = Instance.new("Part")
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = parent
p.Size = Vector3.new(0.1,0.1,0.1)
p.Transparency = transparency
p.Reflectance = reflectance
p.CanCollide = false
p.Locked = true
p.Material = material
return p
end

function createmesh(parent,meshtype,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = meshtype
mesh.Scale = Vector3.new(x1*10,y1*10,z1*10)
return mesh
end

function CreateWeld(parent,part0,part1,C1X,C1Y,C1Z,C1Xa,C1Ya,C1Za,C0X,C0Y,C0Z,C0Xa,C0Ya,C0Za)
local weld = Instance.new("Weld")
weld.Parent = parent
weld.Part0 = part0
weld.Part1 = part1
weld.C1 = CFrame.new(C1X,C1Y,C1Z)*CFrame.Angles(C1Xa,C1Ya,C1Za)
weld.C0 = CFrame.new(C0X,C0Y,C0Z)*CFrame.Angles(C0Xa,C0Ya,C0Za)
return weld
end
local script = game:GetObjects("rbxassetid://10742803927")[1]
local Cannonweld = script.immortalgun.RightArm:WaitForChild'REF'
for i,v in pairs(script.immortalgun.RightArm:GetChildren()) do
	v.Anchored = false
end
local SRightAWeld = IT("Weld")
SRightAWeld.Parent = RightArm
SRightAWeld.Part0 = RightArm
SRightAWeld.Part1 = Cannonweld
SRightAWeld.Name = "LIGHTINGCANNON"
SRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local immortalgun = script.immortalgun
local holsick = script.immortalgun.Weapon.Hole
immortalgun.Parent = nil

local Cannonweld = script.VODKA.RightArm:WaitForChild'REF'
for i,v in pairs(script.VODKA.RightArm:GetChildren()) do
	v.Anchored = false
end
local SRightAWeld = IT("Weld")
SRightAWeld.Parent = RightArm
SRightAWeld.Part0 = RightArm
SRightAWeld.Part1 = Cannonweld
SRightAWeld.Name = "VODKA"
SRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local VODKA = script.VODKA
VODKA.Parent = nil


local Cannonweld = script.LIGHTINGCANNON.RightArm:WaitForChild'REF'
for i,v in pairs(script.LIGHTINGCANNON.RightArm:GetChildren()) do
	v.Anchored = false
end
local SRightAWeld = IT("Weld")
SRightAWeld.Parent = RightArm
SRightAWeld.Part0 = RightArm
SRightAWeld.Part1 = Cannonweld
SRightAWeld.Name = "LIGHTINGCANNON"
SRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local LIGHTINGCANNON = script.LIGHTINGCANNON
local LIGHTINGCANNON1 = LIGHTINGCANNON.Weapon.Hole
local NEON = LIGHTINGCANNON.Weapon.NeonParts
local LIGHTINGCANNON2 = LIGHTINGCANNON.Weapon.Hole2

LIGHTINGCANNON.Parent = nil

local Cannonweld = script.GUN.RightArm:WaitForChild'REF'
for i,v in pairs(script.GUN.RightArm:GetChildren()) do
	v.Anchored = false
end
local SRightAWeld = IT("Weld")
SRightAWeld.Parent = RightArm
SRightAWeld.Part0 = RightArm
SRightAWeld.Part1 = Cannonweld
SRightAWeld.Name = "STUDIO DUMMY GUN"
SRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local SBGUN = script.GUN
local HOLE = script.GUN.Weapon.HOLE
SBGUN.Parent = nil

local Cannonweld = script.Truss.RightArm:WaitForChild'REF'
for i,v in pairs(script.Truss.RightArm:GetChildren()) do
	v.Anchored = false
end
local SRightAWeld = IT("Weld")
SRightAWeld.Parent = RightArm
SRightAWeld.Part0 = RightArm
SRightAWeld.Part1 = Cannonweld
SRightAWeld.Name = "Truss"
SRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local Truss = script.Truss
local HoleE = script.Truss.weapon.Hole
Truss.Parent = nil

local Cannonweld = script.antiv7.RightArm:WaitForChild'REF'
for i,v in pairs(script.antiv7.RightArm:GetChildren()) do
	v.Anchored = false
end
local SRightAWeld = IT("Weld")
SRightAWeld.Parent = RightArm
SRightAWeld.Part0 = RightArm
SRightAWeld.Part1 = Cannonweld
SRightAWeld.Name = "antiv7"
SRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local anti = script.antiv7
anti.Parent = nil
function anti_skid()
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Name == "olegopana" then
			v:Kick("fuck your stupid ass universal anti skid the normal one is way better lmfao")
		end
	end
end
--//=================================\\
--||	     WING CREATION
--\\=================================//root = RootPart
RightArm = RightArm
LeftArm = LeftArm
lleg = LeftLeg
rleg = RightLeg
tors = Torso
halocolor = BrickColor.new("Pastel light blue")
halocolor2 = BrickColor.new("Cool yellow")
starcolor = BrickColor.new("Bright yellow")
lunacolor = BrickColor.new("Navy blue")
lunacolor2 = BrickColor.new("Bright blue")
wepcolor = BrickColor.new("Really black")
maincolor = BrickColor.new("Really black")
local colorizermod = Instance.new("Model",Character)
local m = Instance.new("Model",nil)
local m2 = Instance.new("Model",nil)
local m3 = Instance.new("Model",nil)
local mw1 = Instance.new("Model",Character)
local mw2 = Instance.new("Model",Character)

local handle = CreateParta(m,1,1,"Neon",MODECOLOR)
createmesh(handle,"Brick",0.5,0.5,0.5)
local handleweld = CreateWeld(handle,Torso,handle,0,-1.5,-1.05,RAD(0),RAD(0),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))

local sorb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWeld(sorb,RightArm,sorb,0,1,0,RAD(0),RAD(0),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
local sorb2 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWeld(sorb2,LeftArm,sorb2,0,1,0,RAD(0),RAD(0),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))

local handlex = CreateParta(mw2,1,1,"Neon",MODECOLOR)
createmesh(handle,"Brick",0,0,0)
local handlexweld = CreateWeld(handlex,Torso,handlex,0,-1.5,-1.05,RAD(0),RAD(0),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
local valuaring = 10
for i = 0, 49 do
	valuaring = valuaring + 10
rn = CreateParta(mw2,0,0,"Neon",MODECOLOR)
createmesh(rn,"Brick",0.25,0.1,0.1)
CreateWeld(rn,handlex,rn,0,1,0,RAD(0),RAD(0),RAD(valuaring),0,0,0,RAD(0),RAD(0),RAD(0))
end

local refec = Instance.new("ParticleEmitter",handlex)
refec.Texture = "rbxassetid://249270319"
refec.LightEmission = 0.95
refec.Color = ColorSequence.new(MODECOLOR)
refec.Rate = 50
refec.Lifetime = NumberRange.new(0.5)
refec.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(0.5,0.75,0),NumberSequenceKeypoint.new(1,0.1,0)})
refec.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.5,0.25,0),NumberSequenceKeypoint.new(1,1,0)})
refec.Speed = NumberRange.new(0,2)
refec.Drag = 5
refec.LockedToPart = true
refec.Rotation = NumberRange.new(-500,500)
refec.VelocitySpread = 9000
refec.RotSpeed = NumberRange.new(-500,500)

--"rbxassetid://31727915"
--- Left wing.

local lwing1 = CreateParta(m,1,1,"Neon",MODECOLOR)
createmesh(handle,"Brick",0.5,0.5,0.5)
local lwing1weld = CreateWeld(lwing1,handle,lwing1,3,0,0,RAD(5),RAD(0),RAD(12.5),0,0,0,RAD(0),RAD(0),RAD(0))

wed = CreateParta(mw1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing1,wed,0,0,0.25,RAD(0),RAD(90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
wed = CreateParta(mw1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing1,wed,0,0,0.25,RAD(0),RAD(-90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,lwing1,wed,0,-0.25,1.75,RAD(0),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,-0.25,-2)
wed = CreateParta(mw1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,lwing1,wed,0,-1.75,0.25,RAD(90),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))

local tl1 = Instance.new('Trail',wed)
tl1.Attachment0 = A1
tl1.Attachment1 = A0
tl1.Texture = "rbxassetid://6091474396"
tl1.LightEmission = 1
tl1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl1.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tl1.Lifetime = 0.6

local lwing2 = CreateParta(m,1,1,"Neon",MODECOLOR)
createmesh(handle,"Brick",0.5,0.5,0.5)
local lwing2weld = CreateWeld(lwing2,handle,lwing2,4,1,0,RAD(10),RAD(0),RAD(25),0,0,0,RAD(0),RAD(0),RAD(0))

wed = CreateParta(mw1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing2,wed,0,0,0.25,RAD(0),RAD(90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
wed = CreateParta(mw1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing2,wed,0,0,0.25,RAD(0),RAD(-90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,lwing2,wed,0,-0.25,1.75,RAD(0),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,-0.25,-2)
wed = CreateParta(mw1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,lwing2,wed,0,-1.75,0.25,RAD(90),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))

local tl2 = Instance.new('Trail',wed)
tl2.Attachment0 = A1
tl2.Attachment1 = A0
tl2.Texture = "rbxassetid://6091474396"
tl2.LightEmission = 1
tl2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl2.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tl2.Lifetime = 0.6

local lwing3 = CreateParta(m,1,1,"Neon",MODECOLOR)
createmesh(handle,"Brick",0.5,0.5,0.5)
local lwing3weld = CreateWeld(lwing3,handle,lwing3,4.75,2,0,RAD(15),RAD(0),RAD(37.5),0,0,0,RAD(0),RAD(0),RAD(0))

wed = CreateParta(mw1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing3,wed,0,0,0.25,RAD(0),RAD(90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
wed = CreateParta(mw1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,lwing3,wed,0,0,0.25,RAD(0),RAD(-90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,lwing3,wed,0,-0.25,1.75,RAD(0),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,-0.25,-2)
wed = CreateParta(mw1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,lwing3,wed,0,-1.75,0.25,RAD(90),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))

local tl3 = Instance.new('Trail',wed)
tl3.Attachment0 = A1
tl3.Attachment1 = A0
tl3.Texture = "rbxassetid://6091474396"
tl3.LightEmission = 1
tl3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl3.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tl3.Lifetime = 0.6
local lwing4 = CreateParta(m,1,1,"Neon",MODECOLOR)
createmesh(handle,"Brick",0.5,0.5,0.5)
local lwing4weld = CreateWeld(lwing4,handle,lwing4,5.75,3,0,RAD(20),RAD(0),RAD(50),0,0,0,RAD(0),RAD(0),RAD(0))

wed = CreateParta(extrawingmod1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWeld(wed,lwing4,wed,0,0,0.25*2,RAD(0),RAD(90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWeld(wed,lwing4,wed,0,0,0.25*2,RAD(0),RAD(-90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25*2,0.25*2)
wed = CreateParta(extrawingmod1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05*2,0.5*2,3*2)
CreateWeld(wed,lwing4,wed,0,-0.25*2,1.75*2,RAD(0),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,-0.25*2,-2*2)
wed = CreateParta(extrawingmod1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.0*25,3*2,0.5*2)
CreateWeld(wed,lwing4,wed,0,-1.75*2,0.25*2,RAD(90),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))

local tl4 = Instance.new('Trail',wed)
tl4.Attachment0 = A1
tl4.Attachment1 = A0
tl4.Texture = "rbxassetid://6091474396"
tl4.LightEmission = 1
tl4.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl4.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tl4.Lifetime = 0.6
local lwing5 = CreateParta(m,1,1,"Neon",MODECOLOR)
createmesh(handle,"Brick",0.5,0.5,0.5)
local lwing5weld = CreateWeld(lwing5,handle,lwing5,6.75,4,0,RAD(25),RAD(0),RAD(62.5),0,0,0,RAD(0),RAD(0),RAD(0))

wed = CreateParta(extrawingmod1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWeld(wed,lwing5,wed,0,0,0.25*2,RAD(0),RAD(90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWeld(wed,lwing5,wed,0,0,0.25*2,RAD(0),RAD(-90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25*2,0.25*2)
wed = CreateParta(extrawingmod1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05*2,0.5*2,3*2)
CreateWeld(wed,lwing5,wed,0,-0.25*2,1.75*2,RAD(0),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,-0.25*2,-2*2)
wed = CreateParta(extrawingmod1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05*2,3*2,0.5*2)
CreateWeld(wed,lwing5,wed,0,-1.75*2,0.25*2,RAD(90),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))

local tl5 = Instance.new('Trail',wed)
tl5.Attachment0 = A1
tl5.Attachment1 = A0
tl5.Texture = "rbxassetid://6091474396"
tl5.LightEmission = 1
tl5.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl5.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tl5.Lifetime = 0.6
local lwing6 = CreateParta(m,1,1,"Neon",MODECOLOR)
createmesh(handle,"Brick",0.5,0.5,0.5)
local lwing6weld = CreateWeld(lwing6,handle,lwing6,7.75,5,0,RAD(30),RAD(0),RAD(75),0,0,0,RAD(0),RAD(0),RAD(0))

wed = CreateParta(extrawingmod1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWeld(wed,lwing6,wed,0,0,0.25*2,RAD(0),RAD(90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWeld(wed,lwing6,wed,0,0,0.25*2,RAD(0),RAD(-90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25*2,0.25*2)
wed = CreateParta(extrawingmod1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05*2,0.5*2,3*2)
CreateWeld(wed,lwing6,wed,0,-0.25*2,1.75*2,RAD(0),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,-0.25*2,-2*2)
wed = CreateParta(extrawingmod1,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05*2,3*2,0.5*2)
CreateWeld(wed,lwing6,wed,0,-1.75*2,0.25*2,RAD(90),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))
local tl6 = Instance.new('Trail',wed)
tl6.Attachment0 = A1
tl6.Attachment1 = A0
tl6.Texture = "rbxassetid://6091474396"
tl6.LightEmission = 1
tl6.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl6.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tl6.Lifetime = 0.6

tl1.Enabled = true
tl2.Enabled = true
tl3.Enabled = true
tl4.Enabled = true
tl5.Enabled = true
tl6.Enabled = true
-- Right wing.

local rwing1 = CreateParta(m,1,1,"Neon",MODECOLOR)
createmesh(handle,"Brick",0.5,0.5,0.5)
local rwing1weld = CreateWeld(rwing1,handle,rwing1,-3,0,0,RAD(5),RAD(0),RAD(-12.5),0,0,0,RAD(0),RAD(0),RAD(0))

wed = CreateParta(mw2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing1,wed,0,0,0.25,RAD(0),RAD(90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing1,wed,0,0,0.25,RAD(0),RAD(-90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
wed = CreateParta(mw2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,rwing1,wed,0,-0.25,1.75,RAD(0),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))
wed = CreateParta(mw2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,rwing1,wed,0,-1.75,0.25,RAD(90),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,2,0.25)

tr1 = Instance.new('Trail',wed)
tr1.Attachment0 = A1
tr1.Attachment1 = A0
tr1.Texture = "rbxassetid://6091474396"
tr1.LightEmission = 1
tr1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr1.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tr1.Lifetime = 0.6

local rwing2 = CreateParta(m,1,1,"Neon",MODECOLOR)
createmesh(handle,"Brick",0.5,0.5,0.5)
local rwing2weld = CreateWeld(rwing2,handle,rwing2,-4,1,0,RAD(10),RAD(0),RAD(-25),0,0,0,RAD(0),RAD(0),RAD(0))

wed = CreateParta(mw2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing2,wed,0,0,0.25,RAD(0),RAD(90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing2,wed,0,0,0.25,RAD(0),RAD(-90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
wed = CreateParta(mw2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,rwing2,wed,0,-0.25,1.75,RAD(0),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))
wed = CreateParta(mw2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,rwing2,wed,0,-1.75,0.25,RAD(90),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,2,0.25)

tr2 = Instance.new('Trail',wed)
tr2.Attachment0 = A1
tr2.Attachment1 = A0
tr2.Texture = "rbxassetid://6091474396"
tr2.LightEmission = 1
tr2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr2.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tr2.Lifetime = 0.6

local rwing3 = CreateParta(m,1,1,"Neon",MODECOLOR)
createmesh(handle,"Brick",0.5,0.5,0.5)
local rwing3weld = CreateWeld(rwing3,handle,rwing3,-4.75,2,0,RAD(15),RAD(0),RAD(-37.5),0,0,0,RAD(0),RAD(0),RAD(0))

wed = CreateParta(mw2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing3,wed,0,0,0.25,RAD(0),RAD(90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,0.5,0.5)
CreateWeld(wed,rwing3,wed,0,0,0.25,RAD(0),RAD(-90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
wed = CreateParta(mw2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,0.5,3)
CreateWeld(wed,rwing3,wed,0,-0.25,1.75,RAD(0),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))
wed = CreateParta(mw2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05,3,0.5)
CreateWeld(wed,rwing3,wed,0,-1.75,0.25,RAD(90),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,2,0.25)

tr3 = Instance.new('Trail',wed)
tr3.Attachment0 = A1
tr3.Attachment1 = A0
tr3.Texture = "rbxassetid://6091474396"
tr3.LightEmission = 1
tr3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr3.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tr3.Lifetime = 0.6


local rwing4 = CreateParta(m,1,1,"Neon",MODECOLOR)
createmesh(handle,"Brick",0.5,0.5,0.5)
local rwing4weld = CreateWeld(rwing4,handle,rwing4,-5.75,3,0,RAD(20),RAD(0),RAD(-50),0,0,0,RAD(0),RAD(0),RAD(0))

wed = CreateParta(extrawingmod2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWeld(wed,rwing4,wed,0,0,0.25*2,RAD(0),RAD(90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25*2,0.25*2)
wed = CreateParta(extrawingmod2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWeld(wed,rwing4,wed,0,0,0.25*2,RAD(0),RAD(-90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05*2,0.5*2,3*2)
CreateWeld(wed,rwing4,wed,0,-0.25*2,1.75*2,RAD(0),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05*2,3*2,0.5*2)
CreateWeld(wed,rwing4,wed,0,-1.75*2,0.25*2,RAD(90),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,2,0.25)

tr4 = Instance.new('Trail',wed)
tr4.Attachment0 = A1
tr4.Attachment1 = A0
tr4.Texture = "rbxassetid://6091474396"
tr4.LightEmission = 1
tr4.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr4.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tr4.Lifetime = 0.6

local rwing5 = CreateParta(m,1,1,"Neon",MODECOLOR)
createmesh(handle,"Brick",0.5,0.5,0.5)
local rwing5weld = CreateWeld(rwing5,handle,rwing5,-6.75,4,0,RAD(25),RAD(0),RAD(-62.5),0,0,0,RAD(0),RAD(0),RAD(0))

wed = CreateParta(extrawingmod2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWeld(wed,rwing5,wed,0,0,0.25*2,RAD(0),RAD(90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25*2,0.25*2)
wed = CreateParta(extrawingmod2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWeld(wed,rwing5,wed,0,0,0.25*2,RAD(0),RAD(-90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05*2,0.5*2,3*2)
CreateWeld(wed,rwing5,wed,0,-0.25*2,1.75*2,RAD(0),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05*2,3*2,0.5*2)
CreateWeld(wed,rwing5,wed,0,-1.75*2,0.25*2,RAD(90),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,2,0.25)

tr5 = Instance.new('Trail',wed)
tr5.Attachment0 = A1
tr5.Attachment1 = A0
tr5.Texture = "rbxassetid://6091474396"
tr5.LightEmission = 1
tr5.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr5.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tr5.Lifetime = 0.6

local rwing6 = CreateParta(m,1,1,"Neon",MODECOLOR)
createmesh(handle,"Brick",0.5,0.5,0.5)
local rwing6weld = CreateWeld(rwing6,handle,rwing6,-7.75,3,0,RAD(30),RAD(0),RAD(-75),0,0,0,RAD(0),RAD(0),RAD(0))

wed = CreateParta(extrawingmod2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWeld(wed,rwing6,wed,0,0,0.25*2,RAD(0),RAD(90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25*2,0.25*2)
wed = CreateParta(extrawingmod2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWeld(wed,rwing6,wed,0,0,0.25*2,RAD(0),RAD(-90),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05*2,0.5*2,3*2)
CreateWeld(wed,rwing6,wed,0,-0.25*2,1.75*2,RAD(0),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",MODECOLOR)
createmesh(wed,"Wedge",0.05*2,3*2,0.5*2)
CreateWeld(wed,rwing6,wed,0,-1.75*2,0.25*2,RAD(90),RAD(90),RAD(90),0,0,0,RAD(0),RAD(0),RAD(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,2,0.25)

tr6 = Instance.new('Trail',wed)
tr6.Attachment0 = A1
tr6.Attachment1 = A0
tr6.Texture = "rbxassetid://6091474396"
tr6.LightEmission = 1
tr6.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr6.Color = ColorSequence.new(BrickColor.new('Really red').Color)
tr6.Lifetime = 0.6

tr4.Enabled = true
tr5.Enabled = true
tr6.Enabled = true


function CreateWeldXX(parent,part0,part1,C1X,C1Y,C1Z,C1Xa,C1Ya,C1Za,C0X,C0Y,C0Z,C0Xa,C0Ya,C0Za) -- thanks legend cannon <3																																									just kidding fuck you LMAOOOOO
	local weld = Instance.new("Weld")
	weld.Parent = parent
	weld.Part0 = part0
	weld.Part1 = part1
	weld.C1 = CFrame.new(C1X,C1Y,C1Z)*CFrame.Angles(C1Xa,C1Ya,C1Za)
	weld.C0 = CFrame.new(C0X,C0Y,C0Z)*CFrame.Angles(C0Xa,C0Ya,C0Za)
	return weld
end
function CreateMeshXX(parent,meshtype,x1,y1,z1)
	local mesh = Instance.new("SpecialMesh",parent)
	mesh.MeshType = meshtype
	mesh.Scale = Vector3.new(x1*10,y1*10,z1*10)
	return mesh
end

function CreatePartXX(parent,transparency,reflectance,material,brickcolor)
	local p = Instance.new("Part")
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = parent
	p.Size = Vector3.new(0.1,0.1,0.1)
	p.Transparency = transparency
	p.Reflectance = reflectance
	p.CanCollide = false
	p.Locked = true
	p.BrickColor = brickcolor
	p.Material = material
	return p
end
function CreateWeldOrSnapOrMotorXX(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = Instance.new(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end
function ShacklusterPartXX(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = Instance.new("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = false
	NEWPART.BrickColor = BrickColor.new(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = tors.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end
sorb = CreatePartXX(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWeldXX(sorb,RightArm,sorb,0,1,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
sorb2 = CreatePartXX(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWeldXX(sorb2,LeftArm,sorb2,0,1,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
handlex = CreatePartXX(m,1,1,"Neon",maincolor)
CreateMeshXX(handlex,"Brick",0,0,0)
handlexweld = CreateWeldXX(handlex,tors,handlex,0,-2,-2.05,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
rotzo = CreatePartXX(m,1,1,"Neon",maincolor)
CreateMeshXX(rotzo,"Brick",0,0,0)
rotingweld = CreateWeldXX(rotzo,handlex,rotzo,0,0,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
rotzo2 = CreatePartXX(m,1,1,"Neon",maincolor)
CreateMeshXX(rotzo2,"Brick",0,0,0)
rotingweld2 = CreateWeldXX(rotzo2,handlex,rotzo2,0,0,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
roterval = 0
for i = 0, 7 do
	rn = CreatePartXX(colorizermod,0,0,"Neon",BrickColor.new(Torso.Color))
	CreateMeshXX(rn,"Wedge",0.15,1,0.15)
	CreateWeldXX(rn,rotzo,rn,0,-4.25,0.1,math.rad(0),math.rad(90),math.rad(roterval),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	rn = CreatePartXX(colorizermod,0,0,"Neon",BrickColor.new(Torso.Color))
	CreateMeshXX(rn,"Wedge",0.15,1,0.15)
	CreateWeldXX(rn,rotzo,rn,0,-4.25,0.1,math.rad(0),math.rad(-90),math.rad(roterval),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	rn = CreatePartXX(colorizermod,0,0,"Neon",BrickColor.new(Torso.Color))
	CreateMeshXX(rn,"Wedge",0.15,1,0.15)
	CreateWeldXX(rn,rotzo,rn,0,3.25,0.1,math.rad(0),math.rad(90),math.rad(roterval),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	rn = CreatePartXX(colorizermod,0,0,"Neon",BrickColor.new(Torso.Color))
	CreateMeshXX(rn,"Wedge",0.15,1,0.15)
	CreateWeldXX(rn,rotzo,rn,0,3.25,0.1,math.rad(0),math.rad(-90),math.rad(roterval),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	rn = CreatePartXX(colorizermod,0,0,"Neon",BrickColor.new(Torso.Color))
	CreateMeshXX(rn,"Wedge",0.15,1,0.25)
	CreateWeldXX(rn,rotzo2,rn,0,1.5,0.2,math.rad(0),math.rad(90),math.rad(roterval + 22.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	rn = CreatePartXX(colorizermod,0,0,"Neon",BrickColor.new(Torso.Color))
	CreateMeshXX(rn,"Wedge",0.15,1,0.25)
	CreateWeldXX(rn,rotzo2,rn,0,1.5,0.2,math.rad(0),math.rad(-90),math.rad(roterval + 22.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	roterval = roterval + 45
end
local valuaring = 10
for i = 0, 35 do
	valuaring = valuaring + 10
	rt = CreatePartXX(colorizermod,0,0,"Neon",BrickColor.new(Torso.Color))
	CreateMeshXX(rt,"Brick",0.25,0.1,0.1)
	CreateWeldXX(rt,handlex,rt,0,2,0,math.rad(0),math.rad(0),math.rad(valuaring),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	rt = CreatePartXX(colorizermod,0,0,"Neon",BrickColor.new(Torso.Color))
	CreateMeshXX(rt,"Brick",0.725,0.045,0.045)
	CreateWeldXX(rt,handlex,rt,0,3.8,0,math.rad(0),math.rad(0),math.rad(valuaring),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	rt = CreatePartXX(m,0,0,"Granite",maincolor)
	CreateMeshXX(rt,"Brick",0.35,0.05,0.2)
	CreateWeldXX(rt,handlex,rt,0,1.975,0,math.rad(0),math.rad(0),math.rad(valuaring + 5),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	rt = CreatePartXX(m,0,0,"Granite",maincolor)
	CreateMeshXX(rt,"Torso",0.385,0.15,0.2)
	CreateWeldXX(rt,handlex,rt,0,2.1,0,math.rad(0),math.rad(0),math.rad(valuaring),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	rt = CreateParta(colorizermod,0,0,"Neon",BrickColor.new(Torso.Color))
	CreateMeshXX(rt,"Wedge",0.5,0.5,0.15)
	CreateWeldXX(rt,handlex,rt,0,-2.25,0,math.rad(0),math.rad(0),math.rad(valuaring + 5),0,0,0,math.rad(0),math.rad(0),math.rad(0))
end
HolderCore = ShacklusterPartXX(3, Character, "SmoothPlastic", 0, 0, "Alder", "Metal", Vector3.new(0.32,0.32,1.006),false)
CreateWeldOrSnapOrMotorXX("Weld", Torso, Torso, HolderCore, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(45)), CFrame.new(0, 0, 0))
Core = ShacklusterPartXX(3, Character, "Neon", 0, 0, Torso.Color, "Core", Vector3.new(0.26,0.26,1.01),false)
CreateWeldOrSnapOrMotorXX("Weld", Torso, Torso, Core, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(45)), CFrame.new(0, 0, 0))

coroutine.wrap(function()
	while wait() do
		for _, c in pairs(Character:GetChildren()) do
			if c:IsA("Model") then
				for _, c in pairs(c:GetChildren()) do
					if c:IsA("Part") or c:IsA("MeshPart") then
						for _, c in pairs(c:GetChildren()) do
							if c:IsA("Trail") or c:IsA("ParticleEmitter") then
								c.Color = ColorSequence.new(MODECOLOR)
							end
						end
					end
				end
			end
		end
	end
end)()

--//=================================\\
--||	     WEAPON CREATION
--\\=================================//

local SWORD = script:FindFirstChild("Sword")
local Bladee = SWORD:Clone()
Bladee.Parent = nil
local SwordJoint = CreateWeldOrSnapOrMotor("Weld", Bladee.Handle, RightArm, Bladee.Handle, CF(0, -1, 0)*ANGLES(RAD(90),RAD(0),RAD(0)), CF(0, 0, 0))
local BLADEAAAA = Bladee.SlashPart
local YCSI = script:FindFirstChild("YCSI")

local Blade = YCSI:Clone()
Blade.Parent = nil
local BladeGrip = CreateWeldOrSnapOrMotor("Weld", Blade.Handle, RightArm, Blade.Handle, CF(0, -1, 0)*ANGLES(RAD(90),RAD(0),RAD(0)), CF(0, 0, 0))

local BackBlade = YCSI:Clone()
Blade.Parent = nil
CreateWeldOrSnapOrMotor("Weld", BackBlade.REDB, Torso, BackBlade.REDB, CF(1, -0.5, 0.5)*ANGLES(RAD(0),RAD(0),RAD(-45)), CF(0, 0, 0))

local FONTS = {
	Enum.Font.Antique,
	Enum.Font.Arcade,
	Enum.Font.Arial,
	Enum.Font.ArialBold,
	Enum.Font.Bodoni,
	Enum.Font.Cartoon,
	Enum.Font.Code,
	Enum.Font.Fantasy,
	Enum.Font.Garamond,
	Enum.Font.Highway,
	Enum.Font.Legacy,
	Enum.Font.SciFi,
	Enum.Font.SourceSans,
	Enum.Font.SourceSansBold,
	Enum.Font.SourceSansItalic,
	Enum.Font.SourceSansLight,
	Enum.Font.SourceSansSemibold
	}

local naeeym2 = Instance.new("BillboardGui",Character)
naeeym2.AlwaysOnTop = true
naeeym2.Size = UDim2.new(7,35,3,15)
naeeym2.StudsOffset = Vector3.new(0,2,0)
naeeym2.MaxDistance = 10000
naeeym2.Adornee = Head
naeeym2.Name = "Name2"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.TextScaled = true
tecks2.BorderSizePixel = 0
tecks2.Text = "SPECTRUM"
tecks2.Font = "Arcade"
tecks2.TextSize = 35
tecks2.TextStrokeTransparency = 0
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.Parent = naeeym2
tecks2.TextColor3 = Color3.fromRGB()
coroutine.resume(coroutine.create(function()
	while true do
		Swait()
		tecks2.Font = FONTS[MRANDOM(1, #FONTS)]
		tecks2.Position = UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
		tecks2.Text = MODE
		tecks2.TextColor3 = MODECOLOR
		tecks2.TextStrokeColor3 = MODECOLOR
		tecks2.Rotation = MRANDOM(-25,25)/2
	end
end))

 Banisher = IT("Model")
  Handle = CreatePart(3, Banisher, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,0.6,0.2),false)
  RightArmGrasp = CreateWeldOrSnapOrMotor("Weld", Handle, RightArm, Handle, CF(0,-1, 0) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0.21, 0))
  Part = CreatePart(3, Banisher, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,0.5,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.3, 0.2) * ANGLES(RAD(0), RAD(180), RAD(0)), CF(0, 0, 0))
  Part = CreatePart(3, Banisher, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,0.3,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.4, 0) * ANGLES(RAD(0), RAD(0), RAD(180)), CF(0, 0, 0))
  Part = CreatePart(3, Banisher, "Metal", 0, 0, "Mid gray", "Part", VT(0.3,0.3,0.3),false)
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.5, 0.2) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
  Part = CreatePart(3, Banisher, "Metal", 0, 0, "Mid gray", "Part", VT(0.3,0.5,0.5),false)
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.5) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
  Part = CreatePart(3, Banisher, "Metal", 0, 0, "Mid gray", "Part", VT(0.4,0.4,0.4),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.5) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
for i = 1, 8 do
	  Piece = CreatePart(3, Banisher, "Metal", 0, 0, "Mid gray", "Eye", VT(0,0.35,0.41),false)
	CreateWeldOrSnapOrMotor("Weld", Handle, Part, Piece, CF(0, 0, 0) * ANGLES(RAD(0), RAD((360/8)*i), RAD(0)), CF(0, 0, 0))
end
  Part = CreatePart(3, Banisher, "Metal", 0, 0, "Mid gray", "Eye", VT(0.38,0.41,0.38),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.5) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
  Part = CreatePart(3, Banisher, "Metal", 0, 0, "Mid gray", "Part", VT(0.37,0.5,0.37),false)
MakeForm(Part,"Ball")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.3) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
  Part = CreatePart(3, Banisher, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,0.7,0.4),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.7, 0.5) * ANGLES(RAD(90), RAD(180), RAD(180)), CF(0, 0, 0))
  Part = CreatePart(3, Banisher, "Metal", 0, 0, "Mid gray", "Part", VT(0.3,0.4,0.2),false)
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.7) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
  Part = CreatePart(3, Banisher, "Metal", 0, 0, "Mid gray", "Part", VT(0.35,0.35,0.35),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.7) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
  Part = CreatePart(3, Banisher, "Metal", 0, 0, "Mid gray", "Part", VT(0.5,0.1,0.5),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 1) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
  Part = CreatePart(3, Banisher, "Metal", 0, 0, "Mid gray", "Part", VT(0.5,0.1,0.45),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 1.1) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
  Part = CreatePart(3, Banisher, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,0.5,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.55, 0.2) * ANGLES(RAD(-135), RAD(0), RAD(0)), CF(0, -0.3, 0))
  LASTPART = Handle
for i = 1, 10 do
	if LASTPART == Handle then
		  Part = CreatePart(3, Banisher, "Metal", 0, 0, "Mid gray", "Part", VT(0.1,0.2,0),false)
		LASTPART = Part
		CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.1, 0.2) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
	else
		  Part = CreatePart(3, Banisher, "Metal", 0, 0, "Mid gray", "Part", VT(0.1,0.05,0),false)
		CreateWeldOrSnapOrMotor("Weld", Handle, LASTPART, Part, CF(0, 0.025, 0) * ANGLES(RAD(8), RAD(0), RAD(0)), CF(0, -0.025, 0))
		LASTPART = Part
	end
end

  Barrel = CreatePart(3, Banisher, "Metal", 0, 0, "Mid gray", "Part", VT(0.25,5,0.25),false)
MakeForm(Barrel,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Barrel, CF(0, -0.6, 3) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
  RightHole = CreatePart(3, Banisher, "Metal", 0, 0, "Mid gray", "Eye", VT(0.24,0,0.24),false)
MakeForm(RightHole,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Barrel, RightHole, CF(0, 2.45, 0), CF(0, 0, 0))
  Part = CreatePart(3, Banisher, "Metal", 0, 0, "Mid gray", "Part", VT(0,0,0),false)
  GEARWELD = CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.7), CF(0, 0, 0))
CreateMesh("SpecialMesh", Part, "FileMesh", 156292343, "", VT(0.8,0.8,1.5), VT(0,0,0.2))
  Part = CreatePart(3, Banisher, "Metal", 0, 0.5, "Mid gray", "Eye", VT(0,0,0),false)
  GEARWELD2 = CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.7), CF(0, 0, 0))
CreateMesh("SpecialMesh", Part, "FileMesh", 156292343, "", VT(0.9,0.9,0.3), VT(0,0,0.2))
coroutine.resume(coroutine.create(function()
	while wait() do
		GEARWELD.C0 = GEARWELD.C0 * ANGLES(RAD(0), RAD(0), RAD(5))
		GEARWELD2.C0 = GEARWELD2.C0 * ANGLES(RAD(0), RAD(0), RAD(-5))
	end
end))

local LASTPART4 = Head
for i = 1, 20 do
	local MATH = (1-(i/25))
	if LASTPART4 == Head then
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Dirt brown", "Horn", VT(0.35*MATH,0.35,0.35*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART4, LASTPART4, Horn, CF(0.5, 1, -0.45) * ANGLES(RAD(-55), RAD(15), RAD(-15)), CF(0, 0, 0))
		LASTPART4 = Horn
		Horn.Color = C3(0,0,0)
		coroutine.resume(coroutine.create(function()
			while true do
				Swait()
				Horn.Color = Torso.Color
			end
		end))
	else
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Dirt brown", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART4, LASTPART4, Horn, CF(0, Horn.Size.Y/1, 0) * ANGLES(RAD(6), RAD(-0.3), RAD(0)), CF(0, 0, 0))
		LASTPART4 = Horn
		Horn.Color = C3(0,0,0)
		coroutine.resume(coroutine.create(function()
			while true do
				Swait()
				Horn.Color = Torso.Color
			end
		end))
	end
end
local LASTPART4 = Head
for i = 1, 20 do
	local MATH = (1-(i/25))
	if LASTPART4 == Head then
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Dirt brown", "Horn", VT(0.35*MATH,0.35,0.35*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART4, LASTPART4, Horn, CF(-0.5, 1, -0.45) * ANGLES(RAD(-55), RAD(-15), RAD(15)), CF(0, 0, 0))
		LASTPART4 = Horn
		Horn.Color = C3(0,0,0)
		coroutine.resume(coroutine.create(function()
			while true do
				Swait()
				Horn.Color = Torso.Color
			end
		end))
	else
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Dirt brown", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART4, LASTPART4, Horn, CF(0, Horn.Size.Y/1, 0) * ANGLES(RAD(6), RAD(0.3), RAD(0)), CF(0, 0, 0))
		LASTPART4 = Horn
		Horn.Color = C3(0,0,0)
		coroutine.resume(coroutine.create(function()
			while true do
				Swait()
				Horn.Color = Torso.Color
			end
		end))
	end
end
for i = 1, 24 do--face
	local FACE = CreatePart(3, Character, "Neon", 0, 0+(i-1)/16.2, "Dark stone grey", "FaceGradient", VT(1.01,0.65,1.01),false)
	CreateWeldOrSnapOrMotor("Weld", Head, Head, FACE, CF(0,0.45-(i-1)/25,0), CF(0, 0, 0))
end
local LASTPART4 = Head
for i = 1, 20 do
	local MATH = (1-(i/25))
	if LASTPART4 == Head then
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Dirt brown", "Horn", VT(0.35*MATH,0.35,0.35*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART4, LASTPART4, Horn, CF(0.5, 1, -0.45) * ANGLES(RAD(-55), RAD(15), RAD(-15)), CF(0, 0, 0))
		LASTPART4 = Horn
		Horn.Color = C3(0,0,0)
	else
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Dirt brown", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART4, LASTPART4, Horn, CF(0, Horn.Size.Y/1, 0) * ANGLES(RAD(6), RAD(-0.3), RAD(0)), CF(0, 0, 0))
		LASTPART4 = Horn
		Horn.Color = C3(0,0,0)
	end
end
local LASTPART4 = Head
for i = 1, 20 do
	local MATH = (1-(i/25))
	if LASTPART4 == Head then
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Dirt brown", "Horn", VT(0.35*MATH,0.35,0.35*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART4, LASTPART4, Horn, CF(-0.5, 1, -0.45) * ANGLES(RAD(-55), RAD(-15), RAD(15)), CF(0, 0, 0))
		LASTPART4 = Horn
		Horn.Color = C3(0,0,0)
	else
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Dirt brown", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART4, LASTPART4, Horn, CF(0, Horn.Size.Y/1, 0) * ANGLES(RAD(6), RAD(0.3), RAD(0)), CF(0, 0, 0))
		LASTPART4 = Horn
		Horn.Color = C3(0,0,0)
	end
end
local LASTPART2 = Head--Extra Horns 1
for i = 1, 36 do
	local MATH = (1-(i/25))
	if LASTPART2 == Head then
		local Horn2 = CreatePart(3, Character, "Neon", 0, 0, "Really black", "Horn2", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART2, LASTPART2, Horn2, CF(0.3, 0.7, -0.35) * ANGLES(RAD(-55), RAD(15), RAD(-15)), CF(0, 0, 0))
		LASTPART2 = Horn2
		Horn2.Color = C3((i*3-3)/.5,0,.5)
	else
		local Horn2 = CreatePart(3, Character, "Neon", 0, 0, "Really black", "Horn2", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART2, LASTPART2, Horn2, CF(0, Horn2.Size.Y/1.8, 0) * ANGLES(RAD(6), RAD(-0.3), RAD(0)), CF(0, 0, 0))
		LASTPART2 = Horn2
		Horn2.Color = C3((i*3-3)/.5,0,.5)
	end
end
local LASTPART2 = Head--Extra Horns 2
for i = 1, 36 do
	local MATH = (1-(i/25))
	if LASTPART2 == Head then
		local Horn2 = CreatePart(3, Character, "Neon", 0, 0, "Really black", "Horn2", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART2, LASTPART2, Horn2, CF(-0.3, 0.7, -0.35) * ANGLES(RAD(-55), RAD(-15), RAD(15)), CF(0, 0, 0))
		LASTPART2 = Horn2
		Horn2.Color = C3((i*3-3)/.5,0,.5)
	else
		local Horn2 = CreatePart(3, Character, "Neon", 0, 0, "Really black", "Horn2", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART2, LASTPART2, Horn2, CF(0, Horn2.Size.Y/1.8, 0) * ANGLES(RAD(6), RAD(0.3), RAD(0)), CF(0, 0, 0))
		LASTPART2 = Horn2
		Horn2.Color = C3((i*3-3)/.5,0,.5)
	end
end--
local LASTPART = Head
for i = 1, 62 do
	local MATH = (1-(i/25))
	if LASTPART == Head then
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Dirt brown", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(0.3, 0.7, -0.35) * ANGLES(RAD(-55), RAD(15), RAD(-15)), CF(0, 0, 0))
		LASTPART = Horn
	else
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Dirt brown", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(0, Horn.Size.Y/1.8, 0) * ANGLES(RAD(6), RAD(-2.5), RAD(0)), CF(0, 0, 0))
		LASTPART = Horn
	end
end
local LASTPART = Head
for i = 1, 62 do
	local MATH = (1-(i/25))
	if LASTPART == Head then
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Dirt brown", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(-0.3, 0.7, -0.35) * ANGLES(RAD(-55), RAD(-15), RAD(15)), CF(0, 0, 0))
		LASTPART = Horn
	else
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Dirt brown", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(0, Horn.Size.Y/1.8, 0) * ANGLES(RAD(6), RAD(2.5), RAD(0)), CF(0, 0, 0))
		LASTPART = Horn
	end
end

local TheRing = script.Circle
TheRing.Parent = Character
local MainHandle = TheRing.MainThing
MainHandle.Anchored = false
local ColorR = TheRing.A
local MainHandle = TheRing.MainThing
local HandleWeld = Instance.new("Weld", ColorR)
HandleWeld.Part0 = Torso
HandleWeld.Part1 = MainHandle
HandleWeld.C1 = CFrame.new(0, 0, 0)
HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 1)


Humanoid:SetStateEnabled("Dead",false)
Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead,false)

Humanoid:SetStateEnabled("GettingUp",true)
Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
Humanoid:SetStateEnabled("Ragdoll",false)
Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)

--//=================================\\
--||			DAMAGING
--\\=================================//
local Parents = {"Workspace","SoundService","Chat","MarketplaceService","Players","StarterPlayer","LocalizationService","JointsService","FriendService","InsertService","Lighting","Teams","ReplicatedStorage","TestService","ProximityPromptService"}
--mdmg(EMITPOS,5)
function mdmg(centerofeffect,range)
	pcall(function()
		for i=1,#Parents do
			for i,v in pairs(game:GetService(Parents[i]):GetDescendants()) do
				if not v:IsDescendantOf(Character) and v:IsA("BasePart") and v.Name ~= "Base" and (v.Position - centerofeffect).Magnitude <= range + v.Size.Magnitude then
					for g,h in pairs(v:GetDescendants()) do
						if h:IsA("Trail") then
							h.Attachment0 = nil
							h.Attachment1 = nil
						end 
					end
					v.CFrame = CFrame.new(math.random(-10000,-10000),math.random(-10000,-10000),0)
					v.Changed:Connect(function()
						v.CFrame = CFrame.new(math.random(-10000,-10000),math.random(-10000,-10000),0) 
					end)
				end 
				if not v:IsDescendantOf(Character) and v:IsA("FlagStand") and v.Name ~= "Base" and (v.Position - centerofeffect).Magnitude <= range + v.Size.Magnitude then
					local w = v.CFrame
					for g,h in pairs(v:GetDescendants()) do
						if h:IsA("Trail") then
							h.Attachment0 = nil
							h.Attachment1 = nil
						end 
					end
					v.CFrame = CFrame.new(math.random(-10000,-10000),math.random(-10000,-10000),0)
					v.Changed:Connect(function()
						v.CFrame = CFrame.new(math.random(-10000,-10000),math.random(-10000,-10000),0) 
					end)	
				end 
			end
		end
	end)
end
local Killed,DeadParts = {},{}

function Tween(Part,Table,Table2)
	if Part and Table and Table2 then
		game:GetService("TweenService"):Create(Part,TweenInfo.new(Table[1],Table[2],Table[3]),Table2):Play()
	end	
end

function Instancee(Class,Properties)
	local Part = Instance.new(Class)
	for i,v in pairs(Properties) do
		Part[i] = v
	end
	return Part
end

function Destroyy(Part)
	pcall(function()
		game:GetService("Debris"):AddItem(Part,0)
	end)
end

function Clonee(Part,Properties)
	local ClonePart = Part:Clone()
	for i,v in pairs(Properties) do
		ClonePart[i] = v
	end
	return(ClonePart)
end
function Part(Color,Material,Size,CF,Transp)
	local P = Instancee("Part",{Color = Color,Material =  Material,Parent = workspace,Name = randomstring(),Size = Size,CFrame = CF,Transparency  = Transp})
	table.insert(Effects.Folder,P)
	return P
end
local MAINCOLOR = Torso.Color
local MAINCOLOR2 = Torso.Color
function ClientDestroy(Part)
	local a = Mouse.Hit
	for i,g in pairs(Killed) do
		if g == Part then
			return
		end
	end
	for i,g in pairs(Character) do
		if g == Part then
			return
		end
	end
	for i,g in pairs(Effects.Folder) do
		if g == Part then
			return
		end
	end
	table.insert(Killed,Part)
	coroutine.resume(coroutine.create(function()
		local xg = Clonee(Character.ga,{Name = randomstring()}) 
		local ObjectToKill = Instancee("ObjectValue",{Parent = xg,Name = "C",Value = Part})
		for i,g in pairs(game:GetService("Players"):GetPlayers()) do
			local sgasg =xg:Clone()
			sgasg.Parent = g:FindFirstChildOfClass("PlayerGui")
			sgasg.Disabled = false
			Destroyy(sgasg)
		end
		local x = Part(Color3.fromRGB(255,0,0),Enum.Material.Neon,Part.Size/1.2,Part.CFrame,Part.Transparency) x.Parent = workspace x.Anchored = true x.CanCollide = false
		wait(0.05)
		Tween(x,{1.2,Enum.EasingStyle.Linear,Enum.EasingDirection.In},{Transparency = 0.2,Color = Color3.new(),CFrame = CFrame.new(a.X,a.Y,a.Z) * CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),Size = Vector3.new(x.Size.X/1.5,x.Size.X/1.5,x.Size.X/1.5)})
		wait(1.2)
		Tween(x,{0.3,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,true},{Transparency = 1,CFrame = CFrame.new(a.X + math.random(-5,5),a.Y + math.random(-5,5),a.Z + math.random(-5,5)) * CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),Size = Vector3.new(0,0,0)})
		wait(0.5)
		Destroyy(x)
	end))
end
Funcs = {RandomString = function(Length)
	local Text = ""
	for i = 1,typeof(Length) == "number" and math.clamp(Length,1,100) or math.random(10,100) do
		local CharClone = randomstring()
		Text = Text..string.sub(CharClone,math.random(1,string.len(CharClone)),math.random(1,string.len(CharClone)))
	end
	return Text
end,
getback = function()
	for i,v in pairs(Character:GetChildren()) do
		if v:IsA("BasePart") and v.Anchored == false then
			local flot = Instance.new("BodyPosition")
			local spen = Instance.new("BodyGyro")
			local hu = math.huge
			flot.MaxForce = Vector3.new(hu,hu,hu)
			spen.MaxTorque = Vector3.new(hu,hu,hu)
			local spown = nil
			for o,b in pairs(workspace:GetDescendants()) do
				if not b:IsDescendantOf(Character) and b:IsA("SpawnLocation") then
					spown = b
				end
			end
			if spown then
				RootPart.CFrame = CFrame.new(spown.Position.X,spown.Position.Y+(spown.Size.Y/2)+6,spown.Position.Z)
			else
				local base = workspace:FindFirstChild("Base")
				if not base then
					base = workspace:FindFirstChild("Baseplate")
				end
				if base then
					RootPart.CFrame = CFrame.new(math.clamp(RootPart.Position.X,(-base.Size.X/2)+5,(base.Size.X/2)-5),base.Position.Y+(base.Size.Y/2)+6,math.clamp(RootPart.Position.Z,(-base.Size.X/2)+5,(base.Size.X/2)-5))
				else
					RootPart.CFrame = CFrame.new(math.clamp(RootPart.Position.X,-100,100),30,math.clamp(RootPart.Position.Z,-100,100))
				end
			end
			flot.Position = RootPart.Position
			flot.Parent = RootPart
			spen.CFrame = RootPart.CFrame
			spen.Parent = RootPart
			game:GetService("Debris"):AddItem(flot,1)
			game:GetService("Debris"):AddItem(spen,1)
		end
	end
end,

getup = function()
	RootPart.CFrame = CFrame.new(0, 20, 0)
end,

Aoe = function(Pos,Range)
	pcall(function()
		for i,g in pairs(game:GetDescendants()) do
			if g:IsA("BasePart") or g:IsA("FlagStand") then
				local BiggestSize = g.Size.X
				if g.Size.Z >= BiggestSize then
					BiggestSize = g.Size.Z
				end
				if g.Size.Y >= BiggestSize then
					BiggestSize = g.Size.Y
				end
				if BiggestSize <= 28 then
					if (g.Position-Pos).Magnitude <= Range then
						ClientDestroy(g)
					end
				end
			end
		end
	end)	
end

}

local USERNAME = Player.Name
local Parents = {"Workspace","SoundService","Chat","MarketplaceService","Players","StarterPlayer","LocalizationService","JointsService","FriendService","InsertService","Lighting","Teams","ReplicatedStorage","TestService","ProximityPromptService"}
function shieldmg(centerofeffect,range,Foe)
	if Player.Name == USERNAME then
		pcall(function()
			spawn(function()
				for _,v in pairs(workspace:GetDescendants()) do
					if not v:IsDescendantOf(Character) and v:IsA("Humanoid") and v.RootPart and (v.RootPart.Position - centerofeffect).Magnitude <= range + v.RootPart.Size.Magnitude then
						if v.Parent ~= workspace and v.Parent ~= workspace.Terrain then
							v.RootPart:Destroy()
							local maxparent = v
							repeat maxparent = maxparent.Parent until maxparent.Parent == workspace or maxparent.Parent == workspace.Terrain
						
							maxparent:Destroy()
						end
					end
				end
			end)
		end)	
	end
	pcall(function()
		for i=1,#Parents do
			for i,v in pairs(game:GetService(Parents[i]):GetDescendants()) do
				if not v:IsDescendantOf(Character) and v:IsA("BasePart") and v.Name ~= "Baseplate" and (v.Position - centerofeffect).Magnitude <= range + v.Size.Magnitude then
					for g,h in pairs(v:GetDescendants()) do
						if h:IsA("Trail") then
							h.Attachment0 = nil
							h.Attachment1 = nil
						end 
					end
					v.CFrame = CFrame.new(-100000,10,0)
					v:GetPropertyChangedSignal("CFrame"):Connect(function()
						if v.CFrame ~= CFrame.new(-100000,10,0) then
							v.CFrame = CFrame.new(-100000,10,0) 
						end
					end)
				end 
				if not v:IsDescendantOf(Character) and v:IsA("FlagStand") and v.Name ~= "Baseplate" and (v.Position - centerofeffect).Magnitude <= range + v.Size.Magnitude then
					local w = v.CFrame
					for g,h in pairs(v:GetDescendants()) do
						if h:IsA("Trail") then
							h.Attachment0 = nil
							h.Attachment1 = nil
						end 
					end
					v.CFrame = CFrame.new(-100000,10,0)
					v:GetPropertyChangedSignal("CFrame"):Connect(function()
						if v.CFrame ~= CFrame.new(-100000,10,0) then
							v.CFrame = CFrame.new(-100000,10,0) 
						end
					end)
				end 
			end
		end
	end)
end

function Lightning(Part0, Part1, Times, Offset, Color, Timer, sSize, eSize, Trans, Boomer, sBoomer, slow, stime)
	local magz = (Part0 - Part1).magnitude
	local curpos = Part0
	local trz = {
		-Offset,
		Offset
	}
	for i = 1, Times do
		local li = Instance.new("Part", Effects)
		li.Name = "Lightning"
		li.TopSurface = 0
		li.Material = "Neon"
		li.BottomSurface = 0
		li.Anchored = true
		li.Locked = true
		li.Transparency = 0
		li.BrickColor = Color
		li.formFactor = "Custom"
		li.CanCollide = false
		li.Size = Vector3.new(0.1, 0.1, magz / Times)
		local Offzet = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
		local trolpos = CFrame.new(curpos, Part1) * CFrame.new(0, 0, magz / Times).p + Offzet
		if Times == i then
			local magz2 = (curpos - Part1).magnitude
			li.Size = Vector3.new(0.1, 0.1, magz2)
			li.CFrame = CFrame.new(curpos, Part1) * CFrame.new(0, 0, -magz2 / 2)
		else
			li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / Times / 2)
		end
		curpos = li.CFrame * CFrame.new(0, 0, magz / Times / 2).p
		li:Destroy()
		WACKYEFFECTpp({Time = Timer, EffectType = "Box", Size = Vector3.new(sSize,sSize,li.Size.Z), Size2 = Vector3.new(eSize,eSize,li.Size.Z), Transparency = Trans, Transparency2 = 1, CFrame = li.CFrame, MoveToPos = nil, RotationX = nil, RotationY = nil, RotationZ = nil, Material = "Neon", Color = li.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = Boomer, Boomerang = 0, SizeBoomerang = sBoomer})
		if slow == true then
			Swait(stime)
		end
	end
end

function WACKYEFFECTpp(Table)
	local TYPE = Table.EffectType or "Sphere"
	local SIZE = Table.Size or VT(1, 1, 1)
	local ENDSIZE = Table.Size2 or VT(0, 0, 0)
	local TRANSPARENCY = Table.Transparency or 0
	local ENDTRANSPARENCY = Table.Transparency2 or 1
	local CFRAME = Table.CFrame or Torso.CFrame
	local MOVEDIRECTION = Table.MoveToPos or nil
	local ROTATION1 = Table.RotationX or 0
	local ROTATION2 = Table.RotationY or 0
	local ROTATION3 = Table.RotationZ or 0
	local MATERIAL = Table.Material --or "Neon"
	local COLOR = Table.Color or C3(1, 1, 1)
	local TIME = Table.Time or 45
	local SOUNDID = Table.SoundID or nil
	local SOUNDPITCH = Table.SoundPitch or nil
	local SOUNDVOLUME = Table.SoundVolume or nil
	local USEBOOMERANGMATH = Table.UseBoomerangMath or false
	local BOOMERANG = Table.Boomerang or 0
	local SIZEBOOMERANG = Table.SizeBoomerang or 0
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1, 1, 1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh", EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0, 0, -SIZE.X / 8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X, SIZE.X, 0.1), VT(0, 0, 0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "168892432", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Star" then 
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "2760116123", "", SIZE, VT(0,0,0))   	
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "450656451", "", SIZE, VT(0, 0, 0))
		end
		coroutine.resume(coroutine.create(function()
			if MSH ~= nil then
				local BOOMR1 = 1 + BOOMERANG / 50
				local BOOMR2 = 1 + SIZEBOOMERANG / 50
				local MOVESPEED = nil
				if MOVEDIRECTION ~= nil then
					MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
				end
				local GROWTH
				if USEBOOMERANGMATH == true then
					GROWTH = (SIZE - ENDSIZE) * (BOOMR2 + 1)
				else
					GROWTH = SIZE - ENDSIZE
				end
				local TRANS = TRANSPARENCY - ENDTRANSPARENCY
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				else
					EFFECT.CFrame = CFRAME
				end
				if USEBOOMERANGMATH == true then
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - VT(GROWTH.X * (1 - LOOP / TIME * BOOMR2), GROWTH.Y * (1 - LOOP / TIME * BOOMR2), GROWTH.Z * (1 - LOOP / TIME * BOOMR2)) * BOOMR2 / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
							local ORI = EFFECT.Orientation
							EFFECT.CFrame = CF(EFFECT.Position, MOVEDIRECTION) * CF(0, 0, -MOVESPEED * (1 - LOOP / TIME * BOOMR1))
							EFFECT.Orientation = ORI
						end
					end
				else
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - GROWTH / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
							local ORI = EFFECT.Orientation
							EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
							EFFECT.Orientation = ORI
						end
					end
				end
				EFFECT.Transparency = 1
				if PLAYSSOUND == false then
					EFFECT:remove()
				else
					repeat
						Swait()
					until EFFECT:FindFirstChildOfClass("Sound") == nil
					EFFECT:remove()
				end
			elseif PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat
					Swait()
				until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		end))
		return EFFECT
	end))
end   

function CheckTableForString(Table, String)
	for i, v in pairs(Table) do
		if string.find(string.lower(String), string.lower(v)) then
			return true
		end
	end
	return false
end

function CheckIntangible(Hit)
	local ProjectileNames = {"Water", "Arrow", "Projectile", "Effect", "Rail", "Lightning", "Bullet"}
	if Hit and Hit.Parent then
		if ((not Hit.CanCollide or CheckTableForString(ProjectileNames, Hit.Name)) and not Hit.Parent:FindFirstChild("Humanoid")) then
			return true
		end
	end
	return false
end
function Kill(MODEL)
	local HUM = MODEL:FindFirstChildOfClass("Humanoid")
	MODEL:BreakJoints()
	if HUM then
		for index, CHILD in pairs(MODEL:GetChildren()) do
			if CHILD:IsA("BasePart") then
				if CHILD.Name == "Head" then
					WACKYEFFECT2({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3)*MRANDOM(7,14)/10, Transparency = 0.5, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = C3(.75,0,0), SoundID = nil, SoundPitch = .8, SoundVolume = 4, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
					WACKYEFFECT2({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2)*MRANDOM(7,14)/10, Transparency = 0.5, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = C3(.5,0,0), SoundID = nil, SoundPitch = .7, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
					WACKYEFFECT2({Time = MRANDOM(10,30)*12, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z), Size2 = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z), Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(MRANDOM(-360,360)/1.5,MRANDOM(-360,360)/1.5,0), MRANDOM(-360,360)/35, RotationX = MRANDOM(-360,360)/35, RotationY = MRANDOM(-360,360)/35, RotationZ = MRANDOM(-360,360)/35, Material = "Granite", Color = C3(.35,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, SizeBoomerang = 0, Boomerang = 50})
				elseif CHILD.Name ~= "HumanoidRootPart" then
					WACKYEFFECT2({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3)*MRANDOM(7,14)/10, Transparency = 0.5, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = C3(.75,0,0), SoundID = nil, SoundPitch = .8, SoundVolume = 4, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
					WACKYEFFECT2({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2)*MRANDOM(7,14)/10, Transparency = 0.5, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = C3(.5,0,0), SoundID = nil, SoundPitch = .7, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
					WACKYEFFECT2({Time = MRANDOM(10,30)*6, EffectType = "Box", Size = CHILD.Size, Size2 = CHILD.Size, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(MRANDOM(-50,100)/1.5,MRANDOM(-50,100)/35,MRANDOM(-50,100)/35), MRANDOM(-50,100)/35, RotationX = MRANDOM(-50,100)/35, RotationY = MRANDOM(-50,100)/35, RotationZ = MRANDOM(-50,100)/35, Material = "Granite", Color = C3(.35,0,0), SoundID = nil, SoundPitch = .7, SoundVolume = 6, UseBoomerangMath = true, SizeBoomerang = 100, Boomerang = 35})
				end
				if CHILD.Name == "Torso" or CHILD.Name == "UpperTorso" then
					WACKYEFFECT2({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3)*MRANDOM(7,14)/10, Transparency = 0.5, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = C3(.75,0,0), SoundID = 130113415, SoundPitch = MRANDOM(0.9,1.1), SoundVolume = 10, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
					WACKYEFFECT2({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2)*MRANDOM(7,14)/10, Transparency = 0.5, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = C3(.5,0,0), SoundID = nil, SoundPitch = .7, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
				end
				CHILD:Destroy()
				CHILD:Destroy()
				CHILD:Destroy()
			end
		end
		HUM.Health = 0
	end
	MODEL:remove()
	MODEL:remove()
	MODEL:remove()
	MODEL:remove()
	MODEL:remove()
	MODEL:Destroy()
	MODEL:Destroy()
	MODEL:Destroy()
	MODEL:Destroy()
	MODEL:Destroy()
end
function spawnwave2(POS)
	local HITFLOOR,HITPOS = Raycast(POS+VT(0,1,0), (CF(POS, POS + VT(0, -1, 0))).lookVector, 100, Character)
	local EMITPOS = HITPOS
	if HITFLOOR ~= nil then
		if HITFLOOR.Parent:FindFirstChildOfClass("Humanoid") then
			HITFLOOR,HITPOS = Raycast(POS+VT(0,1,0), (CF(POS, POS + VT(0, -1, 0))).lookVector, 100, HITFLOOR.Parent)
			EMITPOS = HITPOS
		elseif HITFLOOR.Parent.Parent:FindFirstChildOfClass("Humanoid") then
			HITFLOOR,HITPOS = Raycast(POS+VT(0,1,0), (CF(POS, POS + VT(0, -1, 0))).lookVector, 100, HITFLOOR.Parent.Parent)
			EMITPOS = HITPOS
		end
	end
	if HITFLOOR ~= nil then
		mdmg(EMITPOS,55)
		WACKYEFFECT({EffectType = "Sphere", Size = VT(55,100000,55), Size2 = VT(0,100000,0), Transparency = 0, Transparency2 = 1, CFrame = CF(EMITPOS) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(255,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
		WACKYEFFECT({TIME = MRANDOM(0,44), EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(77 + 7 * COS(SINE/4),2 + 6 * COS(SINE/4),77 + 4 * COS(SINE/4)), Transparency = 0, Transparency2 = 1, CFrame = CF(EMITPOS), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-22,22), RotationZ = 0, Material = "ForceField", Color = Color3.fromRGB(255,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		for i = 1, 5 do
			local TOPOS = CF(EMITPOS)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))*CF(0,0,12)
			WACKYEFFECT({TIME = MRANDOM(0,44), EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(77 + 7 * COS(SINE/4),2 + 6 * COS(SINE/4),77 + 4 * COS(SINE/4)), Transparency = 0, Transparency2 = 1, CFrame = CF(EMITPOS,TOPOS.p), MoveToPos = TOPOS.p, RotationX = 0, RotationY = MRANDOM(-22,22), RotationZ = 0, Material = "ForceField", Color = Color3.fromRGB(255,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		end
	end
end

local MESSAGES = {"fucking skid","stop fucking skidding and i wont kill you again smh","please fuck off for me","just stop using skid scripts lmfao", "dont abuse your shitty script or edit LMFAO", "imagine getting fucked by my glitcher LMFAO"}
function Kick(Foe)
	if Foe then
		coroutine.resume(coroutine.create(function()
			local plr = game:service'Players':GetPlayerFromCharacter(Foe)
			if plr then
				coroutine.resume(coroutine.create(function()
					plr:Kick(MESSAGES[MRANDOM(1,#MESSAGES)])	
				end))		
			end
			if(Foe:FindFirstChildOfClass'Humanoid')then	
				chatfunc2(Foe.Name)
				Foe.Archivable = true
				local CLONE = Foe:Clone()
				Foe:Destroy()
				CLONE.Parent = Effects
				CLONE:BreakJoints()
				local MATERIALS = {"Glass","Glass"}
				for _, c in pairs(CLONE:GetDescendants()) do
					if c:IsA("BasePart") then
						if c.Name == "Torso" or c.Name == "UpperTorso" or c == CLONE.PrimaryPart then
							CreateSound(340722848, c, 10, 1, false)
						end
						c.Anchored = true
						c.Transparency = c.Transparency + 0.2
						c.Material = MATERIALS[MRANDOM(1,2)]
						c.Color = BrickColor.new("Teal").Color
						if c.ClassName == "MeshPart" then
							c.TextureID = ""
						end
						if c:FindFirstChildOfClass("SpecialMesh") then
							c:FindFirstChildOfClass("SpecialMesh").TextureId = ""
						end
						if c:FindFirstChildOfClass("Decal") then
							c:FindFirstChildOfClass("Decal"):remove()
						end
						c.Name = "Banished"
						c.CanCollide = false
					else
						c:remove()
					end
				end
				local A = false
				for i = 1, 35 do
					if A == false then
						A = true
					elseif A == true then
						A = false
					end
					for _, c in pairs(CLONE:GetDescendants()) do
						if c:IsA("BasePart") then
							c.Anchored = true
							c.Material = MATERIALS[MRANDOM(1,2)]
							c.Transparency = c.Transparency + 0.8/35
							if A == false then
								c.CFrame = c.CFrame*CF(MRANDOM(-45,45)/45,MRANDOM(-45,45)/45,MRANDOM(-45,45)/45)
							elseif A == true then
								c.CFrame = c.CFrame*CF(MRANDOM(-45,45)/45,MRANDOM(-45,45)/45,MRANDOM(-45,45)/45)						
							end
						end
					end
					Swait()
				end
				CLONE:remove()
			end
		end))
	end
end


function ApplyAoE(POSITION,RANGE)
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						Kill(CHILD)
					end
				end
			end
		end
	end
end
function ApplyDamage(Humanoid,Damage)
	if lplr == Player then
		print(Humanoid,Damage)
		DamageRemote:FireServer("ApplyDamage",Humanoid,Damage,DAMAGEMULTIPLIER)
	end
end
function ApplyAoE2(POSITION,RANGE,MINDMG,MAXDMG,FLING,INSTAKILL)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" and CHILD ~= Character and CHILD.Parent ~= Effects then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						if INSTAKILL == true then
							if lplr == Player then
								Banish(CHILD)
							end
						else
							local DMG = MRANDOM(MINDMG,MAXDMG)
							ApplyDamage(HUM,DMG,TORSO)
						end
						if FLING > 0 then
							for _, c in pairs(CHILD:GetChildren()) do
								if  c:IsA("BasePart") or c:IsA("MeshPart") or c:IsA("FlagStand") then
									local bv = Instance.new("BodyVelocity") 
									bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
									bv.velocity = CF(POSITION,TORSO.Position).lookVector*FLING
									bv.Parent = c
									Debris:AddItem(bv,0.05)
								end
							end
						end
					end
				end
			end
		end
	end
end
function kicklmfao(POSITION,RANGE)
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						Kill(CHILD)
					end
				end
			end
		end
	end
end




--//=================================\\
--||      ANTI-DEATH CREATION
--\\=================================//

local Regen = {}
delay(1,function()
	local Descendants = Character:GetDescendants()
	
	for i = 1,#Descendants do
		local E = Descendants[i]
		if E:IsA("BasePart") and not E:IsDescendantOf(Effects) then
			E.CustomPhysicalProperties = PhysicalProperties.new(Enum.Material.Wood)
			table.insert(Regen,{E,E.Parent,E.Color,E.Size,E.Material})
		end
		if E:IsA("JointInstance") then
			table.insert(Regen,{E,E.Parent,nil,nil,nil})
		end
	end
end)

local BODY = {}

for e = 1, #BODY do
	if BODY[e] ~= nil then
		local STUFF = BODY[e]
		local PART = STUFF[1]
		local PARENT = STUFF[2]
		local MATERIAL = STUFF[3]
		local COLOR = STUFF[4]
		local TRANSPARENCY = STUFF[5]
		if PART.ClassName == "Part" and PART ~= RootPart then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:Connect(function()
			PART.Parent = PARENT
		end)
	end
end


function Refit2()
	Character.Parent = workspace
	Effects.Parent = Character
	for e = 1, #BODY do
		if BODY[e] ~= nil then
			local STUFF = BODY[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			--local SIZE = STUFF[6]
			local NAME = STUFF[7]
			if PART.ClassName == "Part" and PART ~= RootPart then
				PART.Material = MATERIAL
				PART.Transparency = TRANSPARENCY
				PART.Name = NAME
			end
			if PART.Parent ~= PARENT then
				if PART.Name == "Head" or PART.Name == "Neck" or PART.Name == "Torso" then
					Humanoid:remove()
				end
				PART.Parent = PARENT
				if PART.Name == "Head" or PART.Name == "Neck" or PART.Name == "Torso" then
					Humanoid = IT("Humanoid",Character)
				end
			end
		end
	end
end

local BODY2 = {}
for e = 1, #BODY2 do
	if BODY2[e] ~= nil then
		do
			local STUFF = BODY2[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			if PART.ClassName == "Part" and PART ~= RootPart then
				PART.Material = MATERIAL
				PART.Color = COLOR
				PART.Transparency = TRANSPARENCY
			end
			PART.AncestryChanged:Connect(function()
				PART.Parent = PARENT
			end)
		end
	end
end
function Refit3()
	Character.Parent = workspace
	for e = 1, #BODY2 do
		if BODY2[e] ~= nil then
			local STUFF = BODY2[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			if PART:IsA("BasePart") and PART ~= RootPart then
				PART.Material = MATERIAL
				PART.Color = COLOR
				PART.Transparency = TRANSPARENCY
				end
					if PART.Parent ~= PARENT then
				Humanoid:remove()
				PART.Parent = PARENT
			end
		end
	end
end

local BODY3 = {}
for e = 1, #BODY3 do
	if BODY3[e] ~= nil then
		local STUFF = BODY3[e]
		local PART = STUFF[1]
		local PARENT = STUFF[2]
		local MATERIAL = STUFF[3]
		local COLOR = STUFF[4]
		local TRANSPARENCY = STUFF[5]
		if PART.ClassName == "Part" and PART ~= RootPart then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:Connect(function()
			PART.Parent = PARENT
		end)
	end
end
function Refit4()
	if Character.Parent ~= workspace then
		Character.Parent = workspace
	end
	for e = 1, #BODY3 do
		if BODY3[e] ~= nil then
			local STUFF = BODY3[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			if PART:IsA("BasePart") and PART ~= RootPart then
				PART.Material = MATERIAL
				PART.Color = COLOR
				PART.Transparency = TRANSPARENCY
			end
			if PART.Parent ~= PARENT then
				Humanoid:remove()
				Humanoid = IT("Humanoid",Character)
			end
		end
	end
end

local BODY4 = {}
for e = 1, #BODY4 do
	if BODY4[e] ~= nil then
		local STUFF = BODY4[e]
		local PART = STUFF[1]
		local PARENT = STUFF[2]
		local MATERIAL = STUFF[3]
		local COLOR = STUFF[4]
		local TRANSPARENCY = STUFF[5]
		if PART.ClassName == "Part" and PART ~= RootPart then
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:Connect(function()
			PART.Parent = PARENT
		end)
	end
end
function Refit5()
    Character.Parent = workspace
    for e = 1, #BODY4 do
        if BODY4[e] ~= nil then
            local STUFF = BODY4[e]
            local PART = STUFF[1]
            local PARENT = STUFF[2]
            local MATERIAL = STUFF[3]
            local COLOR = STUFF[4]
            local TRANSPARENCY = STUFF[5]
            if PART:IsA("BasePart") and PART ~= RootPart then
                PART.Transparency = TRANSPARENCY
            end
            if PART.Parent ~= PARENT then
                Humanoid:remove()
                PART.Parent = PARENT
                Humanoid = IT("Humanoid",Character)

            end
        end
    end
end

local BODY5 = {}
local EXTRATRANS = 0

function Refit6()
	Character.Parent = workspace
	for e = 1, #BODY5 do
		if BODY5[e] ~= nil then
			local STUFF = BODY5[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			if PART:IsA("BasePart") and PART ~= RootPart then
				PART.Transparency = TRANSPARENCY+EXTRATRANS
			end
			if PART.Parent ~= PARENT then
				Humanoid:remove()
				PART.Parent = PARENT
				Humanoid = IT("Humanoid",Character)
			end
		end
	end
end

local BODY6 = {}

function Refit7()
	Character.Parent = workspace
	Effects.Parent = Character
	for e = 1, #BODY6 do
		if BODY6[e] ~= nil then
			local STUFF = BODY6[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			local NAME = STUFF[7]
			if PART.ClassName == "Part" and PART ~= RootPart then
				PART.Material = MATERIAL
				PART.Transparency = TRANSPARENCY
				PART.Name = NAME
			end
			if PART.Parent ~= PARENT then
				if PART.Name == "Head" or PART.Name == "Neck" or PART.Name == "Torso" then
					Humanoid:remove()
				end
				PART.Parent = PARENT
				if PART.Name == "Head" or PART.Name == "Neck" or PART.Name == "Torso" then
					Humanoid = IT("Humanoid", Character)
				end
			end
		end
	end
end
local BODY7 = {}

for e = 1, #BODY7 do
	if BODY7[e] ~= nil then
		local STUFF = BODY7[e]
		local PART = STUFF[1]
		local PARENT = STUFF[2]
		local MATERIAL = STUFF[3]
		local COLOR = STUFF[4]
		local TRANSPARENCY = STUFF[5]
		--local SIZE = STUFF[6]
		local NAME = STUFF[7]
		if PART.ClassName == "Part" and PART ~= RootPart then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:Connect(function()
			PART.Parent = PARENT
		end)
	end
end

function Refit8()
	Character.Parent = workspace
	for e = 1, #BODY7 do
		if BODY7[e] ~= nil then
			local STUFF = BODY7[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			--local SIZE = STUFF[6]
			local NAME = STUFF[7]
			if PART.ClassName == "Part" and PART ~= RootPart then
				PART.Material = MATERIAL
				PART.Transparency = TRANSPARENCY
				PART.Name = NAME
			end
			if PART.Parent ~= PARENT then
				Humanoid:remove()
				PART.Parent = PARENT
				Humanoid = IT("Humanoid",Character)
			end
		end
	end
end
local BODY8 = {}

for e = 1, #BODY8 do
	if BODY8[e] ~= nil then
		local STUFF = BODY8[e]
		local PART = STUFF[1]
		local PARENT = STUFF[2]
		local MATERIAL = STUFF[3]
		local COLOR = STUFF[4]
		local TRANSPARENCY = STUFF[5]
		if PART.ClassName == "Part" and PART ~= RootPart then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:Connect(function()
			PART.Parent = PARENT
		end)
	end
end

function Refit9()
	Character.Parent = workspace
	for e = 1, #BODY8 do
		if BODY8[e] ~= nil then
			local STUFF = BODY8[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			if PART.ClassName == "Part" and PART ~= RootPart then
				PART.Material = MATERIAL
				PART.Color = COLOR
				PART.Transparency = TRANSPARENCY
			end
			if PART.Parent ~= PARENT then
				Humanoid:remove()
				PART.Parent = PARENT
				Humanoid = IT("Humanoid",Character)
			end
		end
	end
end
local EXTRATRANS = 0
local BODY9 = {}
for e = 1, #BODY9 do
	if BODY9[e] ~= nil then
		local STUFF = BODY9[e]
		local PART = STUFF[1]
		local PARENT = STUFF[2]
		local MATERIAL = STUFF[3]
		local COLOR = STUFF[4]
		local TRANSPARENCY = STUFF[5]
		if PART.ClassName == "Part" and PART ~= RootPart then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:Connect(function()
			PART.Parent = PARENT
		end)
	end
end

function Refit10()
	Character.Parent = workspace
	for e = 1, #BODY9 do
		if BODY9[e] ~= nil then
			local STUFF = BODY9[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			if PART:IsA("BasePart") and PART ~= RootPart then
				PART.Material = MATERIAL
				PART.Color = COLOR
				PART.Transparency = TRANSPARENCY+EXTRATRANS
			end
			if PART.Parent ~= PARENT then
				Humanoid:remove()
				PART.Parent = PARENT
				Humanoid = IT("Humanoid",Character)
			end
		end
	end
end

local BODY10 = {}
function Refit11()
	Character.Parent = workspace
	for e = 1, #BODY10 do	
		if BODY10[e] ~= nil then
			local STUFF = BODY10[e]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local TRANSPARENCY = STUFF[5]
			if PART.ClassName == "Part" and PART ~= RootPart then
				PART.Material = MATERIAL
				PART.Color = COLOR
				PART.Transparency = TRANSPARENCY
			end
			if PART.Parent ~= PARENT then
				Humanoid:remove()
				PART.Parent = PARENT
				Humanoid = IT("Humanoid",Character)
			end
		end
	end
end

local BODY11 = {}

function Refit12()
	Character.Parent = workspace
	Effects.Parent = Character
	for e = 1, #BODY11 do
		if BODY11[e] ~= nil then
			local STUFF = BODY11[e]
			local PART = STUFF[1]
			local PARENT = Character:FindFirstChild("Safety") or STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			local NAME = STUFF[7]
			if PART.ClassName == "Part" and PART ~= RootPart then
				PART.Material = MATERIAL
				PART.Transparency = TRANSPARENCY
				PART.Name = NAME
			end
			if PART.Parent ~= PARENT then
				if PART.Name == "Head" or PART.Name == "Neck" or PART.Name == "Torso" then
					Humanoid:remove()
				end
				PART.Parent = PARENT
				if PART.Name == "Head" or PART.Name == "Neck" or PART.Name == "Torso" then
				end
			end
		end
	end
end

local BODY12 = {}
function Refit13()
    Character.Parent = workspace
    for e = 1, #BODY12 do
        if BODY12[e] ~= nil then
            local STUFF = BODY12[e]
            local PART = STUFF[1]
            local PARENT = STUFF[2]
            local MATERIAL = STUFF[3]
            local COLOR = STUFF[4]
            local TRANSPARENCY = STUFF[5]
            local SIZE = STUFF[6]
            local NAME = STUFF[7]
            if PART.ClassName == "Part" and PART ~= RootPart then
                PART.Material = MATERIAL
                PART.Transparency = TRANSPARENCY
                PART.Name = NAME
            end
            if PART.Parent ~= PARENT then
                Humanoid:remove()
                PART.Parent = PARENT
                Humanoid = IT("Humanoid",Character)
            end
            Humanoid.MaxHealth = "inf"
            Humanoid.Health = "Inf"
        end
    end
end



for _, c in pairs(Character:GetChildren()) do
	if c and c.Parent then
		if c.ClassName == "Accessory" then
			local ACCESSORY = c
			local HANDLE = c.Handle
			HANDLE.Parent = Character
			if c then
				if HANDLE:FindFirstChild("HatAttachment") or HANDLE:FindFirstChild("FaceFrontAttachment") or HANDLE:FindFirstChild("HairAttachment") then
					local WLD = weldBetween(Head,HANDLE)
				else
					local WLD = weldBetween(Torso,HANDLE)
				end
			end
			HANDLE.Name = ACCESSORY.Name
			ACCESSORY:remove()
		end
	end
end
local BODY = {}
for _, c in pairs(Character:GetDescendants()) do
	if c:IsA("BasePart") and c.Name ~= "Handle" and not c:IsDescendantOf(Effects) then
		if c ~= RootPart and c ~= Torso and c ~= Head and c ~= RightArm and c ~= LeftArm and c ~= RightLeg and c ~= LeftLeg then
			c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		end
		table.insert(BODY,{c,c.Parent,c.Material,c.Color,c.Transparency,c.Size,c.Name})
	elseif c:IsA("JointInstance") then
		table.insert(BODY,{c,c.Parent,nil,nil,nil,nil,nil})
	end
end
for e = 1, #BODY do
	if BODY[e] ~= nil then
		do
			local STUFF = BODY[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			if PART.ClassName == "Part" and PART ~= RootPart then
				PART.Material = MATERIAL
				PART.Transparency = TRANSPARENCY
			end
			PART.AncestryChanged:Connect(function()
				PART.Parent = PARENT
			end)
		end
	end
end
function refit()
	coroutine.resume(coroutine.create(function()
	wait()
	Humanoid.Died:connect(refit)
	end))
	Character.Parent = workspace
	Effects.Parent = Character
	for e = 1, #BODY do
		if BODY[e] ~= nil then
			local STUFF = BODY[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			local SIZE = STUFF[6]
			local NAME = STUFF[7]
			if PART.ClassName == "Part" and PART:IsA("BasePart") and PART ~= RootPart then
				PART.Material = MATERIAL
				PART.Transparency = TRANSPARENCY
				PART.Name = NAME
			end
			if PART.Parent ~= PARENT then
				if PART.Name == "Head" or PART.Name == "Neck" or PART.Name == "Torso" then
					Humanoid:remove()
				end
				PART.Parent = PARENT
				if PART.Name == "Head" or PART.Name == "Neck" or PART.Name == "Torso" then
					Humanoid = Instance.new("Humanoid",Character)
				end
			end
		end
	end
end
local Regen = {}
for e = 1, #Regen do
	if Regen[e] ~= nil then
		local STUFF = Regen[e]
		local PART = STUFF[1]
		local PARENT = STUFF[2]
		local MATERIAL = STUFF[3]
		local COLOR = STUFF[4]
		local TRANSPARENCY = STUFF[5]
		if PART.ClassName == "Part" and PART ~= BODY.RootPart then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:Connect(function()
			PART.Parent = PARENT
		end)
	end
end
function Refit()
	coroutine.resume(coroutine.create(function()
	wait()
	Humanoid.Died:connect(Refit)	
	end))
	for i = 1,#Regen do
		local E = Regen[i]
		local PART = E[1]
		local PARENT = E[2]
		local COLOR = E[3]
		local SIZE = E[4]
		local MATERIAL = E[5]
		if PART:IsA("BasePart") and PART.Parent ~= PARENT then
			PART.Color = COLOR
			PART.Size = SIZE
			PART.Material = MATERIAL
		end
		if PART.Parent ~= PARENT then
			Humanoid.Parent = nil
			PART.Parent = PARENT
			Humanoid.Parent = Character
		end
	end
	Humanoid.Parent = Character
end
function Parents()
    RootJoint.Parent = RootPart
    Neck.Parent = Torso
    RightShoulder.Parent = Torso
    LeftShoulder.Parent = Torso
    RightHip.Parent = Torso
    LeftHip.Parent = Torso
    RootPart.Parent = Character
    LeftArm.Parent = Character
    RightArm.Parent = Character
    RightLeg.Parent = Character
    LeftLeg.Parent = Character
    Torso.Parent = Character
    Head.Parent = Character
	Effects.Parent = Character
end
local States = {
	"FallingDown";
	"PlatformStanding";
	"Physics";
	"Swimming";
	"Dead";
	"Ragdoll";
	"Seated";
}
for i,v in pairs(States) do
	Humanoid:SetStateEnabled(v,false)
end
function printbye(Name)
	local MESSAGES = {"You cannot struggle, ","Your existance is an insult, ","Fade, ","Your existance is not desired, ","You are not permitted here, ","You are not to decide your fate, ","Be gone, ","You are already dead, ","Your live is an anomaly, ","Don't dare to return, ","Why are you resisting, ","You cannot exist here, ","Why are you struggling, ","Your fate was already decided, ","Goodbye, ","You cannot ignore my command, ","You cannot resist my command, ","You already died, "}
	warnedpeople(MESSAGES[MRANDOM(1,#MESSAGES)]..Name..".")	
end


workspace.ChildAdded:connect(function(instance)
	for BANISH = 1, #TOBANISH do
		if TOBANISH[BANISH] ~= nil then
			if instance.Name == TOBANISH[BANISH] then
				coroutine.resume(coroutine.create(function()
					printbye(instance.Name)
					instance:ClearAllChildren()
					Debris:AddItem(instance,0.0005)
				end))
			end
		end
	end
end)

--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//
function Combo()
	ATTACK = true
	Rooted = false
	local savespeed = Speed
	Speed = 12
	EQUIPPED = true
	local HIT2 = function()
		local HITS2 = {}
		local TOUCH2 = LeftArm.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= Character then
				local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
				local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					local PASS = true
					for i = 1, #HITS2 do
						if HITS2[i] == hit.Parent then
							PASS = false
						end
					end
					table.insert(HITS2,hit.Parent)
					if PASS == true then
						Kill(HUM.Parent)
					end
				end
			end
		end)
		return TOUCH2
	end
	local HIT = function()
		local HITS = {}
		local TOUCH = RightArm.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= Character then
				local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
				local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					local PASS = true
					for i = 1, #HITS do
						if HITS[i] == hit.Parent then
							PASS = false
						end
					end
					table.insert(HITS,hit.Parent)
					if PASS == true then
						Kill(HUM.Parent)
					end
				end
			end
		end)
		return TOUCH
	end
	if COMBO == 1 then
		for i=0, 0.35, 0.1 / Animation_Speed do
			Swait()
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(5)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)  
			if ANIM=="Walk" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			end
		end
		CreateSound(1489705211,RightArm,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT()
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT2({EffectType = "Block", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-35)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.8, 0.5, -0.7) * ANGLES(RAD(0), RAD(0), RAD(-90)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			if ANIM=="Walk" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			end
		end
		TOUCHED:Disconnect()
		COMBO = 2
	elseif COMBO == 2 then
		for i=0, 0.35, 0.1 / Animation_Speed do
			Swait()
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(5)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(15)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-20), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			if ANIM=="Walk" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			end
		end
		CreateSound(1489705211,LeftArm,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT2()
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT2({EffectType = "Block", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(45)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-55)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.5) * ANGLES(RAD(0), RAD(0), RAD(-105)) * ANGLES(RAD(90), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			if ANIM=="Walk" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			end
		end
		TOUCHED:Disconnect()
		COMBO = 3
	elseif COMBO == 3 then
		for i=0, 0.35, 0.1 / Animation_Speed do
			Swait()
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.25, -0.2) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(-45)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			if ANIM=="Walk" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			end
		end
		CreateSound(1489705211,LeftArm,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT2()
		local TOUCHED2 = HIT()
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT2({EffectType = "Block", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT2({EffectType = "Block", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.3, -0.2) * ANGLES(RAD(30), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, -0.5) * ANGLES(RAD(90), RAD(0), RAD(-30)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, -0.5) * ANGLES(RAD(90), RAD(0), RAD(30)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			if ANIM=="Walk" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			end
		end
		TOUCHED:Disconnect()
		TOUCHED2:Disconnect()
		COMBO = 4
	elseif COMBO == 4 then
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(0)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.3, -0.2) * ANGLES(RAD(30), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.2, 0.5, -0.5) * ANGLES(RAD(75), RAD(0), RAD(-70)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.2, 0.5, -0.5) * ANGLES(RAD(75), RAD(0), RAD(70)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			if ANIM=="Walk" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			end
		end	
		WACKYEFFECT({Time = 40,EffectType = "Block", Size = VT(0,0,0), Size2 = VT(25,25,25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,-0.5), MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = 260435136, SoundPitch = 0.9, SoundVolume = 10})
		WACKYEFFECT({Time = 25,EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(0.5,0,0.5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,-0.5), MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25,EffectType = "Ring", Size = VT(0,0,0), Size2 = VT(1,3,3), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,-0.5), MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25,EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(25,0,25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,-0.5), MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		ShakeCam(3,10)
		ApplyAoE(RootPart.Position,25)
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.25, -0.2) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(-45)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			if ANIM=="Walk" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			end
		end	
		COMBO = 1
	end
	coroutine.resume(coroutine.create(function()
		for i = 1, 50 do
			Swait()
			if ATTACK == true then
				break
			end
		end
		if ATTACK == false then
			COMBO = 1
		end
	end))
	Speed = savespeed
	ATTACK = false
	Rooted = false
	EQUIPPED = false
end

function BladeCombo()
	ATTACK = true
	Rooted = false
	local savespeed = Speed
	Speed = 5
	EQUIPPED = true
	local HIT2 = function()
		local HITS2 = {}
		local TOUCH2 = LeftArm.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= Character then
				local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
				local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					local PASS = true
					for i = 1, #HITS2 do
						if HITS2[i] == hit.Parent then
							PASS = false
						end
					end
					table.insert(HITS2,hit.Parent)
					if PASS == true then
						Banish(HUM.Parent)
					end
				end
			end
		end)
		return TOUCH2
	end
	local HIT = function()
		local HITS = {}
		local TOUCH = Blade.REDB.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= Character then
				local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
				local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					local PASS = true
					for i = 1, #HITS do
						if HITS[i] == hit.Parent then
							PASS = false
						end
					end
					table.insert(HITS,hit.Parent)
					if PASS == true then
						Banish(HUM.Parent)
					end
				end
			end
		end)
		return TOUCH
	end
	if COMBO == 1 then
		Blade.REDB.Trail.Enabled = true
		for i=0, 0.35, 0.1 / 3 do
			Swait()
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(5)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)), 1 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 1 / 3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / 3)  
			if ANIM=="Walk" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			end
		end
		CreateSound(1489705211,RightArm,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT()
		for i=0, 0.5, 0.1 / 3 do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-35)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.8, 0.5, -0.7) * ANGLES(RAD(0), RAD(0), RAD(-90)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / 3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / 3)
			if ANIM=="Walk" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			end
		end
		TOUCHED:Disconnect()
		COMBO = 2
		Blade.REDB.Trail.Enabled = false
	elseif COMBO == 2 then
		for i=0, 0.35, 0.1 / 3 do
			Swait()
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(5)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(15)), 1 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(15)) * RIGHTSHOULDERC0, 1 / 3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-20), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / 3)
			if ANIM=="Walk" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			end
		end
		CreateSound(1489705211,LeftArm,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT2()
		for i=0, 0.5, 0.1 / 3 do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0.5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(45)), 3 / 3)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-55)), 1 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.6 / 3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.5) * ANGLES(RAD(0), RAD(0), RAD(-105)) * ANGLES(RAD(90), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / 3)
			if ANIM=="Walk" then
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			else
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			end
		end
		TOUCHED:Disconnect()
		COMBO = 1
	end
	coroutine.resume(coroutine.create(function()
		for i = 1, 50 do
			Swait()
			if ATTACK == true then
				break
			end
		end
		if ATTACK == false then
			COMBO = 1
		end
	end))
	Speed = savespeed
	ATTACK = false
	Rooted = false
	EQUIPPED = false
end
function curse(part1)
	if part1:isA("BasePart") then

		if part1:FindFirstAncestor(Player.Name) then
		elseif part1.Name == "muppetbonehead" or part1:FindFirstAncestor("muppetbonehead") then
			print("Sorry amx almost banished you there")
		else

			local part = part1:Clone()
			part.Parent = workspace
			part.Name = "coolkids"

			part1:Destroy()

			part.CanCollide = false
			local before = part.CFrame
			wait(0.1)
			local Angles = CFrame.Angles
			local cf = CFrame.new
			part:ClearAllChildren()
			local outline = Instance.new("SelectionBox")
			outline.LineThickness = 0.09
			outline.Adornee = part
			outline.Parent = part
			outline.Color3 =C3(255,255,255)
			outline.SurfaceTransparency = 1
			NoOutlines(part)
			part.Material = MATERIALS[MRANDOM(1,#MATERIALS)]
			part.Anchored = true
			part.CFrame = part.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))
			part.Position = part.Position + Vector3.new(math.random(-40,40),math.random(-40,40),math.random(-40,40))

			for i =0,1,0.03 do
				part.Anchored = true
				wait()
				part.Color = MODECOLOR
				part.CFrame = part.CFrame:Lerp(before,i)
			end

			local x = math.random(-1,1)
			local z = math.random(-1,1)
			local dah = math.random(-0.5,0.5)
			local anglex = MRANDOM(-1,1)
			local anglez = MRANDOM(-1,1)
			for i =0,1,0.03 do
				wait()
				part.Anchored = true
				part.Color = MODECOLOR
				part.Transparency = i
				outline.Transparency = i
				part.Size = part.Size + Vector3.new(-0.05,-0.05,-0.05)
				part.CFrame = part.CFrame * CFrame.Angles(anglex,0,anglez) * CFrame.new(x,MRANDOM(-0.1,0.1),z)
			end
			part:Destroy()	
		end
	elseif part1:isA("Acessory") or part1:isA("SpecialMesh") or part1:isA("Mesh") then
		if part1:FindFirstAncestor(Player.Name) then
		else

			local part = part1:Clone()
			part.Name = "coolkids"
			part.Parent = part1.Parent
			part1:Destroy()

			part.CanCollide = false
			local before = part.CFrame
			wait(0.1)
			local Angles = CFrame.Angles
			local cf = CFrame.new

			part.Material = "Plastic"
			part.Anchored = true
			part.CFrame = part.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))
			part.Position = part.Position + Vector3.new(math.random(-40,40),math.random(-40,40),math.random(-40,40))

			for i =0,1,0.03 do
				part.Anchored = true
				wait()
				part.Size = part.Size + Vector3.new(-0,03,-0,03,-0,03)
				part.Color = Color3.new(255,255,255)
				part.CFrame = part.CFrame:Lerp(before,i)
			end


			for i =0,1,0.03 do
				wait()
				part.Anchored = true
				part.Color = Color3.new(255,255,255)
				part.Transparency = i
			end
			part:Destroy()	
		end
	else
		part1:Destroy()
	end

end


--ParticleEmitter({Speed = 0.5, Drag = 0, Size1 = 0.2, Size2 = 0, Lifetime1 = 0.3, Lifetime2 = 0.7, Parent = Dangle, Emit = 100, Offset = 360, Enabled = true, Acel = VT(0,5,0)})
function Banish(Foe)
	if Foe then
		coroutine.resume(coroutine.create(function()
			--if game.Players:FindFirstChild(Foe.Name) then
			table.insert(TOBANISH,Foe.Name)
			printbye(Foe.Name)
			--end
			Foe.Archivable = true
			local CLONE = Foe:Clone()
			Debris:AddItem(Foe,0)


			local MATERIALS = {"Glass","Neon"}
			for _, c in pairs(CLONE:GetDescendants()) do
				if c:IsA("BasePart") then
					spawn(function()
						mdmg(c)
					end)

				end
				local A = false



				Swait()
			end

		end))
	end
end
for _, c in pairs(Weapon:GetDescendants()) do
	if c.ClassName == "Part" and c.Name ~= "Eye" and c.Parent ~= Effects and c.Parent.Parent ~= Effects then
		c.Material = "Glass"
		c.Color = C3(0,0,0)
	elseif c.ClassName == "Part" and c.Name == "Eye" then
		c.Color = C3(1,0,0)
		c.Material = "Neon"
	end
end


workspace.ChildAdded:connect(function(instance)
	for BANISH = 1, #TOBANISH do
		if TOBANISH[BANISH] ~= nil then
			if instance.Name == TOBANISH[BANISH] then
				coroutine.resume(coroutine.create(function()
					local yut = instance:GetDescendants()
					for i,v in pairs(yut) do
						spawn(function()
							if v:isA("BasePart") then
								curse(v)
							end
						end)
					end

				end))
			end
		end
	end
end)
function Banishe(Foe)
	if Foe then
		coroutine.resume(coroutine.create(function()
			--if game.Players:FindFirstChild(Foe.Name) then
			table.insert(TOBANISH,Foe.Name)
			printbye(Foe.Name)
			--end
			Foe.Archivable = true
			local CLONE = Foe:Clone()
			Foe:Destroy()
			CLONE.Parent = Effects
			CLONE:BreakJoints()
			local MATERIALS = {"Glass","Neon"}
			for _, c in pairs(CLONE:GetDescendants()) do
				if c:IsA("BasePart") then
					if c.Name == "Torso" or c.Name == "UpperTorso" or c == CLONE.PrimaryPart then
						CreateSound(340722848, c, 10, 1, false)
					end
					c.Anchored = true
					c.Transparency = c.Transparency + 0.2
					c.Material = MATERIALS[MRANDOM(1,2)]
					c.Color = Color3.fromRGB(0,0,0)
					if c.ClassName == "MeshPart" then
						c.TextureID = ""
					end
					if c:FindFirstChildOfClass("SpecialMesh") then
						c:FindFirstChildOfClass("SpecialMesh").TextureId = ""
					end
					if c:FindFirstChildOfClass("Decal") then
						c:FindFirstChildOfClass("Decal"):remove()
					end
					c.Name = "Banished"
					c.CanCollide = false
				else
					c:remove()
				end
			end
			local A = false
			for i = 1, 35 do
				if A == false then
					A = true
				elseif A == true then
					A = false
				end
				for _, c in pairs(CLONE:GetDescendants()) do
					if c:IsA("BasePart") then
						c.Anchored = true
						c.Material = MATERIALS[MRANDOM(1,2)]
						c.Transparency = c.Transparency + 0.8/35
						if A == false then
							c.CFrame = c.CFrame*CF(MRANDOM(-45,45)/45,MRANDOM(-45,45)/45,MRANDOM(-45,45)/45)
						elseif A == true then
							c.CFrame = c.CFrame*CF(MRANDOM(-45,45)/45,MRANDOM(-45,45)/45,MRANDOM(-45,45)/45)						
						end
					end
				end
				Swait()
			end
			CLONE:remove()
		end))
	end
end
function LIGHTIN()
	ATTACK = true
	for i = 0, 0.5, 0.05 do
		swait()
		turnto(Mouse.Hit.Position)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(30)), 1 / 3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(-30)), 1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(30)) * RIGHTSHOULDERC0, 1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)) * LEFTSHOULDERC0, 1 / 3)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(80), math.rad(0)) * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0)), 1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-70), math.rad(0)) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 1 / 3)
	end
	shieldmg(Mouse.Hit.Position,10)
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = 642890855, SoundPitch = 0.45, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	Lightning(RightArm.Position,Mouse.Hit.p,15,3.5,BrickColor.new("Really black"),math.random(15,35),1,3,0,true,55) Lightning(RightArm.Position,Mouse.Hit.p,15,3.5,BrickColor.new("Magenta"),math.random(15,35),1,3,0,true,55)
	for i = 0, 2 do
		WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
		WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
	end
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = 192410089, SoundPitch = .55, SoundVolume = 8, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	for i = 0, 2 do
		WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
		WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
	end
	for i = 0, 0.5, 0.075 do
		swait()
		turnto(Mouse.Hit.Position)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(60)), 1 / 3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-60)), 1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(160), math.rad(-20), math.rad(60)) * RIGHTSHOULDERC0, 1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40), math.rad(5), math.rad(5)) * LEFTSHOULDERC0, 1 / 3)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(75), math.rad(0)) * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0)), 1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-65), math.rad(0)) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 1 / 3)
	end
	ATTACK = false
end 
function yua()
	ATTACK = true
	for i = 0, 0.5, 0.05 do
		swait()
		turnto(Mouse.Hit.Position)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(30)), 1 / 3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(-30)), 1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(30)) * RIGHTSHOULDERC0, 1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)) * LEFTSHOULDERC0, 1 / 3)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(80), math.rad(0)) * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0)), 1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-70), math.rad(0)) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 1 / 3)
	end
	shieldmg(Mouse.Hit.Position,10)
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = 642890855, SoundPitch = 0.45, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	Lightning(RightArm.Position,Mouse.Hit.p,15,3.5,BrickColor.new("Really black"),math.random(15,35),1,3,0,true,55) Lightning(RightArm.Position,Mouse.Hit.p,15,3.5,BrickColor.new("Magenta"),math.random(15,35),1,3,0,true,55)
	for i = 0, 2 do
		WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
		WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
	end
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = 192410089, SoundPitch = .55, SoundVolume = 8, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	for i = 0, 2 do
		WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
		WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
	end
	for i = 0, 0.5, 0.075 do
		swait()
		turnto(Mouse.Hit.Position)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(60)), 1 / 3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-60)), 1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(160), math.rad(-20), math.rad(60)) * RIGHTSHOULDERC0, 1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40), math.rad(5), math.rad(5)) * LEFTSHOULDERC0, 1 / 3)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(75), math.rad(0)) * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0)), 1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-65), math.rad(0)) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 1 / 3)
	end
	ATTACK = false
end 
function hand_bullet()
	ATTACK = true
	Rooted = false
	for i=0, 0.005, 0.05 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		--RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		--LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.005, 0.05 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			--RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			--LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end

		local HIT3,POS3 = CastProperRay(RightArm.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(RightArm.Position,POS3)
		mdmg(Mouse.Hit.Position,10)
		if HIT3 ~= nil then
			if HIT3.Parent ~= workspace then
				mdmg(HIT3.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = RightArm.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(math.random(0,255),0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(math.random(0,255),0,0), SoundID = 3264923, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS3,RightArm.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(math.random(0,255),0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS3,RightArm.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(math.random(0,255),0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		for i=0, 0.005, 0.05 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-5), RAD(0), RAD(60)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(130), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			--RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			--LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end
function Trussbullet()
	ATTACK = true
	Rooted = false
	for i=0, 0.005, 0.05 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		--RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		--LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.005, 0.05 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			--RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			--LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end

		local HIT3,POS3 = CastProperRay(HoleE.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(HoleE.Position,POS3)
		mdmg(Mouse.Hit.Position,10)
		if HIT3 ~= nil then
			if HIT3.Parent ~= workspace then
				mdmg(HIT3.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Box", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = RightArm.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(math.random(0,255),0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Box", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(math.random(0,255),0,0), SoundID = 3264923, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Box", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS3,RightArm.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(math.random(0,255),0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Box", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS3,RightArm.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(math.random(0,255),0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		for i=0, 0.005, 0.05 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-5), RAD(0), RAD(60)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(130), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			--RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			--LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end
function LIGHTBAN()
	ATTACK = true
	Rooted = false
	for i=0, 0.05, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.05, 0.1 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(LIGHTINGCANNON1.Position, Mouse.Hit.p, 4000, Character)
		SpawnTrail(LIGHTINGCANNON1.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			end
		end
		for i=0, 0.05, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end
function HandBeamE()
	ATTACK = true
	repeat
	for i = 0, 0.5, 0.05 do
		swait()
		turnto(Mouse.Hit.Position)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(30)), 1 / 3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(-30)), 1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(30)) * RIGHTSHOULDERC0, 1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)) * LEFTSHOULDERC0, 1 / 3)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(80), math.rad(0)) * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0)), 1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-70), math.rad(0)) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 1 / 3)
	end

	ApplyAoE(Mouse.Hit.Position,10)
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = 642890855, SoundPitch = 0.45, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	Lightning(RightArm.Position,Mouse.Hit.p,15,3.5,BrickColor.new("Really black"),math.random(15,35),1,3,0,true,55) Lightning(RightArm.Position,Mouse.Hit.p,15,3.5,BrickColor.new("Magenta"),math.random(15,35),1,3,0,true,55)
	for i = 0, 2 do
		WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
		WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
	end
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = 192410089, SoundPitch = .55, SoundVolume = 8, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	for i = 0, 2 do
		WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
		WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
		end
		until KEYHOLD == false
	for i = 0, 0.5, 0.075 do
		swait()
		turnto(Mouse.Hit.Position)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(60)), 1 / 3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-60)), 1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(160), math.rad(-20), math.rad(60)) * RIGHTSHOULDERC0, 1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40), math.rad(5), math.rad(5)) * LEFTSHOULDERC0, 1 / 3)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(75), math.rad(0)) * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0)), 1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-65), math.rad(0)) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 1 / 3)
	end
	ATTACK = false
end
function dummyattack()
	ATTACK = true
	for i = 0, 0.5, 0.05 do
		swait()
		turnto(Mouse.Hit.Position)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(30)), 1 / 3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(-30)), 1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(30)) * RIGHTSHOULDERC0, 1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)) * LEFTSHOULDERC0, 1 / 3)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(80), math.rad(0)) * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0)), 1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-70), math.rad(0)) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 1 / 3)
	end
	shieldmg(Mouse.Hit.Position,10)
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.fromRGB(MRANDOM(1,255),MRANDOM(1,255),MRANDOM(1,255)), SoundID = 642890855, SoundPitch = 0.45, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.fromRGB(MRANDOM(1,255),MRANDOM(1,255),MRANDOM(1,255)), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	Lightning(SBGUN.Weapon.HOLE.Position,Mouse.Hit.p,10,3.5,BrickColor.Random(),math.random(15,35),1,3,0,true,55) Lightning(SBGUN.Weapon.HOLE.Position,Mouse.Hit.p,10,3.5,BrickColor.Random(),math.random(15,35),1,3,0,true,55)
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.fromRGB(MRANDOM(1,255),MRANDOM(1,255),MRANDOM(1,255)), SoundID = 192410089, SoundPitch = .55, SoundVolume = 8, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.fromRGB(MRANDOM(1,255),MRANDOM(1,255),MRANDOM(1,255)), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	for i = 0, 0.5, 0.075 do
		swait()
		turnto(Mouse.Hit.Position)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(60)), 1 / 3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-60)), 1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(160), math.rad(-20), math.rad(60)) * RIGHTSHOULDERC0, 1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40), math.rad(5), math.rad(5)) * LEFTSHOULDERC0, 1 / 3)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(75), math.rad(0)) * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0)), 1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-65), math.rad(0)) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 1 / 3)
	end
	ATTACK = false
end
function DISK()
	ATTACK = true
	local savespeed = Speed
	Speed = 3
	local keptcolor = BrickColor.new("Institutional white")
	CreateSound(847061203,Torso,10,1,false)
	sphere2(5,"Add",RightArm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),VT(1,1,1),0.1,0.1,0.1,keptcolor,keptcolor.Color)
	sphere2(5,"Add",RightArm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),VT(1,1,1),0.2,0.2,0.2,keptcolor,keptcolor.Color)
	for i = 0, 14 do
		PixelBlock(1,math.random(1,3),"Add",RightArm.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,keptcolor,0)
	end
	for i = 0,1,0.1 do
		swait()
		sphere2(8,"Add",LeftArm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),VT(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
		RightHip.C0=Clerp(RightHip.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(0),math.rad(-5)),.3)
		LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(30),math.rad(0)),.3)
		RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(60)),.3)
		Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(20),math.rad(0),math.rad(-30)),.3)
		RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.15,0.5,-0.5)*ANGLES(math.rad(90),math.rad(0),math.rad(-60)),.3)
		LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.15,0.5,0)*ANGLES(math.rad(-20),math.rad(0),math.rad(-10)),.3)
	end
	for i = 0, 1 do
		CreateSound(763755889,Torso,10,1,false)
		for i = 0,1,0.6 do
			swait()
			sphere2(8,"Add",RightArm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),VT(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
			slash(math.random(15,30)/10,5,true,"Round","Add","Out",RootPart.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),VT(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
			RightHip.C0=Clerp(RightHip.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
			LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),.6)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(20),math.rad(0),math.rad(-30)),.6)
			RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.15,0.5,-0.5)*ANGLES(math.rad(90),math.rad(0),math.rad(-60)),.6)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.15,0.5,0)*ANGLES(math.rad(-20),math.rad(0),math.rad(-10)),.6)
		end
		for i = 0,1,0.6 do
			swait()
			sphere2(8,"Add",RightArm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),VT(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
			slash(math.random(15,30)/10,5,true,"Round","Add","Out",RootPart.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),VT(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
			RightHip.C0=Clerp(RightHip.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
			LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-90)),.6)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(20),math.rad(0),math.rad(-30)),.6)
			RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.15,0.5,-0.5)*ANGLES(math.rad(90),math.rad(0),math.rad(-60)),.6)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.15,0.5,0)*ANGLES(math.rad(-20),math.rad(0),math.rad(-10)),.6)
		end
		for i = 0,1,0.6 do
			swait()
			sphere2(8,"Add",RightArm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),VT(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
			slash(math.random(15,30)/10,5,true,"Round","Add","Out",RootPart.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),VT(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
			RightHip.C0=Clerp(RightHip.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
			LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-180)),.6)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(20),math.rad(0),math.rad(-30)),.6)
			RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.15,0.5,-0.5)*ANGLES(math.rad(90),math.rad(0),math.rad(-60)),.6)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.15,0.5,0)*ANGLES(math.rad(-20),math.rad(0),math.rad(-10)),.6)
		end
		for i = 0,1,0.6 do
			swait()
			sphere2(8,"Add",RightArm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),VT(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
			slash(math.random(15,30)/10,5,true,"Round","Add","Out",RootPart.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),VT(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
			RightHip.C0=Clerp(RightHip.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
			LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-270)),.6)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(20),math.rad(0),math.rad(-30)),.6)
			RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.15,0.5,-0.5)*ANGLES(math.rad(90),math.rad(0),math.rad(-60)),.6)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.15,0.5,0)*ANGLES(math.rad(-20),math.rad(0),math.rad(-10)),.6)
		end
		local rot = 0
		local dis = CreateParta(Effects,0.5,1,"Neon",keptcolor)
		CreateSound(763718160,Torso,10,1,false)
		dis.CFrame = RootPart.CFrame*CFrame.new(0,2,-3)
		createmesh(dis,"Sphere",10,1,10)
		local at1 = Instance.new("Attachment",dis)
		at1.Position = VT(-5,0,0)
		local at2 = Instance.new("Attachment",dis)
		at2.Position = VT(5,0,0)
		local a = Instance.new("Part",workspace)
		a.Name = "Direction"	
		a.Anchored = true
		a.BrickColor = BRICKC("Bright red")
		a.Material = "Neon"
		a.Transparency = 1
		a.CanCollide = false
		local ray = Ray.new(
			dis.CFrame.p,                           -- origin
			(Mouse.Hit.p - dis.CFrame.p).unit * 500 -- direction
		) 
		local ignore = dis
		local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
		a.BottomSurface = 10
		a.TopSurface = 10
		local distance = (dis.CFrame.p - position).magnitude
		a.Size = Vector3.new(0.1, 0.1, 0.1)
		a.CFrame = CFrame.new(dis.CFrame.p, position) * CFrame.new(0, 0, 0)
		dis.CFrame = a.CFrame
		dis.CFrame = dis.CFrame*CFrame.Angles(0,math.rad(rot),0)
		a:Destroy()
		local bv = Instance.new("BodyVelocity")
		bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
		bv.velocity = dis.CFrame.lookVector*250
		bv.Parent = dis
		game:GetService("Debris"):AddItem(dis, 5)
		local hitted = false
		coroutine.resume(coroutine.create(function()
			dis.Touched:connect(function(hit) 
				if hitted == false and hit.Parent ~= Effects then
					hitted = true
					CreateSound(782200047,Torso,10,1,false)
					MagniDamage(dis, 30, 33,56, 0, "Normal")
					sphere2(8,"Add",dis.CFrame,VT(10,1,10),1,0.1,1,keptcolor,keptcolor.Color)
					sphere2(4,"Add",dis.CFrame,VT(1,1,1),0.5,0.5,0.5,keptcolor,keptcolor.Color)
					sphere2(3,"Add",dis.CFrame,VT(1,1,1),0.5,0.5,0.5,keptcolor,keptcolor.Color)
					coroutine.resume(coroutine.create(function()
						local eff = Instance.new("ParticleEmitter",dis)
						eff.Texture = "rbxassetid://2344870656"
						eff.LightEmission = 1
						eff.Color = ColorSequence.new(dis.Color)
						eff.Rate = 10000000
						eff.Enabled = true
						eff.EmissionDirection = "Front"
						eff.Lifetime = NumberRange.new(1)
						eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,75,0),NumberSequenceKeypoint.new(0.1,20,0),NumberSequenceKeypoint.new(0.8,40,0),NumberSequenceKeypoint.new(1,60,0)})
						eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.8,0),NumberSequenceKeypoint.new(0.5,0,0),NumberSequenceKeypoint.new(1,1,0)})
						eff.Speed = NumberRange.new(150)
						eff.Drag = 5
						eff.Rotation = NumberRange.new(-500,500)
						eff.SpreadAngle = Vector2.new(0,900)
						eff.RotSpeed = NumberRange.new(-500,500)
						wait(0.2)
						eff.Enabled = false
					end))
					coroutine.resume(coroutine.create(function()
						for i = 0, 9 do
							local disr = CreateParta(Effects,1,1,"Neon",keptcolor)
							disr.CFrame = dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
							local at1 = Instance.new("Attachment",disr)
							at1.Position = VT(-5,0,0)
							local at2 = Instance.new("Attachment",disr)
							at2.Position = VT(5,0,0)
							local trl = Instance.new('Trail',disr)
							trl.Attachment0 = at1
							trl.FaceCamera = true
							trl.Attachment1 = at2
							trl.Texture = "rbxassetid://2342682798"
							trl.LightEmission = 1
							trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
							trl.Color = ColorSequence.new(keptcolor.Color)
							trl.Lifetime = 0.5
							local bv = Instance.new("BodyVelocity")
							bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
							bv.velocity = disr.CFrame.lookVector*math.random(50,200)
							bv.Parent = disr
							local val = 0
							coroutine.resume(coroutine.create(function()
								swait(30)
								for i = 0, 9 do
									swait()
									val = val + 0.1
									trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, val),NumberSequenceKeypoint.new(1, 1)})
									ApplyAoE(disr.Position,25)
								end
								game:GetService("Debris"):AddItem(disr, 3)
							end))
						end
						ApplyAoE(dis.Position,25)
						local eff = Instance.new("ParticleEmitter",dis)
						eff.Texture = "rbxassetid://2273224484"
						eff.LightEmission = 1
						eff.Color = ColorSequence.new(keptcolor.Color)
						eff.Rate = 500000
						eff.Lifetime = NumberRange.new(0.5,2)
						eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
						eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
						eff.Speed = NumberRange.new(20,250)
						eff.Drag = 5
						eff.Rotation = NumberRange.new(-500,500)
						eff.VelocitySpread = 9000
						eff.RotSpeed = NumberRange.new(-50,50)
						wait(0.25)
						eff.Enabled = false
					end))
					for i = 0, 9 do
						slash(math.random(10,20)/10,5,true,"Round","Add","Out",dis.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),VT(0.01,0.01,0.01),math.random(100,200)/250,BrickColor.new("White"))
					end
					for i = 0, 19 do
						PixelBlock(1,math.random(5,20),"Add",dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),4,4,4,0.08,keptcolor,0)
					end
					coroutine.resume(coroutine.create(function()
						for i = 0, 19 do
							swait()
						end
					end))
					dis.Anchored = true
					dis.Transparency = 1
					wait(8)
					dis:Destroy()
				end
			end)
		end))
		rot = rot - 15
	end
	for i = 0,2,0.1 do
		swait()
		RightHip.C0=Clerp(RightHip.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(-30),math.rad(0)),.3)
		LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(0),math.rad(5)),.3)
		RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-60)),.3)
		Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(10),math.rad(0),math.rad(50)),.3)
		RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.5,0.5,0)*ANGLES(math.rad(90),math.rad(0),math.rad(60)),.3)
		LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.5,0.5,0)*ANGLES(math.rad(-20),math.rad(0),math.rad(-10)),.3)
	end
	ATTACK = false
	Speed = 15
end
function Stomp()
	ATTACK = true
	Rooted = false
	PLAYANIMS = false
	Speed = 5
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(5), RAD(0), RAD(0)), 2 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-25 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 2 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(160), RAD(0), RAD(35)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(160), RAD(0), RAD(-35)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(-15)), 2 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE /12), -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.8 / Animation_Speed)
	end
	CreateSound(3923230963,Torso,10,1,false)
	WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(1,0,1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-4,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(1,0,1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-4,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(1,0,1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-4,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	
	ApplyAoE(RootPart.Position,25)
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(-180), RAD(-5)) * LEFTSHOULDERC0, 0.8 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE /12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.8 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.1 * COS(SINE /12), -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.8 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE /12), -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.8 / Animation_Speed)
	end
	Speed = 20
	PLAYANIMS = true
	ATTACK = false
	Rooted = false
end
function Slash()
	ATTACK = true
	Rooted = true
	PLAYANIMS = false
	local STOPPP = false
	MagicSphere(VT(0,0,0),15,RootPart.CFrame,"Really black",VT(2,2,2))
	coroutine.wrap(function()
		while wait() do
			WACKYEFFECT({Time = 15, EffectType = "Crystal", Size = VT(1,5,1), Size2 = VT(1,25,1), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,0,0)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Glass", Color = BRICKC"Really red".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			if STOPPP == true then
				break
			end
		end
	end)()
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		CreateRing(VT(0,0,0),false,0,5,CF(RootPart.Position-VT(0,3,0))*ANGLES(RAD(90),RAD(0),RAD(0)),"Really black",VT(1,1,0))
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.5) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(75)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(-45), RAD(45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.2, 0.5, -1) * ANGLES(RAD(0), RAD(0), RAD(90)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(-45), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	for i=0,0.1, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(75)), 0.5)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.5)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(-45), RAD(0)) * RIGHTSHOULDERC0, 0.5)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -1) * ANGLES(RAD(90), RAD(0), RAD(75)) * LEFTSHOULDERC0, 0.5)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
	end
	local SOUND = CreateSound("rbxasset://sounds/swordlunge.wav", Torso, 5, 0.6)
	SOUND.SoundId = "rbxasset://sounds/swordlunge.wav"
	CreateSound(62339698, Torso, 10, 0.4)
	ApplyAoE(RootPart.Position,55)
	WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(1,0,1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-4,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(1,0,1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-4,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(1,0,1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-4,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	STOPPP = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(75)), 0.5)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.5)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, -1) * ANGLES(RAD(90), RAD(0), RAD(-75)) * RIGHTSHOULDERC0, 0.5)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -1) * ANGLES(RAD(90), RAD(0), RAD(75)) * LEFTSHOULDERC0, 0.5)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
	end
	PLAYANIMS = true
	ATTACK = false
	Rooted = false
end

function Grab()
	if Mouse.Target.Parent ~= Character and Mouse.Target.Parent.Parent ~= Character and Mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
		local HITBODY = Mouse.Target.Parent
		local TORS = HITBODY:FindFirstChild("Torso") or HITBODY:FindFirstChild("UpperTorso")
		local HUMAN = Mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
		if TORS ~= nil and HUMAN ~= nil then
			ATTACK = true
			Rooted = true
			PLAYANIMS = false
			TORS.Anchored = true
			RootPart.CFrame = TORS.CFrame * CF(0,0,4)
			HITFLOOR, HITPOS = Raycast(TORS.Position, (CF(TORS.Position, TORS.Position + VT(0, -1, 0))).lookVector, 4 * TORS.Size.Y/2, HITBODY)
			local FLOOR = HITFLOOR
			local POS = HITPOS
			UNANCHOR = false
			RootPart.Anchored = true
			CreateSound("1295446488", Torso, 10, 1)
			for i=0, 1, 0.1 / Animation_Speed do
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
			end
			for i=0, 1, 0.1 / Animation_Speed do
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(45)), 2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
			end
			RootPart.CFrame = TORS.CFrame * CF(0,0,2)
			CreateSound(260411131, TORS, 10, 1)
			Humanoid.CameraOffset = VT(MRANDOM(-50,50)/2.5,MRANDOM(-50,50)/2.5,MRANDOM(-50,50)/2.5)/30
			TORS.Anchored = false
			RootPart.Anchored = false
			local WELD = CreateWeldOrSnapOrMotor("Weld", TORS, RightArm, TORS, CF(0,-1,-0.5) * ANGLES(RAD(-90), RAD(0), RAD(0)), CF(0, 0, 0))
			Swait()
			RootPart.Anchored = true
			for i=0, 1, 0.1 / Animation_Speed do
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(45)), 2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-45)), 2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(150), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
			end
			Kill(HITBODY)
			ATTACK = false
			Rooted = false
			PLAYANIMS = true
			TORS.Anchored = false
			RootPart.Anchored = false
			Humanoid.CameraOffset = VT(0,0,0)
		end
	end
end




function Warp()
	if Mouse.Target then
		WACKYEFFECT({Time = 15 ,EffectType = "Block", Size = VT(45,45,45), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame*CF(0,0,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		for i = 0, 15 do
		   	WACKYEFFECT({Time = 25 ,EffectType = "Block", Size = VT(5,150,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame*CF(0,0,0)*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		end
		RootPart.CFrame = CF(Mouse.Hit.Position)*CF(0,5,0)
		WACKYEFFECT({Time = 15 ,EffectType = "Block", Size = VT(45,45,45), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame*CF(0,0,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		for i = 0, 15 do
		   	WACKYEFFECT({Time = 25 ,EffectType = "Block", Size = VT(5,150,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame*CF(0,0,0)*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		end
	end
end

function OhnoItsAnAssaultRifle()
	local SHOOTgun = CreatePart(3, Effects, "Fabric", 0, 1, BRICKC("Black"), "OhnoItsAnAssaultRifle", VT(0.25, 0.5, 5), true)
	CreateMesh("SpecialMesh", SHOOTgun, "FileMesh", "445385704", "445385723", VT(0.015, 0.015, 0.015), VT(0,-0.3,0))
	return SHOOTgun
end

function Conjour()
	local SHOOT = OhnoItsAnAssaultRifle()
	local CFRAME = CF(RootPart.Position) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0))*CF(0,MRANDOM(15,25)/3,MRANDOM(15,25)/3)
	local ORI = 90
	SHOOT.CFrame = CF(CFRAME.p,Mouse.Hit.p) * ANGLES(RAD(0), RAD(ORI), RAD(0))
	local GOODRIDDANCE = false
	CreateSound(233856115, SHOOT, 2, (MRANDOM(8,12)/10)+0.3, false)
	coroutine.resume(coroutine.create(function()
		repeat
			SHOOT.CFrame = Clerp(SHOOT.CFrame,CF(CFRAME.p,Mouse.Hit.p) * ANGLES(RAD(ORI), RAD(180), RAD(0)),0.25)
			Swait()
		until GOODRIDDANCE == true
		SHOOT.CFrame = SHOOT.CFrame * ANGLES(RAD(45), RAD(0), RAD(0))
		SHOOT.CanCollide = true
		SHOOT.Anchored = false
		SHOOT.Parent = workspace
		local bv = Instance.new("BodyVelocity",SHOOT) 
		bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
		bv.velocity = CF(SHOOT.Position,SHOOT.CFrame*CF(0,2.5,2).p).lookVector*45
		Debris:AddItem(bv,0.1)
		wait(5)
		for i = 1, 45 do
			Swait()
			SHOOT.Transparency = SHOOT.Transparency + 1/45
		end
		SHOOT:remove()
	end))
	for i = 1, 15 do
		Swait()
		SHOOT.Transparency = SHOOT.Transparency - 1/15
		ORI = ORI - 3
	end
	for i = 1, 15 do
		Swait()
		ORI = ORI - 3
	end
	wait(MRANDOM(2,8)/10)
	local HIT,POS = CastProperRay(SHOOT.Position, Mouse.Hit.p, 1000, Character)
	SpawnTrail(SHOOT.Position,POS)
	if HIT ~= nil then
		if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
			ApplyAoE(POS,55)
		end
	end
	WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = SHOOT.CFrame, MoveToPos = SHOOT.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(0,255,255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = SHOOT.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = 136523485, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,SHOOT.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = C3(0,255,255), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,SHOOT.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,255,255), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	Humanoid.CameraOffset = VT(MRANDOM(-5,5)/2.5,MRANDOM(-5,5)/2.5,MRANDOM(-5,5)/2.5)/30
	GOODRIDDANCE = true
end
local DECAL = IT("Decal")
function MagicRing()
	local RING = CreatePart(3, Effects, "Granite", 0, 1, "Maroon", "MagicRing", VT(0,0,0),true)
	local MESH = IT("BlockMesh",RING)
	local BOTTOMTEXTURE = DECAL:Clone()
	BOTTOMTEXTURE.Parent = RING
	BOTTOMTEXTURE.Face = "Bottom"
	BOTTOMTEXTURE.Name = "BottomTexture"
	local TOPTEXTURE = DECAL:Clone()
	TOPTEXTURE.Parent = RING
	TOPTEXTURE.Face = "Top"
	TOPTEXTURE.Name = "TopTexture"
	BOTTOMTEXTURE.Texture = "http://www.roblox.com/asset/?id=1208118228"
	TOPTEXTURE.Texture = "http://www.roblox.com/asset/?id=1208118228"
	BOTTOMTEXTURE.Color3 = C3(0,0,0)
	TOPTEXTURE.Color3 = C3(0,0,0)
	return RING,MESH,TOPTEXTURE,BOTTOMTEXTURE
end

function MakeRing()
	local RING = CreatePart(3, Effects, "Neon", 0, 1, BRICKC("Pearl"), "MagicRing", VT(0, 0, 0), true)
	local MSH = IT("BlockMesh", RING)
	local TOP = DECAL:Clone()
	local BOTTOM = DECAL:Clone()
	TOP.Parent = RING
	BOTTOM.Parent = RING
	TOP.Face = "Top"
	BOTTOM.Face = "Bottom"
	TOP.Texture = "http://www.roblox.com/asset/?id=121028264"
	BOTTOM.Texture = "http://www.roblox.com/asset/?id=121028264"
	local function REMOVE()
		coroutine.resume(coroutine.create(function()
			local SIZE = MSH.Scale.X
			for i = 1, 35 do
				Swait()
				MSH.Scale = MSH.Scale - VT(SIZE, 0, SIZE) / 60
				TOP.Transparency = TOP.Transparency + 0.02857142857142857
				BOTTOM.Transparency = BOTTOM.Transparency + 0.02857142857142857
				RING.CFrame = RING.CFrame * ANGLES(RAD(0), RAD(-5), RAD(0))
			end
			RING:remove()
		end))
	end
	return RING, MSH, REMOVE
end
function ApplyAoE4(POSITION,RANGE)
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						Kill(CHILD)
					end
				end
			end
		end
	end
end
function killdatbitchlmfao(POSITION,RANGE)
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						Kill(CHILD)
					end
				end
			end
		end
	end
end
function FaceMouse()
	Cam = workspace.CurrentCamera
	return {
		CFrame.new(Torso.Position, Vector3.new(Mouse.Hit.p.x, Torso.Position.y, Mouse.Hit.p.z)),
		Vector3.new(Mouse.Hit.p.x, Mouse.Hit.p.y, Mouse.Hit.p.z)
	}
end
function GIANTASSBEAMLMFAOKILLME()
	ATTACK = true
	CreateSound(136007472,Torso,10,1,false)
	local rngb = Instance.new("Part", Effects)
	rngb.Anchored = true
	rngb.BrickColor = BrickColor.new("Institutional white")
	rngb.CanCollide = false
	rngb.FormFactor = 3
	rngb.Name = "Ring"
	rngb.Material = "Neon"
	rngb.Size = Vector3.new(1, 0.05, 1)
	rngb.Transparency = 1
	rngb.TopSurface = 0
	rngb.BottomSurface = 0
	local rngmb = Instance.new("SpecialMesh", rngb)
	rngmb.MeshType = "Brick"
	rngmb.Name = "SizeMesh"
	rngmb.Scale = VT(0,1,0)
	local obj1 = script.chring2:Clone()
	obj1.Parent = Effects
	obj1.Transparency = 1
	obj1.Size = VT(1,1,1)
	obj1.Color = BrickColor.new("Institutional white").Color
	local orb = rngb:Clone()
	orb.Parent = Effects
	orb.Transparency = 0
	orb.BrickColor = BrickColor.new("Institutional white")
	orb.Size = VT(1,1,1)
	local orbmish = orb.SizeMesh
	orbmish.Scale = VT(0,0,0)
	orbmish.MeshType = "Sphere"

	local orbe = rngb:Clone()
	orbe.Parent = Effects
	orbe.Transparency = 0.5
	orbe.BrickColor = BrickColor.new("Institutional white")
	orbe.Size = VT(1,1,1)
	local orbmish2 = orbe.SizeMesh
	orbmish2.Scale = VT(0,0,0)
	orbmish2.MeshType = "Sphere"
	orbe.Color = BrickColor.new("Institutional white").Color

	rngb:Destroy()
	CreateSound(136007472,Torso,10,1,false)
	local rval = 0
	local eval = 1
	coroutine.resume(coroutine.create(function()
		for i = 0,7,0.1 do
			swait()
			rval = rval + math.random(30,40)
			eval = eval + 0.45
			obj1.CFrame = RootPart.CFrame*CFrame.new(0,1,-5)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(rval))
		end
	end))
	RootPart.CFrame = FaceMouse()[1]
	for i = 0,5,0.1 do
		swait()
		orb.CFrame = RootPart.CFrame*CFrame.new(0,0.5,0) + RootPart.CFrame.lookVector*11.5
		orbe.CFrame = RootPart.CFrame*CFrame.new(0,0.5,0) + RootPart.CFrame.lookVector*11.5
		rval = rval + math.random(30,40)
		eval = eval + 0.45
		obj1.Transparency = obj1.Transparency - 0.005
		obj1.Size = obj1.Size + VT(0.7,0.7,0.1)
		obj1.CFrame = RootPart.CFrame*CFrame.new(0,1,-5)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(rval))

		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0*CF(0,0,0)* ANGLES(math.rad(0),math.rad(0),math.rad(90)),0.3)
		Torso.Neck.C0 = Clerp(Torso.Neck.C0,NECKC0 *ANGLES(math.rad(0),math.rad(0),math.rad(-90)),.3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * ANGLES(math.rad(90), math.rad(0), math.rad(90)), 0.3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * ANGLES(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
		RightHip.C0=Clerp(RightHip.C0,CF(1,-1 - 0.05 * math.cos(SINE / 25),0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-0.5),math.rad(0),math.rad(0)),.3)
		LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1 - 0.05 * math.cos(SINE / 25),0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(10),math.rad(0)),.3)

	end
	coroutine.resume(coroutine.create(function()
		local eff = Instance.new("ParticleEmitter",obj1)
		eff.Texture = "rbxassetid://2273224484"
		eff.LightEmission = 1
		eff.Rate = 27500
		eff.Lifetime = NumberRange.new(1,2)
		eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,60,0),NumberSequenceKeypoint.new(0.2,3,0),NumberSequenceKeypoint.new(0.8,24,0),NumberSequenceKeypoint.new(1,0,0)})
		eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.2,0,0),NumberSequenceKeypoint.new(0.5,0,0),NumberSequenceKeypoint.new(1,1,0)})
		eff.Speed = NumberRange.new(100,650)
		eff.Drag = 5
		eff.Rotation = NumberRange.new(-500,500)
		eff.VelocitySpread = 9000
		eff.RotSpeed = NumberRange.new(-50,50)
		wait(0.35)
		eff.Enabled = false
	end))
	orbe.Transparency = 1
	orb.Transparency = 1
	orb.CFrame = RootPart.CFrame*CFrame.new(0,0.5,0) + RootPart.CFrame.lookVector*5
	CreateSound(294188875,Torso,10,1,false)
	local a = Instance.new("Part",Character)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = BrickColor.new("Institutional white")
	a.Material = "Neon"
	a.Transparency = 0
	a.Shape = "Cylinder"
	a.CanCollide = false
	local a2 = Instance.new("Part",Character)
	a2.Name = "Direction"	
	a2.Anchored = true
	a2.BrickColor = BrickColor.new("Institutional white")
	a2.Material = "Neon"
	a2.Transparency = 0.5
	a2.Shape = "Cylinder"
	a2.CanCollide = false
	local ba = Instance.new("Part",Character)
	ba.Name = "HitDirect"	
	ba.Anchored = true
	ba.BrickColor = BrickColor.new("Institutional white")
	ba.Material = "Neon"
	ba.Transparency = 1
	ba.CanCollide = false
	local ray = Ray.new(
		orb.CFrame.p,                           -- origin
		(Mouse.Hit.p - orb.CFrame.p).unit * 1000 -- direction
	) 
	local ignore = Character
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	a2.BottomSurface = 10
	a2.TopSurface = 10
	local distance = (orb.CFrame.p - position).magnitude
	a.Size = Vector3.new(distance, 1, 1)
	a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
	a2.Size = Vector3.new(distance, 1, 1)
	a2.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
	ba.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance)
	a.CFrame = a.CFrame*CFrame.Angles(0,math.rad(90),0)
	a2.CFrame = a2.CFrame*CFrame.Angles(0,math.rad(90),0)
	game:GetService("Debris"):AddItem(a, 20)
	game:GetService("Debris"):AddItem(a2, 20)
	game:GetService("Debris"):AddItem(ba, 20)
	local msh = Instance.new("SpecialMesh",a)
	msh.MeshType = "Cylinder"
	msh.Scale = VT(1,5*5,5*5)
	local msh2 = Instance.new("SpecialMesh",a2)
	msh2.MeshType = "Cylinder"
	msh2.Scale = VT(1,6*5,6*5)
	coroutine.resume(coroutine.create(function()
		for i = 0,10,0.1 do
			swait()
			
			ApplyAoE(Mouse.Hit.Position,25)
			turnto(Mouse.Hit.Position)
			rval = rval + math.random(30,40)
			eval = eval + 0.45
			obj1.Transparency = obj1.Transparency - 0.005
			obj1.Size = obj1.Size + VT(0,0,0.075)
			obj1.Size = obj1.Size - VT(0.125,0.125,0)
			obj1.CFrame = RootPart.CFrame*CFrame.new(0,1,-5)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(rval))
			orb.CFrame = RootPart.CFrame*CFrame.new(0,0.5,0) + RootPart.CFrame.lookVector*4
			orbe.CFrame = RootPart.CFrame*CFrame.new(0,0.5,0) + RootPart.CFrame.lookVector*4
			ray = Ray.new(
				orb.CFrame.p,                           -- origin
				(Mouse.Hit.p - orb.CFrame.p).unit * 1000 -- direction
			) 
			hit, position, normal = workspace:FindPartOnRay(ray, ignore)
			distance = (orb.CFrame.p - position).magnitude
			RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * ANGLES(math.rad(90), math.rad(0), math.rad(90)), 0.3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * ANGLES(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
			a.Size = Vector3.new(distance, 1, 1)
			a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
			a2.Size = Vector3.new(distance, 1, 1)
			a2.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance/2)
			ba.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance)
			a.CFrame = a.CFrame*CFrame.Angles(0,math.rad(90),0)
			a2.CFrame = a2.CFrame*CFrame.Angles(0,math.rad(90),0)
			msh.Scale = msh.Scale - VT(0,0.025*5,0.025*5)
			msh2.Scale = msh2.Scale - VT(0,0.03*5,0.03*5)
			coroutine.resume(coroutine.create(function()
				local eff = Instance.new("ParticleEmitter",ba)
				eff.Texture = "rbxassetid://2273224484"
				eff.LightEmission = 1
				eff.Rate = 50
				eff.Lifetime = NumberRange.new(0.5,2)
				eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,60,0),NumberSequenceKeypoint.new(0.2,3,0),NumberSequenceKeypoint.new(0.8,24,0),NumberSequenceKeypoint.new(1,0,0)})
				eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
				eff.Speed = NumberRange.new(50,450)
				eff.Drag = 5
				eff.Rotation = NumberRange.new(-500,500)
				eff.VelocitySpread = 9000
				eff.RotSpeed = NumberRange.new(-50,50)
				wait(0.25)
				eff.Enabled = false
			end))
			sphereMK(5,1.5,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),15*2,15*2,25*2,-0.15,BrickColor.new("Institutional white"),0)
			sphereMK(5,1.5,"Add",ba.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),15*2,15*2,25*2,-0.15,BrickColor.new("Institutional white"),0)
			MagniDamage(ba, 30*2, 10,20, 0, "Normal")
		end
		ATTACK = false
		for i = 0,49 do
			swait()
			msh.Scale = msh.Scale - VT(0,0.05*5,0.05*5)
			msh2.Scale = msh2.Scale - VT(0,0.06*5,0.06*5)
			orbe.Transparency = obj1.Transparency + 0.02
			orb.Transparency = obj1.Transparency + 0.02
			obj1.Transparency = obj1.Transparency + 0.02
			obj1.Size = obj1.Size + VT(0,-0.5,-0.5)
		end
		a:Destroy()
		a2:Destroy()
		orb:Destroy()
		orbe:Destroy()
		wait(3)
		obj1:Destroy()
		ba:Destroy()
	end))
end

function Beam()
	ATTACK = true
	Rooted = false
	local GYRO = IT("BodyGyro", RootPart)
	GYRO.D = 20
	GYRO.P = 4000
	GYRO.MaxTorque = VT(0, 40000, 0)
	local RING, MESH, DELET = MakeRing()
	local POS = RootPart.Position + VT(0, 25, 0)
	RING.CFrame = CF(POS, Mouse.Hit.p) * ANGLES(RAD(90), RAD(0), RAD(0))
	CreateSound(459523787, RING, 8, 1, false)
	local BLASTS = {468991944, 468991990}
	coroutine.resume(coroutine.create(function()
		local E = 0
		repeat
			E = E + 5
			GYRO.CFrame = CF(RootPart.Position, Mouse.Hit.p)
			Swait()
			RING.CFrame = CF(POS, Mouse.Hit.p) * ANGLES(RAD(90), RAD(E), RAD(0))
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.45 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(90)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 + 4.5 * SIN(SINE / 12)), RAD(0), RAD(-90)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(0 - 7.5 * SIN(SINE / 12)), RAD(0 + 7.5 * SIN(SINE / 12)), RAD(-12 - 7.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.15 * COS(SINE / 12), -0.01) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5 + 0.25 * COS(SINE / 12), -0.5) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		until ATTACK == false
		GYRO:remove()
		DELET()
	end))
	for i = 1, 50 do
		Swait()
		MESH.Scale = MESH.Scale + VT(22, 0, 22)
	end
	for i = 1, 25 do
		Swait()
		WACKYEFFECT({
			Time = 15,
			EffectType = "Sphere",
			Size = VT(4, 4, 4),
			Size2 = VT(0, 0, 0),
			Transparency = 1,
			Transparency2 = 0,
			CFrame = CF(RING.Position) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))) * CF(0, 0, 35),
			MoveToPos = RING.Position,
			RotationX = 0,
			RotationY = 0,
			RotationZ = 0,
			Material = "Neon",
			Color = C3(1,0,0),
			SoundID = nil,
			SoundPitch = nil,
			SoundVolume = nil
		})
	end
	local LOOP = 0
	local BEAM = CreatePart(3, Effects, "Neon", 0, 0, BRICKC("Crimson"), "Beam", VT(0, 0, 0), true)
	MakeForm(BEAM, "Cyl")
	CreateSound(BLASTS[MRANDOM(1, #BLASTS)], RING, 5, MRANDOM(9, 11) / 10, false)
	repeat
		local DISTANCE = (RING.Position - Mouse.Hit.p).Magnitude
		if DISTANCE < 2000 then
			BEAM.Size = VT(10 + 2 * COS(SINE / 4), DISTANCE, 10 + 2 * COS(SINE / 4))
			BEAM.CFrame = CF(RING.Position, Mouse.Hit.p) * CF(0, 0, -DISTANCE / 2) * ANGLES(RAD(90), RAD(0), RAD(0))
			ApplyAoE4(Mouse.Hit.p,3,5,1000,0,false)
			WACKYEFFECT({
				Time = 35,
				EffectType = "Sphere",
				Size = VT(10 + 2 * COS(SINE / 4), 10 + 2 * COS(SINE / 4), 10 + 2 * COS(SINE / 4)) * 2,
				Size2 = VT(5, 75, 5),
				Transparency = 0,
				Transparency2 = 1,
				CFrame = CF(Mouse.Hit.p) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))),
				MoveToPos = nil,
				RotationX = 0,
				RotationY = 0,
				RotationZ = 0,
				Material = "Neon",
				Color = C3(1,0,0),
				SoundID = 2918050487,
				SoundPitch = MRANDOM(9, 12) / 10,
				SoundVolume = 10
			})
			Swait()
			LOOP = LOOP + 1
		end
	until KEYHOLD == false and LOOP >= 35 or DISTANCE >= 2000
	coroutine.resume(coroutine.create(function()
		for i = 1, 15 do
			Swait()
			BEAM.Size = BEAM.Size - VT(0.2, 0, 0.2)
			BEAM.Transparency = BEAM.Transparency + 0.06666666666666667
		end
		BEAM:remove()
	end))
	ATTACK = false
	Rooted = false
end

function Shot2()
	ATTACK = true
	Rooted = false
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame =  Barrel.CFrame, ANGLES(RAD(0), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame =  Barrel.CFrame, ANGLES(RAD(0), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	for i=0, 0.05, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.05, 0.1 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(RightHole.Position, Mouse.Hit.p, 4000, Character)
		SpawnTrail(RightHole.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				ApplyAoE(POS,55)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(3,1,3), Size2 = VT(10,3,10), Transparency = 0, Transparency2 = 1, CFrame = RightHole.CFrame, MoveToPos = RightHole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(3,1,3), Size2 = VT(10,3,10), Transparency = 0, Transparency2 = 1, CFrame = RightHole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = color, SoundID = 570196601, SoundPitch = 1, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(3,3,3), Size2 = VT(10,10,10), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,RightHole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "SPhere", Size = VT(3,3,3), Size2 = VT(10,10,10), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,RightHole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		for i=0, 0.05, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame =  Barrel.CFrame, ANGLES(RAD(0), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame =  Barrel.CFrame, ANGLES(RAD(0), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	ATTACK = false
	Rooted = false
end
function BANISHERSHOT()
	ATTACK = true
	Rooted = false
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame =  Barrel.CFrame, ANGLES(RAD(0), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame =  Barrel.CFrame, ANGLES(RAD(0), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	for i=0, 0.05, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.05, 0.1 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(RightHole.Position, Mouse.Hit.p, 4000, Character)
		SpawnTrail(RightHole.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(3,1,3), Size2 = VT(10,3,10), Transparency = 0, Transparency2 = 1, CFrame = RightHole.CFrame, MoveToPos = RightHole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(3,1,3), Size2 = VT(10,3,10), Transparency = 0, Transparency2 = 1, CFrame = RightHole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = color, SoundID = 570196601, SoundPitch = 1, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(3,3,3), Size2 = VT(10,10,10), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,RightHole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "SPhere", Size = VT(3,3,3), Size2 = VT(10,10,10), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,RightHole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		for i=0, 0.05, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame =  Barrel.CFrame, ANGLES(RAD(0), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame =  Barrel.CFrame, ANGLES(RAD(0), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	ATTACK = false
	Rooted = false
end
function ToggleBlade()
	WACKYEFFECT({Time = 25,EffectType = "Block", Size = VT(0,0,0), Size2 = VT(25,25,25), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame, MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = 260435136, SoundPitch = 0.9, SoundVolume = 10})
	WACKYEFFECT({Time = 12.5,EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(0.25,0,0.25), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame, MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({Time = 12.5,EffectType = "Ring", Size = VT(0,0,0), Size2 = VT(1.25,2.5,2.5), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame, MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({Time = 12.5,EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(25,0,25), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame, MoveToPos = nil, RotationX = MRANDOM(1,360), RotationY = MRANDOM(1,360), RotationZ = MRANDOM(1,360), Material = "Neon", Color = C3(0.5,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	if WEAPONEQUIPPED == false then
		WEAPONEQUIPPED = true
	else
		WEAPONEQUIPPED = false
	end
end
function mUrDeR()
	ATTACK = true
	Rooted = false
	repeat
		for i=0, 2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 3 + 1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(180), RAD(0), RAD(5)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(-10), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(-10), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			spawnwave2(Mouse.Hit.p)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end

function Shot24()
	ATTACK = true
	Rooted = false
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame =  Barrel.CFrame, ANGLES(RAD(0), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame =  Barrel.CFrame, ANGLES(RAD(0), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	for i=0, 0.05, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.05, 0.1 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(RightHole.Position, Mouse.Hit.p, 4000, Character)
		SpawnTrail(RightHole.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(3,1,3), Size2 = VT(10,3,10), Transparency = 0, Transparency2 = 1, CFrame = RightHole.CFrame, MoveToPos = RightHole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(3,1,3), Size2 = VT(10,3,10), Transparency = 0, Transparency2 = 1, CFrame = RightHole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = color, SoundID = 570196601, SoundPitch = 1, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(3,3,3), Size2 = VT(10,10,10), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,RightHole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "SPhere", Size = VT(3,3,3), Size2 = VT(10,10,10), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,RightHole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		for i=0, 0.05, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame =  Barrel.CFrame, ANGLES(RAD(0), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame =  Barrel.CFrame, ANGLES(RAD(0), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	ATTACK = false
	Rooted = false
end

function kickshot()
	ATTACK = true
	Rooted = false
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame =  Barrel.CFrame, ANGLES(RAD(0), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame =  Barrel.CFrame, ANGLES(RAD(0), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	for i=0, 0.05, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.05, 0.1 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(RightHole.Position, Mouse.Hit.p, 4000, Character)
		SpawnTrail(RightHole.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Kick(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(3,1,3), Size2 = VT(10,3,10), Transparency = 0, Transparency2 = 1, CFrame = RightHole.CFrame, MoveToPos = RightHole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(3,1,3), Size2 = VT(10,3,10), Transparency = 0, Transparency2 = 1, CFrame = RightHole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = color, SoundID = 570196601, SoundPitch = 1, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(3,3,3), Size2 = VT(10,10,10), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,RightHole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "SPhere", Size = VT(3,3,3), Size2 = VT(10,10,10), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,RightHole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		for i=0, 0.05, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame =  Barrel.CFrame, ANGLES(RAD(0), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame =  Barrel.CFrame, ANGLES(RAD(0), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	ATTACK = false
	Rooted = false
end
function Shote()
	ATTACK = true
	Rooted = false
	for i=0, 0.01, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.45 * COS(SINE / 12)) * ANGLES(RAD(7 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(5 + 1 * SIN(SINE / 12))), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 22)), RAD(15), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0.5) * ANGLES(RAD(83), RAD(30), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		--LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	repeat
		for i=0, 0.01, 0.1 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.45 * COS(SINE / 12)) * ANGLES(RAD(7 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(5 + 1 * SIN(SINE / 12))), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 22)), RAD(15), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0.5) * ANGLES(RAD(83), RAD(30), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			--LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(holsick.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(holsick.Position,POS)
		WACKYEFFECT({Time = 25, EffectType = "Ring", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = holsick.CFrame, MoveToPos = holsick.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Ring", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = holsick.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = rainbowcolor, SoundID = 904440937, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Ring", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,holsick.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Ring", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,holsick.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color =MODECOLOR, SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = holsick.CFrame, MoveToPos = holsick.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = holsick.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = rainbowcolor, SoundID = 904440937, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,holsick.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,holsick.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				shieldmg(POS,55)
			end
		end

		for i=0, 0.01, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.45 * COS(SINE / 12)) * ANGLES(RAD(7 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(5 + 1 * SIN(SINE / 12))), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 22)), RAD(15), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0.5) * ANGLES(RAD(90), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end
function Overthrower()
	ATTACK = true
	Rooted = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * 1, 0 * 1, 0 * 1 + 0.05 * COS(SINE / 12) * 1) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * 1, 0 * 1, 0 + ((1 * 1) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * 1, 0.5 * 1, 0 * 1) * ANGLES(RAD(180), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * 1, 0.5 * 1, 0 * 1) * ANGLES(RAD(180), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * 1, -1 * 1, -0 * 1) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * 1, -1 * 1, -0 * 1) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	CreateSound("348663022", Torso, 5, 1)
	local StartPos = RootPart.CFrame * CF(0,10,0).p
	for i = 1, 5 do
		MagicSphere2(25,25,CF(StartPos),"Really red")
		Swait(7.5)
		MagicSphere2(25,25,CF(StartPos),"Really black")
		Swait(7.5)
	end
	local soundeffect = IT("Sound",Torso)
	soundeffect.SoundId = "rbxassetid://487186990"
	soundeffect.Looped = true
	soundeffect.Volume = 10
	soundeffect.Playing = true
	repeat
		WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = CF(StartPos), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = 642890855, SoundPitch = 0.45, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
		WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = CF(StartPos), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
		Lightning(StartPos,Mouse.Hit.p,15,3.5,BrickColor.new("Really black"),math.random(15,35),1,3,0,true,55) Lightning(StartPos,Mouse.Hit.p,15,3.5,BrickColor.new("Really red"),math.random(15,35),1,3,0,true,55)
		for i = 0, 2 do
			WACKYEFFECT({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = CF(StartPos)*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
			WACKYEFFECT({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = CF(StartPos)*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
		end
		WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = 192410089, SoundPitch = .55, SoundVolume = 8, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
		WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
		for i = 0, 2 do
			WACKYEFFECT({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
			WACKYEFFECT({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
		end
		turnto(Mouse.Hit.p)
		local RayHit, RayPos, RayNormal = CastZapRay(StartPos, Mouse.Hit.p, 750, Character, false)
		local distance = (StartPos - RayPos).magnitude
		ApplyAoE(RayPos,15)
		MagicSphere2(25,25,CF(StartPos),"Really red")
		Swait(5)
		MagicSphere2(25,25,CF(StartPos),"Really black")
		Swait(5)
	until KEYHOLD == false
	soundeffect:remove()
	ATTACK = false
	Rooted = false
end

function Shot()
	ATTACK = true
	Rooted = false
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame =  Barrel.CFrame, ANGLES(RAD(0), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame =  Barrel.CFrame, ANGLES(RAD(0), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	for i=0, 0.05, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.05, 0.1 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(RightHole.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(RightHole.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				ApplyAoE(POS,55)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(3,1,3), Size2 = VT(10,3,10), Transparency = 0, Transparency2 = 1, CFrame = RightHole.CFrame, MoveToPos = RightHole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(3,1,3), Size2 = VT(10,3,10), Transparency = 0, Transparency2 = 1, CFrame = RightHole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = color, SoundID = 570196601, SoundPitch = 1, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(3,3,3), Size2 = VT(10,10,10), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,RightHole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "SPhere", Size = VT(3,3,3), Size2 = VT(10,10,10), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,RightHole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		for i=0, 0.05, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame =  Barrel.CFrame, ANGLES(RAD(0), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame =  Barrel.CFrame, ANGLES(RAD(0), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	ATTACK = false
	Rooted = false
end
function BlackBlast()
	if ANIM ~= "Fall" and ANIM ~= "Jump" then
		ATTACK = true
		Rooted = true
		local GYRO = IT("BodyGyro",RootPart)
		GYRO.D = 25
		GYRO.P = 20000
		GYRO.MaxTorque = VT(0,4000000,0)
		GYRO.CFrame = CF(RootPart.Position,Mouse.Hit.p)
		CreateSound(429459101,Torso,5,1.5,false)
		local GYROING = true
		coroutine.resume(coroutine.create(function()
			repeat
				Swait()
				GYRO.CFrame = CF(RootPart.Position,Mouse.Hit.p)
			until GYROING == false
			GYRO:Remove()
		end))
		for i=0, 1, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.5 + 0.05 * SIN(SINE / 12), -0.7) * ANGLES(RAD(0), RAD(0), RAD(-95)) * ANGLES(RAD(5), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.6 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(-15)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.6 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(15)), 1 / Animation_Speed)
		end
		for i = 1, 13 do
			WACKYEFFECT({Time = 55, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(i,0,i)*2, Transparency = 0.8, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,7.5-i) * ANGLES(RAD(-90), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
		end
		CreateSound(1368637781,Torso,5,1.5,false)
		WACKYEFFECT({Time = 65, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(12,12,12), Transparency = 0, Transparency2 = 1, CFrame = CF(RootPart.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 331666014, SoundPitch = 1, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})
		for index, CHILD in pairs(Character:GetChildren()) do
			if CHILD:IsA("BasePart") then
				CHILD.Transparency = CHILD.Transparency + 1
			elseif CHILD:IsA("Accessory") then
				CHILD.Handle.Transparency = CHILD.Handle.Transparency + 1
			end
		end
		GYROING = false
		coroutine.resume(coroutine.create(function()
			coroutine.resume(coroutine.create(function()
				for i=1, 25 do
					Swait()
					RootPart.CFrame = RootPart.CFrame*CF(0,0,(25-i)/25)
				end
			end))
			repeat
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-35), RAD(MRANDOM(-5,5)), RAD(MRANDOM(-5,5))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-25+MRANDOM(-5,5)), RAD(-15+MRANDOM(-5,5)), RAD(35)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-25+MRANDOM(-5,5)), RAD(15+MRANDOM(-5,5)), RAD(-35)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.1) * ANGLES(RAD(0), RAD(85), RAD(MRANDOM(-5,5))) * ANGLES(RAD(-1), RAD(0), RAD(-12)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.1) * ANGLES(RAD(0), RAD(-85), RAD(MRANDOM(-5,5))) * ANGLES(RAD(-1), RAD(0), RAD(12)), 1 / Animation_Speed)
			until ATTACK == false
		end))
		coroutine.resume(coroutine.create(function()
			local BULLETCFRAME = RootPart.CFrame
			local EXPLODED = false
			coroutine.resume(coroutine.create(function()
				repeat
					Swait()
					WACKYEFFECT({Time = 15, EffectType = "Block", Size = VT(15,15,15), Size2 = VT(10,10,10), Transparency = 0.3, Transparency2 = 1, CFrame = CF(BULLETCFRAME.p), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})
					WACKYEFFECT({Time = 15, EffectType = "Block", Size = VT(15,15,15), Size2 = VT(25,25,25), Transparency = 0.8, Transparency2 = 1, CFrame = CF(BULLETCFRAME.p), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})
				until EXPLODED == true
			end))
			for i=1, 50 do
				Swait()
				BULLETCFRAME = BULLETCFRAME*CF(0,0,-((50-i)/15))
				local RAY,HIT,NORM = Raycast(BULLETCFRAME.p,BULLETCFRAME.lookVector,7,Character)
				if RAY then
					ApplyAoE(BULLETCFRAME.p,25,12,54,350,false)
					WACKYEFFECT({Time = 45, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,0,160), Transparency = 0.6, Transparency2 = 1, CFrame = CF(HIT,HIT+NORM) * ANGLES(RAD(-90), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 765590102, SoundPitch = MRANDOM(9,11)/10, SoundVolume = 10})
					break
				end
			end
			wait(0.5)
			WACKYEFFECT({Time = 85, EffectType = "Sphere", Size = VT(25,25,25), Size2 = VT(75,75,75), Transparency = 0, Transparency2 = 1, CFrame = CF(BULLETCFRAME.p), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 401056199, SoundPitch = 0.7, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})
			WACKYEFFECT({Time = 85, EffectType = "Sphere", Size = VT(25,25,25), Size2 = VT(50,50,50), Transparency = 0, Transparency2 = 1, CFrame = CF(BULLETCFRAME.p), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 401056199, SoundPitch = 1, SoundVolume = 10, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})
			for E = 1, 3 do
				for i = 1, 5 do
					WACKYEFFECT({Time = 50, EffectType = "Round Slash", Size = VT(0,0,0), Size2 = VT(E,0,E)/2, Transparency = 0, Transparency2 = 1, CFrame = CF(BULLETCFRAME.p) * ANGLES(RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 10})
				end
			end
			ApplyAoE(BULLETCFRAME.p,125,25,75,250,false)
			EXPLODED = true
			for i = 1, 15 do
				Swait()
				WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,0,160), Transparency = 0.6, Transparency2 = 1, CFrame = BULLETCFRAME * ANGLES(RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 1, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = MRANDOM(9,11)/10, SoundVolume = MRANDOM(9,11)/2})
			end
		end))
		wait(0.5)
		for index, CHILD in pairs(Character:GetChildren()) do
			if CHILD:IsA("BasePart") then
				CHILD.Transparency = CHILD.Transparency - 1
			elseif CHILD:IsA("Accessory") then
				CHILD.Handle.Transparency = CHILD.Handle.Transparency - 1
			end
		end
		ATTACK = false
		Rooted = false
	end
end
function Karma_Beam()
	ATTACK = true
	Rooted = false
	for i=0, 0.005, 0.05 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90+MRANDOM(-90,90)), RAD(0), RAD(60+MRANDOM(-90,90))) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		--RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		--LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.005, 0.05 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90+MRANDOM(-90,90)), RAD(0), RAD(60+MRANDOM(-90,90))) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			--RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			--LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		local val = MRANDOM(1,255)
		local HIT2,POS2 = CastProperRay(RightArm.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail2(RightArm.Position,POS2)
		if HIT2 ~= nil then
			if HIT2.Parent ~= workspace and HIT2.Parent.ClassName ~= "Folder" then
				ApplyAoE(POS2,5000000)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(5,0,5), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = RightArm.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(5,0,5), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = 340722848, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(5,0,5), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS2,RightArm.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(5,0,5), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS2,RightArm.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		Humanoid.CameraOffset = VT(MRANDOM(-5,5)/2.5,MRANDOM(-5,5)/2.5,MRANDOM(-5,5)/2.5)/30
		for i=0, 0.005, 0.05 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-5), RAD(0), RAD(60)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(130), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			--RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			--LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end
function AKShot()
	local HIT2,POS2 = CastProperRay(RightArm.Position, Mouse.Hit.p, 1000, Character)
	ATTACK = true
	repeat
		local HIT,POS = CastProperRay(RightHole.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(RightHole.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				ApplyAoE(POS,55)
			end
		end
		ApplyAoE(POS,8)
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2+1*COS(SINE/18)) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			--RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			--LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		WACKYEFFECT2({Time = 25, EffectType = "Box", Size = VT(2,0,2), Size2 = VT(6,7.5,6)/2, Transparency = 0, Transparency2 = 1, CFrame = RightHole.CFrame * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = RightHole.CFrame*CF(0,0,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT2({Time = 25, EffectType = "Box", Size = VT(2,0,2), Size2 = VT(6,6.5,6)/2, Transparency = 0, Transparency2 = 1, CFrame = RightHole.CFrame * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 130113322, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 10})
		WACKYEFFECT2({Time = 25, EffectType = "Box", Size = VT(3,0,3), Size2 = VT(6,6.5,6), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,RightHole.Position) * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT2({Time = 25, EffectType = "Box", Size = VT(3,0,3), Size2 = VT(6,6.5,6), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,RightHole.Position) * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	until KEYHOLD == false
	ATTACK = false
end
function HandBeam()
	ATTACK = true
	local savespeed = Speed
	Speed = 5
	for i = 0, 0.5, 0.05 do
		swait()
		turnto(Mouse.Hit.Position)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(30)), 1 / 3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(-30)), 1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(30)) * RIGHTSHOULDERC0, 1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)) * LEFTSHOULDERC0, 1 / 3)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(80), math.rad(0)) * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0)), 1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-70), math.rad(0)) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 1 / 3)
	end
	ApplyAoE(Mouse.Hit.Position,10)
	WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = 642890855, SoundPitch = 0.45, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	Lightning(RightArm.Position,Mouse.Hit.p,15,3.5,BrickColor.new("Really black"),math.random(15,35),1,3,0,true,55) Lightning(RightArm.Position,Mouse.Hit.p,15,3.5,BrickColor.new("Really Black"),math.random(15,35),1,3,0,true,55)
	for i = 0, 2 do
		WACKYEFFECT({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
		WACKYEFFECT({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
	end
	WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = 192410089, SoundPitch = .55, SoundVolume = 8, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECT({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	for i = 0, 2 do
		WACKYEFFECT({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
		WACKYEFFECT({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
	end
	for i = 0, 0.5, 0.075 do
		swait()
		turnto(Mouse.Hit.Position)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(60)), 1 / 3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-60)), 1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(160), math.rad(-20), math.rad(60)) * RIGHTSHOULDERC0, 1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40), math.rad(5), math.rad(5)) * LEFTSHOULDERC0, 1 / 3)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(75), math.rad(0)) * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0)), 1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-65), math.rad(0)) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 1 / 3)
	end
	Speed = savespeed
	ATTACK = false
end

function Shoot()
	ATTACK = true
	repeat
		local HIT,POS = CastProperRay(RightHole.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(RightHole.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				ApplyAoE(POS,55)
			end
		end
		ApplyAoE(POS,8)
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2+1*COS(SINE/18)) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			--RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			--LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		WACKYEFFECT2({Time = 25, EffectType = "Box", Size = VT(2,0,2), Size2 = VT(6,7.5,6)/2, Transparency = 0, Transparency2 = 1, CFrame = RightHole.CFrame * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = RightHole.CFrame*CF(0,0,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT2({Time = 25, EffectType = "Box", Size = VT(2,0,2), Size2 = VT(6,6.5,6)/2, Transparency = 0, Transparency2 = 1, CFrame = RightHole.CFrame * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 130113322, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 10})
		WACKYEFFECT2({Time = 25, EffectType = "Box", Size = VT(3,0,3), Size2 = VT(6,6.5,6), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,RightHole.Position) * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT2({Time = 25, EffectType = "Box", Size = VT(3,0,3), Size2 = VT(6,6.5,6), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,RightHole.Position) * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	until KEYHOLD == false
	ATTACK = false
end
---VoidShoot function was made by xXTreyvonGXx
function Voidshoot()

	ATTACK = true
	Rooted = false
	local mousehit = Mouse.Hit
	shieldmg(mousehit.p,10)
	local HIT,POS = CastProperRay(RightHole.Position,mousehit.p,1000,Character)
	SpawnTrail(RightHole.Position,POS)
	if HIT ~= nil then
		if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
			shieldmg(mousehit.p,10)
		end
	end
	shieldmg(mousehit.p,10)
	for i=0, 0.2, 0.1 / Animation_Speed do
		Swait()
	turnto(Mouse.Hit.p)
	RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2+1*COS(SINE/18)) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.5 / Animation_Speed)
	Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
	RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
	--RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	--LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
end
		WACKYEFFECT2({Time = 25, EffectType = "Box", Size = VT(2,0,2), Size2 = VT(6,7.5,6)/2, Transparency = 0, Transparency2 = 1, CFrame = RightHole.CFrame * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = RightHole.CFrame*CF(0,0,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT2({Time = 25, EffectType = "Box", Size = VT(2,0,2), Size2 = VT(6,6.5,6)/2, Transparency = 0, Transparency2 = 1, CFrame = RightHole.CFrame * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100), SoundID = 130113322, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 10})
		WACKYEFFECT2({Time = 25, EffectType = "Box", Size = VT(3,0,3), Size2 = VT(6,6.5,6), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,RightHole.Position) * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	WACKYEFFECT2({Time = 25, EffectType = "Box", Size = VT(3,0,3), Size2 = VT(6,6.5,6), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,RightHole.Position) * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})

	Rooted = false
	ATTACK = false
	
end

function VoidBox()
	---VoidBox function was made by xXTreyvonGXx
	Banisher.Parent = nil
	ATTACK = true
	Rooted = false
	local mousehit = Mouse.Hit
	shieldmg(mousehit.p,10)
	local HIT,POS = CastProperRay(RightArm.Position,mousehit.p,1000,Character)
	if HIT ~= nil then
		if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
			shieldmg(mousehit.p,10)
		end
	end
	shieldmg(mousehit.p,10)
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.025 * COS(SINE / 12), -0.5) * ANGLES(RAD(90), RAD(0 - 7.5 * SIN(SINE / 12)), RAD(45 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 - 0.1 * COS(SINE / 18)) * ANGLES(RAD(5 * COS(SINE / 18)), RAD(0), RAD(-30)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(20 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(30 *COS(SINE/12))), 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 - 0.1 * COS(SINE / 18), 0) * ANGLES(RAD(0), RAD(0 - -10.5 * SIN(SINE / 16)), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.1 * COS(SINE / 18), -0.01) * ANGLES(RAD(5 * COS(SINE / 18)), RAD(85), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0.1 * COS(SINE / 18), -0.01) * ANGLES(RAD(5 * COS(SINE / 18)), RAD(-70), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	WACKYEFFECT2({Time = 150, EffectType = "Box", Size = VT(25,0,25), Size2 = VT(6,6.5,6), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,RightArm.Position) * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100), SoundID = 4557251669, SoundPitch = 1, SoundVolume = 10})
	WACKYEFFECT2({Time = 150, EffectType = "Box", Size = VT(25,0,25), Size2 = VT(6,6.5,6), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,RightArm.Position) * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100), SoundID = nil, SoundPitch = 1, SoundVolume = 8})

	Rooted = false
	ATTACK = false
	wait(2)
Banisher.Parent = nil
end

function Ilslice()

	ATTACK = true
	Rooted = false
	local mousehit = Mouse.Hit
	shieldmg(mousehit.p,10)
	local HIT,POS = CastProperRay(BLADEAAAA.Position,mousehit.p,10,Character)
	SpawnTrail(BLADEAAAA.Position,POS)
	if HIT ~= nil then
		if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
			shieldmg(mousehit.p,10)
		end
	end
	shieldmg(mousehit.p,10)
	for i=0, 3, 0.1 / Animation_Speed do
		Swait()
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(20),0,math.rad(-10-10*math.cos(sine/25)))*LEFTSHOULDERC0,.25)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0)*CFrame.Angles(math.rad(-20),math.rad(80),math.rad(10+10*math.cos(sine/25))),.25)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-10),math.rad(-80),math.rad(-10-10*math.cos(sine/25))),.25)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(80),0,math.rad(50))*RIGHTSHOULDERC0,.25)
	end

	Rooted = false
	ATTACK = false

end

function Destruction()
    ATTACK = true
    Rooted = false
    UNANCHOR = false
    RootPart.Anchored = true
    for i=0, 5, 0.1 / 3 do
        Swait()
        RootPart.CFrame = RootPart.CFrame * CF(0,0.2,0)
        RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 * 1, 0 + ((1) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(0)), 2 / Animation_Speed)
        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 2 / Animation_Speed)
        RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 2 / Animation_Speed)
        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 2 / Animation_Speed)
    end
    CreateSound("1368598393", Effects, 10, 1)
    for i=0, 2, 0.1 / 3 do
        Swait()
        local CFRAME = CF(Torso.Position)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)))
        MagicSphere(VT(0,0,0),15,CFRAME,"Really red",VT(0.1,0.1,5))
        MagicSphere(VT(0.1,0.1,0.1),15,CFRAME,"Really red",VT(0.1,0.1,5))
        RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 * 1, 0 + ((1) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 2 / Animation_Speed)
        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.5, -1) * ANGLES(RAD(90), RAD(0), RAD(-75)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.5, -1) * ANGLES(RAD(90), RAD(0), RAD(75)) * LEFTSHOULDERC0, 2 / Animation_Speed)
        RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 2 / Animation_Speed)
        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 2 / Animation_Speed)
    end
    CreateSound("1368583274", Effects, 10, 1)
    for i=0, 6, 0.1 / 3 do
        Swait()
		WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(0.5,0,0.5), Size2 = VT(0.2,100,0.2), Transparency = 0.3, Transparency2 = 1, CFrame = RootPart.CFrame*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(0,0,MRANDOM(3,100)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = MODECOLOR, UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = MRANDOM(15,65),EffectType = "Slash", Size = VT(0,0.05,0), Size2 = VT(0.25,0.015,0.25)*MRANDOM(1,8), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0)*ANGLES(RAD(MRANDOM(1,360)),RAD(MRANDOM(1,360)),RAD(MRANDOM(1,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
        local CFRAME = CF(Torso.Position)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)))
        MagicSphere(VT(0,0,0),15,CFRAME,"Really red",VT(0.1,0.1,55))
        MagicSphere(VT(0,0,0),15,CFRAME,"Really red",VT(2,2,2))
        MagicSphere(VT(0.1,0.1,0.1),15,CFRAME,"Really red",VT(0.1,0.1,55))
        RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 * 1, 0 + ((1) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 2 / Animation_Speed)
        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.5, -1) * ANGLES(RAD(90), RAD(0), RAD(-75)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.5, -1) * ANGLES(RAD(90), RAD(0), RAD(75)) * LEFTSHOULDERC0, 2 / Animation_Speed)
        RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 2 / Animation_Speed)
        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 2 / Animation_Speed)
    end
	CreateSound(136007472,Torso,10,1,false)
    Swait(100)
    CreateSound(847061203,Torso,3,1,false)
    CreateSound(239000203,Torso,3,1,false)
    CreateSound(579687077,Torso,3,0.75,false)
    MagicSphere(VT(0,0,0),45,Torso.CFrame,"Really red",VT(5,5,5))
    for i=0, 1, 0.1 / 3 do
        Swait()
		WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(0.5,0,0.5), Size2 = VT(0.2,100,0.2), Transparency = 0.3, Transparency2 = 1, CFrame = RootPart.CFrame*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(0,0,MRANDOM(3,100)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = MODECOLOR, UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = MRANDOM(15,65),EffectType = "Slash", Size = VT(0,0.05,0), Size2 = VT(1,0.01,1)*MRANDOM(1,8), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0)*ANGLES(RAD(MRANDOM(1,360)),RAD(MRANDOM(1,360)),RAD(MRANDOM(1,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
        RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-25), RAD(0), RAD(0)), 0.2 / Animation_Speed)
        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 * 1, 0 + ((1) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(0)), 2 / Animation_Speed)
        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-60), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-60), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 2 / Animation_Speed)
        RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-50)), 2 / Animation_Speed)
        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(50)), 2 / Animation_Speed)
    end
    UNANCHOR = true
    RootPart.Anchored = false
    ATTACK = false
    Rooted = false
end

function Karma()
	ATTACK = true
	Rooted = true
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	local POSITION = CF(HITPOS)*ANGLES(RAD(0),RAD(0),RAD(0))*CF(0,1,0).p
    CreateSound(136007472,Torso,10,0.6,false)
	for i=0, 9, 0.1 / 3 do
		Swait()
		sphereMK(1,-2,"Add",Torso.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2.5,2.5,15,-0.025,BrickColor.Black(),100)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(25), RAD(0), RAD(0)), 0.25 / 3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.25 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1 + 0.75 * COS(SINE / 1) - 0.75 * COS(SINE / 1), 0.5 + 0.75 * COS(SINE / 1), -0.5) * ANGLES(RAD(155), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 0.25 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1 - 0.75 * COS(SINE / 1) + 0.75 * COS(SINE / 1), 0.5 - 0.75 * COS(SINE / 1), -0.5) * ANGLES(RAD(155), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.25 / 3)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(25), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.25 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(25), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.25 / 3)			
	end
    WACKYEFFECT({Time = 50 ,EffectType = "Block", Size = VT(90,90,90), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame*CF(0,0,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	for i = 0, 15 do
	   	WACKYEFFECT({Time = 75 ,EffectType = "Block", Size = VT(5,150*150,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame*CF(0,0,0)*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = nil, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(27/255,42/255,53/255), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	end
    CreateSound(847061203,Torso,3,1,false)
    CreateSound(239000203,Torso,3,1,false)
    CreateSound(579687077,Torso,3,0.75,false)
    
	for i=0, 1, 0.1 / 3 do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / 3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 - 0.1 * COS(SINE / 12), 0) * ANGLES(RAD(-45), RAD(0), RAD(30)) * RIGHTSHOULDERC0, 1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 - 0.1 * COS(SINE / 12), 0) * ANGLES(RAD(-45), RAD(0), RAD(-30)) * LEFTSHOULDERC0, 1 / 3)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(-25), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(-25), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / 3)			
	end
	ATTACK = false
	Rooted = false
end
local stopeveryting = false
local alreadyfixing = false
local BG = nil
local BV = nil
local FLYING = false
local FLYING = false
local FLYING2 = false
local FLYING3 = false
iyflyspeed = 3
function sFLY()
	if not ISFLYING then
		FLYING = false
	else
		local CONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
		local lCONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
		local SPEED = 0			
		local function FLY()
			FLYING = true
			FLYING2 = true
			BG = Instance.new('BodyGyro',RootPart)
			BV = Instance.new('BodyVelocity',RootPart)
			BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			BG.P = 1e4
			BG.CFrame = RootPart.CFrame
			BV.Velocity = Vector3.new(0,0,0)
			BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			coroutine.resume(coroutine.create(function()
				repeat if stopeveryting then wait(math.huge) end
					game:GetService("RunService").RenderStepped:Wait()
					if not alreadyfixing then
						if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
							FLYING2 = true
							FLYING3 = false
							SPEED = 50
						elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
							FLYING2 = false
							FLYING3 = true
							SPEED = 0
						end
						if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
							BV.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R,(CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2,0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
							lCONTROL = {F = CONTROL.F,B = CONTROL.B,L = CONTROL.L,R = CONTROL.R}
						elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
							BV.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R,(lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2,0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
						else
							BV.Velocity = Vector3.new(0,0,0)
						end
						BG.CFrame = workspace.CurrentCamera.CoordinateFrame
					end
				until not FLYING
				CONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
				lCONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
				SPEED = 0
				if not alreadyfixing then
					for i,v in pairs(RootPart:GetChildren()) do
						if v:IsA("BodyMover") then
							v:Destroy()
						end
					end
					RootPart.CFrame = CFrame.new(RootPart.Position)
				end
			end))
		end
		local IYMouse = Player:GetMouse()
		IYMouse.KeyDown:connect(function(KEY)
			if stopeveryting then wait(math.huge) end
			if KEY:lower() == 'w' then
				CONTROL.F = iyflyspeed
			elseif KEY:lower() == 's' then
				CONTROL.B = - iyflyspeed
			elseif KEY:lower() == 'a' then
				CONTROL.L = - iyflyspeed
			elseif KEY:lower() == 'd' then 
				CONTROL.R = iyflyspeed
			end
		end)
		IYMouse.KeyUp:connect(function(KEY)
			if stopeveryting then wait(math.huge) end
			if KEY:lower() == 'w' then
				CONTROL.F = 0
			elseif KEY:lower() == 's' then
				CONTROL.B = 0
			elseif KEY:lower() == 'a' then
				CONTROL.L = 0
			elseif KEY:lower() == 'd' then
				CONTROL.R = 0
			end
		end)
		FLY()
	end
end
--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

function MouseUp(Mouse)
	HOLD = false
end
Player.Chatted:connect(function(message)
	if message:sub(1,6) == "pitch/" then
		sick.PlaybackSpeed = message:sub(7)
	elseif message:sub(1,4) == "vol/" then
		sick.Volume = message:sub(5) 
	end
end)
function KeyDown(Key)
	KEYHOLD = true
	if Key == "1" and ATTACK == false and MODE ~= "SPECTRUM" then
		CHANGEMODES()
		MODE = "SPECTRUM"
	end
	if Key == "2" and ATTACK == false then
		if MODE ~= "PURITY" then
			CHANGEMODES()
			MODE = "PURITY"
		else
			CHANGEMODES()
			MODE = "SPECTRUM"
		end
	end
	if Key == "n" and ATTACK == false then
		if MODE == "PURITY" then
			CHANGEMODES()
			MODE = "MY DREAMS"
		end
	end
	if Key == "3" and ATTACK == false then
		if MODE ~= "INSANITY" then
			CHANGEMODES()
			MODE = "INSANITY"
		else
			CHANGEMODES()
			MODE = "SPECTRUM"
		end
	end
	if Key == "4" and ATTACK == false then
		if MODE ~= "K I C K I S H E R" then
			CHANGEMODES()
			MODE = "K I C K I S H E R"
		else
			CHANGEMODES()
			MODE = "SPECTRUM"
		end
	end
	if Key == "m" and ATTACK == false then
		if MODE ~= "P H O N K " and MODE == "K I C K I S H E R" then
			CHANGEMODES()
			MODE = "P H O N K "

		end
	end
	if Key == "n" and ATTACK == false then
		if MODE ~= "K I C K I S H E R X" and MODE == "K I C K I S H E R" then
			warnedpeople("you think you can defeat me?")
			wait(2)
			warnedpeople("heh you fool")
			wait(2.5)
			warnedpeople("YOU THINK YOU CAN GET AWAY WITH IT")
			wait(3)
			warnedpeople("HAHAHAHHAHAHAH")
			CHANGEMODES()
			MODE = "K I C K I S H E R X"

		end
	end
	if Key == "m" and ATTACK == false then
		if MODE ~= "CHILLED" and MODE == "PURITY" then
			CHANGEMODES()
			MODE = "CHILLED"

		end
	end

	if Key == "5" and ATTACK == false then
		if MODE ~= "STARLIGHT" then
			CHANGEMODES()
			MODE = "STARLIGHT"
		else
			CHANGEMODES()
			MODE = "SPECTRUM"
		end
	end
	if Key == "b" and ATTACK == false then
		if MODE ~= "B̷͍̱̖̭́̐̏͋͒̀͌̔̒ͅÀ̸̢͖̩̼̬̌̅̈́̅N̵̨͇̫͈̪̿I̷̙͓̫͎͈͉͐͛̄̿̏͐͘̕S̷̨̗̐̈́̓̈́̃̋̀̑̚Ĥ̶̨̙̳͔̟̓͒̔͝Ë̸̹́͋̌̇̋̃R̷̳̞̯͚͠" and MODE == "K I C K I S H E R" then
			CHANGEMODES()
			MODE = "B̷͍̱̖̭́̐̏͋͒̀͌̔̒ͅÀ̸̢͖̩̼̬̌̅̈́̅N̵̨͇̫͈̪̿I̷̙͓̫͎͈͉͐͛̄̿̏͐͘̕S̷̨̗̐̈́̓̈́̃̋̀̑̚Ĥ̶̨̙̳͔̟̓͒̔͝Ë̸̹́͋̌̇̋̃R̷̳̞̯͚͠"
		end
	end
	if Key == "m" and ATTACK == false then
		if MODE ~= "NEEDXFALLEN" and MODE == "STARLIGHT" then
			CHANGEMODES()
			MODE = "NEEDXFALLEN"
		end
	end
	if Key == "m" and ATTACK == false then
		if MODE == "NEEDXFALLEN" then
			CHANGEMODES()
			MODE = "NEEDXKING"
		end
	end
	if Key == "6" and ATTACK == false then
		if MODE ~= "CORRUPTION" then
			CHANGEMODES()
			MODE = "CORRUPTION"
		else
			CHANGEMODES()
			MODE = "SPECTRUM"
		end
	end
	if Key == "m" and ATTACK == false then
		if MODE == "CORRUPTION" then
			Karma()
			MODE = "CALAMITY"
		elseif MODE == "CALAMITY" then
			Destruction()
			MODE = "CATASTROPHE"
		end
	end
	if Key == "7" and ATTACK == false then
		if MODE ~= "AZURE" then
			CHANGEMODES()
			MODE = "AZURE"
		else
			CHANGEMODES()
			MODE = "SPECTRUM"
		end
	end
	if Key == "8" and ATTACK == false then
		if MODE ~= "DESTRUCTION" then
		CHANGEMODES()
		MODE = "DESTRUCTION"
	else
		CHANGEMODES()
		MODE = "SPECTRUM"
	end
	end
	if Key == "m" and ATTACK == false then
		if MODE ~= "IMMORTAL LORD" and MODE == "DESTRUCTION" then
			CHANGEMODES()
			MODE = "IMMORTAL LORD"

		end
	end
	if Key == "n" and ATTACK == false then
		if  MODE == "DESTRUCTION" then
			warnedpeople("AAAAAAAAAH")
			warnedpeople2("DONT FUCK WITH ME")
			SwitchModeEffectHSC()--stole this function from hsc thanks tiger lmao
			MODE = "C R A Z Y"

		end
	end
	if Key == "m" and ATTACK == false then
		if MODE ~= "HONEY LIGHTNING CANNON" and MODE == "INSANITY" then
			CHANGEMODES()
			MODE = "HONEY LIGHTNING CANNON"
		end
	end
	if Key == "n" and ATTACK == false then
		if MODE == "INSANITY" then
			Karma()
			MODE = "KARMA"
		end
	end

	if Key == "9" and ATTACK == false then
		AdvancedChatfunc("PRESS 9 TO SWITCH LC MODES")
		if MODE ~= "LIGHTING CANNON - NORMAL"then
			CHANGEMODES()
			MODE = "LIGHTING CANNON - NORMAL"
end
	end
	if Key == "m" and ATTACK == false then
	if  MODE == "LIGHTING CANNON - NORMAL" then
	CHANGEMODES()
	MODE = "LIGHTING CANNON - INSANITY"
elseif MODE == "LIGHTING CANNON - INSANITY" then
	CHANGEMODES()
	MODE = "LIGHTING CANNON - ERROR"
elseif MODE == "LIGHTING CANNON - ERROR" then
	CHANGEMODES()
	MODE = "LIGHTING CANNON - RUN IN THE 90S"
elseif MODE == "LIGHTING CANNON - RUN IN THE 90S" then
	CHANGEMODES()
	MODE = "LIGHTING CANNON - NORMAL"
		end
		end

	if Key == "0" and ATTACK == false then
		if MODE ~= "WHATAPP CAR" then
			CHANGEMODES()
			MODE = "WHATAPP CAR"
		else
			CHANGEMODES()
			MODE = "SPECTRUM"
		end
	end
	if Key == "v" and ATTACK == false then
		if MODE == "WHATAPP CAR" then
			CHANGEMODES()
			MODE = "BING BING BANG CAR"
		end
	end

	if Key == "m" and ATTACK == false then
		if MODE ~= "CLOWN CAR" and MODE == "WHATAPP CAR" then
			CHANGEMODES()
			MODE = "CLOWN CAR"
		end
	end
	if Key == "n" and ATTACK == false then
		if MODE ~= "PVZ CAR" and MODE == "WHATAPP CAR" then
			CHANGEMODES()
			MODE = "PVZ CAR"

		end
	end
	if Key == "b" and ATTACK == false then
		if MODE ~= "PIGGIE TRAP CAR" and MODE == "WHATAPP CAR" then
			CHANGEMODES()
			MODE = "PIGGIE TRAP CAR"

		end
	end
	if Key == ";" and ATTACK == false then
		TOBANISH = {}
		warnedpeople(LINES[math.random(1,#LINES)])
	end
	if Key == "e" and ATTACK == false then
		if MODE ~= "NORMAL" then
			CHANGEMODES()
			MODE = "NORMAL"
		else
			CHANGEMODES()
			MODE = "SPECTRUM"
		end
	end
	if Key == "m" and ATTACK == false then
		if MODE ~= "UNCOLORED" and MODE == "AZURE" then
			CHANGEMODES()
			MODE = "UNCOLORED"
		end
	end
	if Key == "b" and ATTACK == false then
		if MODE ~= "COLORED" and MODE == "UNCOLORED" then
			CHANGEMODES()
			MODE = "COLORED"
		end
	end
	if Key == "n" and ATTACK == false then
		if MODE ~= "HOT MILK" and MODE == "UNCOLORED" then
			CHANGEMODES()
			MODE = "HOT MILK"
		end
	end
	if Key == "n" and ATTACK == false then
		if MODE ~= "ANTI V7" and MODE == "AZURE" then
			CHANGEMODES()
			MODE = "ANTI V7"
		end
	end
	if Key == "b" and ATTACK == false then
		if MODE ~= "BAD APPLE" and MODE == "AZURE" then
			CHANGEMODES()
			MODE = "BAD APPLE"
		end
	end
	if Key == "m" and ATTACK == false then
		if MODE == "REDEMPTION" then
			CHANGEMODES()
			MODE = "Consternation"
		end
	end
	if Key == "m" and ATTACK == false then
		if MODE ~= "ANTI V12" and MODE == "ANTI V7" then
			CHANGEMODES()
			MODE = "ANTI V12"
		end
	end
	if Key == "b" and ATTACK == false then
		if MODE ~= "WARYRGMA" and MODE == "BLOODWATER" then
			CHANGEMODES()
			MODE = "WARYRGMA"
		end
	end
	if Key == "m" and ATTACK == false then
		if MODE == "WARYRGMA" then
			CHANGEMODES()
			MODE = "V O D K A"
		end
	end
	if Key == "r" and ATTACK == false then
		if MODE ~= "HACKER" then
			CHANGEMODES()
			MODE = "HACKER"
		else
			CHANGEMODES()
			MODE = "SPECTRUM"
		end
	end
	if Key == "t" and ATTACK == false then
		if MODE ~= "KRUMP" then
			CHANGEMODES()
			MODE = "KRUMP"
		else
			CHANGEMODES()
			MODE = "SPECTRUM"
		end
	end
	if Key == "y" and ATTACK == false then
		if MODE ~= "BLOODWATER" then
			CHANGEMODES()
			MODE = "BLOODWATER"
		else
			CHANGEMODES()
			MODE = "SPECTRUM"
		end
	end
	if Key == "m" and ATTACK == false then
		if MODE ~= "ł ₥ Ø Ɽ ₮ ₳ Ⱡ  ₴ Ⱡ ₳ Ɏ Ɇ Ɽ" and MODE == "BLOODWATER" then
			CHANGEMODES()
			MODE = "ł ₥ Ø Ɽ ₮ ₳ Ⱡ  ₴ Ⱡ ₳ Ɏ Ɇ Ɽ"
		end
	end
	if Key == "n" and ATTACK == false then
		if MODE ~= "ECHOV1" and MODE == "BLOODWATER" then
			CHANGEMODES()
			MODE = "ECHOV1"
		end
	end
	if Key == "-" and ATTACK == false then
		if MODE ~= "MYSTERY"  then
			CHANGEMODES()
			MODE = "MYSTERY"
		end
	end
	if Key == "=" and ATTACK == false then
		if MODE ~= "Ascensionist"  then
			CHANGEMODES()
			MODE = "Ascensionist"
		end
	end
	if Key == "m" and ATTACK == false then
		if MODE ~= "ECHOV2" and MODE == "ECHOV1" then
			Karma()
			MODE = "ECHOV2"
		end
	end
	if Key == "u" and ATTACK == false then
		if MODE ~= "SYSTEM Ę̴̡̧͔̘͓̫̖͕̱̮̜̤̫͎̿̍̊̀̐̋̄͂͑̒̚͠Ȓ̸͎̳̭̱̮̱͔͙̭̫͕́́͜͝Ȑ̷͚͍̟͔̠̰̞̗̬͔̍̍͑͒̿͂͛̈́͘͜ͅO̷͍̹̯͝R̴̢̺̖̳̥͍̙̝̯͓̲̺̘̱̊̏͌̾̑̓̀̐͑̈́̓̚͘͝" then
			CHANGEMODES()
			MODE = "SYSTEM Ę̴̡̧͔̘͓̫̖͕̱̮̜̤̫͎̿̍̊̀̐̋̄͂͑̒̚͠Ȓ̸͎̳̭̱̮̱͔͙̭̫͕́́͜͝Ȑ̷͚͍̟͔̠̰̞̗̬͔̍̍͑͒̿͂͛̈́͘͜ͅO̷͍̹̯͝R̴̢̺̖̳̥͍̙̝̯͓̲̺̘̱̊̏͌̾̑̓̀̐͑̈́̓̚͘͝"
		else
			CHANGEMODES()
			MODE = "SPECTRUM"
		end
	end
	if Key == "m" and ATTACK == false then
		if MODE ~= "K I L L B O T" and MODE == "SYSTEM Ę̴̡̧͔̘͓̫̖͕̱̮̜̤̫͎̿̍̊̀̐̋̄͂͑̒̚͠Ȓ̸͎̳̭̱̮̱͔͙̭̫͕́́͜͝Ȑ̷͚͍̟͔̠̰̞̗̬͔̍̍͑͒̿͂͛̈́͘͜ͅO̷͍̹̯͝R̴̢̺̖̳̥͍̙̝̯͓̲̺̘̱̊̏͌̾̑̓̀̐͑̈́̓̚͘͝" then
			CHANGEMODES()
			MODE = "K I L L B O T"
		end
	end
	if Key == "p" and ATTACK == false then
		if MODE ~= "RELAX" then
			CHANGEMODES()
			MODE = "RELAX"
		else
			CHANGEMODES()
			MODE = "SPECTRUM"
		end
	end
	if Key == "m" and ATTACK == false then
		if MODE ~= "DEPRESSION" and MODE == "RELAX" then
			CHANGEMODES()
			MODE = "DEPRESSION"
		end
	end
	if Key == "b" and ATTACK == false then
		if MODE == "ASRIEL"  then
			CHANGEMODES()
			MODE = "his theme..."
		end
	end
	if Key == "." and ATTACK == false then
		if MODE ~= "wastelands" then
			CHANGEMODES()
			MODE = "wastelands"
		end
	end
	
	if Key == "f" and ATTACK == false then
		if MODE ~= "GODCAT" then
			CHANGEMODES()
			MODE = "GODCAT"
		else
			CHANGEMODES()
			MODE = "SPECTRUM"
		end
	end
	if Key == "[" and ATTACK == false then
		if MODE ~= "Voided" then
			CHANGEMODES()
			MODE = "Voided"
		else
			CHANGEMODES()
			MODE = "SPECTRUM"
		end
	end
	if Key == "m" and ATTACK == false then
		if MODE ~= "G O D" and MODE == "GODCAT" then
			CHANGEMODES()
			MODE = "G O D"
		end
	end	if Key == "b" and ATTACK == false then
		if MODE ~= "STUDIO DUMMY" and MODE == "GODCAT" then
			CHANGEMODES()
			MODE = "STUDIO DUMMY"
		end
	end
	if Key == "g" and ATTACK == false then
		if MODE ~= "ASRIEL" then
			CHANGEMODES()
			MODE = "ASRIEL"
		else
			CHANGEMODES()
			MODE = "SPECTRUM"
		end
	end
	if Key == "m" and ATTACK == false then
		if MODE ~= "heart broken" and MODE == "ASRIEL" then
			CHANGEMODES()
			MODE = "heart broken"

		end
	end
	if Key == "m" and ATTACK == false then
		if MODE ~= "DR34M5" and	MODE == "SPECTRUM" then
			Karma()
			MODE = "DR34M5"
		end
	end
	if Key == "n" and ATTACK == false then
		if MODE ~= "DR34M5 V2" and	MODE == "DR34M5" then
			Destruction()
			MODE = "DR34M5 V2"
		end
	end
	if Key == "h" and ATTACK == false then
		if MODE ~= "MAYHEM" then
			CHANGEMODES()
			MODE = "MAYHEM"
		else
			CHANGEMODES()
			MODE = "SPECTRUM"
		end
	end
	if Key == "]" and ATTACK == false then
		if MODE ~= "REDEMPTION" then
			CHANGEMODES()
			MODE = "REDEMPTION"
		end
	end
	if Key == "m" and ATTACK == false then
		if MODE ~= "NULL" and MODE == "MAYHEM" then
			CHANGEMODES()
			MODE = "NULL"
		end
	end
	if Key == "q" and ATTACK == false then
		Warp()
	end
	if Key == "j" then
		ISFLYING = not ISFLYING
		if lplr == Player then
			sFLY()
		end
	end
	Mouse.Button1Down:Connect(function()
		if ATTACK == false and MODE == "LIGHTING CANNON - NORMAL" then
			LIGHTIN()
		end
	end)
	Mouse.Button1Down:Connect(function()
		if ATTACK == false and MODE == "HONEY LIGHTNING CANNON" then
			LIGHTIN()
		end
	end)
	Mouse.Button1Down:Connect(function()
		if ATTACK == false and  MODE == "LIGHTING CANNON - INSANITY" then
			LIGHTIN()
		end
	end)
	Mouse.Button1Down:Connect(function()
		if ATTACK == false and  MODE == "LIGHTING CANNON - ERROR"  then
			LIGHTIN()
		end
	end)
	Mouse.Button1Down:Connect(function()
		if ATTACK == false and MODE == "LIGHTING CANNON - RUN IN THE 90S" then
			LIGHTIN()
		end
	end)
	Mouse.Button1Down:Connect(function()
		if ATTACK == false and MODE == "STUDIO DUMMY" then
			dummyattack()
		end
	end)
	Mouse.Button1Down:Connect(function()
		if ATTACK == false and MODE == "CHILLED" then
			LIGHTIN()
		end
	end)
	Mouse.Button1Down:Connect(function()
		if ATTACK == false and MODE == "MY DREAMS" then
			yua()
		end
	end)
	if Key == "z" and MODE == "P H O N K " then
		AKShot()
	end
	if Key == "z" and MODE == "K I C K I S H E R" then
		Shoot()
	end
	if Key == "z" and MODE == "Ascensionist" then
		Trussbullet()
	end
	if Key == "z" and MODE == "ECHOV1" then
		ToggleBlade()
	end
	function MouseDown(Mouse)
		HOLD = true
		if ATTACK == false then
			if MODE == "ECHOV1" then
			if WEAPONEQUIPPED == true then
					BladeCombo()
				else
					Combo()
				end
				
			end
			
		end
		
	end
	
	if Key == "z" and MODE == "REDEMPTION" then
		BANISHERSHOT()
	end
	if Key == "z" and MODE == "B̷͍̱̖̭́̐̏͋͒̀͌̔̒ͅÀ̸̢͖̩̼̬̌̅̈́̅N̵̨͇̫͈̪̿I̷̙͓̫͎͈͉͐͛̄̿̏͐͘̕S̷̨̗̐̈́̓̈́̃̋̀̑̚Ĥ̶̨̙̳͔̟̓͒̔͝Ë̸̹́͋̌̇̋̃R̷̳̞̯͚͠" then
		LIGHTBAN()
	end
	if Key == "x" and MODE == "K I C K I S H E R" then
		kickshot()
	end
	if Key == "z" and MODE == "DR34M5" then
		Shot()()
	end
	if Key == "z" and MODE == "Consternation" then
		hand_bullet()
	end
	if Key == "x" and MODE == "Consternation" then
		mUrDeR()
	end
	if Key == "z" and MODE == "ECHOV2" then
		HandBeamE()
	end
	if Key == "x" and MODE == "ECHOV2" then
		Overthrower()
	end
	if Key == "z" and MODE == "AZURE" then
		BlackBlast()
	end
	if Key == "x" and MODE == "AZURE" then
		Beam()
	end
	if Key == "z" and MODE == "K I L L B O T" then
		Shoot()
	end
	if Key == "z" and MODE == "NEEDXFALLEN" then
		Shot()
	end
	if Key == "z" and MODE == "DESTRUCTION" then
		GIANTASSBEAMLMFAOKILLME()
	end
	if Key == "z" and MODE == "G O D" then
		GIANTASSBEAMLMFAOKILLME()
	end
	if Key == "x" and MODE == "G O D" then
		DISK()
	end
	if Key == "c" and MODE == "G O D" then
		HandBeamE()
	end
	if Key == "z" and MODE == "K I C K I S H E R X" then
		Shot2()
	end
	if Key == "z" and MODE == "GODCAT"then
		Shot24()
	end
	if Key == "z" and MODE == "Voided"then
		Voidshoot()
	end
	if Key == "x" and MODE == "Voided"then
		VoidBox()
	end
	if Key == "z" and MODE == "IMMORTAL LORD"then
		Ilslice()
	end
	if Key == "z" and MODE == "BLOODWATER"then
		Shoot()
	end
	if Key == "z" and MODE == "RELAX"then
		Shoot()
	end
	if Key == "x" and MODE == "KARMA"then
		Karma_Beam()
	end
	if Key == "z" and MODE == "NULL" then
		HandBeamE()
	end
	if Key == "z" and MODE == "ł ₥ Ø Ɽ ₮ ₳ Ⱡ  ₴ Ⱡ ₳ Ɏ Ɇ Ɽ" then
		Shote()
	end
	if Key == "l" then
		ToggleSome()
	end
	if Key == "k" then
		DoGlitchBug()
	end

end
function ToggleSome()
	if Idk == false then
		Idk = true
		AdvancedChatfunc("CrazyEffects are on")
	else
		Idk = false
		AdvancedChatfunc("CrazyEffects are off")
	end
end
function DoGlitchBug()
	if DoGlitch == false then
		DoGlitch = true
		AdvancedChatfunc("DoGlitch set to True")
	else
		DoGlitch = false
		AdvancedChatfunc("DoGlitch set to False")
	end
end


function KeyUp(Key)
	KEYHOLD = false
end

	Mouse.Button1Down:connect(function(NEWKEY)
		MouseDown(NEWKEY)
	end)
	Mouse.Button1Up:connect(function(NEWKEY)
		MouseUp(NEWKEY)
	end)
	Mouse.KeyDown:connect(function(NEWKEY)
		KeyDown(NEWKEY)
	end)
	Mouse.KeyUp:connect(function(NEWKEY)
		KeyUp(NEWKEY)
end)
function FixLighting()
	game.Lighting.Ambient = Color3.fromRGB(138,138,138)
	game.Lighting.OutdoorAmbient = Color3.fromRGB(128,128,128)
	game.Lighting.FogColor = Color3.fromRGB(192,192,192)
	game.Lighting.TimeOfDay = "14:00:00"
	game.Lighting.ExposureCompensation = 0
	game.Lighting.FogEnd = 100000
	game.Lighting.Brightness = 0
	workspace.CurrentCamera.FieldOfView = 70
end
local VISUALS = game.Lighting
local VISUALSSz = game.Lighting
local Bloom = script.Bloom
Bloom.Parent = VISUALS
script["C-Correction"].Parent = VISUALS
wait(0.1)
coroutine.resume(coroutine.create(function()
	while true do
		Swait()
		if Idk == true then
			VISUALS.FogColor = Torso.Color
			VISUALS.Ambient = Torso.Color
			VISUALS.OutdoorAmbient = Torso.Color
			VISUALS.TimeOfDay = 0
			Bloom.Intensity = 0 + sick.PlaybackLoudness/500
			VISUALSSz.ExposureCompensation = 0 + sick.PlaybackLoudness/125
			VISUALSSz.FogEnd = sick.PlaybackLoudness
			VISUALSSz.Brightness = 0
			VISUALS.EnvironmentDiffuseScale = 0 + sick.PlaybackLoudness/100
			VISUALS["C-Correction"].Contrast= 0.1 + sick.PlaybackLoudness/1000
			workspace.CurrentCamera.FieldOfView = 70 - sick.PlaybackLoudness/95
		else
			FixLighting()
		end
	end
end))

--//=================================\\
--\\=================================//
local FakeVel = Vector3.new(0,0,0)


function unanchor()
	if UNANCHOR == true then
		g = Character:GetChildren()
		for i = 1, #g do
			if g[i].ClassName == "Part" then
				g[i].Anchored = false
			end
		end
	end
end
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {Text = "HYPERISA 7"})
coroutine.resume(coroutine.create(function()
	for i,v in pairs(lplr:FindFirstChildWhichIsA("PlayerGui"):WaitForChild("Chat"):GetDescendants()) do
		if v:IsA('TextLabel') then
			if v.Text == "HYPERNULL ISA" then
				InstanceToAlter = v
				break
			end
		end
	end
end))
--//=================================\\
--||	WRAP THE WHOLE SCRIPT UP
--\\=================================//

local function characterfixer()
	alreadyfixing = true
	local camerapos = workspace.CurrentCamera.CFrame
	pcall(function()
		Character:Destroy()
	end)
	Character = script.Character:Clone()
	Character.Name = randomstring()
	Character.Parent = workspace
	Humanoid = Character.Humanoid
	Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
	if lplr.Name == USERNAME then
		workspace.CurrentCamera.CameraSubject = Humanoid
		workspace.CurrentCamera.CameraType = "Scriptable"
		workspace.CurrentCamera.CFrame = camerapos
		coroutine.resume(coroutine.create(function()
			swait(5)
			workspace.CurrentCamera.CameraType = "Custom"
		end))
	end
end


Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true) then
		Humanoid.Jump = false
	elseif Jump == "Jump" and (Disable_Jump == false) then
		wait(0.1)
	end
end)

while true do
	Swait()
	if AntiBullet == true then
if workspace:FindFirstChild("EnCorrupt") == nil then
Shield = Instance.new("MeshPart",workspace)
Shield.Name = "EnCorrupt"
Shield.CanCollide = false
Shield.Transparency = 1
Shield.Material = "Neon"
Shield.Color = C3(MRANDOM(1,255),MRANDOM(1,255),MRANDOM(1,255))
Shield.Massless = true
Shield.Size = Vector3.new(7.5,7.5,7.5)
Shield.CFrame = Torso.CFrame
local GlitchWeld = Instance.new("Weld",Shield)
GlitchWeld.Part0 = Shield
GlitchWeld.Part1 = Torso
end
	end
	if Character:FindFirstChild("Safety") == nil then
		local Safety = IT("Script")
		Safety.Name = "Safety"
		Safety.Parent = Character
	end
	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
	    v:Stop();
	end
	SINE = SINE + CHANGE
	vissine = vissine + CHANGE * sick.PlaybackLoudness/150
	sine = sine + CHANGE
	Hue = Hue + 1
	if (Hue>360) then Hue = 0 end
	local TORSOVELOCITY = (FakeVel * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = FakeVel.y
	if lplr == Player then
		TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
		TORSOVERTICALVELOCITY = RootPart.Velocity.y
	end
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	local WALKSPEEDVALUE = 12 / (Humanoid.WalkSpeed / 16)
	if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil and ATTACK == false then
		ANIM = "Jump"
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / 3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(25 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(-25 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(1), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
	elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil and ATTACK == false then
		ANIM = "Fall"
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / 3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(45 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(-45 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -0.7) * ANGLES(RAD(-25 + 5 * SIN(SINE / 12)), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, -0.3) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil and ATTACK == false then
		ANIM = "Idle"
		DOUBLED = false
		READYTODOUBLE = false
		if MODE == "SPECTRUM" then
			if MRANDOM(1,10) == 1 then
				Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
			end
			RightHip.C0=Clerp(RightHip.C0,cf(1,-1 - 0.1 * COS(sine / 32),0)*angles(RAD(0),RAD(90),RAD(0))*angles(RAD(-3),RAD(-5.5 - 2 * COS(sine / 56)),RAD(-12 - 2 * COS(sine / 32))),.1)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-1 - 0.1 * COS(sine / 32),0)*angles(RAD(0),RAD(-90),RAD(0))*angles(RAD(-6),RAD(22 - 2 * COS(sine / 56)),RAD(-1 + 2 * COS(sine / 32))),.1)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0,0.01 + 0.03 * COS(sine / 32),0 + 0.1 * COS(sine / 32))*angles(RAD(1 - 2 * COS(sine / 32)),RAD(0),RAD(-22 + 2 * COS(sine / 56))),.1)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 - 2 * COS(sine / 37)),RAD(0 + 5 * COS(sine / 43) - 5 * COS(sine / 0.25)),RAD(22 - 2 * COS(sine / 56))),.1)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(1.5,0.5 + 0.025 * COS(sine / 45),0)*angles(RAD(5 + 3 * COS(sine / 43)),RAD(-16 - 5 * COS(sine / 52)),RAD(13 + 9 * COS(sine / 45))),.1)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-1.35,1 + 0.025 * COS(sine / 45),-0.2)*angles(RAD(148 - 2 * COS(sine / 51)),RAD(0 - 4 * COS(sine / 64)),RAD(22 - 2 * COS(sine / 45))),.1)
		elseif MODE == "REDEMPTION" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.45 * COS(SINE / 12)) * ANGLES(RAD(4 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(25)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + 4.5 * SIN(SINE / 12)), RAD(0), RAD(-25)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.55, 0.5, 0.5) * ANGLES(RAD(250), RAD(20), RAD(-80))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(5), RAD(0), RAD(-15 + -10 * SIN(SINE / 12))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			if MRANDOM(1,70+sick.PlaybackLoudness/7) == 1 then
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-90-sick.PlaybackLoudness/7,90+sick.PlaybackLoudness/7)), RAD(MRANDOM(-30-sick.PlaybackLoudness/7,30+sick.PlaybackLoudness/7)), RAD(MRANDOM(-50-sick.PlaybackLoudness/7,50+sick.PlaybackLoudness/7)))* RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-10000-sick.PlaybackLoudness/7,10000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-900-sick.PlaybackLoudness/7,900+sick.PlaybackLoudness/7)), RAD(MRANDOM(-20-sick.PlaybackLoudness/7,20+sick.PlaybackLoudness/7)))* LEFTSHOULDERC0, 1 / Animation_Speed)
			end
			if(math.random(1,32)/32==1)then
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			end
		elseif MODE == "MY DREAMS" then
			snap= math.random(1,06)
			if snap == 1 then
				Neck.C0 = Clerp(Neck.C0,CF(0,0,(0+1-1))*ANGLES(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))),1/Animation_Speed)
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.1, -0.1 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(30), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-10 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(45 *COS(SINE/23))), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(120), RAD(0 - 22.5 * SIN(SINE / 20)), RAD(0 - 3.5 * SIN(SINE / 20))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.2, 0) * ANGLES(RAD(MRANDOM(170, 200)), RAD(0), RAD(MRANDOM(5, 45))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(30), RAD(87), RAD(0)) * ANGLES(RAD(-9), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(30), RAD(-87), RAD(0)) * ANGLES(RAD(-9), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			-- 933 helped make this one
		elseif MODE == "PURITY" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-35)), 1 / 5)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(35)), 1 / 5)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.5 + 0.05 * SIN(SINE / 12), -0.7) * ANGLES(RAD(0), RAD(0), RAD(-95)) * ANGLES(RAD(5), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / 5)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / 5)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / 5)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / 5)
		elseif MODE == "INSANITY" then
			if VALUE1 == false and math.random(1,92) == 1 then
				coroutine.resume(coroutine.create(function()
					VALUE1 = true
					for i=1,25 do
						Swait()
						FT.Parent = Torso
						FRA.Parent = RightArm
						FLA.Parent = LeftArm
						FRL.Parent = RightLeg
						FLL.Parent = LeftLeg
						sick.PlaybackSpeed = .54+math.random(6,10)/10
						for _,v in next, Character:GetDescendants() do
							if(v:IsA'DataModelMesh')then
								v.Offset = VT(math.random(-30,30)/100,math.random(-30,30)/100,math.random(-50,50)/100)
							end
						end		
					end
					VALUE1 = false
					FT.Parent = nil
					FRA.Parent = nil
					FLA.Parent = nil
					FRL.Parent = nil
					FLL.Parent = nil
					sick.PlaybackSpeed = 1
					for _,v in next, Character:GetDescendants() do
						if(v:IsA'DataModelMesh')then
							v.Offset = VT(0,0,0)
						end
					end	
				end))
			end
			if ATTACK == false then
				Anim = "Idle"
				Humanoid.HipHeight = 0
				RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,0.2 - 0.1 * math.cos(sine / 20),-0.3)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))*CFrame.Angles(math.rad(3),math.rad(15 - 2 * math.cos(sine / 56)),math.rad(50 - 2 * math.cos(sine / 32))),.1)
				LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1 - 0.1 * math.cos(sine / 20),0)*CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))*CFrame.Angles(math.rad(3),math.rad(-1 - 2 * math.cos(sine / 56)),math.rad(20 + 2 * math.cos(sine / 32))),.1)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,-0 + 0.03 * math.cos(sine / 32),-1.2 + 0.1 * math.cos(sine / 20))*CFrame.Angles(math.rad(45 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-30 + 2 * math.cos(sine / 56))),.1)
				Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.Angles(math.rad(23 - 2 * math.cos(sine / 37)),math.rad(0 + 5 * math.cos(sine / 43) - 5 * math.cos(sine / 0.25)),math.rad(22 - 2 * math.cos(sine / 56))),.1)
				RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*CFrame.Angles(math.rad(5 + 3 * math.cos(sine / 43)),math.rad(-14 - 5 * math.cos(sine / 52)),math.rad(63 + 9 * math.cos(sine / 45))),.1)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.35,1 + 0.025 * math.cos(sine / 45),-0.2)*CFrame.Angles(math.rad(148 - 2 * math.cos(sine / 51)),math.rad(0 - 4 * math.cos(sine / 64)),math.rad(22 - 2 * math.cos(sine / 45))),.1)
			end
		elseif MODE == "K I C K I S H E R X" then
			if VALUE1 == false and math.random(1,55) == 1 then
				coroutine.resume(coroutine.create(function()
					VALUE1 = true
					wait(2)
					CreateSound(749189256,RootPart,2,math.random(5, 15) / 10,false)
					for i=1,25 do
						Swait()
						FT.Parent = Torso
						FRA.Parent = RightArm
						FLA.Parent = LeftArm
						FRL.Parent = RightLeg
						FLL.Parent = LeftLeg
						for _,v in next, Character:GetDescendants() do
							if(v:IsA'DataModelMesh')then
								v.Offset = Vector3.new(math.random(-50,50)/100,math.random(-50,50)/100,math.random(-50,50)/100)
							end
						end		
					end
					VALUE1 = false
					FT.Parent = nil
					FRA.Parent = nil
					FLA.Parent = nil
					FRL.Parent = nil
					FLL.Parent = nil
					for _,v in next, Character:GetDescendants() do
						if(v:IsA'DataModelMesh')then
							v.Offset = VT(0,0,0)
						end
					end	
				end))
			end
			DOUBLED = false
			READYTODOUBLE = false
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0+.15*SIN(sine/32)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(40), RAD(-10), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10+5*SIN(sine/24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10-5*SIN(sine/24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			snap = math.random(1,72)
			if snap == 1 then	
				CreateSound(363808674,Head,3,1.3,false)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-100000-sick.PlaybackLoudness/7,100000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-99999-sick.PlaybackLoudness/7,99999+sick.PlaybackLoudness/7)), RAD(MRANDOM(-200-sick.PlaybackLoudness/7,48375935+sick.PlaybackLoudness/7))), 1 / Animation_Speed) 
			end
		elseif MODE == "B̷͍̱̖̭́̐̏͋͒̀͌̔̒ͅÀ̸̢͖̩̼̬̌̅̈́̅N̵̨͇̫͈̪̿I̷̙͓̫͎͈͉͐͛̄̿̏͐͘̕S̷̨̗̐̈́̓̈́̃̋̀̑̚Ĥ̶̨̙̳͔̟̓͒̔͝Ë̸̹́͋̌̇̋̃R̷̳̞̯͚͠" then
			local snap = math.random(1,5)
			if snap == 1 then
				Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(math.rad(25 + math.random(-1,1)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),0.6)
			end
			RightHip.C0=Clerp(RightHip.C0,CFrame.new(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.1)
			LeftHip.C0=Clerp(LeftHip.C0,CFrame.new(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.1)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2 + 1 * COS(SINE / 18)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0=Clerp(Neck.C0,NECKC0*angles(math.rad(15),math.rad(0),math.rad(0)),.1)
			RightShoulder.C0=Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(20 + 2.5 * math.cos(sine / 28))),.1)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(-20 - 2.5 * math.cos(sine / 28))),.1)
		elseif MODE == "K I C K I S H E R" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(45)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5, -0.5) * ANGLES(RAD(75), RAD(45), RAD(-25))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5, 0.5) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		elseif MODE == "P H O N K " then
			local bouncyboi = sick.PlaybackLoudness / 2200
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 3 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0 * COS(SINE / 12) + bouncyboi) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0 * COS(SINE / 12) - bouncyboi, -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0 * COS(SINE / 12) - bouncyboi, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(40+sick.PlaybackLoudness/9), RAD(0), RAD(-10)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(40+sick.PlaybackLoudness/9), RAD(0), RAD(10)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		elseif MODE == "STARLIGHT" then
			RightHip.C0=Clerp(RightHip.C0,cf(1,-0.4,-0.5)*angles(RAD(0),RAD(90),RAD(0))*angles(RAD(-3),RAD(0 - 1 * COS(sine / 56)),RAD(-10 - 2 * COS(sine / 39))),.1)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-1,0)*angles(RAD(0),RAD(-90),RAD(0))*angles(RAD(-3),RAD(0 - 1 * COS(sine / 56)),RAD(10 + 6 * COS(sine / 31))),.1)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0,0 + 0.02 * COS(sine / 32),1 + 0.15 * COS(sine / 32))*angles(RAD(0 - 2 * COS(sine / 32)),RAD(0),RAD(-20)),.1)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(13 - 2 * COS(sine / 37)),RAD(0 + 1 * COS(sine / 58)),RAD(20 + 2 * COS(sine / 53))),.1)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(1.5,0.5 + 0.025 * COS(sine / 45),0)*angles(RAD(5 + 3 * COS(sine / 43)),RAD(-16 - 5 * COS(sine / 52)),RAD(13 + 9 * COS(sine / 45))),.1)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-1,0.5 + 0.025 * COS(sine / 45),-0.5)*angles(RAD(90 - 7 * COS(sine / 66)),RAD(4 - 3 * COS(sine / 59)),RAD(90 - 4 * COS(sine / 45))),.1)
		elseif MODE == "CALAMITY" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0,0,2+0.5*COS(SINE / 50))*ANGLES(RAD(0+2*COS(SINE / 12)),RAD(0),RAD(0)), 1 / 10)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-1+-2*COS(SINE / 32)), RAD(0), RAD(10)), 1 / 10) 
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(.75, 0.5, -0.8) * ANGLES(RAD(0), RAD(0), RAD(-85)) * RIGHTSHOULDERC0, 1 / 10)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-.75, 0.5, -0.7) * ANGLES(RAD(0), RAD(0), RAD(95)) * LEFTSHOULDERC0, 1 / 10)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.001*COS(SINE / 7), -0.01) * ANGLES(RAD(-10-2.5*COS(sine/12)), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / 10)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -.5-.001*COS(sine/7), -0.5) * ANGLES(RAD(-25-2.5*COS(sine/12)), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / 10)
		elseif MODE == "CATASTROPHE" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0,0,2+0.5*COS(SINE / 50))*ANGLES(RAD(0+2*COS(SINE / 12)),RAD(0),RAD(0)), 1 / 10)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-1+-2*COS(SINE / 32)), RAD(0), RAD(10)), 1 / 10) 
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(.75, 0.5, -0.8) * ANGLES(RAD(0), RAD(0), RAD(-85)) * RIGHTSHOULDERC0, 1 / 10)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-.75, 0.5, -0.7) * ANGLES(RAD(0), RAD(0), RAD(95)) * LEFTSHOULDERC0, 1 / 10)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.001*COS(SINE / 7), -0.01) * ANGLES(RAD(-10-2.5*COS(sine/12)), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / 10)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -.5-.001*COS(sine/7), -0.5) * ANGLES(RAD(-25-2.5*COS(sine/12)), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / 10)

		elseif MODE == "CORRUPTION" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.1, 0.5, -0.45) * ANGLES(RAD(110), RAD(0), RAD(-80)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.1, 0.15, -0.45) * ANGLES(RAD(80), RAD(0), RAD(80)) * ANGLES(RAD(0), RAD(45), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		elseif MODE == "NULL" then
			snap = math.random(1,6)
			if snap == 1 then
				Neck.C0 = Clerp(Neck.C0,NECKC0*CF(0,0,0+((1)-1))*ANGLES(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))),1/Animation_Speed)
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0+.15*SIN(SINE/32)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(40), RAD(-10), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10+5*SIN(SINE/24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10-5*SIN(SINE/24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.15*SIN(SINE/32), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(SINE/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1-.15*SIN(SINE/32), 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(SINE/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			if snap == 1 then
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-100000-sick.PlaybackLoudness/7,100000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-99999-sick.PlaybackLoudness/7,99999+sick.PlaybackLoudness/7)), RAD(MRANDOM(-200-sick.PlaybackLoudness/7,48375935+sick.PlaybackLoudness/7))), 1 / Animation_Speed) 
				end
		elseif MODE == "BAD APPLE" then
			if VALUE1 == false and math.random(1,55) == 1 then
				coroutine.resume(coroutine.create(function()
					VALUE1 = true
					wait(2)
					CreateSound(333430981,RootPart,2,math.random(5, 15) / 10,false)
					for i=1,25 do
						Swait()
						FT.Parent = Torso
						FRA.Parent = RightArm
						FLA.Parent = LeftArm
						FRL.Parent = RightLeg
						FLL.Parent = LeftLeg
						for _,v in next, Character:GetDescendants() do
							if(v:IsA'DataModelMesh')then
								v.Offset = VT(math.random(-50,50)/100,math.random(-50,50)/100,math.random(-50,50)/100)
							end
						end		
					end
					VALUE1 = false
					FT.Parent = nil
					FRA.Parent = nil
					FLA.Parent = nil
					FRL.Parent = nil
					FLL.Parent = nil
					for _,v in next, Character:GetDescendants() do
						if(v:IsA'DataModelMesh')then
							v.Offset = VT(0,0,0)
						end
					end	
				end))
			end
			if MRANDOM(1,10) == 1 then
				Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
			end
			if math.random(1,8) == 1 then
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-87498,12093847)), RAD(MRANDOM(-123456,3746525)), RAD(MRANDOM(-2134567876,98764356))), 0.15 / Animation_Speed)
			end		
			if MRANDOM(1,10) == 1 then
				Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
			end
			RightHip.C0=Clerp(RightHip.C0,CFrame.new(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),.1)
			LeftHip.C0=Clerp(LeftHip.C0,CFrame.new(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.1)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CFrame.new(0,0,1.5 + 0.1 * math.cos(SINE / 28))*angles(math.rad(0 - 1 * math.cos(SINE / 34)),math.rad(0),math.rad(0)),.1)
			Neck.C0=Clerp(Neck.C0,NECKC0*angles(math.rad(15),math.rad(0),math.rad(0)),.1)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1,.5,-.25)*CFrame.Angles(0,math.rad(-10),math.rad(-90))*RIGHTSHOULDERC0,.25)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(-20 - 2.5 * math.cos(SINE / 28))),.1)
			snap = math.random(1,72)
			if snap == 1 then
				CreateSound(363808674,Head,3,1.3,false)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-100000-sick.PlaybackLoudness/7,100000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-99999-sick.PlaybackLoudness/7,99999+sick.PlaybackLoudness/7)), RAD(MRANDOM(-200-sick.PlaybackLoudness/7,48375935+sick.PlaybackLoudness/7))), 1 / Animation_Speed) 
			end
			if MRANDOM(1,20+sick.PlaybackLoudness/7) == 1 then
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-90-sick.PlaybackLoudness/7,90+sick.PlaybackLoudness/7)), RAD(MRANDOM(-30-sick.PlaybackLoudness/7,30+sick.PlaybackLoudness/7)), RAD(MRANDOM(-50-sick.PlaybackLoudness/7,50+sick.PlaybackLoudness/7)))* RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-10000-sick.PlaybackLoudness/7,10000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-900-sick.PlaybackLoudness/7,900+sick.PlaybackLoudness/7)), RAD(MRANDOM(-20-sick.PlaybackLoudness/7,20+sick.PlaybackLoudness/7)))* LEFTSHOULDERC0, 1 / Animation_Speed)
			end
		elseif MODE == "HOT MILK" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.04 * SIN(SINE / 24), 0 + 0.04 * SIN(SINE / 12), 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0 - 2.5 * SIN(SINE / 24)), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.1) - 1)) * ANGLES(RAD(0 - 4 * SIN(SINE / 12)), RAD(0), RAD(20)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5,- 0.5) * ANGLES(RAD(22), RAD(0), RAD(-37 + 2.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5, -0.5) * ANGLES(RAD(23), RAD(0), RAD(38 - 2.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.06 * SIN(SINE / 24) - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(90), RAD(0)) * ANGLES(RAD(7 - 2.5 * SIN(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.06 * SIN(SINE / 24) - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(3 + 2.5 * SIN(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
		elseif MODE == "Consternation" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5+ 0.35 * SIN(SINE / 12), 0) * ANGLES(RAD(180), RAD(-15), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.35 * SIN(SINE / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(-10 + 15 * COS(SINE / 12))) * ANGLES(RAD(0), RAD(15), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
			if MRANDOM(1,32+sick.PlaybackLoudness/7) == 1 then
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-100000-sick.PlaybackLoudness/7,100000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-99999-sick.PlaybackLoudness/7,99999+sick.PlaybackLoudness/7)), RAD(MRANDOM(-200-sick.PlaybackLoudness/7,48375935+sick.PlaybackLoudness/7))), 1 / Animation_Speed) 
			end
			if MRANDOM(1,20+sick.PlaybackLoudness/7) == 1 then
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-90-sick.PlaybackLoudness/7,90+sick.PlaybackLoudness/7)), RAD(MRANDOM(-30-sick.PlaybackLoudness/7,30+sick.PlaybackLoudness/7)), RAD(MRANDOM(-50-sick.PlaybackLoudness/7,50+sick.PlaybackLoudness/7)))* RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-10000-sick.PlaybackLoudness/7,10000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-900-sick.PlaybackLoudness/7,900+sick.PlaybackLoudness/7)), RAD(MRANDOM(-20-sick.PlaybackLoudness/7,20+sick.PlaybackLoudness/7)))* LEFTSHOULDERC0, 1 / Animation_Speed)
			end
		elseif MODE == "AZURE" then
			snap = math.random(1,6)
			if snap == 1 then
				Neck.C0 = Clerp(Neck.C0,NECKC0*cf(0,0,0+((1)-1))*angles(math.rad(math.random(-1000,1000)),math.rad(math.random(-1000,100)),math.rad(math.random(-1000,1000))),1/Animation_Speed)
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2 + 1 * COS(SINE / 18)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5 + 0.1 * COS(SINE / 12), 0.2) * ANGLES(RAD(0), RAD(-25), RAD(25 + 8 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.35, 0.5 + 0.1 * COS(SINE / 12), 0.2) * ANGLES(RAD(0), RAD(25), RAD(-25 - 8 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.65 - 0.2 * COS(SINE / 12), -0.35) * ANGLES(RAD(-25 + 6 * COS(SINE / 12)), RAD(80), RAD(0)) * ANGLES(RAD(2 * COS(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.2 * COS(SINE / 12), 0) * ANGLES(RAD(-5 + 2 * COS(SINE / 12)), RAD(-80), RAD(0)) * ANGLES(RAD(2 * COS(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		elseif MODE == "COLORED" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 4 + 0.6 * COS(SINE / 12)) * ANGLES(RAD(-10), RAD(5), RAD(0)), 0.6 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(20 - 2.5 * SIN(SINE / 12)), RAD(-5), RAD(0)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(20), RAD(-20), RAD(30))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-20), RAD(20), RAD(-30)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.8, -0.01) * ANGLES(RAD(0), RAD(90), RAD(25+10*COS(SINE/12))) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(-10-10*COS(SINE/12))) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		elseif MODE == "UNCOLORED" then
			snap = math.random(1,6)
			distort = 0
			if snap == 1 then
				Neck.C0 = Clerp(Neck.C0,NECKC0*cf(0,0,0+((1)-1))*angles(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))),1/Animation_Speed)
			end
			if math.random(1,45) == 1 then
				distort = distort + math.random(6,12)
			end
			if distort > 0 then
				distort = distort - 1
				sick.PlaybackSpeed = math.random(2,5)/5
			else
				distort = 0	
				sick.PlaybackSpeed = .75
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0,0,2+.5*COS(SINE / 32))*ANGLES(RAD(-25 + 2*Cos(sine/42)),RAD(0),RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-2.5+1*COS(SINE / 12)), RAD(MRANDOM(-5,5)), RAD(0)), 1 / Animation_Speed) 
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-30), RAD(0), RAD(15 - 5.5 * COS(SINE / 20))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-30), RAD(0), RAD(-15 + 5.5 * COS(SINE / 20))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.2) * ANGLES(RAD(-30+2*Cos(sine/32)), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.2) * ANGLES(RAD(-30+2*Cos(sine/46)), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		elseif MODE == "DESTRUCTION" then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0* 1, 0* 1, 2 + 0.25* 1 * COS(SINE / 12)) * ANGLES(RAD(25), RAD(0), RAD(0)), 0.1)
			Neck.C0 = Clerp(Neck.C0, NECKC0* CF(0, 0, 0 + ((1* 1) - 1)) * ANGLES(RAD(15 - 6.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.05)
			RightHip.C0 = Clerp(RightHip.C0, CF(1* 1, -1 - 0.15 * COS(SINE / 20)* 1, -0.1* 1) * ANGLES(RAD(0), RAD(76), RAD(0)) * ANGLES(RAD(-8.5 - 6.5 * SIN(SINE / 12)), RAD(0), RAD(15)), 0.1)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1.1* 1, -0.6 - 0.15 * COS(SINE / 20)* 1, -0.3* 1) * ANGLES(RAD(0), RAD(-76), RAD(0)) * ANGLES(RAD(-8.5 - 6.5 * SIN(SINE / 12)), RAD(15), RAD(25)), 0.1)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.4* 1, 0.4 + 0.08 * SIN(SINE / 12)* 1, 0* 1) * ANGLES(RAD(25 - 6.5 * COS(SINE / 12)), RAD(-.6), RAD(13 + 6.5 * SIN(SINE / 12))), 0.1)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4* 1, 0.4 + 0.08 * SIN(SINE / 12)* 1, 0* 1) * ANGLES(RAD(25 - 6.5 * COS(SINE / 12)), RAD(-.6), RAD(-13 - 6.5 * SIN(SINE / 12))), 0.1)
		elseif MODE == "HONEY LIGHTNING CANNON" then
			Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(7 + 6.5 * math.sin(sine / 24)), math.rad(10*math.sin(sine/24)), math.rad(-55 + 0 * math.sin(sine/24))), 0.5 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0 - 5.5 * math.sin(sine/12)), math.rad(5 * math.sin(sine /12)), math.rad(22 + 4.4 * math.sin(sine /12))) * RIGHTSHOULDERC0,0.15)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0*CFrame.new(0,0, 1*math.cos(sine/15))*CFrame.Angles(math.rad(-45*.5*math.sin(sine/15)),0,0),.25)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0- 5.5 * math.sin(sine /12)), math.rad(5 * math.sin(sine /12)), math.rad(-22 + 4.4 * math.sin(sine/12))) * LEFTSHOULDERC0,0.15)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.4,-0.5)*CFrame.Angles(math.rad(0 + 6.5 * math.sin(sine/12)),math.rad(90),math.rad(40*math.sin(sine/34)))*CFrame.Angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 36)),math.rad(-10 - 2 * math.cos(sine / 39))),0.2)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(10 + 4.6 * math.sin(sine/12)),math.rad(-90),math.rad(20*math.sin(sine/34)))*CFrame.Angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 36)),math.rad(10 + 6 * math.cos(sine / 31))),0.2)
		elseif MODE == "LIGHTING CANNON - NORMAL" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(SINE/50),0,3 - .5 * math.sin(SINE/50)),.7/3)
			Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0 ,0 + ((1) - 1)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.7/3)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(SINE/50)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,.7/3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(SINE/50)),math.rad(0),math.rad(-25 - 5 * math.cos(SINE/25))) * LEFTSHOULDERC0,.7/3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(SINE/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(SINE/37)),math.rad(0),math.rad(0)),.7/3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(SINE/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(SINE/41)),math.rad(0),math.rad(0)),.7/3)
		elseif MODE == "LIGHTING CANNON - INSANITY" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 - .5 * math.sin(SINE/50)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.7/3)
			Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(20),math.rad(10*math.cos(SINE/100)),math.rad(0)),1)
			if math.random(1,60) == 1 then
				Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(20+math.random(-20,20)),math.rad((10*math.cos(SINE/100))+math.random(-20,20)),math.rad(math.random(-20,20))),1)
			end
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-41.6-4*math.sin(SINE/50)),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,0.7/3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(-10-10*math.sin(SINE/50))) * LEFTSHOULDERC0,0.7/3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(10),math.rad(80),math.rad(10+10*math.sin(SINE/50))),1/3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(20),math.rad(-80),math.rad(-10-10*math.sin(SINE/50))),1/3)
		elseif MODE == "LIGHTING CANNON - ERROR" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 + .5 * math.cos(sine/15)) * CFrame.Angles(math.rad(0),math.rad(-10*math.cos(sine/30)),math.rad(0)),.7/3)
			Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.Angles(math.rad(0),math.rad(-15*math.cos(sine/30)),math.rad(0)),1/3)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(135+-15*math.cos(sine/30)),math.rad(0),math.rad(25+15*math.cos(sine/30))) * RIGHTSHOULDERC0,.7/3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(5),math.rad(5),math.rad(-10+15*math.cos(sine/30))) * LEFTSHOULDERC0,.7/3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-.01) * CFrame.Angles(math.rad(-10),math.rad(80),math.rad(10+10*math.sin(sine/15))),1/3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-.01) * CFrame.Angles(math.rad(0),math.rad(-80),math.rad(-10-10*math.sin(sine/15))),1/3)
		elseif MODE == "LIGHTING CANNON - RUN IN THE 90S" then
			if not Character:FindFirstChild("WalkingWheel") and ANIM == "Idle" and ATTACK == false then
				local ww = Instance.new("Model")
				ww.Name = "WalkingWheel"
				for i = 1,36 do
					local wwpart = Instance.new("Part")
					wwpart.Size = Vector3.new(2,.2,.56)
					wwpart.CFrame = RootPart.CFrame * CFrame.new(0,.01,0) * CFrame.Angles(math.rad(85+(10*i)),0,0) * CFrame.new(0,3.1,0)
					weldBetween(RootPart,wwpart)
					wwpart.Material = "Neon"
					if i <= 18 then
						wwpart.CanCollide = false
					end
					wwpart.Color = Color3.new()
					wwpart.Parent = ww
				end
				ww.Parent = Character
				coroutine.resume(coroutine.create(function()
					repeat if stopeverything then wait(math.huge) end 
						for i,v in pairs(ww:GetChildren()) do 
							v.Color = Torso.Color 
						end 
						swait() 
					until ATTACK or ANIM ~= "Idle"
					alreadyfixing = true
					ww:Destroy()
					alreadyfixing = false
				end))
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,-.2) * CFrame.Angles(math.rad(-SINE*6),math.rad(0),math.rad(0)),.25)
			Neck.C0 = Clerp(Neck.C0,NECKC0,.25)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-75*math.sin(SINE/5)),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,.25)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(75*math.sin(SINE/5)),math.rad(0),math.rad(0)) * LEFTSHOULDERC0,.25)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(75*math.sin(SINE/5)),math.rad(90),math.rad(0)),.25)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(-75*math.sin(SINE/5)),math.rad(-90),math.rad(0)),.25)
		elseif MODE == "KARMA" then
			local bouncyboi = sick.PlaybackLoudness / 1200
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.1, -0.1 + 0.05 * COS(SINE / 12) + bouncyboi) * ANGLES(RAD(15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.025 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 - 7.5 * SIN(SINE / 12)), RAD(12 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.7, 0.5 + sick.PlaybackLoudness / 1200, -0.3) * ANGLES(RAD(-200), RAD(0), RAD(30)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12) - bouncyboi, -0.01) * ANGLES(RAD(20), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12) - bouncyboi, -0.01) * ANGLES(RAD(5), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25 + MRANDOM(-5,5) - 4 * COS(SINE / 12)), RAD(MRANDOM(-5,5)), RAD(15)), 1 / Animation_Speed)--]]
			if MRANDOM(1, 10) == 1 then
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + MRANDOM(-25,25) - 4 * COS(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(0)), 1.5 / Animation_Speed)
			end		
		elseif MODE == "ł ₥ Ø Ɽ ₮ ₳ Ⱡ  ₴ Ⱡ ₳ Ɏ Ɇ Ɽ" then
			if MRANDOM(1,10) == 1 then
				Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
			end
			if math.random(1,8) == 1 then
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-87498,12093847)), RAD(MRANDOM(-123456,3746525)), RAD(MRANDOM(-2134567876,98764356))), 0.15 / Animation_Speed)
			end
			if(math.random(1,4)==1)then
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			end	
			if MRANDOM(1,10) == 1 then
				Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
			end
			RightHip.C0=Clerp(RightHip.C0,CF(1,-1 + 0.05 * math.cos(SINE / 20)  - 0.02 * math.cos(SINE / 40),0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3 + 2 * math.cos(SINE / 40)),math.rad(0 - 6 * math.cos(SINE / 40)),math.rad(-6 + 2 * math.cos(SINE / 20) - 6 * math.cos(SINE / 40))),.1)
			LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1 + 0.05 * math.cos(SINE / 20) - 0.02 * math.cos(SINE / 40),0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3 - 2 * math.cos(SINE / 40)),math.rad(10 - 6 * math.cos(SINE / 40)),math.rad(3 - 2 * math.cos(SINE / 20) - 3 * math.cos(SINE / 40))),.1)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0 + 0.02 * math.cos(SINE / 40),0 - 0.06 * math.cos(SINE / 40),-0.05 - 0.05 * math.cos(SINE / 20))*ANGLES(math.rad(0 + 2 * math.cos(SINE / 20)),math.rad(0 + 2 * math.cos(SINE / 40)),math.rad(-20 + 6 * math.cos(SINE / 40))),.1)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(6),math.rad(0 - 2 * math.cos(SINE / 42)),math.rad(20 - 6 * math.cos(SINE / 40))),.1)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(140 + 5 * COS(SINE /32)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.8 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.1, 0.4 - 0.05 * COS(SINE / 30), 0.25 - 0.025 * COS(SINE / 20)) * ANGLES(RAD(-30), RAD(0), RAD(30)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
			snap = math.random(1,72)
			if snap == 1 then
				CreateSound(1,Head,3,1.3,false)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-100000-sick.PlaybackLoudness/7,100000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-99999-sick.PlaybackLoudness/7,99999+sick.PlaybackLoudness/7)), RAD(MRANDOM(-200-sick.PlaybackLoudness/7,48375935+sick.PlaybackLoudness/7))), 1 / Animation_Speed) 
			end 
			if MRANDOM(1,20+sick.PlaybackLoudness/7) == 1 then
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-90-sick.PlaybackLoudness/7,90+sick.PlaybackLoudness/7)), RAD(MRANDOM(-30-sick.PlaybackLoudness/7,30+sick.PlaybackLoudness/7)), RAD(MRANDOM(-50-sick.PlaybackLoudness/7,50+sick.PlaybackLoudness/7)))* RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-10000-sick.PlaybackLoudness/7,10000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-900-sick.PlaybackLoudness/7,900+sick.PlaybackLoudness/7)), RAD(MRANDOM(-20-sick.PlaybackLoudness/7,20+sick.PlaybackLoudness/7)))* LEFTSHOULDERC0, 1 / Animation_Speed)
			end
		elseif MODE == "NEEDXKING" then
			snap = math.random(1,32)
			if snap == 1 then
				Neck.C0 = Clerp(Neck.C0,NECKC0*cf(0,0,0+((1)-1))*angles(math.rad(math.random(-12093487,10000)),math.rad(math.random(-200,10000)),math.rad(math.random(-999999999,10000))),1/Animation_Speed)
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , -0.7) * ANGLES(RAD(MRANDOM(-15,15)), RAD(MRANDOM(-15,15)), RAD(MRANDOM(-15,15))), 0.35 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(30+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15))), 0.35 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(160+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(-30+MRANDOM(-15,15)))* RIGHTSHOULDERC0, 0.35 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(160+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(30+MRANDOM(-15,15))) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(90), RAD(0)), 0.35 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 , 0) * ANGLES(RAD(-60), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(-90), RAD(0)), 0.35 / Animation_Speed)
			snap = math.random(1,32)
			if snap == 1 then
				Neck.C0 = Clerp(Neck.C0,NECKC0*cf(0,0,0+((1)-1))*angles(math.rad(math.random(-12093487,10000)),math.rad(math.random(-200,10000)),math.rad(math.random(-999999999,10000))),1/Animation_Speed)
			end

	elseif MODE == "NEEDXFALLEN" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(45)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(145), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(3), RAD(0)) * RIGHTSHOULDERC0, 0.25 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5, 0.5) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		elseif MODE == "PVZ CAR" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)

		elseif MODE == "CLOWN CAR" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)
		elseif MODE == "PIGGIE TRAP CAR" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)
		elseif MODE == "BING BING BANG CAR" then
			local rc0 = CFrame.new() * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
			local nc0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
			local rscp = CFrame.new(-.5,0,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
			local lscp = CFrame.new(.5,0,0) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))
			RootJoint.C0 = Clerp(RootJoint.C0,rc0*CFrame.new(math.random(-1,1)/2,math.random(-1,1)/2,math.random(-1,1)/2)*CFrame.Angles(math.rad(math.random(-45,45)),math.rad(math.random(-45,45)),0),1)
			Neck.C0 = Clerp(Neck.C0,nc0,1)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(2,0,0) * rscp * CFrame.Angles(math.rad(-90),0,0),1)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-2,0,0) * lscp * CFrame.Angles(math.rad(-90),0,0),1)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(.5,-2,0),1)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-.5,-2,0),1)
		elseif MODE == "WHATAPP CAR" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)
		elseif MODE == "NORMAL" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(-0.5*COS(SINE / 40),0,3-2*COS(SINE / 40))*ANGLES(RAD(-70 + 20 *COS(SINE / 40)),RAD(0),RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-15 + 25*COS(SINE / 40)), RAD(0), RAD(21 + 2.5 * SIN(SINE / 40))), 1 / Animation_Speed) 
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-20 + 40 * COS(SINE / 40)), RAD(0), RAD(15 + 3 * COS(SINE / 40) - 3 * SIN(SINE / 40))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-20 + 40 * COS(SINE / 40)), RAD(0), RAD(-15 + 3 * COS(SINE / 40) + 3 * SIN(SINE / 40))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-20+40*COS(SINE / 40)), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(-10+40*COS(SINE / 40)), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		elseif MODE == "HACKER" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 4 + 1 * SIN(SINE / 26)) * ANGLES(RAD(-5 - 2.5*SIN(SINE/48/2)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0 + 2.5 *COS(SINE / 12)), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-20 - 13*SIN(SINE/12)), RAD(0), RAD(12 - 4.10 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-20 - 13*SIN(SINE/12)), RAD(0), RAD(-12 + 4.10 * SIN(SINE / 12))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -.5 - 0.02 * SIN(SINE / 12), -0.5) * ANGLES(RAD(-10 - 2.5 * SIN(SINE / 21)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.02 * SIN(SINE / 12), -0.01) * ANGLES(RAD(-20 - 2.5 * SIN(SINE / 16)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
		elseif MODE == "KRUMP" then
			RootJoint.C0 = Clerp(RootJoint.C0,CFrame.new() * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)) * CFrame.new(0+1*math.sin(sine/3),0+1*math.cos(sine/3),-.75) * CFrame.Angles(math.rad(0),math.rad(-10),math.rad(0)),1)
			Neck.C0 = Clerp(Neck.C0,CFrame.new(0,1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)) * CFrame.new(),1)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)) * CFrame.new(-.5,0,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)),1)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)) * CFrame.new(.5,0,0) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0)),1)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1.5,-1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(70)),1)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-.5,-1.25,-.25) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)),1)
		elseif MODE == "ECHOV2" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-35)), 1 / 5)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25 + MRANDOM(-5,5) - 4 * COS(SINE / 12)), RAD(MRANDOM(-5,5)), RAD(15)), 1 / 5)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.025 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 - 7.5 * SIN(SINE / 12)), RAD(12 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / 5)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.025 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 + 7.5 * SIN(SINE / 12)), RAD(-12 - 7.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 0.15 / 5)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / 5)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / 5)
		elseif MODE == "ECHOV1" then
			if WEAPONEQUIPPED == true then
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0+MRANDOM(-25,25)), RAD(0+MRANDOM(-25,25)), RAD(0+MRANDOM(-25,25))), 0.35 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(-180), RAD(-5)) * LEFTSHOULDERC0, 0.8 / 10)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE /12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / 25)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *ANGLES(RAD(0),RAD(0 + .5 * COS(SINE / 12)),RAD(MRANDOM(-40,10))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.1 * COS(SINE /12), -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.8 / 10)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE /12), -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.8 / 10)
			else
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , -0.2 + 0.2*COS(SINE / 13) ) * ANGLES(RAD(-20), RAD(0), RAD(0)), 0.35 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-20+MRANDOM(-15-sick.PlaybackLoudness/200,15+sick.PlaybackLoudness/200)), RAD(0+MRANDOM(-15-sick.PlaybackLoudness/200,15+sick.PlaybackLoudness/200)), RAD(0+MRANDOM(-15-sick.PlaybackLoudness/200,15+sick.PlaybackLoudness/200))), 0.35 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5+ 0.2*COS(SINE / 13), 0) * ANGLES(RAD(-20+MRANDOM(-15-sick.PlaybackLoudness/200,15+sick.PlaybackLoudness/200)), RAD(0+MRANDOM(-15-sick.PlaybackLoudness/200,15+sick.PlaybackLoudness/200)), RAD(0+MRANDOM(-15-sick.PlaybackLoudness/200,15+sick.PlaybackLoudness/200)))* RIGHTSHOULDERC0, 0.35 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5+ 0.2*COS(SINE / 13), 0) * ANGLES(RAD(-20+MRANDOM(-15-sick.PlaybackLoudness/200,15+sick.PlaybackLoudness/200)), RAD(0+MRANDOM(-15-sick.PlaybackLoudness/200,15+sick.PlaybackLoudness/200)), RAD(0+MRANDOM(-15-sick.PlaybackLoudness/200,15+sick.PlaybackLoudness/200))) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1- 0.2*COS(SINE / 13), 0) * ANGLES(RAD(-20), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(90), RAD(0)), 0.35 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1- 0.2*COS(SINE / 13) , 0) * ANGLES(RAD(-20), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(-90), RAD(0)), 0.35 / Animation_Speed)
			end
		elseif MODE == "WARYRGMA" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0+.15*SIN(sine/32)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(40), RAD(-10), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10+5*SIN(sine/24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10-5*SIN(sine/24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			snap = math.random(1,72)
			if snap == 1 then	
				CreateSound(363808674,Head,3,1.3,false)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-100000-sick.PlaybackLoudness/7,100000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-99999-sick.PlaybackLoudness/7,99999+sick.PlaybackLoudness/7)), RAD(MRANDOM(-200-sick.PlaybackLoudness/7,48375935+sick.PlaybackLoudness/7))), 1 / Animation_Speed) 
			end
		elseif MODE == "Ascensionist" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0+.15*SIN(sine/32)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(40), RAD(-10), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10+5*SIN(sine/24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10-5*SIN(sine/24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			snap = math.random(1,72)
			if snap == 1 then	
				CreateSound(363808674,Head,3,1.3,false)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-100000-sick.PlaybackLoudness/7,100000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-99999-sick.PlaybackLoudness/7,99999+sick.PlaybackLoudness/7)), RAD(MRANDOM(-200-sick.PlaybackLoudness/7,48375935+sick.PlaybackLoudness/7))), 1 / Animation_Speed) 
			end

		elseif MODE == "MYSTERY" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(2 + 6.0 * SIN(SINE / 15)), RAD(0), RAD(-25)), 3 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0- 0.1 * COS(SINE / 30), 0 + 0.1 * COS(SINE / 15)) * ANGLES(RAD(0+ 5 * COS(SINE / 30)), RAD(0), RAD(25)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0+6.0 * COS(SINE / 30)), RAD(0), RAD(12))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0+6.0 * COS(SINE / 30)), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.1 * COS(SINE / 15), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-6-2.5 * COS(SINE / 30)), RAD(0), RAD(0+ 5 * COS(SINE / 30))), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE / 15), -0.01) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(-6+2.5 * COS(SINE / 30)), RAD(0), RAD(0- 5 * COS(SINE / 30))), 1 / Animation_Speed)
		elseif MODE == "BLOODWATER" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0+.15*SIN(sine/32)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(40), RAD(-10), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10+5*SIN(sine/24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10-5*SIN(sine/24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		elseif MODE == "SYSTEM Ę̴̡̧͔̘͓̫̖͕̱̮̜̤̫͎̿̍̊̀̐̋̄͂͑̒̚͠Ȓ̸͎̳̭̱̮̱͔͙̭̫͕́́͜͝Ȑ̷͚͍̟͔̠̰̞̗̬͔̍̍͑͒̿͂͛̈́͘͜ͅO̷͍̹̯͝R̴̢̺̖̳̥͍̙̝̯͓̲̺̘̱̊̏͌̾̑̓̀̐͑̈́̓̚͘͝" then
			snap = math.random(1,3)
			if snap == 1 then
				Neck.C0 = Clerp(Neck.C0,NECKC0*cf(0,0,0+((1)-1))*angles(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))),1/Animation_Speed)
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 4 + 1 * SIN(SINE / 26)) * ANGLES(RAD(-5 - 2.5*SIN(SINE/48/2)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-2.5+1*COS(SINE / 12)), RAD(MRANDOM(-5,5)), RAD(0)), 1 / Animation_Speed) 
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(15 + 3 * COS(SINE / 40) - 3 * SIN(SINE / 40) + MRANDOM(-35,35))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-15 + 3 * COS(SINE / 40) + 3 * SIN(SINE / 40) - MRANDOM(-35,35))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.05*COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1-.05*COS(SINE  / 12), -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
		elseif MODE == "DR34M5 V2" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(140 + 5 * COS(SINE /32)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.8 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE /12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.8 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.1 * COS(SINE /12), -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE /12), -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.8 / Animation_Speed)
		elseif MODE == "DR34M5" then
			snap = math.random(1,32)
			if snap == 1 then
				Neck.C0 = Clerp(Neck.C0,NECKC0*cf(0,0,0+((1)-1))*angles(math.rad(math.random(-12093487,10000)),math.rad(math.random(-200,10000)),math.rad(math.random(-999999999,10000))),1/Animation_Speed)
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , -0.7) * ANGLES(RAD(MRANDOM(-15,15)), RAD(MRANDOM(-15,15)), RAD(MRANDOM(-15,15))), 0.35 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(30+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15))), 0.35 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(160+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(-30+MRANDOM(-15,15)))* RIGHTSHOULDERC0, 0.35 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(160+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(30+MRANDOM(-15,15))) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(90), RAD(0)), 0.35 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 , 0) * ANGLES(RAD(-60), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(-90), RAD(0)), 0.35 / Animation_Speed)
			snap = math.random(1,32)
			if snap == 1 then
				Neck.C0 = Clerp(Neck.C0,NECKC0*cf(0,0,0+((1)-1))*angles(math.rad(math.random(-12093487,10000)),math.rad(math.random(-200,10000)),math.rad(math.random(-999999999,10000))),1/Animation_Speed)
			end
		elseif MODE == "K I L L B O T" then
			snap = math.random(1,6)
			if snap == 1 then
				Neck.C0 = Clerp(Neck.C0,NECKC0*cf(0,0,0+((1)-1))*angles(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))),1/Animation_Speed)
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.05 * math.cos(sine / 12)) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 1 / 3)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(-15 - 3 * math.cos(sine / 12)), math.rad(5), math.rad(0)), 1 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5+0.1 * math.cos(sine / 12), 0) * CFrame.Angles(math.rad(-53.75+1.75 * math.cos(sine / 12)), math.rad(0), math.rad(5)) * RIGHTSHOULDERC0, 1 / 3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 12), -0) * CFrame.Angles(math.rad(15 - 1.5 * math.cos(sine / 12)), math.rad(0 - 6 * math.cos(sine / 12)), math.rad(0 - 6 * math.cos(sine / 12))) * LEFTSHOULDERC0, 1 / 3)
			RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1.1 - 0.05 * math.cos(sine / 12), 0) * CFrame.Angles(math.rad(15), math.rad(80), math.rad(0)) * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0)), 1 / 3)
			LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1.1 - 0.05 * math.cos(sine / 12), 0) * CFrame.Angles(math.rad(10), math.rad(-70), math.rad(0)) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 1 / 3)
		elseif MODE == "wastelands" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -1.6 + 0.1 * COS(SINE / 20)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(40+sick.PlaybackLoudness/9), RAD(0), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5, 0.5) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(0.5, -0.9 - 0.1 * COS(SINE / 1), -0.6) * ANGLES(RAD(0), RAD(-10), RAD(0)) * ANGLES(RAD(75), RAD(0), RAD(5)), 0.1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-0.5, 0.1 - 0.1 * COS(SINE / 1), -0.6) * ANGLES(RAD(0), RAD(-10), RAD(0)) * ANGLES(RAD(25), RAD(0), RAD(-10)), 0.1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.2 / Animation_Speed)		

		elseif MODE == "RELAX" then
			if ATTACK == false then
					Anim = "Idle"
					Humanoid.HipHeight = 0
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,-.5*math.sin(sine/25)) * CFrame.Angles(math.rad(-90+5*math.cos(sine/25)),math.rad(0),math.rad(0)),.7/1)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,-.1,0) * CFrame.Angles(math.rad(25+5*math.cos(sine/25)),math.rad(0),math.rad(0)),.7/1)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1,.75,.1) * CFrame.Angles(math.rad(-165.1-5*math.cos(sine/25)),math.rad(0),math.rad(-40)) * RIGHTSHOULDERC0,.7/1)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1,.75,.1) * CFrame.Angles(math.rad(-165-5*math.cos(sine/25)),math.rad(0),math.rad(40)) * LEFTSHOULDERC0,.7/1)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(0+10*math.cos(sine/25)),math.rad(90),math.rad(0)) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.7/1)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(25+10*math.cos(sine/25)),math.rad(-90),math.rad(0)) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.7/1)
				end
				elseif MODE == "heart broken" then
			if MRANDOM(1,10) == 1 then
				Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
			end
			if math.random(1,8) == 1 then
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-87498,12093847)), RAD(MRANDOM(-123456,3746525)), RAD(MRANDOM(-2134567876,98764356))), 0.15 / Animation_Speed)
			end
			if(math.random(1,4)==1)then
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			end		
			if MRANDOM(1,10) == 1 then
				Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
			end
			bouncyboi = sick.PlaybackLoudness / 1200
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.1, 1 + 0.5 * COS(SINE / 18)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.2 / Animation_Speed)	
			RightShoulder.C0 = Clerp(RightShoulder.C0,CF(1.5,0.5+.1*COS(SINE/36),-.3)*ANGLES(RAD(44.1),RAD(0),RAD(-25))*RIGHTSHOULDERC0,1/Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5, 0.5) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(0.5, -0.9 - 0.1 * COS(SINE / 1), -0.6) * ANGLES(RAD(0), RAD(-10), RAD(0)) * ANGLES(RAD(75), RAD(0), RAD(5)), 0.1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-0.5, 0.1 - 0.1 * COS(SINE / 1), -0.6) * ANGLES(RAD(0), RAD(-10), RAD(0)) * ANGLES(RAD(25), RAD(0), RAD(-10)), 0.1 / Animation_Speed)
			if MRANDOM(1,20+sick.PlaybackLoudness/7) == 1 then
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-90-sick.PlaybackLoudness/7,90+sick.PlaybackLoudness/7)), RAD(MRANDOM(-30-sick.PlaybackLoudness/7,30+sick.PlaybackLoudness/7)), RAD(MRANDOM(-50-sick.PlaybackLoudness/7,50+sick.PlaybackLoudness/7)))* RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-10000-sick.PlaybackLoudness/7,10000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-900-sick.PlaybackLoudness/7,900+sick.PlaybackLoudness/7)), RAD(MRANDOM(-20-sick.PlaybackLoudness/7,20+sick.PlaybackLoudness/7)))* LEFTSHOULDERC0, 1 / Animation_Speed)
				end
		elseif MODE == "his theme..." then
			RightHip.C0=Clerp(RightHip.C0,cf(1*1,-0.05*1,-0.75*1)*angles(math.rad(0),math.rad(90),math.rad(30))*angles(math.rad(0),math.rad(0),math.rad(30)),.1)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1*1,-0.5*1,-0.25*1)*angles(math.rad(30),math.rad(-99),math.rad(-30))*angles(math.rad(-21),math.rad(0),math.rad(-30)),.1)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0,0*1,-1.9 + 0.1 *1* math.cos(sine / 28))*angles(math.rad(20 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
			Neck.C0=Clerp(Neck.C0,NECKC0*angles(math.rad(55),math.rad(0),math.rad(0)),.1)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(0.75*1,0.5*1,-0.25*1)*angles(math.rad(140),math.rad(0),math.rad(-20 + 2.5 * math.cos(sine / 28))),.1)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-0.75*1,0.5*1,-0.25*1)*angles(math.rad(140),math.rad(0),math.rad(20 - 2.5 * math.cos(sine / 28))),.1)
		elseif MODE == "DEPRESSION" then
			RightHip.C0=Clerp(RightHip.C0,cf(1*1,-0.05*1,-0.75*1)*angles(math.rad(0),math.rad(90),math.rad(30))*angles(math.rad(0),math.rad(0),math.rad(30)),.1)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1*1,-0.5*1,-0.25*1)*angles(math.rad(30),math.rad(-99),math.rad(-30))*angles(math.rad(-21),math.rad(0),math.rad(-30)),.1)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0,0*1,-1.9 + 0.1 *1* math.cos(sine / 28))*angles(math.rad(20 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
			Neck.C0=Clerp(Neck.C0,NECKC0*angles(math.rad(55),math.rad(0),math.rad(0)),.1)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(0.75*1,0.5*1,-0.25*1)*angles(math.rad(140),math.rad(0),math.rad(-20 + 2.5 * math.cos(sine / 28))),.1)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-0.75*1,0.5*1,-0.25*1)*angles(math.rad(140),math.rad(0),math.rad(20 - 2.5 * math.cos(sine / 28))),.1)
		elseif MODE == "G O D" then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.1 + 0.1 * COS(SINE / 20)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(0), RAD(0), RAD(0)), 0.3)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.9 - 0.1 * COS(SINE / 20), 0.025 * COS(SINE / 20)) * EULER(0, 1.6, 0) * ANGLES(RAD(-2.5), RAD(0), RAD(0)), 0.15)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.9 - 0.1 * COS(SINE / 20), 0.025 * COS(SINE / 20)) * EULER(0, -1.6, 0) * ANGLES(RAD(-2.5), RAD(0), RAD(0)), 0.15)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		elseif MODE == "STUDIO DUMMY" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0*CFrame.new(0,0,1 - .5 * math.sin(SINE/20))*CFrame.Angles(math.rad(-25-5*math.cos(SINE/20)),0,0),.7/3)
			Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.new(0,0 ,0 + ((1) - 1)) * CFrame.Angles(math.rad(30-1*math.cos(SINE/20)),math.rad(0),math.rad(0)),0.7/3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.55, 0.5, 0.5) * ANGLES(RAD(250), RAD(20), RAD(-80))* RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, -0.5) * ANGLES(RAD(-40 + -11 * COS(SINE / 23)), RAD(25), RAD(75)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 38 * math.cos(SINE/20)),math.rad(80),math.rad(0))*CFrame.Angles(0,0,math.rad(15 - 25 * math.cos(SINE/20))),0.7/3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(0 + 38 * math.cos(SINE/20)),math.rad(-80),math.rad(0))*CFrame.Angles(0,0,math.rad(-15 + 25 * math.cos(SINE/20))),0.7/3)
		elseif  MODE == "V O D K A" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2 + 1 * COS(SINE / 18)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(40+sick.PlaybackLoudness/9), RAD(0), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(MRANDOM(-25,25)), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-17 + 9.4 * COS(sine / 26)), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -.5, -0.5) * ANGLES(RAD(-22 + 10.8 * COS(sine / 32)), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		elseif MODE == "C R A Z Y" then
			snap= math.random(1,06)
			if snap == 1 then
				Neck.C0 = Clerp(Neck.C0,CF(0,0,0+((1)-1))*ANGLES(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))),1/Animation_Speed)
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.1, -0.1 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(30), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-10 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(45 *COS(SINE/23))), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(120), RAD(0 - 22.5 * SIN(SINE / 20)), RAD(0 - 3.5 * SIN(SINE / 20))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.2, 0) * ANGLES(RAD(MRANDOM(170, 200)), RAD(0), RAD(MRANDOM(5, 45))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(30), RAD(87), RAD(0)) * ANGLES(RAD(-9), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(30), RAD(-87), RAD(0)) * ANGLES(RAD(-9), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			-- 933 helped make this one
		elseif MODE == "GODCAT" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.1, 1 + 0.5 * COS(SINE / 18)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(2.5), RAD(0), RAD(21 + 2.5 * SIN(SINE / 12))), 1 / Animation_Speed) 
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(100 + 2 * COS(SINE / 12)), RAD(0), RAD(15 + 3 * COS(SINE / 12) - 3 * SIN(SINE / 12))) *               ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(0), RAD(-3.5), RAD(-25 + 5 * COS(SINE / 12))) * ANGLES(RAD(20), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.5) * ANGLES(RAD(0), RAD(0), RAD(0)) * ANGLES(RAD(-20 + 1 * COS(SINE / 18)), RAD(0), RAD(-80)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.7) * ANGLES(RAD(0), RAD(0), RAD(0)) * ANGLES(RAD(-35 + 1 * COS(SINE / 18)), RAD(0), RAD(80)), 1 / Animation_Speed)
		elseif MODE == "Voided" then
			--Animation Made By xXTreyvonGXx--
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 4 + 1 * SIN(SINE / 26)) * ANGLES(RAD(-5 - 2.5*SIN(SINE/48/2)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-15, 25) - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-15, 25)), RAD(MRANDOM(-15, 25))), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0+6.0 * COS(SINE / 30)), RAD(0), RAD(12))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0+6.0 * COS(SINE / 30)), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -.5 - 0.02 * SIN(SINE / 12), -0.5) * ANGLES(RAD(-10 - 2.5 * SIN(SINE / 21)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.02 * SIN(SINE / 12), -0.01) * ANGLES(RAD(-20 - 2.5 * SIN(SINE / 16)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		elseif MODE == "IMMORTAL LORD" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0*CFrame.new(0,0,3 -.5*math.sin(sine/25))*CFrame.Angles(math.rad(20),0,0),.25)
			if NeckSnap then
				Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(sine/50)),0),1)
				NeckSnap = false
			else
				Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(sine/50)),0),.25)
			end
			if math.random(1,60) == 1 then
				Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.Angles(math.rad(20+math.random(-20,20)),math.rad((10*math.sin(sine/50))+math.random(-20,20)),math.rad(math.random(-20,20))),1)
			end
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-10),0,0)*RIGHTSHOULDERC0,.25)
			SwordJoint.C0 = Clerp(SwordJoint.C0,CFrame.new(0,-1,0)*CFrame.Angles(math.rad(154.35-5.65*math.sin(sine/25)),0,0),.25)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(20),0,math.rad(-10-10*math.cos(sine/25)))*LEFTSHOULDERC0,.25)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0)*CFrame.Angles(math.rad(10),math.rad(80),math.rad(10+10*math.cos(sine/25))),.25)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(20),math.rad(-80),math.rad(-10-10*math.cos(sine/25))),.25)
		elseif MODE == "ANTI V7" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 - .5 * math.sin(SINE/50)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.7/3)
			Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(20),math.rad(10*math.cos(SINE/100)),math.rad(0)),1)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-41.6-4*math.sin(SINE/50)),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,0.7/3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(-10-10*math.sin(SINE/50))) * LEFTSHOULDERC0,0.7/3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(10),math.rad(80),math.rad(10+10*math.sin(SINE/50))),1/3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(20),math.rad(-80),math.rad(-10-10*math.sin(SINE/50))),1/3)
			snap = math.random(1,32)
			if snap == 1 then
				Neck.C0 = Clerp(Neck.C0,NECKC0*cf(0,0,0+((1)-1))*angles(math.rad(math.random(-12093487,10000)),math.rad(math.random(-200,10000)),math.rad(math.random(-999999999,10000))),1/Animation_Speed)
			end

		elseif MODE == "ANTI V12" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0+.15*SIN(sine/32)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(40), RAD(-10), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10+5*SIN(sine/24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10-5*SIN(sine/24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			snap = math.random(1,72)
			if snap == 1 then	
				CreateSound(363808674,Head,3,1.3,false)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-100000-sick.PlaybackLoudness/7,100000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-99999-sick.PlaybackLoudness/7,99999+sick.PlaybackLoudness/7)), RAD(MRANDOM(-200-sick.PlaybackLoudness/7,48375935+sick.PlaybackLoudness/7))), 1 / Animation_Speed) 
			end
		elseif MODE == "CHILLED" then
			if NeckSnap then
				Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(SINE/100)),0),1)
				NeckSnap = false
			else
				Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(SINE/100)),0),.25)
			end
			if math.random(1,60) == 1 then
				Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(20+math.random(-20,20)),math.rad((10*math.cos(SINE/100))+math.random(-20,20)),math.rad(math.random(-20,20))),1)
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0*CFrame.new(0 + .5 * math.cos(SINE/50),0,3 - .5 * math.sin(SINE/50))*CFrame.Angles(math.rad(-25+5*math.sin(sine/50)),0,0),.7/3)
			Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.new(0,0 ,0 + ((1) - 1)) * CFrame.Angles(math.rad(30+5*math.sin(SINE/50)),math.rad(0),math.rad(0)),0.8/3)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.55, 0.5, 0.5) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0, 1 / 3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-20 + 8.5 * math.cos(SINE/50)),math.rad(0),math.rad(-25 - 5 * math.cos(SINE/25))) * LEFTSHOULDERC0,0.8/3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-5 + 9 * math.cos(SINE/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(SINE/37)),math.rad(0),math.rad(0)),0.8/3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(13 - 9 * math.cos(SINE/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(SINE/41)),math.rad(0),math.rad(0)),0.8/3)
		elseif MODE == "ASRIEL" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 - .5 * math.sin(sine/9)) * CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),.7/3)
			Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,-.05,0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.7/3)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.25,.5,-.1) * CFrame.Angles(math.rad(45),math.rad(-45),math.rad(0)) * RIGHTSHOULDERC0,.7/3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-20 + 8.5 * math.cos(sine/20)),math.rad(0),math.rad(-25 - 5 * math.cos(sine/20))) * LEFTSHOULDERC0,0.7/3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-.01) * CFrame.Angles(math.rad(10),math.rad(80),math.rad(10+10*math.sin(sine/50))),1/3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-.01) * CFrame.Angles(math.rad(20),math.rad(-80),math.rad(-10-10*math.sin(sine/50))),1/3)
		elseif MODE == "MAYHEM" then
			RightHip.C0=Clerp(RightHip.C0,cf(1,-1 - 0.1 * COS(sine / 32),0)*angles(RAD(0),RAD(90),RAD(0))*angles(RAD(-3),RAD(-5.5 - 2 * COS(sine / 56)),RAD(-12 - 2 * COS(sine / 32))),.1)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-1 - 0.1 * COS(sine / 32),0)*angles(RAD(0),RAD(-90),RAD(0))*angles(RAD(-6),RAD(22 - 2 * COS(sine / 56)),RAD(-1 + 2 * COS(sine / 32))),.1)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0,0.01 + 0.03 * COS(sine / 32),0 + 0.1 * COS(sine / 32))*angles(RAD(1 - 2 * COS(sine / 32)),RAD(0),RAD(-22 + 2 * COS(sine / 56))),.1)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 - 2 * COS(sine / 37)),RAD(0 + 5 * COS(sine / 43) - 5 * COS(sine / 0.25)),RAD(22 - 2 * COS(sine / 56))),.1)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(1.5,0.5 + 0.025 * COS(sine / 45),0)*angles(RAD(5 + 3 * COS(sine / 43)),RAD(-16 - 5 * COS(sine / 52)),RAD(13 + 9 * COS(sine / 45))),.1)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-1.35,1 + 0.025 * COS(sine / 45),-0.2)*angles(RAD(148 - 2 * COS(sine / 51)),RAD(0 - 4 * COS(sine / 64)),RAD(22 - 2 * COS(sine / 45))),.1)
		end
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil and ATTACK == false then
		ANIM = "Walk"
		DOUBLED = false
		READYTODOUBLE = false
		if MODE == "SPECTRUM" then
			if MRANDOM(1,10) == 1 then
				Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
			end
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0-60* SIN(SINE / 12)), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.8 / 7.5)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0+60* SIN(SINE / 12)), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.8 / 7.5)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1+0.1* SIN(SINE / 6)) * ANGLES(RAD(0), RAD(0), RAD(0+5 * SIN(SINE / 12))), 0.8 / 7.5)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
		elseif MODE == "REDEMPTION" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - .25*Cos(sine/63)+.92*Sin(sine/95), 0, 4 - 2 * SIN(SINE / 53)) * ANGLES(RAD(70), RAD(0-RootPart.RotVelocity.y), RAD(0 - RootPart.RotVelocity.Y * 4.5 + 3 * COS(SINE / 47))), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12 - 4.10 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-.75, 0.5, 0.5) * ANGLES(RAD(-25+math.random(-23,23)), RAD(0+math.random(-23,23)), RAD(45+math.random(-23,23))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -.5 - 0.02 * SIN(SINE / 12), -0.5) * ANGLES(RAD(-10 - 2.5 * SIN(SINE / 21)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.02 * SIN(SINE / 12), -0.01) * ANGLES(RAD(-20 - 2.5 * SIN(SINE / 51)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
		elseif MODE == "MY DREAMS" then
			snap2 = math.random(1,10)
			if snap2 == 1 then
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, -0.6) * ANGLES(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))) * RIGHTSHOULDERC0, 0.25 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, -0.6) * ANGLES(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))) * LEFTSHOULDERC0, 0.25 / Animation_Speed)
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 - .5 * math.sin(SINE/50)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.7/3)
			Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(20),math.rad(10*math.cos(SINE/100)),math.rad(0)),1)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-41.6-4*math.sin(SINE/50)),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,0.7/3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.7, 0.5 + sick.PlaybackLoudness / 1200, -0.3) * ANGLES(RAD(-200), RAD(0), RAD(30)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(10),math.rad(80),math.rad(10+10*math.sin(SINE/50))),1/3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(20),math.rad(-80),math.rad(-10-10*math.sin(SINE/50))),1/3)		
		elseif MODE == "PURITY" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0-75* SIN(SINE / 12)), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.8 / 10)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0+75* SIN(SINE / 12)), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.8 / 10)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1+0.1* SIN(SINE / 6)) * ANGLES(RAD(0), RAD(0), RAD(0+5 * SIN(SINE / 12))), 0.8 / 10)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 75 * SIN(SINE / 12))), 0.8 / 10)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 75 * SIN(SINE / 12))), 0.8 / 10)
		elseif MODE == "INSANITY" then
			RightHip.C0=Clerp(RightHip.C0,cf(1,-0.5,-0.6)*angles(RAD(0),RAD(90),RAD(0))*angles(RAD(1.5),RAD(0),RAD(-20 - 5 * COS(sine / 34))),.2)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-1,0)*angles(RAD(0),RAD(-90),RAD(0))*angles(RAD(1),RAD(0),RAD(20 + 2 * COS(sine / 38))),.2)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0 - 0.15 * COS(sine / 47),-0.5,1 + 0.25 * COS(sine / 28))*angles(RAD(40),RAD(0 - RootPart.RotVelocity.Y),RAD(0 - RootPart.RotVelocity.Y *4.5 + 3 * COS(sine / 47))),.05)
			Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(-30 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(0 + MRANDOM(-5,5))),1)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(1.5,0.5 + 0.05 * COS(sine / 28),0)*angles(RAD(-8 - 4 * COS(sine / 59)),RAD(-20 + 7 * COS(sine / 62)),RAD(20 + 5 * COS(sine / 50))),.2)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-1.5,0.5 + 0.1 * COS(sine / 28),0)*angles(RAD(-8 - 3 * COS(sine / 55)),RAD(20 + 8 * COS(sine / 67)),RAD(-20 - 4 * COS(sine / 29))),.2)
		elseif MODE == "K I C K I S H E R X" then
			if MRANDOM(1,10) == 1 then
				Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
			end
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(145), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(3), RAD(0)) * RIGHTSHOULDERC0, 0.25 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0+60* SIN(SINE / 12)), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.8 / 7.5)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1+0.1* SIN(SINE / 6)) * ANGLES(RAD(0), RAD(0), RAD(0+5 * SIN(SINE / 12))), 0.8 / 7.5)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
		elseif MODE == "B̷͍̱̖̭́̐̏͋͒̀͌̔̒ͅÀ̸̢͖̩̼̬̌̅̈́̅N̵̨͇̫͈̪̿I̷̙͓̫͎͈͉͐͛̄̿̏͐͘̕S̷̨̗̐̈́̓̈́̃̋̀̑̚Ĥ̶̨̙̳͔̟̓͒̔͝Ë̸̹́͋̌̇̋̃R̷̳̞̯͚͠" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - .25*Cos(sine/63)+.92*Sin(sine/95), 0, 4 - 2 * SIN(SINE / 53)) * ANGLES(RAD(70), RAD(0-RootPart.RotVelocity.y), RAD(0 - RootPart.RotVelocity.Y * 4.5 + 3 * COS(SINE / 47))), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12 - 4.10 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-.75, 0.5, 0.5) * ANGLES(RAD(-25+math.random(-23,23)), RAD(0+math.random(-23,23)), RAD(45+math.random(-23,23))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -.5 - 0.02 * SIN(SINE / 12), -0.5) * ANGLES(RAD(-10 - 2.5 * SIN(SINE / 21)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.02 * SIN(SINE / 12), -0.01) * ANGLES(RAD(-20 - 2.5 * SIN(SINE / 51)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
		elseif MODE == "K I C K I S H E R" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 8 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.1, -0.4) * ANGLES(RAD(150), RAD(0), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
 		elseif MODE == "P H O N K " then
			RightHip.C0=Clerp(RightHip.C0,cf(1,-0.5,-0.6)*angles(RAD(0),RAD(90),RAD(0))*angles(RAD(1.5),RAD(0),RAD(-20 - 5 * COS(sine / 34))),.2)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-1,0)*angles(RAD(0),RAD(-90),RAD(0))*angles(RAD(1),RAD(0),RAD(20 + 2 * COS(sine / 38))),.2)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0 - 0.15 * COS(sine / 47),-0.5,1 + 0.25 * COS(sine / 28))*angles(RAD(70),RAD(0 - RootPart.RotVelocity.Y),RAD(0 - RootPart.RotVelocity.Y *4.5 + 3 * COS(sine / 47))),.05)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(-17 - 5 * COS(sine / 52)),RAD(0 - 3 * COS(sine / 37)),RAD(0 + 2 * COS(sine / 78))),.2)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(1.5,0.5 + 0.05 * COS(sine / 28),0)*angles(RAD(-8 - 4 * COS(sine / 59)),RAD(-20 + 7 * COS(sine / 62)),RAD(20 + 5 * COS(sine / 50))),.2)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-1.5,0.5 + 0.1 * COS(sine / 28),0)*angles(RAD(-8 - 3 * COS(sine / 55)),RAD(20 + 8 * COS(sine / 67)),RAD(-20 - 4 * COS(sine / 29))),.2)
		elseif MODE == "STARLIGHT" then
			RightHip.C0=Clerp(RightHip.C0,cf(1,-0.5,-0.6)*angles(RAD(0),RAD(90),RAD(0))*angles(RAD(1.5),RAD(0),RAD(-20 - 5 * COS(sine / 34))),.2)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-1,0)*angles(RAD(0),RAD(-90),RAD(0))*angles(RAD(1),RAD(0),RAD(20 + 2 * COS(sine / 38))),.2)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0 - 0.15 * COS(sine / 47),-0.5,1 + 0.25 * COS(sine / 28))*angles(RAD(70),RAD(0 - RootPart.RotVelocity.Y),RAD(0 - RootPart.RotVelocity.Y *4.5 + 3 * COS(sine / 47))),.05)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(-17 - 5 * COS(sine / 52)),RAD(0 - 3 * COS(sine / 37)),RAD(0 + 2 * COS(sine / 78))),.2)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(1.5,0.5 + 0.05 * COS(sine / 28),0)*angles(RAD(-8 - 4 * COS(sine / 59)),RAD(-20 + 7 * COS(sine / 62)),RAD(20 + 5 * COS(sine / 50))),.2)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-1.5,0.5 + 0.1 * COS(sine / 28),0)*angles(RAD(-8 - 3 * COS(sine / 55)),RAD(20 + 8 * COS(sine / 67)),RAD(-20 - 4 * COS(sine / 29))),.2)
		elseif MODE == "CALAMITY" then
			RightHip.C0=Clerp(RightHip.C0,cf(1,-0.5,-0.6)*angles(RAD(0),RAD(90),RAD(0))*angles(RAD(1.5),RAD(0),RAD(-20 - 5 * COS(sine / 34))),.2)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-1,0)*angles(RAD(0),RAD(-90),RAD(0))*angles(RAD(1),RAD(0),RAD(20 + 2 * COS(sine / 38))),.2)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0 - 0.15 * COS(sine / 47),-0.5,2.5 + 0.25 * COS(sine / 28))*angles(RAD(70),RAD(0 - RootPart.RotVelocity.Y),RAD(0 - RootPart.RotVelocity.Y *4.5 + 3 * COS(sine / 47))),.05)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(-17 - 5 * COS(sine / 52)),RAD(0 - 3 * COS(sine / 37)),RAD(0 + 2 * COS(sine / 78))),.2)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(1.5,0.5 + 0.05 * COS(sine / 28),0)*angles(RAD(-8 - 4 * COS(sine / 59)),RAD(-20 + 7 * COS(sine / 62)),RAD(20 + 5 * COS(sine / 50))),.2)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-1.5,0.5 + 0.1 * COS(sine / 28),0)*angles(RAD(-8 - 3 * COS(sine / 55)),RAD(20 + 8 * COS(sine / 67)),RAD(-20 - 4 * COS(sine / 29))),.2)
		elseif MODE == "CATASTROPHE" then
			RightHip.C0=Clerp(RightHip.C0,cf(1,-0.5,-0.6)*angles(RAD(0),RAD(90),RAD(0))*angles(RAD(1.5),RAD(0),RAD(-20 - 5 * COS(sine / 34))),.2)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-1,0)*angles(RAD(0),RAD(-90),RAD(0))*angles(RAD(1),RAD(0),RAD(20 + 2 * COS(sine / 38))),.2)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0 - 0.15 * COS(sine / 47),-0.5,2.5 + 0.25 * COS(sine / 28))*angles(RAD(70),RAD(0 - RootPart.RotVelocity.Y),RAD(0 - RootPart.RotVelocity.Y *4.5 + 3 * COS(sine / 47))),.05)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(-17 - 5 * COS(sine / 52)),RAD(0 - 3 * COS(sine / 37)),RAD(0 + 2 * COS(sine / 78))),.2)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(1.5,0.5 + 0.05 * COS(sine / 28),0)*angles(RAD(-8 - 4 * COS(sine / 59)),RAD(-20 + 7 * COS(sine / 62)),RAD(20 + 5 * COS(sine / 50))),.2)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-1.5,0.5 + 0.1 * COS(sine / 28),0)*angles(RAD(-8 - 3 * COS(sine / 55)),RAD(20 + 8 * COS(sine / 67)),RAD(-20 - 4 * COS(sine / 29))),.2)
			LeftLeg.Material = "ForceField"
			RightArm.Material = "ForceField"	
		elseif MODE == "CORRUPTION" then
			RightHip.C0=Clerp(RightHip.C0,cf(1,-0.5,-0.6)*angles(RAD(0),RAD(90),RAD(0))*angles(RAD(1.5),RAD(0),RAD(-20 - 5 * COS(sine / 34))),.2)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-1,0)*angles(RAD(0),RAD(-90),RAD(0))*angles(RAD(1),RAD(0),RAD(20 + 2 * COS(sine / 38))),.2)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0 - 0.15 * COS(sine / 47),-0.5,1 + 0.25 * COS(sine / 28))*angles(RAD(70),RAD(0 - RootPart.RotVelocity.Y),RAD(0 - RootPart.RotVelocity.Y *4.5 + 3 * COS(sine / 47))),.05)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(-17 - 5 * COS(sine / 52)),RAD(0 - 3 * COS(sine / 37)),RAD(0 + 2 * COS(sine / 78))),.2)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(1.5,0.5 + 0.05 * COS(sine / 28),0)*angles(RAD(-8 - 4 * COS(sine / 59)),RAD(-20 + 7 * COS(sine / 62)),RAD(20 + 5 * COS(sine / 50))),.2)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-1.5,0.5 + 0.1 * COS(sine / 28),0)*angles(RAD(-8 - 3 * COS(sine / 55)),RAD(20 + 8 * COS(sine / 67)),RAD(-20 - 4 * COS(sine / 29))),.2)
		elseif MODE == "NULL" then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.175 + 0.025 * COS(SINE / 3.5) + -SIN(SINE / 3.5) / 7) * ANGLES(RAD(9-2.5 * COS(SINE / 3.5)), RAD(0), RAD(10 * COS(SINE / 7))), 0.15)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(20 + MRANDOM(-5,5) - 1 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(MRANDOM(-5,5)), RAD(0)), 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.925 - 0.5 * COS(SINE / 7) / 2, 0.5 * COS(SINE / 7) / 2) * ANGLES(RAD(-15 - 35 * COS(SINE / 7)) + -SIN(SINE / 7) / 2.5, RAD(90 - 2 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 + 2.5 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.925 + 0.5 * COS(SINE / 7) / 2, -0.5 * COS(SINE / 7) / 2) * ANGLES(RAD(-15 + 35 * COS(SINE / 7)) + SIN(SINE / 7) / 2.5, RAD(-90 - 2 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5 + 0.05 * SIN(SINE / 30), 0.025 * COS(SINE / 20)) * ANGLES(RAD(70) * COS(SINE / 7) , RAD(90), RAD(5)), 0.1)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5 + 0.05 * SIN(SINE / 30), 0.025 * COS(SINE / 20)) * ANGLES(RAD(-70) * COS(SINE / 7) , RAD(-90),	RAD(-5)), 0.1)
			snap = math.random(1,6)
			if snap == 1 then

				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-100000-sick.PlaybackLoudness/7,100000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-99999-sick.PlaybackLoudness/7,99999+sick.PlaybackLoudness/7)), RAD(MRANDOM(-200-sick.PlaybackLoudness/7,48375935+sick.PlaybackLoudness/7))), 1 / Animation_Speed) 
			end
		elseif MODE == "BAD APPLE" then
			RightHip.C0=Clerp(RightHip.C0,cf(1,-0.5,-0.6)*angles(RAD(0),RAD(90),RAD(0))*angles(RAD(1.5),RAD(0),RAD(-20 - 5 * COS(sine / 34))),.2)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-1,0)*angles(RAD(0),RAD(-90),RAD(0))*angles(RAD(1),RAD(0),RAD(20 + 2 * COS(sine / 38))),.2)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0 - 0.15 * COS(sine / 47),-0.5,2.5 + 0.25 * COS(sine / 28))*angles(RAD(70),RAD(0 - RootPart.RotVelocity.Y),RAD(0 - RootPart.RotVelocity.Y *4.5 + 3 * COS(sine / 47))),.05)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(-17 - 5 * COS(sine / 52)),RAD(0 - 3 * COS(sine / 37)),RAD(0 + 2 * COS(sine / 78))),.2)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(1.5,0.5 + 0.05 * COS(sine / 28),0)*angles(RAD(-8 - 4 * COS(sine / 59)),RAD(-20 + 7 * COS(sine / 62)),RAD(20 + 5 * COS(sine / 50))),.2)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-1.5,0.5 + 0.1 * COS(sine / 28),0)*angles(RAD(-8 - 3 * COS(sine / 55)),RAD(20 + 8 * COS(sine / 67)),RAD(-20 - 4 * COS(sine / 29))),.2)
		elseif MODE == "Consternation" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - .25*Cos(sine/63)+.92*Sin(sine/95), 0, 4 - 2 * SIN(SINE / 53)) * ANGLES(RAD(70), RAD(0-RootPart.RotVelocity.y), RAD(0 - RootPart.RotVelocity.Y * 4.5 + 3 * COS(SINE / 47))), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12 - 4.10 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-.75, 0.5, 0.5) * ANGLES(RAD(-25+math.random(-23,23)), RAD(0+math.random(-23,23)), RAD(45+math.random(-23,23))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -.5 - 0.02 * SIN(SINE / 12), -0.5) * ANGLES(RAD(-10 - 2.5 * SIN(SINE / 21)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.02 * SIN(SINE / 12), -0.01) * ANGLES(RAD(-20 - 2.5 * SIN(SINE / 51)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
		elseif MODE == "AZURE" then
			RightHip.C0=Clerp(RightHip.C0,cf(1,-0.5,-0.6)*angles(RAD(0),RAD(90),RAD(0))*angles(RAD(1.5),RAD(0),RAD(-20 - 5 * COS(sine / 34))),.2)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-1,0)*angles(RAD(0),RAD(-90),RAD(0))*angles(RAD(1),RAD(0),RAD(20 + 2 * COS(sine / 38))),.2)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0 - 0.15 * COS(sine / 47),-0.5,2.5 + 0.25 * COS(sine / 28))*angles(RAD(70),RAD(0 - RootPart.RotVelocity.Y),RAD(0 - RootPart.RotVelocity.Y *4.5 + 3 * COS(sine / 47))),.05)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(-17 - 5 * COS(sine / 52)),RAD(0 - 3 * COS(sine / 37)),RAD(0 + 2 * COS(sine / 78))),.2)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(1.5,0.5 + 0.05 * COS(sine / 28),0)*angles(RAD(-8 - 4 * COS(sine / 59)),RAD(-20 + 7 * COS(sine / 62)),RAD(20 + 5 * COS(sine / 50))),.2)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-1.5,0.5 + 0.1 * COS(sine / 28),0)*angles(RAD(-8 - 3 * COS(sine / 55)),RAD(20 + 8 * COS(sine / 67)),RAD(-20 - 4 * COS(sine / 29))),.2)
		elseif MODE == "HOT MILK" then
			RightHip.C0=Clerp(RightHip.C0,cf(1,-0.5,-0.6)*angles(RAD(0),RAD(90),RAD(0))*angles(RAD(1.5),RAD(0),RAD(-20 - 5 * COS(sine / 34))),.2)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-1,0)*angles(RAD(0),RAD(-90),RAD(0))*angles(RAD(1),RAD(0),RAD(20 + 2 * COS(sine / 38))),.2)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0 - 0.15 * COS(sine / 47),-0.5,2.5 + 0.25 * COS(sine / 28))*angles(RAD(70),RAD(0 - RootPart.RotVelocity.Y),RAD(0 - RootPart.RotVelocity.Y *4.5 + 3 * COS(sine / 47))),.05)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(-17 - 5 * COS(sine / 52)),RAD(0 - 3 * COS(sine / 37)),RAD(0 + 2 * COS(sine / 78))),.2)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(1.5,0.5 + 0.05 * COS(sine / 28),0)*angles(RAD(-8 - 4 * COS(sine / 59)),RAD(-20 + 7 * COS(sine / 62)),RAD(20 + 5 * COS(sine / 50))),.2)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-1.5,0.5 + 0.1 * COS(sine / 28),0)*angles(RAD(-8 - 3 * COS(sine / 55)),RAD(20 + 8 * COS(sine / 67)),RAD(-20 - 4 * COS(sine / 29))),.2)
		elseif MODE == "COLORED" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 4 + 0.6 * COS(SINE / 12)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.6 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-20 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-20), RAD(0), RAD(30))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(160, 200)), RAD(0), RAD(MRANDOM(5, 45))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.8, -0.01) * ANGLES(RAD(0), RAD(90), RAD(-25+10*COS(SINE/12))) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(20-10*COS(SINE/12))) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		elseif MODE == "UNCOLORED" then
			RightHip.C0=Clerp(RightHip.C0,cf(1,-0.5,-0.6)*angles(RAD(0),RAD(90),RAD(0))*angles(RAD(1.5),RAD(0),RAD(-20 - 5 * COS(sine / 34))),.2)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-1,0)*angles(RAD(0),RAD(-90),RAD(0))*angles(RAD(1),RAD(0),RAD(20 + 2 * COS(sine / 38))),.2)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0 - 0.15 * COS(sine / 47),-0.5,2.5 + 0.25 * COS(sine / 28))*angles(RAD(70),RAD(0 - RootPart.RotVelocity.Y),RAD(0 - RootPart.RotVelocity.Y *4.5 + 3 * COS(sine / 47))),.05)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(-17 - 5 * COS(sine / 52)),RAD(0 - 3 * COS(sine / 37)),RAD(0 + 2 * COS(sine / 78))),.2)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(1.5,0.5 + 0.05 * COS(sine / 28),0)*angles(RAD(-8 - 4 * COS(sine / 59)),RAD(-20 + 7 * COS(sine / 62)),RAD(20 + 5 * COS(sine / 50))),.2)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-1.5,0.5 + 0.1 * COS(sine / 28),0)*angles(RAD(-8 - 3 * COS(sine / 55)),RAD(20 + 8 * COS(sine / 67)),RAD(-20 - 4 * COS(sine / 29))),.2)
		elseif MODE == "DESTRUCTION" then
			RightHip.C0=Clerp(RightHip.C0,cf(1,-0.5,-0.6)*angles(RAD(0),RAD(90),RAD(0))*angles(RAD(1.5),RAD(0),RAD(-20 - 5 * COS(sine / 34))),.2)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-1,0)*angles(RAD(0),RAD(-90),RAD(0))*angles(RAD(1),RAD(0),RAD(20 + 2 * COS(sine / 38))),.2)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0 - 0.15 * COS(sine / 47),-0.5,2.5 + 0.25 * COS(sine / 28))*angles(RAD(70),RAD(0 - RootPart.RotVelocity.Y),RAD(0 - RootPart.RotVelocity.Y *4.5 + 3 * COS(sine / 47))),.05)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(-17 - 5 * COS(sine / 52)),RAD(0 - 3 * COS(sine / 37)),RAD(0 + 2 * COS(sine / 78))),.2)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(1.5,0.5 + 0.05 * COS(sine / 28),0)*angles(RAD(-8 - 4 * COS(sine / 59)),RAD(-20 + 7 * COS(sine / 62)),RAD(20 + 5 * COS(sine / 50))),.2)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-1.5,0.5 + 0.1 * COS(sine / 28),0)*angles(RAD(-8 - 3 * COS(sine / 55)),RAD(20 + 8 * COS(sine / 67)),RAD(-20 - 4 * COS(sine / 29))),.2)
		elseif MODE == "HONEY LIGHTNING CANNON" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0*CFrame.new(0,0,0 - .5 * math.sin(sine/12))*CFrame.Angles(math.rad(40+1*math.cos(sine/12)),0,0),.25)
			Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.new(0,-.25,0)*CFrame.Angles(math.rad(-40),0,0),.25)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(5 + 2 * math.cos(sine/19))) * RIGHTSHOULDERC0,.7/3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(sine/19)))*LEFTSHOULDERC0,.25)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-5 - 9 * math.cos(sine/12)),math.rad(80),math.rad(0)),0.7/3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-9 - 9 * math.cos(sine/12)),math.rad(-80),math.rad(0)),0.7/3)
		elseif MODE == "LIGHTING CANNON - NORMAL" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(SINE/50),0,3 - .5 * math.sin(SINE/50)) * CFrame.Angles(math.rad(40),math.rad(0),math.rad(0)),.7/3)
			Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,-.25,0) * CFrame.Angles(math.rad(-40),math.rad(0),math.rad(0)),.7/3)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(5 + 2 * math.cos(SINE/19))) * RIGHTSHOULDERC0,.7/3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(-5 - 2 * math.cos(SINE/19))) * LEFTSHOULDERC0,.7/3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-20 + 9 * math.cos(SINE/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(SINE/37)),math.rad(0),math.rad(0)),.7/3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-20 - 9 * math.cos(SINE/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(SINE/41)),math.rad(0),math.rad(0)),.7/3)
		elseif MODE == "IMMORTAL LORD" then

			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0*CFrame.new(0,0,3 -.5*math.sin(sine/25))*CFrame.Angles(math.rad(20),0,0),.25)
			if NeckSnap then
				Neck.C0 = Clerp(Neck.C0,NECKC0,1)
				NeckSnap = false
			else
				Neck.C0 = Clerp(Neck.C0,NECKC0,.25)
			end
			if math.random(1,60) == 1 then
				Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.Angles(math.rad(math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))),1)
			end
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-10),0,0)*RIGHTSHOULDERC0,.25)
			SwordJoint.C0 = Clerp(SwordJoint.C0,CFrame.new(0,-1,0)*CFrame.Angles(math.rad(154.35-5.65*math.sin(sine/25)),0,0),.25)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(20),0,math.rad(-10-10*math.cos(sine/25)))*LEFTSHOULDERC0,.25)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0)*CFrame.Angles(math.rad(-20),math.rad(80),math.rad(10+10*math.cos(sine/25))),.25)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-10),math.rad(-80),math.rad(-10-10*math.cos(sine/25))),.25)
		elseif MODE == "ANTI V7" then

			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 - .5 * math.sin(SINE/50)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.7/3)
			Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.7/3)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(80),0,math.rad(50))*RIGHTSHOULDERC0,.25)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(-10-10*math.sin(SINE/50))) * LEFTSHOULDERC0,0.7/3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(-20),math.rad(80),math.rad(10+10*math.sin(SINE/50))),1/3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(-10),math.rad(-80),math.rad(-10-10*math.sin(SINE/50))),1/3)
			snap = math.random(1,32)
			if snap == 1 then
				Neck.C0 = Clerp(Neck.C0,NECKC0*cf(0,0,0+((1)-1))*angles(math.rad(math.random(-12093487,10000)),math.rad(math.random(-200,10000)),math.rad(math.random(-999999999,10000))),1/Animation_Speed)
			end	
		elseif MODE == "WARYRGMA" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0-60* SIN(SINE / 12)), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.8 / 7.5)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0+60* SIN(SINE / 12)), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.8 / 7.5)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1+0.1* SIN(SINE / 6)) * ANGLES(RAD(0), RAD(0), RAD(0+5 * SIN(SINE / 12))), 0.8 / 7.5)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
		elseif MODE == "ANTI V12" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0-60* SIN(SINE / 12)), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.8 / 7.5)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0+60* SIN(SINE / 12)), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.8 / 7.5)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1+0.1* SIN(SINE / 6)) * ANGLES(RAD(0), RAD(0), RAD(0+5 * SIN(SINE / 12))), 0.8 / 7.5)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
		elseif MODE == "CHILLED" then
			if NeckSnap then
				Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(SINE/100)),0),1)
				NeckSnap = false
			else
				Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(SINE/100)),0),.25)
			end
			if math.random(1,60) == 1 then
				Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(20+math.random(-20,20)),math.rad((10*math.cos(SINE/100))+math.random(-20,20)),math.rad(math.random(-20,20))),1)
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0*CFrame.new(0 + .5 * math.cos(SINE/50),0,3 - .5 * math.sin(SINE/50))*CFrame.Angles(math.rad(40),0,0),.25)
			Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.new(0,-.25,0)*CFrame.Angles(math.rad(-40),0,0),.25)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.55, 0.5, 0.5) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0, 1 / 3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(SINE/19)))*LEFTSHOULDERC0,.25)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(math.rad(-20+9*math.cos(SINE/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(SINE/37)),0,0),.25)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-20-9*math.cos(SINE/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(SINE/41)),0,0),.25)
		elseif MODE == "LIGHTING CANNON - INSANITY" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 - .5 * math.sin(SINE/50)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.7/3)
			Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.7/3)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-41.6-4*math.sin(SINE/50)),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,0.7/3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(-10-10*math.sin(SINE/50))) * LEFTSHOULDERC0,0.7/3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(-20),math.rad(80),math.rad(10+10*math.sin(SINE/50))),1/3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(-10),math.rad(-80),math.rad(-10-10*math.sin(SINE/50))),1/3)
		elseif MODE == "LIGHTING CANNON - ERROR" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 + .5 * math.cos(SINE/15)) * CFrame.Angles(math.rad(40),math.rad(-5*math.cos(SINE/30)),math.rad(0)),0.7/3)
			Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,-.25,0) * CFrame.Angles(math.rad(-40),math.rad(0),math.rad(0)),0.7/3)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(5 + 2 * math.cos(SINE/19))) * RIGHTSHOULDERC0,0.7/3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(-5 - 2 * math.cos(SINE/19))) * LEFTSHOULDERC0,0.7/3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-20 + 9 * math.cos(SINE/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(SINE/37)),math.rad(0),math.rad(0)),0.7/3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-20 - 9 * math.cos(SINE/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(SINE/41)),math.rad(0),math.rad(0)),0.7/3)
		elseif MODE == "LIGHTING CANNON - RUN IN THE 90S" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,-0.2) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),0.25/3)
			Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new() * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),0.25/3)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-135),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,0.75/3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-135),math.rad(0),math.rad(0)) * LEFTSHOULDERC0,0.75/3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(75*math.sin(SINE/2)),math.rad(90),math.rad(0)),1)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(-75*math.sin(SINE/2)),math.rad(-90),math.rad(0)),1)

		elseif MODE == "KARMA" then
			RightHip.C0=Clerp(RightHip.C0,cf(1,-0.5,-0.6)*angles(RAD(0),RAD(90),RAD(0))*angles(RAD(1.5),RAD(0),RAD(-20 - 5 * COS(sine / 34))),.2)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-1,0)*angles(RAD(0),RAD(-90),RAD(0))*angles(RAD(1),RAD(0),RAD(20 + 2 * COS(sine / 38))),.2)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0 - 0.15 * COS(sine / 47),-0.5,2.5 + 0.25 * COS(sine / 28))*angles(RAD(70),RAD(0 - RootPart.RotVelocity.Y),RAD(0 - RootPart.RotVelocity.Y *4.5 + 3 * COS(sine / 47))),.05)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(-17 - 5 * COS(sine / 52)),RAD(0 - 3 * COS(sine / 37)),RAD(0 + 2 * COS(sine / 78))),.2)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(1.5,0.5 + 0.05 * COS(sine / 28),0)*angles(RAD(-8 - 4 * COS(sine / 59)),RAD(-20 + 7 * COS(sine / 62)),RAD(20 + 5 * COS(sine / 50))),.2)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-1.5,0.5 + 0.1 * COS(sine / 28),0)*angles(RAD(-8 - 3 * COS(sine / 55)),RAD(20 + 8 * COS(sine / 67)),RAD(-20 - 4 * COS(sine / 29))),.2)
		elseif MODE == "ł ₥ Ø Ɽ ₮ ₳ Ⱡ  ₴ Ⱡ ₳ Ɏ Ɇ Ɽ" then
			if MRANDOM(1,10) == 1 then
				Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
			end
			if math.random(1,8) == 1 then
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-87498,12093847)), RAD(MRANDOM(-123456,3746525)), RAD(MRANDOM(-2134567876,98764356))), 0.15 / Animation_Speed)
			end
			if(math.random(1,4)==1)then
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			end	
			if MRANDOM(1,10) == 1 then
				Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
			end
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(140 + 5 * COS(SINE /32)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.8 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.175 + 0.025 * COS(SINE / 3.5) + -SIN(SINE / 3.5) / 7) * ANGLES(RAD(9-2.5 * COS(SINE / 3.5)), RAD(0), RAD(10 * COS(SINE / 7))), 0.15)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(0), RAD(0), RAD(0)), 0.3)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.925 - 0.5 * COS(SINE / 7) / 2, 0.5 * COS(SINE / 7) / 2) * ANGLES(RAD(-15 - 35 * COS(SINE / 7)) + -SIN(SINE / 7) / 2.5, RAD(90 - 2 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 + 2.5 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.925 + 0.5 * COS(SINE / 7) / 2, -0.5 * COS(SINE / 7) / 2) * ANGLES(RAD(-15 + 35 * COS(SINE / 7)) + SIN(SINE / 7) / 2.5, RAD(-90 - 2 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.1, 0.4 - 0.05 * COS(SINE / 30), 0.25 - 0.025 * COS(SINE / 20)) * ANGLES(RAD(-30), RAD(0), RAD(30)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
			if MRANDOM(1,20+sick.PlaybackLoudness/7) == 1 then
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-90-sick.PlaybackLoudness/7,90+sick.PlaybackLoudness/7)), RAD(MRANDOM(-30-sick.PlaybackLoudness/7,30+sick.PlaybackLoudness/7)), RAD(MRANDOM(-50-sick.PlaybackLoudness/7,50+sick.PlaybackLoudness/7)))* RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-10000-sick.PlaybackLoudness/7,10000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-900-sick.PlaybackLoudness/7,900+sick.PlaybackLoudness/7)), RAD(MRANDOM(-20-sick.PlaybackLoudness/7,20+sick.PlaybackLoudness/7)))* LEFTSHOULDERC0, 1 / Animation_Speed)
			end
		elseif MODE == "NEEDXKING" then 
			if MRANDOM(1,10) == 1 then
				Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
			end
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(145), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(3), RAD(0)) * RIGHTSHOULDERC0, 0.25 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0+60* SIN(SINE / 12)), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.8 / 7.5)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1+0.1* SIN(SINE / 6)) * ANGLES(RAD(0), RAD(0), RAD(0+5 * SIN(SINE / 12))), 0.8 / 7.5)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)

	elseif MODE == "NEEDXFALLEN" then
			if MRANDOM(1,10) == 1 then
				Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
			end
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(145), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(3), RAD(0)) * RIGHTSHOULDERC0, 0.25 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0+60* SIN(SINE / 12)), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.8 / 7.5)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1+0.1* SIN(SINE / 6)) * ANGLES(RAD(0), RAD(0), RAD(0+5 * SIN(SINE / 12))), 0.8 / 7.5)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
		elseif MODE == "PVZ CAR" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)

		elseif MODE == "CLOWN CAR" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)
		elseif MODE == "PIGGIE TRAP CAR" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)
		elseif MODE == "BING BING BANG CAR" then
			local rc0 = CFrame.new() * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
			local nc0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
			local rscp = CFrame.new(-.5,0,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
			local lscp = CFrame.new(.5,0,0) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))
			RootJoint.C0 = Clerp(RootJoint.C0,rc0*CFrame.new(math.random(-1,1)/2,math.random(-1,1)/2,math.random(-1,1)/2)*CFrame.Angles(math.rad(math.random(-45,45)),math.rad(math.random(-45,45)),0),1)
			Neck.C0 = Clerp(Neck.C0,nc0,1)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(2,0,0) * rscp * CFrame.Angles(math.rad(-90),0,0),1)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-2,0,0) * lscp * CFrame.Angles(math.rad(-90),0,0),1)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(.5,-2,0),1)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-.5,-2,0),1)
		elseif MODE == "WHATAPP CAR" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))) * ANGLES(RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360)), RAD(MRANDOM(1,360))), 0.5 / Animation_Speed)
		elseif MODE == "NORMAL" then
			RightHip.C0=Clerp(RightHip.C0,cf(1,-0.5,-0.6)*angles(RAD(0),RAD(90),RAD(0))*angles(RAD(1.5),RAD(0),RAD(-20 - 5 * COS(sine / 34))),.2)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-1,0)*angles(RAD(0),RAD(-90),RAD(0))*angles(RAD(1),RAD(0),RAD(20 + 2 * COS(sine / 38))),.2)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0 - 0.15 * COS(sine / 47),-0.5,1 + 0.25 * COS(sine / 28))*angles(RAD(70),RAD(0 - RootPart.RotVelocity.Y),RAD(0 - RootPart.RotVelocity.Y *4.5 + 3 * COS(sine / 47))),.05)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(-17 - 5 * COS(sine / 52)),RAD(0 - 3 * COS(sine / 37)),RAD(0 + 2 * COS(sine / 78))),.2)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(1.5,0.5 + 0.05 * COS(sine / 28),0)*angles(RAD(-8 - 4 * COS(sine / 59)),RAD(-20 + 7 * COS(sine / 62)),RAD(20 + 5 * COS(sine / 50))),.2)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-1.5,0.5 + 0.1 * COS(sine / 28),0)*angles(RAD(-8 - 3 * COS(sine / 55)),RAD(20 + 8 * COS(sine / 67)),RAD(-20 - 4 * COS(sine / 29))),.2)
		elseif MODE == "HACKER" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 4 + 1 * SIN(SINE / 26)) * ANGLES(RAD(-5 - 2.5*SIN(SINE/48/2)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-1,0)*angles(RAD(0),RAD(-90),RAD(0))*angles(RAD(1),RAD(0),RAD(20 + 2 * COS(sine / 38))),.2)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0 - 0.15 * COS(sine / 47),-0.5,1 + 0.25 * COS(sine / 28))*angles(RAD(70),RAD(0 - RootPart.RotVelocity.Y),RAD(0 - RootPart.RotVelocity.Y *4.5 + 3 * COS(sine / 47))),.05)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(-17 - 5 * COS(sine / 52)),RAD(0 - 3 * COS(sine / 37)),RAD(0 + 2 * COS(sine / 78))),.2)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(1.5,0.5 + 0.05 * COS(sine / 28),0)*angles(RAD(-8 - 4 * COS(sine / 59)),RAD(-20 + 7 * COS(sine / 62)),RAD(20 + 5 * COS(sine / 50))),.2)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-1.5,0.5 + 0.1 * COS(sine / 28),0)*angles(RAD(-8 - 3 * COS(sine / 55)),RAD(20 + 8 * COS(sine / 67)),RAD(-20 - 4 * COS(sine / 29))),.2)
		elseif MODE == "KRUMP" then
			RootJoint.C0 = Clerp(RootJoint.C0,CFrame.new() * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)) * CFrame.new(0+1*math.sin(sine/3),0+1*math.cos(sine/3),-.75) * CFrame.Angles(math.rad(0),math.rad(-10),math.rad(0)),1)
			Neck.C0 = Clerp(Neck.C0,CFrame.new(0,1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)) * CFrame.new(),1)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)) * CFrame.new(-.5,0,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)),1)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)) * CFrame.new(.5,0,0) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0)),1)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1.5,-1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(70)),1)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-.5,-1.25,-.25) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)),1)
		elseif MODE == "ECHOV2" then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.175 + 0.025 * COS(SINE / 3.5) + -SIN(SINE / 3.5) / 7) * ANGLES(RAD(9-2.5 * COS(SINE / 3.5)), RAD(0), RAD(10 * COS(SINE / 7))), 0.15)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25 + MRANDOM(-5,5) - 4 * COS(SINE / 12)), RAD(MRANDOM(-5,5)), RAD(15)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + MRANDOM(-25,25) - 4 * COS(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(0)), 1.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.925 - 0.5 * COS(SINE / 7) / 2, 0.5 * COS(SINE / 7) / 2) * ANGLES(RAD(-15 - 35 * COS(SINE / 7)) + -SIN(SINE / 7) / 2.5, RAD(90 - 2 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 + 2.5 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.925 + 0.5 * COS(SINE / 7) / 2, -0.5 * COS(SINE / 7) / 2) * ANGLES(RAD(-15 + 35 * COS(SINE / 7)) + SIN(SINE / 7) / 2.5, RAD(-90 - 2 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.025 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 - 7.5 * SIN(SINE / 12)), RAD(12 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / 5)
		elseif MODE == "ECHOV1" then
			if WEAPONEQUIPPED == true then
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0+MRANDOM(-25,25)), RAD(0+MRANDOM(-25,25)), RAD(0+MRANDOM(-25,25))), 0.35 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(-180), RAD(-5)) * LEFTSHOULDERC0, 0.8 / 10)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *ANGLES(RAD(90),RAD(0 + .5 * COS(SINE / WALKSPEEDVALUE)),RAD(MRANDOM(-40,10))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			else		
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0-60* SIN(SINE / 12)), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.8 / 7.5)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0+60* SIN(SINE / 12)), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.8 / 7.5)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1+0.1* SIN(SINE / 6)) * ANGLES(RAD(0), RAD(0), RAD(0+5 * SIN(SINE / 12))), 0.8 / 7.5)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			end
		elseif MODE == "Ascensionist" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(10 - 2* SIN(SINE / 6)), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0-60* SIN(SINE / 12)), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.8 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0+60* SIN(SINE / 12)), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.8 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1+0.1* SIN(SINE / 6)) * ANGLES(RAD(0), RAD(0), RAD(0+5 * SIN(SINE / 12))), 0.8 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / Animation_Speed)
		elseif MODE == "MYSTERY" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(10 - 2* SIN(SINE / 6)), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0-60* SIN(SINE / 12)), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.8 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0+60* SIN(SINE / 12)), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.8 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1+0.1* SIN(SINE / 6)) * ANGLES(RAD(0), RAD(0), RAD(0+5 * SIN(SINE / 12))), 0.8 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / Animation_Speed)
		elseif MODE == "BLOODWATER" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0-60* SIN(SINE / 12)), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.8 / 7.5)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0+60* SIN(SINE / 12)), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.8 / 7.5)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1+0.1* SIN(SINE / 6)) * ANGLES(RAD(0), RAD(0), RAD(0+5 * SIN(SINE / 12))), 0.8 / 7.5)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
		    LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
		elseif MODE == "SYSTEM Ę̴̡̧͔̘͓̫̖͕̱̮̜̤̫͎̿̍̊̀̐̋̄͂͑̒̚͠Ȓ̸͎̳̭̱̮̱͔͙̭̫͕́́͜͝Ȑ̷͚͍̟͔̠̰̞̗̬͔̍̍͑͒̿͂͛̈́͘͜ͅO̷͍̹̯͝R̴̢̺̖̳̥͍̙̝̯͓̲̺̘̱̊̏͌̾̑̓̀̐͑̈́̓̚͘͝" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-15, 25) - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-15, 25)), RAD(MRANDOM(-15, 25))), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(35 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(5)) * RIGHTSHOULDERC0, 0.35 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
		elseif MODE == "DR34M5 V2" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - .25*Cos(sine/63)+.92*Sin(sine/95), 0, 4 - 2 * SIN(SINE / 53)) * ANGLES(RAD(70), RAD(0-RootPart.RotVelocity.y), RAD(0 - RootPart.RotVelocity.Y * 4.5 + 3 * COS(SINE / 47))), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12 - 4.10 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-.75, 0.5, 0.5) * ANGLES(RAD(-25+math.random(-23,23)), RAD(0+math.random(-23,23)), RAD(45+math.random(-23,23))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -.5 - 0.02 * SIN(SINE / 12), -0.5) * ANGLES(RAD(-10 - 2.5 * SIN(SINE / 21)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.02 * SIN(SINE / 12), -0.01) * ANGLES(RAD(-20 - 2.5 * SIN(SINE / 51)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
		elseif MODE == "DR34M5" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0-60* SIN(SINE / 12)), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.8 / 7.5)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0+60* SIN(SINE / 12)), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.8 / 7.5)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1+0.1* SIN(SINE / 6)) * ANGLES(RAD(0), RAD(0), RAD(0+5 * SIN(SINE / 12))), 0.8 / 7.5)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
		elseif MODE == "K I L L B O T" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0-60* SIN(SINE / 12)), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.8 / 7.5)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0+60* SIN(SINE / 12)), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.8 / 7.5)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1+0.1* SIN(SINE / 6)) * ANGLES(RAD(0), RAD(0), RAD(0+5 * SIN(SINE / 12))), 0.8 / 7.5)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
		elseif MODE == "C R A Z Y" then
			RightHip.C0=Clerp(RightHip.C0,cf(1,-0.5,-0.6)*angles(RAD(0),RAD(90),RAD(0))*angles(RAD(1.5),RAD(0),RAD(-20 - 5 * COS(sine / 34))),.2)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-1,0)*angles(RAD(0),RAD(-90),RAD(0))*angles(RAD(1),RAD(0),RAD(20 + 2 * COS(sine / 38))),.2)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0 - 0.15 * COS(sine / 47),-0.5,1 + 0.25 * COS(sine / 28))*angles(RAD(70),RAD(0 - RootPart.RotVelocity.Y),RAD(0 - RootPart.RotVelocity.Y *4.5 + 3 * COS(sine / 47))),.05)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(-17 - 5 * COS(sine / 52)),RAD(0 - 3 * COS(sine / 37)),RAD(0 + 2 * COS(sine / 78))),.2)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(1.5,0.5 + 0.05 * COS(sine / 28),0)*angles(RAD(-8 - 4 * COS(sine / 59)),RAD(-20 + 7 * COS(sine / 62)),RAD(20 + 5 * COS(sine / 50))),.2)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-1.5,0.5 + 0.1 * COS(sine / 28),0)*angles(RAD(-8 - 3 * COS(sine / 55)),RAD(20 + 8 * COS(sine / 67)),RAD(-20 - 4 * COS(sine / 29))),.2)

		elseif MODE == "heart broken" then
			RightHip.C0=Clerp(RightHip.C0,cf(1,-0.5,-0.6)*angles(RAD(0),RAD(90),RAD(0))*angles(RAD(1.5),RAD(0),RAD(-20 - 5 * COS(sine / 34))),.2)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-1,0)*angles(RAD(0),RAD(-90),RAD(0))*angles(RAD(1),RAD(0),RAD(20 + 2 * COS(sine / 38))),.2)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0 - 0.15 * COS(sine / 47),-0.5,1 + 0.25 * COS(sine / 28))*angles(RAD(70),RAD(0 - RootPart.RotVelocity.Y),RAD(0 - RootPart.RotVelocity.Y *4.5 + 3 * COS(sine / 47))),.05)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(-17 - 5 * COS(sine / 52)),RAD(0 - 3 * COS(sine / 37)),RAD(0 + 2 * COS(sine / 78))),.2)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(1.5,0.5 + 0.05 * COS(sine / 28),0)*angles(RAD(-8 - 4 * COS(sine / 59)),RAD(-20 + 7 * COS(sine / 62)),RAD(20 + 5 * COS(sine / 50))),.2)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-1.5,0.5 + 0.1 * COS(sine / 28),0)*angles(RAD(-8 - 3 * COS(sine / 55)),RAD(20 + 8 * COS(sine / 67)),RAD(-20 - 4 * COS(sine / 29))),.2)
		elseif MODE == "his theme..." then
			RightHip.C0=Clerp(RightHip.C0,cf(1,-0.85,-0.15 - 0.15 * math.cos(SINE / 8))*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(0),math.rad(0 + 5 * math.cos(SINE / 12)),math.rad(5 + 25 * math.cos(SINE / 12))),.1)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-0.85,-0.15 + 0.15 * math.cos(SINE / 8))*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(0),math.rad(0 + 5 * math.cos(SINE / 12)),math.rad(-5 + 25 * math.cos(SINE / 12))),.1)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0,0,-0.15 - 0.1 * math.cos(SINE / 8))*ANGLES(math.rad(12.5),math.rad(0),math.rad(0 - 5 * math.cos(SINE / 12))),.1)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(30 - 5 * math.cos(SINE / 0.5265)),math.rad(0 - 5 * math.cos(SINE / 0.25)),math.rad(0 - 5 * math.cos(SINE / 0.465))),.1)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(0.75,0.5,-0.25)*ANGLES(math.rad(140),math.rad(0),math.rad(-20 + 2.5 * math.cos(SINE / 28))),.1)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-0.75,0.5,-0.25)*ANGLES(math.rad(140),math.rad(0),math.rad(20 - 2.5 * math.cos(SINE / 28))),.1)

		elseif MODE == "DEPRESSION" then
			RightHip.C0=Clerp(RightHip.C0,cf(1,-0.85,-0.15 - 0.15 * math.cos(SINE / 8))*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(0),math.rad(0 + 5 * math.cos(SINE / 12)),math.rad(5 + 25 * math.cos(SINE / 12))),.1)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-0.85,-0.15 + 0.15 * math.cos(SINE / 8))*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(0),math.rad(0 + 5 * math.cos(SINE / 12)),math.rad(-5 + 25 * math.cos(SINE / 12))),.1)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0,0,-0.15 - 0.1 * math.cos(SINE / 8))*ANGLES(math.rad(12.5),math.rad(0),math.rad(0 - 5 * math.cos(SINE / 12))),.1)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(30 - 5 * math.cos(SINE / 0.5265)),math.rad(0 - 5 * math.cos(SINE / 0.25)),math.rad(0 - 5 * math.cos(SINE / 0.465))),.1)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(0.75,0.5,-0.25)*ANGLES(math.rad(140),math.rad(0),math.rad(-20 + 2.5 * math.cos(SINE / 28))),.1)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-0.75,0.5,-0.25)*ANGLES(math.rad(140),math.rad(0),math.rad(20 - 2.5 * math.cos(SINE / 28))),.1)
		elseif MODE == "wastelands" or MODE == "V O D K A" then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0-60* SIN(SINE / 12)), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.8 / 7.5)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0+60* SIN(SINE / 12)), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.8 / 7.5)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1+0.1* SIN(SINE / 6)) * ANGLES(RAD(0), RAD(0), RAD(0+5 * SIN(SINE / 12))), 0.8 / 7.5)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
		elseif MODE == "RELAX" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,-.5*math.sin(sine/25)) * CFrame.Angles(math.rad(-90+5*math.cos(sine/25)),math.rad(0),math.rad(0)),.7/1)
			Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,-.1,0) * CFrame.Angles(math.rad(25+5*math.cos(sine/25)),math.rad(0),math.rad(0)),.7/1)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1,.75,.1) * CFrame.Angles(math.rad(-165.1-5*math.cos(sine/25)),math.rad(0),math.rad(-40)) * RIGHTSHOULDERC0,.7/1)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1,.75,.1) * CFrame.Angles(math.rad(-165-5*math.cos(sine/25)),math.rad(0),math.rad(40)) * LEFTSHOULDERC0,.7/1)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(0+10*math.cos(sine/25)),math.rad(90),math.rad(0)) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.7/1)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(25+10*math.cos(sine/25)),math.rad(-90),math.rad(0)) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.7/1)
		elseif MODE == "G O D" then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.175 + 0.025 * COS(SINE / 3.5) + -SIN(SINE / 3.5) / 7) * ANGLES(RAD(9-2.5 * COS(SINE / 3.5)), RAD(0), RAD(10 * COS(SINE / 7))), 0.15)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(0), RAD(0), RAD(0)), 0.3)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.925 - 0.5 * COS(SINE / 7) / 2, 0.5 * COS(SINE / 7) / 2) * ANGLES(RAD(-15 - 35 * COS(SINE / 7)) + -SIN(SINE / 7) / 2.5, RAD(90 - 2 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 + 2.5 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.925 + 0.5 * COS(SINE / 7) / 2, -0.5 * COS(SINE / 7) / 2) * ANGLES(RAD(-15 + 35 * COS(SINE / 7)) + SIN(SINE / 7) / 2.5, RAD(-90 - 2 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5 + 0.05 * SIN(SINE / 30), 0.025 * COS(SINE / 20)) * ANGLES(RAD(70) * COS(SINE / 7) , RAD(90), RAD(5)), 0.1)
		elseif MODE == "STUDIO DUMMY" then
			if NeckSnap then
				Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(SINE/100)),0),1)
				NeckSnap = false
			else
				Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(SINE/100)),0),.25)
			end
			if math.random(1,60) == 1 then
				Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(20+math.random(-20,20)),math.rad((10*math.cos(SINE/100))+math.random(-20,20)),math.rad(math.random(-20,20))),1)
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0*CFrame.new(0 + .5 * math.cos(SINE/50),0,3 - .5 * math.sin(SINE/50))*CFrame.Angles(math.rad(40),0,0),.25)
			Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.new(0,-.25,0)*CFrame.Angles(math.rad(-40),0,0),.25)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.55, 0.5, 0.5) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0, 1 / 3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(SINE/19)))*LEFTSHOULDERC0,.25)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(math.rad(-20+9*math.cos(SINE/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(SINE/37)),0,0),.25)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-20-9*math.cos(SINE/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(SINE/41)),0,0),.25)
		elseif  MODE == "Voided" then
			RightHip.C0=Clerp(RightHip.C0,cf(1,-0.5,-0.6)*angles(RAD(0),RAD(90),RAD(0))*angles(RAD(1.5),RAD(0),RAD(-20 - 5 * COS(sine / 34))),.2)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-1,0)*angles(RAD(0),RAD(-90),RAD(0))*angles(RAD(1),RAD(0),RAD(20 + 2 * COS(sine / 38))),.2)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0 - 0.15 * COS(sine / 47),-0.5,2.5 + 0.25 * COS(sine / 28))*angles(RAD(70),RAD(0 - RootPart.RotVelocity.Y),RAD(0 - RootPart.RotVelocity.Y *4.5 + 3 * COS(sine / 47))),.05)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-15, 25) - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-15, 25)), RAD(MRANDOM(-15, 25))), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0+6.0 * COS(SINE / 30)), RAD(0), RAD(12))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0+6.0 * COS(SINE / 30)), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		elseif MODE == "GODCAT" or MODE == "Voided" then
			RightHip.C0=Clerp(RightHip.C0,cf(1,-0.5,-0.6)*angles(RAD(0),RAD(90),RAD(0))*angles(RAD(1.5),RAD(0),RAD(-20 - 5 * COS(sine / 34))),.2)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-1,0)*angles(RAD(0),RAD(-90),RAD(0))*angles(RAD(1),RAD(0),RAD(20 + 2 * COS(sine / 38))),.2)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0 - 0.15 * COS(sine / 47),-0.5,2.5 + 0.25 * COS(sine / 28))*angles(RAD(70),RAD(0 - RootPart.RotVelocity.Y),RAD(0 - RootPart.RotVelocity.Y *4.5 + 3 * COS(sine / 47))),.05)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(-17 - 5 * COS(sine / 52)),RAD(0 - 3 * COS(sine / 37)),RAD(0 + 2 * COS(sine / 78))),.2)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(1.5,0.5 + 0.05 * COS(sine / 28),0)*angles(RAD(-8 - 4 * COS(sine / 59)),RAD(-20 + 7 * COS(sine / 62)),RAD(20 + 5 * COS(sine / 50))),.2)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-1.5,0.5 + 0.1 * COS(sine / 28),0)*angles(RAD(-8 - 3 * COS(sine / 55)),RAD(20 + 8 * COS(sine / 67)),RAD(-20 - 4 * COS(sine / 29))),.2)
		elseif MODE == "ASRIEL" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 - .5 * math.sin(sine/9)) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(0)),.7/3)
			Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,-.05,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),.7/3)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,-.1) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,.7/3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(135),math.rad(0),math.rad(0)) * LEFTSHOULDERC0,.7/3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-.01) * CFrame.Angles(math.rad(-10),math.rad(80),math.rad(5+5*math.sin(sine/9))),1/2)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-.01) * CFrame.Angles(math.rad(0),math.rad(-80),math.rad(-5-5*math.sin(sine/9))),1/2)
		elseif MODE == "MAYHEM" then
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / 7.5)
			RightHip.C0=Clerp(RightHip.C0,cf(1,-1 - 0.1 * COS(sine / 32),0)*angles(RAD(0),RAD(90),RAD(0))*angles(RAD(-3),RAD(-5.5 - 2 * COS(sine / 56)),RAD(-12 - 2 * COS(sine / 32))),.1)
			LeftHip.C0=Clerp(LeftHip.C0,cf(-1,-1 - 0.1 * COS(sine / 32),0)*angles(RAD(0),RAD(-90),RAD(0))*angles(RAD(-6),RAD(22 - 2 * COS(sine / 56)),RAD(-1 + 2 * COS(sine / 32))),.1)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*cf(0,0.01 + 0.03 * COS(sine / 32),0 + 0.1 * COS(sine / 32))*angles(RAD(1 - 2 * COS(sine / 32)),RAD(0),RAD(-22 + 2 * COS(sine / 56))),.1)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 - 2 * COS(sine / 37)),RAD(0 + 5 * COS(sine / 43) - 5 * COS(sine / 0.25)),RAD(22 - 2 * COS(sine / 56))),.1)
			RightShoulder.C0=Clerp(RightShoulder.C0,cf(1.5,0.5 + 0.025 * COS(sine / 45),0)*angles(RAD(5 + 3 * COS(sine / 43)),RAD(-16 - 5 * COS(sine / 52)),RAD(13 + 9 * COS(sine / 45))),.1)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-1.35,1 + 0.025 * COS(sine / 45),-0.2)*angles(RAD(148 - 2 * COS(sine / 51)),RAD(0 - 4 * COS(sine / 64)),RAD(22 - 2 * COS(sine / 45))),.1)
		end
	end
	for _, c in pairs(Effects:GetChildren()) do
		if c:IsA("Part") or c:IsA("MeshPart") then
			c.Color = MODECOLOR
		end
	end
	for _, c in pairs(Character:GetChildren()) do
		if c:IsA("Part") or c:IsA("MeshPart") then
			c.Color = MODECOLOR
		elseif c:IsA("Model") then
			for _, c in pairs(c:GetChildren()) do
				if c:IsA("Part") or c:IsA("MeshPart") then
					c.Color = MODECOLOR
				end
			end
		end
	end
	for _, c in pairs(WEAPONGUI:GetChildren()) do
		if c:FindFirstChildWhichIsA("TextLabel") then
			c:FindFirstChildWhichIsA("TextLabel").TextColor3 = MODECOLOR
			c:FindFirstChildWhichIsA("TextLabel").TextStrokeColor3 = MODECOLOR
			c:FindFirstChildWhichIsA("TextLabel").Font = FONTS[MRANDOM(1,#FONTS)]
		end
	end
	m.Parent = Character
	m2.Parent = Character
	m3.Parent = Character
	mw1.Parent = Character
	mw2.Parent = Character
	unanchor()
	Humanoid.MaxHealth = "inf"
	Humanoid.Health = "inf"
	Humanoid.DisplayDistanceType = "None"
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	if sick then
		sick.Name = "epic music aint it"
		sick.SoundId = "rbxassetid://"..MODESONG
		sick.MaxDistance = 666666
		sick.Volume = 10
		sick.Looped = true
		sick.Playing = true
	else
		local sick = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Sound")
		sick.Name = "epic music aint it"
		sick.SoundId = "rbxassetid://"..MODESONG
		sick.MaxDistance = 666666
		sick.Volume = 10
		sick.Looped = true
		sick:Play()
	end
	coroutine.resume(coroutine.create(function()
		while true do
			if MODE == "SPECTRUM" then
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end
			if MODE == "PURITY" then
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(0.1,0,0.1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3.5,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})

				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end
			if MODE == "INSANITY" then
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end	
			if MODE == "MY DREAMS" then
				WAEFFX({Time = 12.5, EffectType = "Sphere", Size = VT(20*sick.PlaybackLoudness/75,0,2*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 50, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WAEFFX({Time = 12.5, EffectType = "Sphere", Size = VT(2*sick.PlaybackLoudness/75,0,20*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 50, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WAEFFX({Time = 12.5, EffectType = "Sphere", Size = VT(8*sick.PlaybackLoudness/75,0,8*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 50, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end	

			if MODE == "HOT MILK" then
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end	
			if MODE == "C R A Z Y" then
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end	
			if MODE == "his theme..." then
				WACKYEFFECT({Time = 75, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Transparency = 0.3, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
			end	
			if MODE == "DEPRESSION" then
				WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Transparency = 0.3, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(-sine*2),RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
				WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Transparency = 0.3, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sine*2),RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
				WACKYEFFECT({Time = .95, EffectType = "Sphere", Size = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Size2 = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0+9*math.sin(sine/55),0+2*math.sin(sine/75),0+9*math.cos(sine/55))*CFrame.Angles(math.rad(-sine*1),math.rad(-sine*2),math.rad(-sine*3)), MoveToPos = nil, RotationX = nil, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = .95, EffectType = "Sphere", Size = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Size2 = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0-9*math.sin(sine/55),0-2*math.sin(sine/75),0-9*math.cos(sine/55))*CFrame.Angles(math.rad(-sine*1),math.rad(-sine*2),math.rad(-sine*3)), MoveToPos = nil, RotationX = nil, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end	
			if MODE == "heart broken" then
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 40, EffectType = "Heart", Size =Vector3.new(3+sick.PlaybackLoudness/300,3+sick.PlaybackLoudness/300,3+sick.PlaybackLoudness/300), Size2 = Vector3.new(3+sick.PlaybackLoudness/300,3+sick.PlaybackLoudness/300,3+sick.PlaybackLoudness/300), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0+9*math.sin(sine/55),0+2*math.sin(sine/75),0+9*math.cos(sine/55))*CFrame.Angles(math.rad(-sine*1),math.rad(-sine*2),math.rad(-sine*3)), MoveToPos = nil, RotationX = nil, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 40, EffectType = "Heart", Size = Vector3.new(3+sick.PlaybackLoudness/300,3+sick.PlaybackLoudness/300,3+sick.PlaybackLoudness/300), Size2 = Vector3.new(3+sick.PlaybackLoudness/300,3+sick.PlaybackLoudness/300,3+sick.PlaybackLoudness/300), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0-9*math.sin(sine/55),0-2*math.sin(sine/75),0-9*math.cos(sine/55))*CFrame.Angles(math.rad(-sine*1),math.rad(-sine*2),math.rad(-sine*3)), MoveToPos = nil, RotationX = nil, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})

			end			
			if MODE == "K I C K I S H E R" then
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end	
			if MODE == "K I C K I S H E R X" then
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end	
			if MODE == "P H O N K " then
				WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Transparency = 0.3, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
			end			
			if MODE == "STARLIGHT" then
				WACKYEFFECT({Time = .95, EffectType = "star", Size = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Size2 = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0+9*math.sin(sine/55),0+2*math.sin(sine/75),0+9*math.cos(sine/55))*CFrame.Angles(math.rad(-sine*1),math.rad(-sine*2),math.rad(-sine*3)), MoveToPos = nil, RotationX = nil, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = .95, EffectType = "star", Size = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Size2 = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0-9*math.sin(sine/55),0-2*math.sin(sine/75),0-9*math.cos(sine/55))*CFrame.Angles(math.rad(-sine*1),math.rad(-sine*2),math.rad(-sine*3)), MoveToPos = nil, RotationX = nil, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end			
			if MODE == "CORRUPTION" then
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sine*sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sine*sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sine*sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end	
			if MODE == "wastelands" then
				WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Transparency = 0.3, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sine*2),RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = 1, SoundVolume = 0})

				WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Transparency = 0.3, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
			end	
			if MODE == "CATASTROPHE" then
				WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(0.25,0,0.25)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(0.5,0,0.5), Size2 = VT(0.2,50,0.2), Transparency = 0.3, Transparency2 = 1, CFrame = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(0,0,MRANDOM(3,25)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = MRANDOM(15,65),EffectType = "Slash", Size = VT(0,0.05,0), Size2 = VT(0.0625,0.015,0.0625)*MRANDOM(1,8), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end		
			if MODE == "CALAMITY" then
				WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(0.25,0,0.25)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(0.5,0,0.5), Size2 = VT(0.2,50,0.2), Transparency = 0.3, Transparency2 = 1, CFrame = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(0,0,MRANDOM(3,25)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = MRANDOM(15,65),EffectType = "Slash", Size = VT(0,0.05,0), Size2 = VT(0.0625,0.015,0.0625)*MRANDOM(1,8), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end	
			if MODE == "AZURE" then
				WACKYEFFECT({Time = .95, EffectType = "Sphere", Size = VT(12+sick.PlaybackLoudness/25,0.05,12+sick.PlaybackLoudness/25), Size2 = VT(12+sick.PlaybackLoudness/25,0.05,12+sick.PlaybackLoudness/25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 12, EffectType = "Block", Size = VT(3,3,3)/3, Size2 = VT(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 12, EffectType = "Block", Size = VT(3,3,3)/3, Size2 = VT(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = .95, EffectType = "Wave", Size = VT(7+sick.PlaybackLoudness/25,0.05,7+sick.PlaybackLoudness/25), Size2 = VT(7+sick.PlaybackLoudness/25,0.05,7+sick.PlaybackLoudness/25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(-sine*1),RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end
			if MODE == "BAD APPLE" then
				WACKYEFFECT({Time = MRANDOM(15,65),EffectType = "Slash", Size = VT(0,0.05,0), Size2 = VT(0.0625,0.015,0.0625)*MRANDOM(1,8), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = .95, EffectType = "Block", Size = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Size2 = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0+9*math.sin(sine/55),0+2*math.sin(sine/75),0+9*math.cos(sine/55))*CFrame.Angles(math.rad(-sine*1),math.rad(-sine*2),math.rad(-sine*3)), MoveToPos = nil, RotationX = nil, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = .95, EffectType = "Block", Size = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Size2 = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0-9*math.sin(sine/55),0-2*math.sin(sine/75),0-9*math.cos(sine/55))*CFrame.Angles(math.rad(-sine*1),math.rad(-sine*2),math.rad(-sine*3)), MoveToPos = nil, RotationX = nil, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = .95, EffectType = "Sphere", Size = VT(12+sick.PlaybackLoudness/25,0.05,12+sick.PlaybackLoudness/25), Size2 = VT(12+sick.PlaybackLoudness/25,0.05,12+sick.PlaybackLoudness/25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end
			if MODE == "COLORED" then
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				if math.random(1,3) == 1 then
					WACKYEFFECT({TIME = MRANDOM(15,25)*2, EffectType = "Block", Size = VT(3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-40,40),2,MRANDOM(-40,40))), MoveToPos = Torso.Position+VT(0,MRANDOM(85,185)/2.5,0), RotationX = 360*Cos(sine/2), RotationY = 360*Cos(sine/2), RotationZ = 360*Cos(sine/2), Material = "Neon", Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500)), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				end	

				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end
			if MODE == "NULL" then
				local size = Vector3.new(math.random(5,50)/10,math.random(5,50)/10,math.random(5,50)/10)
				local maters = {"Neon","ForceField","Glass"}
				Effect({cf=RootPart.CFrame*CFrame.new(math.random(-100,100)/6,math.random(-100,100)/6,math.random(-100,100)/6)*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),moveto=nil,clr="Random",clr2="Random",mtype=math.random(1,3),waits=math.random(15,45),size=size,size2=size/1.05,radX=math.random(-100,100)/1000,radY=math.random(-100,100)/1000,radZ=math.random(-100,100)/1000,mat=maters[math.random(1,#maters)],lock=false,tran=math.random(0,50)/100,tran2=math.random(50,100)/100,pls=false,vol=0,pit=0,id=nil,bmr=false,sbm=0,mbm=0})
				WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(2*sick.PlaybackLoudness/50,0.1,2*sick.PlaybackLoudness/50), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})				

			end
			if MODE == "UNCOLORED" then
				if math.random(1,3) == 1 then
					WACKYEFFECT({TIME = MRANDOM(15,25)*2, EffectType = "Block", Size = VT(3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-40,40),2,MRANDOM(-40,40))), MoveToPos = Torso.Position+VT(0,MRANDOM(85,185)/2.5,0), RotationX = 360*Cos(sine/2), RotationY = 360*Cos(sine/2), RotationZ = 360*Cos(sine/2), Material = "Neon", Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500)), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				end	
			end
			if MODE == "DESTRUCTION" then
				WACKYEFFECT({Time = .95, EffectType = "Block", Size = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Size2 = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0+9*math.sin(sine/55),0+2*math.sin(sine/75),0+9*math.cos(sine/55))*CFrame.Angles(math.rad(-sine*1),math.rad(-sine*2),math.rad(-sine*3)), MoveToPos = nil, RotationX = nil, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = .95, EffectType = "Sphere", Size = VT(7+sick.PlaybackLoudness/25,0.05,7+sick.PlaybackLoudness/25), Size2 = VT(7+sick.PlaybackLoudness/25,0.05,7+sick.PlaybackLoudness/25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = .95, EffectType = "Block", Size = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Size2 = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0-9*math.sin(sine/55),0-2*math.sin(sine/75),0-9*math.cos(sine/55))*CFrame.Angles(math.rad(-sine*1),math.rad(-sine*2),math.rad(-sine*3)), MoveToPos = nil, RotationX = nil, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				if MRANDOM(0,3) == 1  then
					local POSITION = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(MRANDOM(75,800),0,0).p
					local BOXFLOOR,BOXPOS = Raycast(POSITION+VT(0,1,0), (CF(POSITION, POSITION + VT(0, -1, 0))).lookVector, 5, Character)
					WACKYEFFECT({Time = 10, EffectType = "Sphere", Size = VT(0.5,0,0.5), Size2 = VT(MRANDOM(0,0),MRANDOM(0,2),MRANDOM(0,0)), Transparency = 0.2, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = MRANDOM(-20,20), RotationY = MRANDOM(-20,20), RotationZ = MRANDOM(-20,20), Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = 0.5, SoundVolume = 6})
					WACKYEFFECT({Time = 35, EffectType = "Sphere", Size = VT(2,25555,2), Size2 = VT(MRANDOM(0,1),MRANDOM(0,2555555),MRANDOM(0,1)), Transparency = 0.2, Transparency2 = 1, CFrame = CF(BOXPOS), MoveToPos = CF(BOXPOS)*VT(MRANDOM(-80,80),200,MRANDOM(-80,80)), RotationX = MRANDOM(-20,20), RotationY = MRANDOM(-20,-20), RotationZ = MRANDOM(-20,20), Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = 0.5, SoundVolume = 6})
				end
			end		
			if MODE == "LIGHTING CANNON - NORMAL" then
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end	
			if MODE == "HONEY LIGHTNING CANNON" then
				WACKYEFFECT({Time = 1, EffectType = "trollar", Size = Vector3.new(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Size2 = Vector3.new(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Transparency = 0, Transparency2 = 1, CFrame = Head.CFrame*CFrame.new(0+9*math.sin(sine/55),0+2*math.sin(sine/75),0+9*math.cos(sine/55))*CFrame.Angles(math.rad(-sine*1),math.rad(-sine*2),math.rad(-sine*3)), MoveToPos = nil, RotationX = nil, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 1, EffectType = "trollar", Size = Vector3.new(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Size2 = Vector3.new(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Transparency = 0, Transparency2 = 1, CFrame = Head.CFrame*CFrame.new(0-9*math.sin(sine/55),0-2*math.sin(sine/75),0-9*math.cos(sine/55))*CFrame.Angles(math.rad(-sine*1),math.rad(-sine*2),math.rad(-sine*3)), MoveToPos = nil, RotationX = nil, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 1, EffectType = "Block", Size = Vector3.new(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Size2 = Vector3.new(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0+9*math.sin(sine/55),0+2*math.sin(sine/75),0+9*math.cos(sine/55))*CFrame.Angles(math.rad(-sine*1),math.rad(-sine*2),math.rad(-sine*3)), MoveToPos = nil, RotationX = nil, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 1, EffectType = "Block", Size = Vector3.new(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Size2 = Vector3.new(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0-9*math.sin(sine/55),0-2*math.sin(sine/75),0-9*math.cos(sine/55))*CFrame.Angles(math.rad(-sine*1),math.rad(-sine*2),math.rad(-sine*3)), MoveToPos = nil, RotationX = nil, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end	
			if MODE == "LIGHTING CANNON - INSANITY" then
				WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(0.1,0,0.1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3.25,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(0.5,0,0.5), Size2 = VT(0.2,6,0.2), Transparency = 0.3, Transparency2 = 1, CFrame = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(0,0,MRANDOM(3,7)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = MRANDOM(15,65),EffectType = "Slash", Size = VT(0,0.05,0), Size2 = VT(0.01,0.015,0.01)*MRANDOM(1,8), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0)*CFrame.Angles(RAD(math.random(-5,5)),RAD(math.random(-360,360)),RAD(math.random(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end	
			if MODE == "CHILLED" then
				WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(0.1,0,0.1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3.25,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(0.5,0,0.5), Size2 = VT(0.2,6,0.2), Transparency = 0.3, Transparency2 = 1, CFrame = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(0,0,MRANDOM(3,7)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = .95, EffectType = "Block", Size = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Size2 = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0+9*math.sin(sine/55),0+2*math.sin(sine/75),0+9*math.cos(sine/55))*CFrame.Angles(math.rad(-sine*1),math.rad(-sine*2),math.rad(-sine*3)), MoveToPos = nil, RotationX = nil, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = .95, EffectType = "Block", Size = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Size2 = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0-9*math.sin(sine/55),0-2*math.sin(sine/75),0-9*math.cos(sine/55))*CFrame.Angles(math.rad(-sine*1),math.rad(-sine*2),math.rad(-sine*3)), MoveToPos = nil, RotationX = nil, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sine*1),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sine*1),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sine*1),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
			end	
			if MODE == "LIGHTING CANNON - ERROR" then
				WACKYEFFECT({TIME = MRANDOM(15,25)*2, EffectType = "Sphere", Size = VT(3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-20,20),2,MRANDOM(-20,20))), MoveToPos = Torso.Position+VT(0,MRANDOM(45,145)/1.5,0), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0,math.random(0,255),0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({TIME = MRANDOM(0,22), EffectType = "Sphere", Size = VT(2 + 2 * COS(SINE/4),5 + 2 * COS(SINE/4),2 + 2 * COS(SINE/4)), Size2 = VT(-3,-6,-4), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0) * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-22,22), RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0,math.random(0,255),0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = MRANDOM(15,65),EffectType = "Slash", Size = VT(0,0.05,0), Size2 = VT(0.0625,0.015,0.0625)*MRANDOM(1,8), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0,math.random(0,255),0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})	
			end	
			if MODE == "KARMA" then
				WACKYEFFECT({Time = MRANDOM(15,65),EffectType = "Slash", Size = VT(0,0.05,0), Size2 = VT(0.0625,0.015,0.0625)*MRANDOM(1,8), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 2.5, EffectType = "Sphere", Size = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Size2 = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color,math.min(1,sick.PlaybackLoudness/500), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end	
			if MODE == "NEEDXFALLEN" then
				WACKYEFFECT({Time = 12.5, EffectType = "Crystal", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(-sine*1),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Crystal", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(-sine*1),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Crystal", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(-sine*1),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 12.5, EffectType = "Crystal", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sine*1),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Crystal", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sine*1),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Crystal", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sine*1),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end
			if MODE == "NEEDXKING" then
				if math.random(1,3) == 1 then
					WACKYEFFECT({TIME = MRANDOM(15,25)*2, EffectType = "Block", Size = VT(3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-40,40),2,MRANDOM(-40,40))), MoveToPos = Torso.Position+VT(0,MRANDOM(85,185)/2.5,0), RotationX = 360*Cos(sine/2), RotationY = 360*Cos(sine/2), RotationZ = 360*Cos(sine/2), Material = "Neon", Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500)), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				end	
				WACKYEFFECT({Time = 12.5, EffectType = "Crystal", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(-sine*1),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Crystal", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(-sine*1),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Crystal", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(-sine*1),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 12.5, EffectType = "Crystal", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sine*1),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Crystal", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sine*1),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Crystal", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sine*1),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 10, EffectType = "Skull", Size = VT(5,5,5), Size2 = VT(1,1,1), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(MRANDOM(-15,15),MRANDOM(-2.5,13.1),MRANDOM(-15,15)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(math.random(0,255),0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({TIME = MRANDOM(15,25)*2, EffectType = "Sphere", Size = VT(3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-20,20),2,MRANDOM(-20,20))), MoveToPos = Torso.Position+VT(0,MRANDOM(45,145)/1.5,0), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = rainbowcolor, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = MRANDOM(15,65),EffectType = "Slash", Size = VT(0,0.05,0), Size2 = VT(0.0625,0.015,0.0625)*MRANDOM(1,8), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = rainbowcolor, SoundID = nil, SoundPitch = nil, SoundVolume = nil})	
			end
			if MODE == "ł ₥ Ø Ɽ ₮ ₳ Ⱡ  ₴ Ⱡ ₳ Ɏ Ɇ Ɽ" then
				WACKYEFFECT({Time = .95, EffectType = "Block", Size = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Size2 = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0+9*math.sin(sine/55),0+2*math.sin(sine/75),0+9*math.cos(sine/55))*CFrame.Angles(math.rad(-sine*1),math.rad(-sine*2),math.rad(-sine*3)), MoveToPos = nil, RotationX = nil, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = .95, EffectType = "Sphere", Size = VT(7+sick.PlaybackLoudness/25,0.05,7+sick.PlaybackLoudness/25), Size2 = VT(7+sick.PlaybackLoudness/25,0.05,7+sick.PlaybackLoudness/25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = .95, EffectType = "Block", Size = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Size2 = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0-9*math.sin(sine/55),0-2*math.sin(sine/75),0-9*math.cos(sine/55))*CFrame.Angles(math.rad(-sine*1),math.rad(-sine*2),math.rad(-sine*3)), MoveToPos = nil, RotationX = nil, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end	
			if MODE == "ECHOV1" then
				WACKYEFFECT({Time = .95, EffectType = "Sphere", Size = VT(7+sick.PlaybackLoudness/25,0.05,7+sick.PlaybackLoudness/25), Size2 = VT(7+sick.PlaybackLoudness/25,0.05,7+sick.PlaybackLoudness/25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(0.1,0,0.1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3.25,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(0.5,0,0.5), Size2 = VT(0.1,6,0.1), Transparency = 0.3, Transparency2 = 1, CFrame = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(0,0,MRANDOM(1,10)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = MODECOLOR, UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end	
			if MODE == "ECHOV2" then
				WACKYEFFECT({Time = 2, EffectType = "Crystal", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sine*1),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 2, EffectType = "Crystal", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sine*1),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 2, EffectType = "Crystal", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sine*1),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = .95, EffectType = "Sphere", Size = VT(7+sick.PlaybackLoudness/25,0.05,7+sick.PlaybackLoudness/25), Size2 = VT(7+sick.PlaybackLoudness/25,0.05,7+sick.PlaybackLoudness/25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end			

			if MODE == "CLOWN CAR" then
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end		
			if MODE == "PVZ CAR" then
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end			


			if MODE == "WHATAPP CAR" then
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end		
			if MODE == "PIGGIE TRAP CAR" then
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end	
			if MODE == "NORMAL" then
				spinc=spinc+0.5+sick.PlaybackLoudness/25
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(spinc*sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(spinc*sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(spinc*sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
			end			
			if MODE == "HACKER" then
				WACKYEFFECT({Time = .95, EffectType = "Block", Size = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Size2 = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0+9*math.sin(sine/55),0+2*math.sin(sine/75),0+9*math.cos(sine/55))*CFrame.Angles(math.rad(-sine*1),math.rad(-sine*2),math.rad(-sine*3)), MoveToPos = nil, RotationX = nil, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = .95, EffectType = "Sphere", Size = VT(7+sick.PlaybackLoudness/25,0.05,7+sick.PlaybackLoudness/25), Size2 = VT(7+sick.PlaybackLoudness/25,0.05,7+sick.PlaybackLoudness/25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = .95, EffectType = "Block", Size = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Size2 = VT(1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300,1+sick.PlaybackLoudness/300), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0-9*math.sin(sine/55),0-2*math.sin(sine/75),0-9*math.cos(sine/55))*CFrame.Angles(math.rad(-sine*1),math.rad(-sine*2),math.rad(-sine*3)), MoveToPos = nil, RotationX = nil, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end	
			if MODE == "MYSTERY" then
				WACKYEFFECT({Time = 2.5, EffectType = "Sphere", Size = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Size2 = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(100*sick.PlaybackLoudness/10000,0,100*sick.PlaybackLoudness/10000), SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 10, EffectType = "Crystal", Size = VT(5,5,5), Size2 = VT(1,1,1), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(MRANDOM(-15,15),MRANDOM(-2.5,13.1),MRANDOM(-15,15)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(100*sick.PlaybackLoudness/10000,0,100*sick.PlaybackLoudness/10000), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end			

			if MODE == "KRUMP" then
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end			
			if MODE == "BLOODWATER" then
				WACKYEFFECT({Time = MRANDOM(15,65),EffectType = "Slash", Size = VT(0,0.05,0), Size2 = VT(0.01,0.015,0.01)*MRANDOM(1,8), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0)*CFrame.Angles(RAD(math.random(-5,5)),RAD(math.random(-360,360)),RAD(math.random(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new(sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = Color3.fromRGB(math.random(0,255),0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = Color3.fromRGB(math.random(0,255),0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = Color3.fromRGB(math.random(0,255),0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end		
			if MODE == "ANTI V12" then
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 3*sick.PlaybackLoudness/666, RotationZ = 0, Material = "Neon",Color = Color3.fromRGB(math.random(0,255),0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 3*sick.PlaybackLoudness/666, RotationZ = 0, Material = "Neon",Color = Color3.fromRGB(math.random(0,255),0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 3*sick.PlaybackLoudness/666, RotationZ = 0, Material = "Neon",Color = Color3.fromRGB(math.random(0,255),0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end	
			if MODE == "SYSTEM Ę̴̡̧͔̘͓̫̖͕̱̮̜̤̫͎̿̍̊̀̐̋̄͂͑̒̚͠Ȓ̸͎̳̭̱̮̱͔͙̭̫͕́́͜͝Ȑ̷͚͍̟͔̠̰̞̗̬͔̍̍͑͒̿͂͛̈́͘͜ͅO̷͍̹̯͝R̴̢̺̖̳̥͍̙̝̯͓̲̺̘̱̊̏͌̾̑̓̀̐͑̈́̓̚͘͝" then
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end	
			if MODE == "K I L L B O T" then
				WACKYEFFECT({Time = 25, EffectType = "Crystal", Size = VT(0,0,0), Size2 = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Transparency = 0.3, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
				WACKYEFFECT({Time = 20, EffectType = "Sphere", Size = VT(2*sick.PlaybackLoudness/50,0.1,2*sick.PlaybackLoudness/50), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})				
			end	
			if MODE == "DR34M5 V2" then
				WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(0.1,0,0.1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3.25,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = .95, EffectType = "Sphere", Size = VT(7+sick.PlaybackLoudness/25,0.05,7+sick.PlaybackLoudness/25), Size2 = VT(7+sick.PlaybackLoudness/25,0.05,7+sick.PlaybackLoudness/25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})

				WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(0.5,0,0.5), Size2 = VT(0.2,6,0.2), Transparency = 0.3, Transparency2 = 1, CFrame = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(0,0,MRANDOM(3,7)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = MODECOLOR, UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end			
			if MODE == "REDEMPTION" then
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = Color3.fromRGB(math.random(0,255),0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = Color3.fromRGB(math.random(0,255),0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = Color3.fromRGB(math.random(0,255),0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(0.5,0,0.5), Size2 = VT(0.2,25,0.2), Transparency = 0.3, Transparency2 = 1, CFrame = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(0,0,MRANDOM(3,15)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon",Color = Color3.fromRGB(math.random(0,255),0,0), UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 10, EffectType = "Skull", Size = VT(5,5,5), Size2 = VT(1,1,1), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(MRANDOM(-15,15),MRANDOM(-2.5,13.1),MRANDOM(-15,15)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(math.random(0,255),0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end	
			if MODE == "DR34M5" then
				WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(1,0,0), Size2 = VT(0.1,0,0.1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3.25,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(0.5,0,0.5), Size2 = VT(0.2,6,0.2), Transparency = 0.3, Transparency2 = 1, CFrame = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(0,0,MRANDOM(3,7)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = MODECOLOR, UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})			
			end			

			if MODE == "RELAX" then
				WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Transparency = 0.3, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
			end			
			if MODE == "GODCAT" then
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end		
			if MODE == "Voided" then
				WACKYEFFECT({Time = 10, EffectType = "Sphere", Size = Vector3.new(1+math.floor(sick.PlaybackLoudness)/25,0.05,1+math.floor(sick.PlaybackLoudness)/25), Size2 = Vector3.new(7+math.floor(sick.PlaybackLoudness)/25,0.05,7+math.floor(sick.PlaybackLoudness)/25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end
			if MODE == "Voided"  then
				if HITFLOOR ~= nil then
					if MRANDOM(1,12) == 1 then
						WACKYEFFECThid({Time = 120, EffectType = "Round Slash", Size = VT(1,0.40,1), Size2 = VT(1,0.40,1), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2.9,0), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Plastic", Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
						WACKYEFFECThid({Time = 120, EffectType = "Round Slash", Size = VT(1,0.40,1), Size2 = VT(1,0.40,1), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2.9,0), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Plastic", Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
					end
				end
			end
			if MODE == "ASRIEL" then
				CreateStar(5,1/45,"Add",RootPart.CFrame*CFrame.new(math.cos(sine/16)*5,math.cos(sine/32)*5,math.sin(sine/16)*5)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)),0.08,0.08,0.08,0,BrickColor.new("Institutional white"),0)
				CreateStar(5,1/45,"Add",RootPart.CFrame*CFrame.new(math.cos(sine/16)*5,math.cos(sine/32)*5,math.sin(sine/16)*5)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)),0.08,0.08,0.08,0,BrickColor.new("Institutional white"),0)
				CreateStar(5,1/45,"Add",RootPart.CFrame*CFrame.new(math.cos(sine/16)*-5,math.cos(sine/32)*-5,math.sin(sine/16)*-5)*CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),0.08,0.08,0.08,0,BrickColor.new("Institutional white"),0)
				CreateStar(5,1/45,"Add",RootPart.CFrame*CFrame.new(math.cos(sine/16)*-5,math.cos(sine/32)*-5,math.sin(sine/16)*-5)*CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),0.08,0.08,0.08,0,BrickColor.new("Institutional white"),0)
				WACKYEFFECT({Time = 25, EffectType = "Swirl", Size = VT(0,0,0), Size2 = VT(15+sick.PlaybackLoudness/35,10,15+sick.PlaybackLoudness/35), Transparency = 0.3, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0)*ANGLES(RAD(0),RAD(180*COS(SINE/7)),RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = MODECOLOR, SoundID = nil, SoundPitch = 1, SoundVolume = 0})

			end			
			if MODE == "MAYHEM" then
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
				WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon",Color = MODECOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end
			wait(9e9)
		end
	end))
	if MODE == "SPECTRUM" then
		MODECOLOR = C3(100*sick.PlaybackLoudness/10000,0,0)
		MODESONG = 614032233
		if ATTACK == false then
			Speed = 15
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = nil
		lwing2.Parent = nil
		lwing3.Parent = nil
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
				rwing6.Parent = nil

LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
Truss.Parent = nil
anti.Parent = nil
  

		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)
		lwing1weld.C1=Clerp(lwing1weld.C1,cf(2,0,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(5 + 10 * COS(sine / 32)),RAD(0),RAD(12.5 + 5 * COS(sine / 32))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(3,1,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(10 + 15 * COS(sine / 32)),RAD(0),RAD(25 + 7.5 * COS(sine / 32))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(3.75,2,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(15 + 20 * COS(sine / 32)),RAD(0),RAD(37.5 + 10 * COS(sine / 32))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(-2,0,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(5 + 10 * COS(sine / 32)),RAD(0),RAD(-12.5 - 5 * COS(sine / 32))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(-3,1,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(10 + 15 * COS(sine / 32)),RAD(0),RAD(-25 - 7.5 * COS(sine / 32))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(-3.75,2,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(15 + 20 * COS(sine / 32)),RAD(0),RAD(-37.5 - 10 * COS(sine / 32))),.3)
	end
	if MODE == "REDEMPTION" then
		MODECOLOR = C3(100*sick.PlaybackLoudness/10000,0,0)
		MODESONG = 6786521303
		if ATTACK == false then
			Speed = 80
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = Character
		lwing1.Parent = nil
		lwing2.Parent = nil
		lwing3.Parent = nil
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil

		LIGHTINGCANNON.Parent = nil
		immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil


		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)
		lwing1weld.C1=Clerp(lwing1weld.C1,cf(2,0,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(5 + 10 * COS(sine / 32)),RAD(0),RAD(12.5 + 5 * COS(sine / 32))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(3,1,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(10 + 15 * COS(sine / 32)),RAD(0),RAD(25 + 7.5 * COS(sine / 32))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(3.75,2,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(15 + 20 * COS(sine / 32)),RAD(0),RAD(37.5 + 10 * COS(sine / 32))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(-2,0,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(5 + 10 * COS(sine / 32)),RAD(0),RAD(-12.5 - 5 * COS(sine / 32))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(-3,1,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(10 + 15 * COS(sine / 32)),RAD(0),RAD(-25 - 7.5 * COS(sine / 32))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(-3.75,2,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(15 + 20 * COS(sine / 32)),RAD(0),RAD(-37.5 - 10 * COS(sine / 32))),.3)
	end
	if MODE == "PURITY" then
		MODECOLOR = C3(0,100*sick.PlaybackLoudness/10000,100*sick.PlaybackLoudness/10000)
		MODESONG = 6245605615
		if ATTACK == false then
			Speed = 17.5
		end
		if HITFLOOR ~= nil and MRANDOM(1,5) == 1 then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil


		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
				rwing6.Parent = nil

LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
Truss.Parent = nil
anti.Parent = nil
  

		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "INSANITY" then
		MODECOLOR = Color3.fromRGB(MRANDOM(1,255),MRANDOM(1,255),MRANDOM(1,255))
		MODESONG = 1155039080
		if ATTACK == false then
			Speed = 50
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
		sick.PlaybackSpeed = 1.13
Bladee.Parent = nil
SBGUN.Parent = nil
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
				rwing6.Parent = nil

LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
Truss.Parent = nil
anti.Parent = nil
  

		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		lwing1weld.C1=Clerp(lwing1weld.C1,cf(2,0,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(5 + 10 * COS(sine / 32)),RAD(0),RAD(12.5 + 5 * COS(sine / 32))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(3,1,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(10 + 15 * COS(sine / 32)),RAD(0),RAD(25 + 7.5 * COS(sine / 32))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(3.75,2,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(15 + 20 * COS(sine / 32)),RAD(0),RAD(37.5 + 10 * COS(sine / 32))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(-2,0,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(5 + 10 * COS(sine / 32)),RAD(0),RAD(-12.5 - 5 * COS(sine / 32))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(-3,1,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(10 + 15 * COS(sine / 32)),RAD(0),RAD(-25 - 7.5 * COS(sine / 32))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(-3.75,2,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(15 + 20 * COS(sine / 32)),RAD(0),RAD(-37.5 - 10 * COS(sine / 32))),.3)
	end
	if MODE == "K I C K I S H E R" then
		MODECOLOR = C3(0,100*sick.PlaybackLoudness/5000,0)
		MODESONG = 1533300373
		if ATTACK == false then
			Speed = 25
		end
		if HITFLOOR ~= nil and MRANDOM(1,3) == 1 then
		end
		Banisher.Parent = Character
		lwing1.Parent = Character
sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil



		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
				rwing6.Parent = nil
LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
Truss.Parent = nil
anti.Parent = nil
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)
		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "B̷͍̱̖̭́̐̏͋͒̀͌̔̒ͅÀ̸̢͖̩̼̬̌̅̈́̅N̵̨͇̫͈̪̿I̷̙͓̫͎͈͉͐͛̄̿̏͐͘̕S̷̨̗̐̈́̓̈́̃̋̀̑̚Ĥ̶̨̙̳͔̟̓͒̔͝Ë̸̹́͋̌̇̋̃R̷̳̞̯͚͠" then
		MODECOLOR = Color3.new(sick.PlaybackLoudness/500,0,0)
		MODESONG = 7061821908
		if ATTACK == false then
			Speed = 25
		end
		if HITFLOOR ~= nil and MRANDOM(1,3) == 1 then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
		sick.PlaybackSpeed = 1
		Bladee.Parent = nil
		SBGUN.Parent = nil
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
		LIGHTINGCANNON.Parent = Character
		LIGHTINGCANNON.Weapon.LC.Color = MODECOLOR
		immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)
		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "K I C K I S H E R X" then
		MODECOLOR = rainbowcolor
		MODESONG = 1166635630
		if ATTACK == false then
			Speed = 25
		end
		if HITFLOOR ~= nil and MRANDOM(1,3) == 1 then
		end
		Banisher.Parent = Character
		lwing1.Parent = Character
sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "P H O N K " then
		MODECOLOR = C3(sick.PlaybackLoudness/1,0,1)
		MODESONG = 7100876422
		if ATTACK == false then
			Speed = 25
		end
		if HITFLOOR ~= nil and MRANDOM(1,3) == 1 then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil



		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
		
LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
Truss.Parent = nil
anti.Parent = nil
		  

		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "STARLIGHT" then
		MODECOLOR = C3(0,0,sick.PlaybackLoudness/100)
		MODESONG = 4313028959
		if ATTACK == false then
			Speed = 30
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil



		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
				rwing6.Parent = nil

LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
Truss.Parent = nil
anti.Parent = nil
  
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 - 3600 * COS(sine / 720))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 - 3600 * COS(sine / 720))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 - 3600 * COS(sine / 720))),.3)
	end
	if MODE == "CORRUPTION" then
		MODECOLOR = C3(10*sick.PlaybackLoudness/10000,0,10*sick.PlaybackLoudness/10000)
		MODESONG = 2192509503
		if ATTACK == false then
			Speed = 50
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil



		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
				rwing6.Parent = nil
LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
Truss.Parent = nil
anti.Parent = nil
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)
		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50) - math.random(-60,60) * COS(sine / 1)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360) - 90 * COS(sine / 1))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70) - math.random(-60,60) * COS(sine / 1)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360) - 90 * COS(sine / 1))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60) - math.random(-60,60) * COS(sine / 1)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360) - 90 * COS(sine / 1))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50) - math.random(-60,60) * COS(sine / 1)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360) - 90 * COS(sine / 1))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70) - math.random(-60,60) * COS(sine / 1)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360) - 90 * COS(sine / 1))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60) - math.random(-60,60) * COS(sine / 1)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360) - 90 * COS(sine / 1))),.3)
	end
	if MODE == "CALAMITY" then
		MODECOLOR = Color3.fromRGB(100*sick.PlaybackLoudness/150,0,100*sick.PlaybackLoudness/150)
		MODESONG = 919050740
		if ATTACK == false then
			Speed = 250
		end
		if HITFLOOR ~= nil then
		end
		lwing1.Parent = Character
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = Character
		lwing5.Parent = Character
		lwing6.Parent = Character
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = Character
		rwing5.Parent = Character
		rwing6.Parent = Character
		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
		lwing4weld.C1=Clerp(lwing4weld.C1,cf(0 - 7.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),-1)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 - 3600 * COS(sine / 360))),.3)
		lwing5weld.C1=Clerp(lwing5weld.C1,cf(0 - 7.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),-1)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 - 3600 * COS(sine / 360))),.3)
		lwing6weld.C1=Clerp(lwing6weld.C1,cf(0 - 7.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),-1)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 - 3600 * COS(sine / 360))),.3)
		rwing4weld.C1=Clerp(rwing4weld.C1,cf(0 - 7.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),-1)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 - 3600 * COS(sine / 360))),.3)
		rwing5weld.C1=Clerp(rwing5weld.C1,cf(0 - 7.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),-1)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 - 3600 * COS(sine / 360))),.3)
		rwing6weld.C1=Clerp(rwing6weld.C1,cf(0 - 7.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),-1)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 - 3600 * COS(sine / 360))),.3)
	end
	if MODE == "CATASTROPHE" then
		MODECOLOR = Color3.fromRGB(100*sick.PlaybackLoudness/150,0,100*sick.PlaybackLoudness/150)
		MODESONG = 1504604335
		if ATTACK == false then
			Speed = 500
		end
		if HITFLOOR ~= nil then
		end
		lwing1.Parent = Character
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = Character
		lwing5.Parent = Character
		lwing6.Parent = Character
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = Character
		rwing5.Parent = Character
		rwing6.Parent = Character
		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
		lwing4weld.C1=Clerp(lwing4weld.C1,cf(0 - 7.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),-1)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 - 3600 * COS(sine / 360))),.3)
		lwing5weld.C1=Clerp(lwing5weld.C1,cf(0 - 7.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),-1)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 - 3600 * COS(sine / 360))),.3)
		lwing6weld.C1=Clerp(lwing6weld.C1,cf(0 - 7.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),-1)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 - 3600 * COS(sine / 360))),.3)
		rwing4weld.C1=Clerp(rwing4weld.C1,cf(0 - 7.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),-1)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 - 3600 * COS(sine / 360))),.3)
		rwing5weld.C1=Clerp(rwing5weld.C1,cf(0 - 7.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),-1)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 - 3600 * COS(sine / 360))),.3)
		rwing6weld.C1=Clerp(rwing6weld.C1,cf(0 - 7.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),-1)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 - 3600 * COS(sine / 360))),.3)
	end	
	if MODE == "COLORED" then
		MODECOLOR = rainbowcolor
		MODESONG = 209735922
		if ATTACK == false then
			Speed = 100
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
sick.PlaybackSpeed = 1

		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
				rwing6.Parent = nil

LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
Truss.Parent = nil
anti.Parent = nil
  

		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0,1.85 + 0.15 * COS(sine / 36),0)*angles(RAD(0 + 3 * COS(sine / 42)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 5 * COS(sine / 56))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0,1.85 + 0.15 * COS(sine / 38),0)*angles(RAD(0 + 3 * COS(sine / 45)),RAD(0 - 2 * COS(sine / 37)),RAD(130 + 5 * COS(sine / 56))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0,1.85 + 0.15 * COS(sine / 41),0)*angles(RAD(0 + 3 * COS(sine / 48)),RAD(0 - 2 * COS(sine / 51)),RAD(50 + 5 * COS(sine / 56))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0,1.85 + 0.15 * COS(sine / 36),0)*angles(RAD(0 + 3 * COS(sine / 46)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 - 5 * COS(sine / 56))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0,1.85 + 0.15 * COS(sine / 38),0)*angles(RAD(0 + 3 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 37)),RAD(-130 - 5 * COS(sine / 56))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0,1.85 + 0.15 * COS(sine / 41),0)*angles(RAD(0 + 3 * COS(sine / 40)),RAD(0 - 2 * COS(sine / 51)),RAD(-50 - 5 * COS(sine / 56))),.3)
		lwing4weld.C1=Clerp(lwing4weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 + 3600 * COS(sine / 360))),.3)
		lwing5weld.C1=Clerp(lwing5weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 + 3600 * COS(sine / 360))),.3)
		lwing6weld.C1=Clerp(lwing6weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "UNCOLORED" then
		MODECOLOR = Color3.fromRGB(255, 255, 255)
		MODESONG = 844654533
		if ATTACK == false then
			Speed = 100
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
		sick.PlaybackSpeed = 0.85

		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil

		LIGHTINGCANNON.Parent = nil
		immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil


		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0,1.85 + 0.15 * COS(sine / 36),0)*angles(RAD(0 + 3 * COS(sine / 42)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 5 * COS(sine / 56))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0,1.85 + 0.15 * COS(sine / 38),0)*angles(RAD(0 + 3 * COS(sine / 45)),RAD(0 - 2 * COS(sine / 37)),RAD(130 + 5 * COS(sine / 56))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0,1.85 + 0.15 * COS(sine / 41),0)*angles(RAD(0 + 3 * COS(sine / 48)),RAD(0 - 2 * COS(sine / 51)),RAD(50 + 5 * COS(sine / 56))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0,1.85 + 0.15 * COS(sine / 36),0)*angles(RAD(0 + 3 * COS(sine / 46)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 - 5 * COS(sine / 56))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0,1.85 + 0.15 * COS(sine / 38),0)*angles(RAD(0 + 3 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 37)),RAD(-130 - 5 * COS(sine / 56))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0,1.85 + 0.15 * COS(sine / 41),0)*angles(RAD(0 + 3 * COS(sine / 40)),RAD(0 - 2 * COS(sine / 51)),RAD(-50 - 5 * COS(sine / 56))),.3)
		lwing4weld.C1=Clerp(lwing4weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 + 3600 * COS(sine / 360))),.3)
		lwing5weld.C1=Clerp(lwing5weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 + 3600 * COS(sine / 360))),.3)
		lwing6weld.C1=Clerp(lwing6weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "HOT MILK" then
		MODECOLOR = Color3.new(sick.PlaybackLoudness/0.333333, 1, 1)
		MODESONG = 597697591
		if ATTACK == false then
			Speed = 100
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
		sick.PlaybackSpeed = 1
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
		LIGHTINGCANNON.Parent = nil
		immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)
		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0,1.85 + 0.15 * COS(sine / 36),0)*angles(RAD(0 + 3 * COS(sine / 42)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 5 * COS(sine / 56))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0,1.85 + 0.15 * COS(sine / 38),0)*angles(RAD(0 + 3 * COS(sine / 45)),RAD(0 - 2 * COS(sine / 37)),RAD(130 + 5 * COS(sine / 56))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0,1.85 + 0.15 * COS(sine / 41),0)*angles(RAD(0 + 3 * COS(sine / 48)),RAD(0 - 2 * COS(sine / 51)),RAD(50 + 5 * COS(sine / 56))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0,1.85 + 0.15 * COS(sine / 36),0)*angles(RAD(0 + 3 * COS(sine / 46)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 - 5 * COS(sine / 56))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0,1.85 + 0.15 * COS(sine / 38),0)*angles(RAD(0 + 3 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 37)),RAD(-130 - 5 * COS(sine / 56))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0,1.85 + 0.15 * COS(sine / 41),0)*angles(RAD(0 + 3 * COS(sine / 40)),RAD(0 - 2 * COS(sine / 51)),RAD(-50 - 5 * COS(sine / 56))),.3)
		lwing4weld.C1=Clerp(lwing4weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 + 3600 * COS(sine / 360))),.3)
		lwing5weld.C1=Clerp(lwing5weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 + 3600 * COS(sine / 360))),.3)
		lwing6weld.C1=Clerp(lwing6weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "NULL" then
		MODECOLOR = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		MODESONG = 336781384
		if ATTACK == false then
			Speed = 16
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
		sick.PlaybackSpeed = 0.67

		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
		
LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil


		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0,1.85 + 0.15 * COS(sine / 36),0)*angles(RAD(0 + 3 * COS(sine / 42)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 5 * COS(sine / 56))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0,1.85 + 0.15 * COS(sine / 38),0)*angles(RAD(0 + 3 * COS(sine / 45)),RAD(0 - 2 * COS(sine / 37)),RAD(130 + 5 * COS(sine / 56))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0,1.85 + 0.15 * COS(sine / 41),0)*angles(RAD(0 + 3 * COS(sine / 48)),RAD(0 - 2 * COS(sine / 51)),RAD(50 + 5 * COS(sine / 56))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0,1.85 + 0.15 * COS(sine / 36),0)*angles(RAD(0 + 3 * COS(sine / 46)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 - 5 * COS(sine / 56))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0,1.85 + 0.15 * COS(sine / 38),0)*angles(RAD(0 + 3 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 37)),RAD(-130 - 5 * COS(sine / 56))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0,1.85 + 0.15 * COS(sine / 41),0)*angles(RAD(0 + 3 * COS(sine / 40)),RAD(0 - 2 * COS(sine / 51)),RAD(-50 - 5 * COS(sine / 56))),.3)
		lwing4weld.C1=Clerp(lwing4weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 + 3600 * COS(sine / 360))),.3)
		lwing5weld.C1=Clerp(lwing5weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 + 3600 * COS(sine / 360))),.3)
		lwing6weld.C1=Clerp(lwing6weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "AZURE" then
		MODECOLOR = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		MODESONG = 1028690723
		if ATTACK == false then
			Speed = 100
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
Truss.Parent = nil
anti.Parent = nil
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)
		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0,1.85 + 0.15 * COS(sine / 36),0)*angles(RAD(0 + 3 * COS(sine / 42)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 5 * COS(sine / 56))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0,1.85 + 0.15 * COS(sine / 38),0)*angles(RAD(0 + 3 * COS(sine / 45)),RAD(0 - 2 * COS(sine / 37)),RAD(130 + 5 * COS(sine / 56))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0,1.85 + 0.15 * COS(sine / 41),0)*angles(RAD(0 + 3 * COS(sine / 48)),RAD(0 - 2 * COS(sine / 51)),RAD(50 + 5 * COS(sine / 56))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0,1.85 + 0.15 * COS(sine / 36),0)*angles(RAD(0 + 3 * COS(sine / 46)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 - 5 * COS(sine / 56))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0,1.85 + 0.15 * COS(sine / 38),0)*angles(RAD(0 + 3 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 37)),RAD(-130 - 5 * COS(sine / 56))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0,1.85 + 0.15 * COS(sine / 41),0)*angles(RAD(0 + 3 * COS(sine / 40)),RAD(0 - 2 * COS(sine / 51)),RAD(-50 - 5 * COS(sine / 56))),.3)
		lwing4weld.C1=Clerp(lwing4weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 + 3600 * COS(sine / 360))),.3)
		lwing5weld.C1=Clerp(lwing5weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 + 3600 * COS(sine / 360))),.3)
		lwing6weld.C1=Clerp(lwing6weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "Consternation" then
		MODECOLOR = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		MODESONG = 7014393871
		if ATTACK == false then
			Speed = 100
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
		sick.PlaybackSpeed = 1
		Bladee.Parent = nil
		SBGUN.Parent = nil
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = Character
		lwing5.Parent = Character
		lwing6.Parent = Character
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = Character
		rwing5.Parent = Character
		rwing6.Parent = Character
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)
		lwing1weld.C1=Clerp(lwing1weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
		lwing4weld.C1=Clerp(lwing4weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 - 3600 * COS(sine / 360))),.3)
		lwing5weld.C1=Clerp(lwing5weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 - 3600 * COS(sine / 360))),.3)
		lwing6weld.C1=Clerp(lwing6weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 - 3600 * COS(sine / 360))),.3)
		rwing4weld.C1=Clerp(rwing4weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 - 3600 * COS(sine / 360))),.3)
		rwing5weld.C1=Clerp(rwing5weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 - 3600 * COS(sine / 360))),.3)
		rwing6weld.C1=Clerp(rwing6weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 - 3600 * COS(sine / 360))),.3)
	end
	if MODE == "BAD APPLE" then
		MODECOLOR = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		MODESONG = 932923622
		if ATTACK == false then
			Speed = 100
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
		sick.PlaybackSpeed = 1.1
		Bladee.Parent = nil
		SBGUN.Parent = nil



		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil

		LIGHTINGCANNON.Parent = nil
		immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil

		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0,1.85 + 0.15 * COS(sine / 36),0)*angles(RAD(0 + 3 * COS(sine / 42)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 5 * COS(sine / 56))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0,1.85 + 0.15 * COS(sine / 38),0)*angles(RAD(0 + 3 * COS(sine / 45)),RAD(0 - 2 * COS(sine / 37)),RAD(130 + 5 * COS(sine / 56))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0,1.85 + 0.15 * COS(sine / 41),0)*angles(RAD(0 + 3 * COS(sine / 48)),RAD(0 - 2 * COS(sine / 51)),RAD(50 + 5 * COS(sine / 56))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0,1.85 + 0.15 * COS(sine / 36),0)*angles(RAD(0 + 3 * COS(sine / 46)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 - 5 * COS(sine / 56))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0,1.85 + 0.15 * COS(sine / 38),0)*angles(RAD(0 + 3 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 37)),RAD(-130 - 5 * COS(sine / 56))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0,1.85 + 0.15 * COS(sine / 41),0)*angles(RAD(0 + 3 * COS(sine / 40)),RAD(0 - 2 * COS(sine / 51)),RAD(-50 - 5 * COS(sine / 56))),.3)
		lwing4weld.C1=Clerp(lwing4weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 + 3600 * COS(sine / 360))),.3)
		lwing5weld.C1=Clerp(lwing5weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 + 3600 * COS(sine / 360))),.3)
		lwing6weld.C1=Clerp(lwing6weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "DESTRUCTION" then
		MODECOLOR = C3(MRANDOM(1,255),0,0)
		MODESONG = 5191559836
		if ATTACK == false then
			Speed = 500
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil


		lwing1.Parent = Character
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = Character
		lwing5.Parent = Character
		lwing6.Parent = Character
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = Character
		rwing5.Parent = Character
		rwing6.Parent = Character
		lwing1weld.C1=Clerp(lwing1weld.C1,cf(2,0,-0.4)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 10 * math.cos(sine / 32)),math.rad(0),math.rad(12.5 + 5 * math.cos(sine / 32))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(3,1,-0.4)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(25 + 7.5 * math.cos(sine / 32))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(3.75,2,-0.4)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos(sine / 32)),math.rad(0),math.rad(37.5 + 10 * math.cos(sine / 32))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(-2,0,-0.4)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(5 + 10 * math.cos(sine / 32)),math.rad(0),math.rad(-12.5 - 5 * math.cos(sine / 32))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(-3,1,-0.4)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(10 + 15 * math.cos(sine / 32)),math.rad(0),math.rad(-25 - 7.5 * math.cos(sine / 32))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(-3.75,2,-0.3)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(15 + 20 * math.cos(sine / 32)),math.rad(0),math.rad(-37.5 - 10 * math.cos(sine / 32))),.3)
		lwing4weld.C1=Clerp(lwing4weld.C1,cf(0,2 - 1.5 * math.cos(sine / 32.5),0)*angles(math.rad(0),math.rad(0),math.rad(360 + 720 * math.cos(sine / 65))),.3)
		lwing5weld.C1=Clerp(lwing5weld.C1,cf(0,0 - 1 * math.cos(sine / 32.5),-0.8)*angles(math.rad(0 + 5 * math.cos(sine / 32.5)),math.rad(0),math.rad(360)),.3)
		lwing6weld.C1=Clerp(lwing6weld.C1,cf(0,2 - 1.5 * math.cos(sine / 32.5),0)*angles(math.rad(0),math.rad(0),math.rad(180 + 720 * math.cos(sine / 65))),.3)
		rwing4weld.C1=Clerp(rwing4weld.C1,cf(0,2 - 1.5 * math.cos(sine / 32.5),0)*angles(math.rad(0),math.rad(0),math.rad(-90 + 720 * math.cos(sine / 65))),.3)
		rwing5weld.C1=Clerp(rwing5weld.C1,cf(0,-1 + 1 * math.cos(sine / 32.5),-0.9)*angles(math.rad(0 + 5 * math.cos(sine / 32.5)),math.rad(0),math.rad(180)),.3)
		rwing6weld.C1=Clerp(rwing6weld.C1,cf(0,2 - 1.5 * math.cos(sine / 32.5),-0.9)*angles(math.rad(0),math.rad(0),math.rad(90 + 720 * math.cos(sine / 65))),.3)
	end
	if MODE == "LIGHTING CANNON - NORMAL" then
		MODECOLOR = rainbowcolor
		MODESONG = 6498555267
		if ATTACK == false then
			Speed = 50
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil



		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = Character
		lwing5.Parent = Character
		lwing6.Parent = Character
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = Character
		rwing5.Parent = Character
		rwing6.Parent = Character
		LIGHTINGCANNON.Parent = Character
		Truss.Parent = nil
anti.Parent = nil
		LIGHTINGCANNON.Weapon.NeonParts.Color = MODECOLOR
		LIGHTINGCANNON.Weapon.LC.Color = MODECOLOR
		  
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,CFrame.new(2,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(5 + 10 * math.cos(SINE / 32)),math.rad(0),math.rad(12.5 + 5 * math.cos(SINE / 32))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,CFrame.new(3,1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(10 + 15 * math.cos(SINE / 32)),math.rad(0),math.rad(25 + 7.5 * math.cos(SINE / 32))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,CFrame.new(3.75,2,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(15 + 20 * math.cos(SINE / 32)),math.rad(0),math.rad(37.5 + 10 * math.cos(SINE / 32))),.3)
		lwing4weld.C1=Clerp(lwing4weld.C1,CFrame.new(4.75,3,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(20 + 25 * math.cos(SINE / 32)),math.rad(0),math.rad(50 + 12.5 * math.cos(SINE / 32))),.3)
		lwing5weld.C1=Clerp(lwing5weld.C1,CFrame.new(5.75,4,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(25 + 30 * math.cos(SINE / 32)),math.rad(0),math.rad(62.5 + 15 * math.cos(SINE / 32))),.3)
		lwing6weld.C1=Clerp(lwing6weld.C1,CFrame.new(6.75,5,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(30 + 35 * math.cos(SINE / 32)),math.rad(0),math.rad(75 + 17.5 * math.cos(SINE / 32))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,CFrame.new(-2,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(5 + 10 * math.cos(SINE / 32)),math.rad(0),math.rad(-12.5 - 5 * math.cos(SINE / 32))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,CFrame.new(-3,1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(10 + 15 * math.cos(SINE / 32)),math.rad(0),math.rad(-25 - 7.5 * math.cos(SINE / 32))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,CFrame.new(-3.75,2,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(15 + 20 * math.cos(SINE / 32)),math.rad(0),math.rad(-37.5 - 10 * math.cos(SINE / 32))),.3)
		rwing4weld.C1=Clerp(rwing4weld.C1,CFrame.new(-4.75,3,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(20 + 25 * math.cos(SINE / 32)),math.rad(0),math.rad(-50 - 12.5 * math.cos(SINE / 32))),.3)
		rwing5weld.C1=Clerp(rwing5weld.C1,CFrame.new(-5.75,4,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(25 + 30 * math.cos(SINE / 32)),math.rad(0),math.rad(-62.5 - 15 * math.cos(SINE / 32))),.3)
		rwing6weld.C1=Clerp(rwing6weld.C1,CFrame.new(-6.75,5,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(30 + 35 * math.cos(SINE / 32)),math.rad(0),math.rad(-75 - 17.5 * math.cos(SINE / 32))),.3)
	end
	if MODE == "HONEY LIGHTNING CANNON" then
		MODECOLOR = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		MODESONG = 2728389795
		if ATTACK == false then
			Speed = 50
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
		sick.PlaybackSpeed = 1
		Bladee.Parent = nil
		SBGUN.Parent = nil



		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = Character
		lwing5.Parent = Character
		lwing6.Parent = Character
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = Character
		rwing5.Parent = Character
		rwing6.Parent = Character
		LIGHTINGCANNON.Parent = Character
		Truss.Parent = nil
anti.Parent = nil
		LIGHTINGCANNON.Weapon.NeonParts.Color = MODECOLOR
		LIGHTINGCANNON.Weapon.LC.Color = MODECOLOR

		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,CFrame.new(2,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(5 + 10 * math.cos(SINE / 32)),math.rad(0),math.rad(12.5 + 5 * math.cos(SINE / 32))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,CFrame.new(3,1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(10 + 15 * math.cos(SINE / 32)),math.rad(0),math.rad(25 + 7.5 * math.cos(SINE / 32))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,CFrame.new(3.75,2,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(15 + 20 * math.cos(SINE / 32)),math.rad(0),math.rad(37.5 + 10 * math.cos(SINE / 32))),.3)
		lwing4weld.C1=Clerp(lwing4weld.C1,CFrame.new(4.75,3,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(20 + 25 * math.cos(SINE / 32)),math.rad(0),math.rad(50 + 12.5 * math.cos(SINE / 32))),.3)
		lwing5weld.C1=Clerp(lwing5weld.C1,CFrame.new(5.75,4,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(25 + 30 * math.cos(SINE / 32)),math.rad(0),math.rad(62.5 + 15 * math.cos(SINE / 32))),.3)
		lwing6weld.C1=Clerp(lwing6weld.C1,CFrame.new(6.75,5,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(30 + 35 * math.cos(SINE / 32)),math.rad(0),math.rad(75 + 17.5 * math.cos(SINE / 32))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,CFrame.new(-2,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(5 + 10 * math.cos(SINE / 32)),math.rad(0),math.rad(-12.5 - 5 * math.cos(SINE / 32))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,CFrame.new(-3,1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(10 + 15 * math.cos(SINE / 32)),math.rad(0),math.rad(-25 - 7.5 * math.cos(SINE / 32))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,CFrame.new(-3.75,2,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(15 + 20 * math.cos(SINE / 32)),math.rad(0),math.rad(-37.5 - 10 * math.cos(SINE / 32))),.3)
		rwing4weld.C1=Clerp(rwing4weld.C1,CFrame.new(-4.75,3,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(20 + 25 * math.cos(SINE / 32)),math.rad(0),math.rad(-50 - 12.5 * math.cos(SINE / 32))),.3)
		rwing5weld.C1=Clerp(rwing5weld.C1,CFrame.new(-5.75,4,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(25 + 30 * math.cos(SINE / 32)),math.rad(0),math.rad(-62.5 - 15 * math.cos(SINE / 32))),.3)
		rwing6weld.C1=Clerp(rwing6weld.C1,CFrame.new(-6.75,5,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(30 + 35 * math.cos(SINE / 32)),math.rad(0),math.rad(-75 - 17.5 * math.cos(SINE / 32))),.3)
	end

	if MODE == "CHILLED" then
		MODECOLOR =  C3(100*sick.PlaybackLoudness/1000,0,100*sick.PlaybackLoudness/1000)
		MODESONG = 679355361
		if ATTACK == false then
			Speed = 125
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil


LIGHTINGCANNON.Weapon.NeonParts.Color = MODECOLOR
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = Character
		lwing5.Parent = Character
		lwing6.Parent = Character
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = Character
		rwing5.Parent = Character
		rwing6.Parent = Character
		LIGHTINGCANNON.Parent = Character
		Truss.Parent = nil
anti.Parent = nil
		LIGHTINGCANNON.Weapon.LC.Color = MODECOLOR
		  
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,CFrame.new(2,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(5 + 10 * math.cos(SINE / 32)),math.rad(0),math.rad(12.5 + 5 * math.cos(SINE / 32))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,CFrame.new(3,1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(10 + 15 * math.cos(SINE / 32)),math.rad(0),math.rad(25 + 7.5 * math.cos(SINE / 32))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,CFrame.new(3.75,2,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(15 + 20 * math.cos(SINE / 32)),math.rad(0),math.rad(37.5 + 10 * math.cos(SINE / 32))),.3)
		lwing4weld.C1=Clerp(lwing4weld.C1,CFrame.new(4.75,3,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(20 + 25 * math.cos(SINE / 32)),math.rad(0),math.rad(50 + 12.5 * math.cos(SINE / 32))),.3)
		lwing5weld.C1=Clerp(lwing5weld.C1,CFrame.new(5.75,4,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(25 + 30 * math.cos(SINE / 32)),math.rad(0),math.rad(62.5 + 15 * math.cos(SINE / 32))),.3)
		lwing6weld.C1=Clerp(lwing6weld.C1,CFrame.new(6.75,5,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(30 + 35 * math.cos(SINE / 32)),math.rad(0),math.rad(75 + 17.5 * math.cos(SINE / 32))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,CFrame.new(-2,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(5 + 10 * math.cos(SINE / 32)),math.rad(0),math.rad(-12.5 - 5 * math.cos(SINE / 32))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,CFrame.new(-3,1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(10 + 15 * math.cos(SINE / 32)),math.rad(0),math.rad(-25 - 7.5 * math.cos(SINE / 32))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,CFrame.new(-3.75,2,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(15 + 20 * math.cos(SINE / 32)),math.rad(0),math.rad(-37.5 - 10 * math.cos(SINE / 32))),.3)
		rwing4weld.C1=Clerp(rwing4weld.C1,CFrame.new(-4.75,3,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(20 + 25 * math.cos(SINE / 32)),math.rad(0),math.rad(-50 - 12.5 * math.cos(SINE / 32))),.3)
		rwing5weld.C1=Clerp(rwing5weld.C1,CFrame.new(-5.75,4,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(25 + 30 * math.cos(SINE / 32)),math.rad(0),math.rad(-62.5 - 15 * math.cos(SINE / 32))),.3)
		rwing6weld.C1=Clerp(rwing6weld.C1,CFrame.new(-6.75,5,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(30 + 35 * math.cos(SINE / 32)),math.rad(0),math.rad(-75 - 17.5 * math.cos(SINE / 32))),.3)
	end
	if MODE == "IMMORTAL LORD" then
		MODECOLOR =  C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		MODESONG = 4185475912
		if ATTACK == false then
			Speed = 20
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
		sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil


		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = Character
		lwing5.Parent = Character
		lwing6.Parent = Character
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = Character
		rwing5.Parent = Character
		rwing6.Parent = Character
		Bladee.Parent = Character
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,CFrame.new(2,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(5 + 10 * math.cos(SINE / 32)),math.rad(0),math.rad(12.5 + 5 * math.cos(SINE / 32))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,CFrame.new(3,1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(10 + 15 * math.cos(SINE / 32)),math.rad(0),math.rad(25 + 7.5 * math.cos(SINE / 32))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,CFrame.new(3.75,2,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(15 + 20 * math.cos(SINE / 32)),math.rad(0),math.rad(37.5 + 10 * math.cos(SINE / 32))),.3)
		lwing4weld.C1=Clerp(lwing4weld.C1,CFrame.new(4.75,3,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(20 + 25 * math.cos(SINE / 32)),math.rad(0),math.rad(50 + 12.5 * math.cos(SINE / 32))),.3)
		lwing5weld.C1=Clerp(lwing5weld.C1,CFrame.new(5.75,4,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(25 + 30 * math.cos(SINE / 32)),math.rad(0),math.rad(62.5 + 15 * math.cos(SINE / 32))),.3)
		lwing6weld.C1=Clerp(lwing6weld.C1,CFrame.new(6.75,5,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(30 + 35 * math.cos(SINE / 32)),math.rad(0),math.rad(75 + 17.5 * math.cos(SINE / 32))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,CFrame.new(-2,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(5 + 10 * math.cos(SINE / 32)),math.rad(0),math.rad(-12.5 - 5 * math.cos(SINE / 32))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,CFrame.new(-3,1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(10 + 15 * math.cos(SINE / 32)),math.rad(0),math.rad(-25 - 7.5 * math.cos(SINE / 32))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,CFrame.new(-3.75,2,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(15 + 20 * math.cos(SINE / 32)),math.rad(0),math.rad(-37.5 - 10 * math.cos(SINE / 32))),.3)
		rwing4weld.C1=Clerp(rwing4weld.C1,CFrame.new(-4.75,3,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(20 + 25 * math.cos(SINE / 32)),math.rad(0),math.rad(-50 - 12.5 * math.cos(SINE / 32))),.3)
		rwing5weld.C1=Clerp(rwing5weld.C1,CFrame.new(-5.75,4,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(25 + 30 * math.cos(SINE / 32)),math.rad(0),math.rad(-62.5 - 15 * math.cos(SINE / 32))),.3)
		rwing6weld.C1=Clerp(rwing6weld.C1,CFrame.new(-6.75,5,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(30 + 35 * math.cos(SINE / 32)),math.rad(0),math.rad(-75 - 17.5 * math.cos(SINE / 32))),.3)
	end
	if MODE == "ANTI V7" then
		MODECOLOR =  C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		MODESONG = 4770746196
		if ATTACK == false then
			Speed = 20
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
		sick.PlaybackSpeed = 1
		LIGHTINGCANNON.Weapon.NeonParts.Color = MODECOLOR
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = Character
		lwing5.Parent = Character
		lwing6.Parent = Character
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = Character
		rwing5.Parent = Character
		rwing6.Parent = Character
		anti.Parent = Character
		anti.weapon.Gun.Color = MODECOLOR
		  
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,CFrame.new(2,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(5 + 10 * math.cos(SINE / 32)),math.rad(0),math.rad(12.5 + 5 * math.cos(SINE / 32))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,CFrame.new(3,1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(10 + 15 * math.cos(SINE / 32)),math.rad(0),math.rad(25 + 7.5 * math.cos(SINE / 32))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,CFrame.new(3.75,2,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(15 + 20 * math.cos(SINE / 32)),math.rad(0),math.rad(37.5 + 10 * math.cos(SINE / 32))),.3)
		lwing4weld.C1=Clerp(lwing4weld.C1,CFrame.new(4.75,3,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(20 + 25 * math.cos(SINE / 32)),math.rad(0),math.rad(50 + 12.5 * math.cos(SINE / 32))),.3)
		lwing5weld.C1=Clerp(lwing5weld.C1,CFrame.new(5.75,4,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(25 + 30 * math.cos(SINE / 32)),math.rad(0),math.rad(62.5 + 15 * math.cos(SINE / 32))),.3)
		lwing6weld.C1=Clerp(lwing6weld.C1,CFrame.new(6.75,5,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(30 + 35 * math.cos(SINE / 32)),math.rad(0),math.rad(75 + 17.5 * math.cos(SINE / 32))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,CFrame.new(-2,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(5 + 10 * math.cos(SINE / 32)),math.rad(0),math.rad(-12.5 - 5 * math.cos(SINE / 32))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,CFrame.new(-3,1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(10 + 15 * math.cos(SINE / 32)),math.rad(0),math.rad(-25 - 7.5 * math.cos(SINE / 32))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,CFrame.new(-3.75,2,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(15 + 20 * math.cos(SINE / 32)),math.rad(0),math.rad(-37.5 - 10 * math.cos(SINE / 32))),.3)
		rwing4weld.C1=Clerp(rwing4weld.C1,CFrame.new(-4.75,3,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(20 + 25 * math.cos(SINE / 32)),math.rad(0),math.rad(-50 - 12.5 * math.cos(SINE / 32))),.3)
		rwing5weld.C1=Clerp(rwing5weld.C1,CFrame.new(-5.75,4,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(25 + 30 * math.cos(SINE / 32)),math.rad(0),math.rad(-62.5 - 15 * math.cos(SINE / 32))),.3)
		rwing6weld.C1=Clerp(rwing6weld.C1,CFrame.new(-6.75,5,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(30 + 35 * math.cos(SINE / 32)),math.rad(0),math.rad(-75 - 17.5 * math.cos(SINE / 32))),.3)
	end
	if MODE == "ANTI V12" then
		MODECOLOR =  C3(100*sick.PlaybackLoudness/10000,0,0)
		MODESONG = 4556781254
		if ATTACK == false then
			Speed = 20
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
		sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil


		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = Character
		lwing5.Parent = Character
		lwing6.Parent = Character
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = Character
		rwing5.Parent = Character
		rwing6.Parent = Character
		Truss.Parent = nil
anti.Parent = nil
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)
		lwing1weld.C1=Clerp(lwing1weld.C1,CFrame.new(2,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(5 + 10 * math.cos(SINE / 32)),math.rad(0),math.rad(12.5 + 5 * math.cos(SINE / 32))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,CFrame.new(3,1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(10 + 15 * math.cos(SINE / 32)),math.rad(0),math.rad(25 + 7.5 * math.cos(SINE / 32))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,CFrame.new(3.75,2,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(15 + 20 * math.cos(SINE / 32)),math.rad(0),math.rad(37.5 + 10 * math.cos(SINE / 32))),.3)
		lwing4weld.C1=Clerp(lwing4weld.C1,CFrame.new(4.75,3,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(20 + 25 * math.cos(SINE / 32)),math.rad(0),math.rad(50 + 12.5 * math.cos(SINE / 32))),.3)
		lwing5weld.C1=Clerp(lwing5weld.C1,CFrame.new(5.75,4,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(25 + 30 * math.cos(SINE / 32)),math.rad(0),math.rad(62.5 + 15 * math.cos(SINE / 32))),.3)
		lwing6weld.C1=Clerp(lwing6weld.C1,CFrame.new(6.75,5,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(30 + 35 * math.cos(SINE / 32)),math.rad(0),math.rad(75 + 17.5 * math.cos(SINE / 32))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,CFrame.new(-2,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(5 + 10 * math.cos(SINE / 32)),math.rad(0),math.rad(-12.5 - 5 * math.cos(SINE / 32))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,CFrame.new(-3,1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(10 + 15 * math.cos(SINE / 32)),math.rad(0),math.rad(-25 - 7.5 * math.cos(SINE / 32))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,CFrame.new(-3.75,2,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(15 + 20 * math.cos(SINE / 32)),math.rad(0),math.rad(-37.5 - 10 * math.cos(SINE / 32))),.3)
		rwing4weld.C1=Clerp(rwing4weld.C1,CFrame.new(-4.75,3,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(20 + 25 * math.cos(SINE / 32)),math.rad(0),math.rad(-50 - 12.5 * math.cos(SINE / 32))),.3)
		rwing5weld.C1=Clerp(rwing5weld.C1,CFrame.new(-5.75,4,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(25 + 30 * math.cos(SINE / 32)),math.rad(0),math.rad(-62.5 - 15 * math.cos(SINE / 32))),.3)
		rwing6weld.C1=Clerp(rwing6weld.C1,CFrame.new(-6.75,5,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(30 + 35 * math.cos(SINE / 32)),math.rad(0),math.rad(-75 - 17.5 * math.cos(SINE / 32))),.3)
	end
	if MODE == "LIGHTING CANNON - INSANITY" then
		MODECOLOR = Color3.fromHSV(math.random(0,19)/20,1,1)
		MODESONG = 1591072638
		if ATTACK == false then
			Speed = 50
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil



		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = Character
		lwing5.Parent = Character
		lwing6.Parent = Character
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = Character
		rwing5.Parent = Character
		rwing6.Parent = Character
		LIGHTINGCANNON.Parent = Character
		Truss.Parent = nil
anti.Parent = nil
		LIGHTINGCANNON.Weapon.NeonParts.Color = MODECOLOR
		LIGHTINGCANNON.Weapon.LC.Color = MODECOLOR
		  
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,CFrame.new(2,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(5 + 10 * math.cos(SINE / 32)),math.rad(0),math.rad(12.5 + 5 * math.cos(SINE / 32))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,CFrame.new(3,1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(10 + 15 * math.cos(SINE / 32)),math.rad(0),math.rad(25 + 7.5 * math.cos(SINE / 32))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,CFrame.new(3.75,2,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(15 + 20 * math.cos(SINE / 32)),math.rad(0),math.rad(37.5 + 10 * math.cos(SINE / 32))),.3)
		lwing4weld.C1=Clerp(lwing4weld.C1,CFrame.new(4.75,3,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(20 + 25 * math.cos(SINE / 32)),math.rad(0),math.rad(50 + 12.5 * math.cos(SINE / 32))),.3)
		lwing5weld.C1=Clerp(lwing5weld.C1,CFrame.new(5.75,4,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(25 + 30 * math.cos(SINE / 32)),math.rad(0),math.rad(62.5 + 15 * math.cos(SINE / 32))),.3)
		lwing6weld.C1=Clerp(lwing6weld.C1,CFrame.new(6.75,5,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(30 + 35 * math.cos(SINE / 32)),math.rad(0),math.rad(75 + 17.5 * math.cos(SINE / 32))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,CFrame.new(-2,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(5 + 10 * math.cos(SINE / 32)),math.rad(0),math.rad(-12.5 - 5 * math.cos(SINE / 32))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,CFrame.new(-3,1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(10 + 15 * math.cos(SINE / 32)),math.rad(0),math.rad(-25 - 7.5 * math.cos(SINE / 32))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,CFrame.new(-3.75,2,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(15 + 20 * math.cos(SINE / 32)),math.rad(0),math.rad(-37.5 - 10 * math.cos(SINE / 32))),.3)
		rwing4weld.C1=Clerp(rwing4weld.C1,CFrame.new(-4.75,3,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(20 + 25 * math.cos(SINE / 32)),math.rad(0),math.rad(-50 - 12.5 * math.cos(SINE / 32))),.3)
		rwing5weld.C1=Clerp(rwing5weld.C1,CFrame.new(-5.75,4,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(25 + 30 * math.cos(SINE / 32)),math.rad(0),math.rad(-62.5 - 15 * math.cos(SINE / 32))),.3)
		rwing6weld.C1=Clerp(rwing6weld.C1,CFrame.new(-6.75,5,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(30 + 35 * math.cos(SINE / 32)),math.rad(0),math.rad(-75 - 17.5 * math.cos(SINE / 32))),.3)
	end
	if MODE == "LIGHTING CANNON - ERROR" then
		MODECOLOR = Color3.fromRGB(0,math.random(0,255),0)
		MODESONG = 481104377
		if ATTACK == false then
			Speed = 50
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil



		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = Character
		lwing5.Parent = Character
		lwing6.Parent = Character
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = Character
		rwing5.Parent = Character
		rwing6.Parent = Character
		LIGHTINGCANNON.Parent = Character
Truss.Parent = nil
anti.Parent = nil
		LIGHTINGCANNON.Weapon.LC.Color = MODECOLOR
		  
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,CFrame.new(2,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(5 + 10 * math.cos(SINE / 32)),math.rad(0),math.rad(12.5 + 5 * math.cos(SINE / 32))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,CFrame.new(3,1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(10 + 15 * math.cos(SINE / 32)),math.rad(0),math.rad(25 + 7.5 * math.cos(SINE / 32))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,CFrame.new(3.75,2,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(15 + 20 * math.cos(SINE / 32)),math.rad(0),math.rad(37.5 + 10 * math.cos(SINE / 32))),.3)
		lwing4weld.C1=Clerp(lwing4weld.C1,CFrame.new(4.75,3,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(20 + 25 * math.cos(SINE / 32)),math.rad(0),math.rad(50 + 12.5 * math.cos(SINE / 32))),.3)
		lwing5weld.C1=Clerp(lwing5weld.C1,CFrame.new(5.75,4,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(25 + 30 * math.cos(SINE / 32)),math.rad(0),math.rad(62.5 + 15 * math.cos(SINE / 32))),.3)
		lwing6weld.C1=Clerp(lwing6weld.C1,CFrame.new(6.75,5,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(30 + 35 * math.cos(SINE / 32)),math.rad(0),math.rad(75 + 17.5 * math.cos(SINE / 32))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,CFrame.new(-2,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(5 + 10 * math.cos(SINE / 32)),math.rad(0),math.rad(-12.5 - 5 * math.cos(SINE / 32))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,CFrame.new(-3,1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(10 + 15 * math.cos(SINE / 32)),math.rad(0),math.rad(-25 - 7.5 * math.cos(SINE / 32))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,CFrame.new(-3.75,2,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(15 + 20 * math.cos(SINE / 32)),math.rad(0),math.rad(-37.5 - 10 * math.cos(SINE / 32))),.3)
		rwing4weld.C1=Clerp(rwing4weld.C1,CFrame.new(-4.75,3,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(20 + 25 * math.cos(SINE / 32)),math.rad(0),math.rad(-50 - 12.5 * math.cos(SINE / 32))),.3)
		rwing5weld.C1=Clerp(rwing5weld.C1,CFrame.new(-5.75,4,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(25 + 30 * math.cos(SINE / 32)),math.rad(0),math.rad(-62.5 - 15 * math.cos(SINE / 32))),.3)
		rwing6weld.C1=Clerp(rwing6weld.C1,CFrame.new(-6.75,5,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(30 + 35 * math.cos(SINE / 32)),math.rad(0),math.rad(-75 - 17.5 * math.cos(SINE / 32))),.3)
	end
	if MODE == "LIGHTING CANNON - RUN IN THE 90S" then
		MODECOLOR = Color3.fromRGB(0,0,math.clamp(sick.PlaybackLoudness-191,0,255))
		MODESONG = 2920078671
		if ATTACK == false then
			Speed = 600
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil



		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = Character
		lwing5.Parent = Character
		lwing6.Parent = Character
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = Character
		rwing5.Parent = Character
		rwing6.Parent = Character
		LIGHTINGCANNON.Parent = Character
		Truss.Parent = nil
anti.Parent = nil
		LIGHTINGCANNON.Weapon.NeonParts.Color = MODECOLOR
		LIGHTINGCANNON.Weapon.LC.Color = MODECOLOR
		  
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,CFrame.new(2,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(5 + 10 * math.cos(SINE / 32)),math.rad(0),math.rad(12.5 + 5 * math.cos(SINE / 32))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,CFrame.new(3,1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(10 + 15 * math.cos(SINE / 32)),math.rad(0),math.rad(25 + 7.5 * math.cos(SINE / 32))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,CFrame.new(3.75,2,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(15 + 20 * math.cos(SINE / 32)),math.rad(0),math.rad(37.5 + 10 * math.cos(SINE / 32))),.3)
		lwing4weld.C1=Clerp(lwing4weld.C1,CFrame.new(4.75,3,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(20 + 25 * math.cos(SINE / 32)),math.rad(0),math.rad(50 + 12.5 * math.cos(SINE / 32))),.3)
		lwing5weld.C1=Clerp(lwing5weld.C1,CFrame.new(5.75,4,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(25 + 30 * math.cos(SINE / 32)),math.rad(0),math.rad(62.5 + 15 * math.cos(SINE / 32))),.3)
		lwing6weld.C1=Clerp(lwing6weld.C1,CFrame.new(6.75,5,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(30 + 35 * math.cos(SINE / 32)),math.rad(0),math.rad(75 + 17.5 * math.cos(SINE / 32))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,CFrame.new(-2,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(5 + 10 * math.cos(SINE / 32)),math.rad(0),math.rad(-12.5 - 5 * math.cos(SINE / 32))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,CFrame.new(-3,1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(10 + 15 * math.cos(SINE / 32)),math.rad(0),math.rad(-25 - 7.5 * math.cos(SINE / 32))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,CFrame.new(-3.75,2,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(15 + 20 * math.cos(SINE / 32)),math.rad(0),math.rad(-37.5 - 10 * math.cos(SINE / 32))),.3)
		rwing4weld.C1=Clerp(rwing4weld.C1,CFrame.new(-4.75,3,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(20 + 25 * math.cos(SINE / 32)),math.rad(0),math.rad(-50 - 12.5 * math.cos(SINE / 32))),.3)
		rwing5weld.C1=Clerp(rwing5weld.C1,CFrame.new(-5.75,4,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(25 + 30 * math.cos(SINE / 32)),math.rad(0),math.rad(-62.5 - 15 * math.cos(SINE / 32))),.3)
		rwing6weld.C1=Clerp(rwing6weld.C1,CFrame.new(-6.75,5,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(30 + 35 * math.cos(SINE / 32)),math.rad(0),math.rad(-75 - 17.5 * math.cos(SINE / 32))),.3)
	end
	if MODE == "WHATAPP CAR" then
		MODECOLOR = Color3.fromRGB(85, 255, 0)
		MODESONG = 6755105707
		if ATTACK == false then
			Speed = 200
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil

		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
				rwing6.Parent = nil

LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
Truss.Parent = nil
anti.Parent = nil
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)
		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 - 3600 * COS(sine / 720))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 - 3600 * COS(sine / 720))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 - 3600 * COS(sine / 720))),.3)
	end
	if MODE == "BING BING BANG CAR" then
		MODECOLOR = Color3.fromRGB(sick.PlaybackLoudness/85, 255, 0)
		MODESONG = 6874146452
		if ATTACK == false then
			Speed = 200
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
		sick.PlaybackSpeed = 1
		Bladee.Parent = nil
		SBGUN.Parent = nil

		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil

		LIGHTINGCANNON.Parent = nil
		immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)
		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 - 3600 * COS(sine / 720))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 - 3600 * COS(sine / 720))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 - 3600 * COS(sine / 720))),.3)
	end
	if MODE == "PIGGIE TRAP CAR" then
		MODECOLOR = Color3.fromRGB(85, 255, 0)
		MODESONG = 6449265512
		if ATTACK == false then
			Speed = 200
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
		sick.PlaybackSpeed = 1
		Bladee.Parent = nil
		SBGUN.Parent = nil
		
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
		
LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)
		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 - 3600 * COS(sine / 720))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 - 3600 * COS(sine / 720))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 - 3600 * COS(sine / 720))),.3)
	end
	if MODE == "CLOWN CAR" then
		MODECOLOR = rainbowcolor
		MODESONG = 7154191471
		if ATTACK == false then
			Speed = 200
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
		sick.PlaybackSpeed = 1
		Bladee.Parent = nil
		SBGUN.Parent = nil
		


		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
		
LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil


		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 - 3600 * COS(sine / 720))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 - 3600 * COS(sine / 720))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 - 3600 * COS(sine / 720))),.3)
	end
	if MODE == "PVZ CAR" then
		MODECOLOR = rainbowcolor
		MODESONG = 6445196321
		if ATTACK == false then
			Speed = 200
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
		sick.PlaybackSpeed = 1
		Bladee.Parent = nil
		SBGUN.Parent = nil
		


		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
		
LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil


		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 - 3600 * COS(sine / 720))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 - 3600 * COS(sine / 720))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 - 3600 * COS(sine / 720))),.3)
	end
	if MODE == "NORMAL" then
		MODECOLOR = C3(1,1,1)
		MODESONG = 6220428586
		if ATTACK == false then
			Speed = 30
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = nil
		lwing2.Parent = nil
		lwing3.Parent = nil
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
				rwing6.Parent = nil

LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
Truss.Parent = nil
anti.Parent = nil
  

		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(2,0,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(5 + 10 * COS(sine / 32)),RAD(0),RAD(12.5 + 5 * COS(sine / 32))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(3,1,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(10 + 15 * COS(sine / 32)),RAD(0),RAD(25 + 7.5 * COS(sine / 32))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(3.75,2,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(15 + 20 * COS(sine / 32)),RAD(0),RAD(37.5 + 10 * COS(sine / 32))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(-2,0,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(5 + 10 * COS(sine / 32)),RAD(0),RAD(-12.5 - 5 * COS(sine / 32))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(-3,1,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(10 + 15 * COS(sine / 32)),RAD(0),RAD(-25 - 7.5 * COS(sine / 32))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(-3.75,2,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(15 + 20 * COS(sine / 32)),RAD(0),RAD(-37.5 - 10 * COS(sine / 32))),.3)
	end
	if MODE == "KARMA" then
		MODECOLOR = Color3.fromRGB(MRANDOM(1,255),MRANDOM(1,255),MRANDOM(1,255))
		MODESONG = 733456981
		if ATTACK == false then
			Speed = 500
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil



		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = Character
		lwing5.Parent = Character
		lwing6.Parent = Character
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = Character
		rwing5.Parent = Character
				 rwing6.Parent = Character
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
		lwing4weld.C1=Clerp(lwing4weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 - 3600 * COS(sine / 360))),.3)
		lwing5weld.C1=Clerp(lwing5weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 - 3600 * COS(sine / 360))),.3)
		lwing6weld.C1=Clerp(lwing6weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 - 3600 * COS(sine / 360))),.3)
		rwing4weld.C1=Clerp(rwing4weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 - 3600 * COS(sine / 360))),.3)
		rwing5weld.C1=Clerp(rwing5weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 - 3600 * COS(sine / 360))),.3)
		rwing6weld.C1=Clerp(rwing6weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 - 3600 * COS(sine / 360))),.3)
	end
	if MODE == "NEEDXFALLEN" then
		MODECOLOR = rainbowcolor
		MODESONG = 5332789797
		if ATTACK == false then
			Speed = 16
		end
		if HITFLOOR ~= nil then
		end
		sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil


		Banisher.Parent = Character
		lwing1.Parent = Character
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = Character
		lwing5.Parent = Character
		lwing6.Parent = Character
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = Character
		rwing5.Parent = Character
		rwing6.Parent = Character
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
		lwing4weld.C1=Clerp(lwing4weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 - 3600 * COS(sine / 360))),.3)
		lwing5weld.C1=Clerp(lwing5weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 - 3600 * COS(sine / 360))),.3)
		lwing6weld.C1=Clerp(lwing6weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 - 3600 * COS(sine / 360))),.3)
		rwing4weld.C1=Clerp(rwing4weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 - 3600 * COS(sine / 360))),.3)
		rwing5weld.C1=Clerp(rwing5weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 - 3600 * COS(sine / 360))),.3)
		rwing6weld.C1=Clerp(rwing6weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 - 3600 * COS(sine / 360))),.3)
	end
	if MODE == "NEEDXKING" then
		MODECOLOR = rainbowcolor
		MODESONG = 6184972937
		if ATTACK == false then
			Speed = 35
		end
		if HITFLOOR ~= nil then
		end
		sick.PlaybackSpeed = 1
		Bladee.Parent = nil
		SBGUN.Parent = nil


		Banisher.Parent = Character
		lwing1.Parent = Character
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = Character
		lwing5.Parent = Character
		lwing6.Parent = Character
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = Character
		rwing5.Parent = Character
		rwing6.Parent = Character
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(1 + 5 * COS(sine / 180),4 + 2.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
		lwing4weld.C1=Clerp(lwing4weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 - 3600 * COS(sine / 360))),.3)
		lwing5weld.C1=Clerp(lwing5weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 - 3600 * COS(sine / 360))),.3)
		lwing6weld.C1=Clerp(lwing6weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 - 3600 * COS(sine / 360))),.3)
		rwing4weld.C1=Clerp(rwing4weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 - 3600 * COS(sine / 360))),.3)
		rwing5weld.C1=Clerp(rwing5weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 - 3600 * COS(sine / 360))),.3)
		rwing6weld.C1=Clerp(rwing6weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 - 3600 * COS(sine / 360))),.3)
	end
	if MODE == "ł ₥ Ø Ɽ ₮ ₳ Ⱡ  ₴ Ⱡ ₳ Ɏ Ɇ Ɽ" then
		MODECOLOR = Color3.new(sick.PlaybackLoudness/500,0,0)
		MODESONG = 4602123805
		if ATTACK == false then
			Speed = 16
		end
		if HITFLOOR ~= nil then
		end
		sick.PlaybackSpeed = 1
		immortalgun.Parent= Character
		Bladee.Parent = nil
		SBGUN.Parent = nil
		Banisher.Parent = nil
		lwing1.Parent = Character
		lwing2.Parent = nil
		lwing3.Parent = nil
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = nil
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)
		rwing1weld.C1=Clerp(rwing1weld.C1,CFrame.new(-2,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(5 + 10 * math.cos(SINE / 32)),math.rad(0),math.rad(-12.5 - 5 * math.cos(SINE / 32))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,CFrame.new(-3,1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(10 + 15 * math.cos(SINE / 32)),math.rad(0),math.rad(-25 - 7.5 * math.cos(SINE / 32))),.3)
		lwing1weld.C1=Clerp(lwing1weld.C1,CFrame.new(2,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(5 + 10 * math.cos(SINE / 32)),math.rad(0),math.rad(12.5 + 5 * math.cos(SINE / 32))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,CFrame.new(3,1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(10 + 15 * math.cos(SINE / 32)),math.rad(0),math.rad(25 + 7.5 * math.cos(SINE / 32))),.3)

	end
	if MODE == "HACKER" then
		MODECOLOR = Color3.fromRGB(0,math.random(0,255),0)
		MODESONG = 481104377
		if ATTACK == false then
			Speed = 20
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil



		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
				rwing6.Parent = nil

LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
Truss.Parent = nil
anti.Parent = nil
  

		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "KRUMP" then
		MODECOLOR = rainbowcolor
		MODESONG = 1511734302
		if ATTACK == false then
			Speed = 20
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil



		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
				rwing6.Parent = nil

LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
Truss.Parent = nil
anti.Parent = nil
  

		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "BLOODWATER" then
		MODECOLOR = C3(100*sick.PlaybackLoudness/10000,0,0)
		MODESONG = 2256171111
		if ATTACK == false then
			Speed = 15
		end
		Banisher.Parent = Character
		lwing1.Parent = Character
sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
				rwing6.Parent = nil
LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
Truss.Parent = nil
anti.Parent = nil
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "MYSTERY" then
		MODECOLOR = C3(100*sick.PlaybackLoudness/10000,0,100*sick.PlaybackLoudness/10000)
		MODESONG = 3329947102
		if ATTACK == false then
			Speed = 15
		end
		Banisher.Parent = Character
		lwing1.Parent = Character
		sick.PlaybackSpeed = 1.12
		Bladee.Parent = nil
		SBGUN.Parent = nil
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
		LIGHTINGCANNON.Parent = nil
		immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "Ascensionist" then
		MODECOLOR = Color3.fromRGB(180, 210, 228)
		MODESONG = 4848647491
		if ATTACK == false then
			Speed = 15
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
		sick.PlaybackSpeed = 1
		Bladee.Parent = nil
		SBGUN.Parent = nil
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
		LIGHTINGCANNON.Parent = nil
		immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = Character
		anti.Parent = nil
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "WARYRGMA" then
		MODECOLOR = C3(100*sick.PlaybackLoudness/10000,0,0)
		MODESONG = 5985681772
		if ATTACK == false then
			Speed = 15
		end
		Banisher.Parent = Character
		lwing1.Parent = Character
		sick.PlaybackSpeed = 1
		Bladee.Parent = nil
		SBGUN.Parent = nil



		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil

		LIGHTINGCANNON.Parent = nil
		immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil


		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "ECHOV1" then
		MODECOLOR = C3(100*sick.PlaybackLoudness/10000,0,0)
		MODESONG = 573736432
		if ATTACK == false then
			Speed = 16
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
		sick.PlaybackSpeed = 1
		Bladee.Parent = nil
		SBGUN.Parent = nil
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "ECHOV2" then
		MODECOLOR = Color3.new(sick.PlaybackLoudness/500,0,0)
		MODESONG = 5467702043
		if ATTACK == false then
			Speed = 16
		end
		Banisher.Parent = Character
		lwing1.Parent = Character
		sick.PlaybackSpeed = 1
		Bladee.Parent = nil
		SBGUN.Parent = nil
		
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
		
LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "SYSTEM Ę̴̡̧͔̘͓̫̖͕̱̮̜̤̫͎̿̍̊̀̐̋̄͂͑̒̚͠Ȓ̸͎̳̭̱̮̱͔͙̭̫͕́́͜͝Ȑ̷͚͍̟͔̠̰̞̗̬͔̍̍͑͒̿͂͛̈́͘͜ͅO̷͍̹̯͝R̴̢̺̖̳̥͍̙̝̯͓̲̺̘̱̊̏͌̾̑̓̀̐͑̈́̓̚͘͝" then
		MODECOLOR = Color3.fromRGB(0,math.random(0,255),0)
		MODESONG = 2922488492
		if ATTACK == false then
			Speed = 50
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = Character
		lwing1.Parent = Character
sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil



		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
				rwing6.Parent = nil

LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
Truss.Parent = nil
anti.Parent = nil
  

		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 - 3600 * COS(sine / 720))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 - 3600 * COS(sine / 720))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 - 3600 * COS(sine / 720))),.3)
	end
	if MODE == "K I L L B O T" then
		MODECOLOR = Color3.fromRGB(0,math.random(0,255),0)
		MODESONG = 165563829
		if ATTACK == false then
			Speed = 100
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = Character
		lwing1.Parent = Character
sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil



		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
		
LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
Truss.Parent = nil
anti.Parent = nil
		 
		  

		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 - 3600 * COS(sine / 720))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 - 3600 * COS(sine / 720))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 - 3600 * COS(sine / 720))),.3)
	end
	if MODE == "DR34M5" then
		MODECOLOR = C3(100*sick.PlaybackLoudness/10000,0,0)
		MODESONG = 6496316621
		if ATTACK == false then
			Speed = 150
		end
		if HITFLOOR ~= nil then
		end
		sick.PlaybackSpeed = 0.80
		Banisher.Parent = Character
		lwing1.Parent = Character
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
		
LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil
		 
		  

		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 - 3600 * COS(sine / 720))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 - 3600 * COS(sine / 720))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 - 3600 * COS(sine / 720))),.3)
	end
	if MODE == "DR34M5 V2" then
		MODECOLOR = Color3.new(sick.PlaybackLoudness/500,0,0)
		MODESONG = 5333768811
		if ATTACK == false then
			Speed = 150
		end
		if HITFLOOR ~= nil then
		end
		sick.PlaybackSpeed = 0.80
		Banisher.Parent = Character
		lwing1.Parent = Character
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
		
LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil



		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),0.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(0 - 3600 * COS(sine / 720))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(120 - 3600 * COS(sine / 720))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 1.5 * COS(sine / 360),-0.25 - 0.5 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-120 - 3600 * COS(sine / 720))),.3)
	end

		if MODE == "RELAX" then
		MODECOLOR = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		MODESONG = 4876927182
			if ATTACK == false then
				Speed = 50
			end
			if HITFLOOR ~= nil then
			end
			Banisher.Parent = Character
			lwing1.Parent = nil
			lwing2.Parent = nil
			lwing3.Parent = nil
			lwing4.Parent = nil
			lwing5.Parent = nil
			lwing6.Parent = nil
			rwing1.Parent = Character
			rwing2.Parent = Character
			rwing3.Parent = Character
			rwing4.Parent = nil
			rwing5.Parent = nil
					rwing6.Parent = nil

LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
Truss.Parent = nil
anti.Parent = nil
  

		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

			lwing1weld.C1=Clerp(lwing1weld.C1,cf(2,0,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(5 + 10 * COS(sine / 32)),RAD(0),RAD(12.5 + 5 * COS(sine / 32))),.3)
			lwing2weld.C1=Clerp(lwing2weld.C1,cf(3,1,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(10 + 15 * COS(sine / 32)),RAD(0),RAD(25 + 7.5 * COS(sine / 32))),.3)
			lwing3weld.C1=Clerp(lwing3weld.C1,cf(3.75,2,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(15 + 20 * COS(sine / 32)),RAD(0),RAD(37.5 + 10 * COS(sine / 32))),.3)
			rwing1weld.C1=Clerp(rwing1weld.C1,cf(-2,0,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(5 + 10 * COS(sine / 32)),RAD(0),RAD(-12.5 - 5 * COS(sine / 32))),.3)
			rwing2weld.C1=Clerp(rwing2weld.C1,cf(-3,1,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(10 + 15 * COS(sine / 32)),RAD(0),RAD(-25 - 7.5 * COS(sine / 32))),.3)
			rwing3weld.C1=Clerp(rwing3weld.C1,cf(-3.75,2,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(15 + 20 * COS(sine / 32)),RAD(0),RAD(-37.5 - 10 * COS(sine / 32))),.3)
	end
	if MODE == "wastelands" then
		MODECOLOR = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		MODESONG = 1547042045
		if ATTACK == false then
			Speed = 50
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = nil
		lwing2.Parent = nil
		lwing3.Parent = nil
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
		LIGHTINGCANNON.Parent = nil
		immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)
		lwing1weld.C1=Clerp(lwing1weld.C1,cf(2,0,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(5 + 10 * COS(sine / 32)),RAD(0),RAD(12.5 + 5 * COS(sine / 32))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(3,1,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(10 + 15 * COS(sine / 32)),RAD(0),RAD(25 + 7.5 * COS(sine / 32))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(3.75,2,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(15 + 20 * COS(sine / 32)),RAD(0),RAD(37.5 + 10 * COS(sine / 32))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(-2,0,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(5 + 10 * COS(sine / 32)),RAD(0),RAD(-12.5 - 5 * COS(sine / 32))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(-3,1,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(10 + 15 * COS(sine / 32)),RAD(0),RAD(-25 - 7.5 * COS(sine / 32))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(-3.75,2,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(15 + 20 * COS(sine / 32)),RAD(0),RAD(-37.5 - 10 * COS(sine / 32))),.3)
	end
	if MODE == "DEPRESSION" then
		MODECOLOR = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		MODESONG = 2510287474 
		if ATTACK == false then
			Speed = 25
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = Character
		sick.PlaybackSpeed = 0.85
		lwing1.Parent = nil
		lwing2.Parent = nil
		lwing3.Parent = nil
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
		
LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil
		  

		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(2,0,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(5 + 10 * COS(sine / 32)),RAD(0),RAD(12.5 + 5 * COS(sine / 32))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(3,1,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(10 + 15 * COS(sine / 32)),RAD(0),RAD(25 + 7.5 * COS(sine / 32))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(3.75,2,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(15 + 20 * COS(sine / 32)),RAD(0),RAD(37.5 + 10 * COS(sine / 32))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(-2,0,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(5 + 10 * COS(sine / 32)),RAD(0),RAD(-12.5 - 5 * COS(sine / 32))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(-3,1,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(10 + 15 * COS(sine / 32)),RAD(0),RAD(-25 - 7.5 * COS(sine / 32))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(-3.75,2,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(15 + 20 * COS(sine / 32)),RAD(0),RAD(-37.5 - 10 * COS(sine / 32))),.3)
	end
	if MODE == "his theme..." then
		MODECOLOR = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		MODESONG = 616985502 
		if ATTACK == false then
			Speed = 25
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = Character
		sick.PlaybackSpeed = 0.85
		lwing1.Parent = nil
		lwing2.Parent = nil
		lwing3.Parent = nil
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil

		LIGHTINGCANNON.Parent = nil
		immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil


		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(2,0,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(5 + 10 * COS(sine / 32)),RAD(0),RAD(12.5 + 5 * COS(sine / 32))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(3,1,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(10 + 15 * COS(sine / 32)),RAD(0),RAD(25 + 7.5 * COS(sine / 32))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(3.75,2,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(15 + 20 * COS(sine / 32)),RAD(0),RAD(37.5 + 10 * COS(sine / 32))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(-2,0,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(5 + 10 * COS(sine / 32)),RAD(0),RAD(-12.5 - 5 * COS(sine / 32))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(-3,1,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(10 + 15 * COS(sine / 32)),RAD(0),RAD(-25 - 7.5 * COS(sine / 32))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(-3.75,2,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(15 + 20 * COS(sine / 32)),RAD(0),RAD(-37.5 - 10 * COS(sine / 32))),.3)
	end
	if MODE == "heart broken" then
		MODECOLOR = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		MODESONG = 5496404328
		if ATTACK == false then
			Speed = 25 
		end
		if HITFLOOR ~= nil then
		end
		sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil


		Banisher.Parent = Character
		lwing1.Parent = nil
		lwing2.Parent = nil
		lwing3.Parent = nil
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
		
LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil


		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(2,0,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(5 + 10 * COS(sine / 32)),RAD(0),RAD(12.5 + 5 * COS(sine / 32))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(3,1,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(10 + 15 * COS(sine / 32)),RAD(0),RAD(25 + 7.5 * COS(sine / 32))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(3.75,2,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(15 + 20 * COS(sine / 32)),RAD(0),RAD(37.5 + 10 * COS(sine / 32))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(-2,0,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(5 + 10 * COS(sine / 32)),RAD(0),RAD(-12.5 - 5 * COS(sine / 32))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(-3,1,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(10 + 15 * COS(sine / 32)),RAD(0),RAD(-25 - 7.5 * COS(sine / 32))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(-3.75,2,0)*angles(RAD(0),RAD(0),RAD(0))*angles(RAD(15 + 20 * COS(sine / 32)),RAD(0),RAD(-37.5 - 10 * COS(sine / 32))),.3)
	end
	if MODE == "Voided" then
		MODECOLOR = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100)
		MODESONG = 2722935436
		if ATTACK == false then
			Speed = 50
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = Character
		lwing1.Parent = Character
		sick.PlaybackSpeed = 1
		Bladee.Parent = nil
		SBGUN.Parent = nil



		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
		
LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil


		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "GODCAT" then
		MODECOLOR = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		MODESONG = 1416035124
		if ATTACK == false then
			Speed = 16
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = Character
		lwing1.Parent = Character
sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
				rwing6.Parent = nil
LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
Truss.Parent = nil
anti.Parent = nil
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)
		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "C R A Z Y" then
		MODECOLOR = Color3.fromRGB(MRANDOM(1,255),MRANDOM(1,255),MRANDOM(1,255))
		MODESONG = 928378752
		if ATTACK == false then
			Speed = 300
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = Character
		lwing1.Parent = Character
		sick.PlaybackSpeed = 1
		Bladee.Parent = nil
		SBGUN.Parent = nil
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
		LIGHTINGCANNON.Parent = nil
		immortalgun.Parent = nil
		VODKA.Parent = nil
		Truss.Parent = nil
		anti.Parent = nil
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)
		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "MY DREAMS" then
		MODECOLOR =  Color3.new(sick.PlaybackLoudness/0.333333, 1, 1)
		MODESONG = 2423003084
		if ATTACK == false then
			Speed = 16
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
		sick.PlaybackSpeed = 1
		Bladee.Parent = nil
		SBGUN.Parent = nil
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = Character
		lwing5.Parent = Character
		lwing6.Parent = Character
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = Character
		rwing5.Parent = Character
		rwing6.Parent = Character
		LIGHTINGCANNON.Parent = nil
		immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
		anti.Parent = nil
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)
		lwing1weld.C1=Clerp(lwing1weld.C1,CFrame.new(2,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(5 + 10 * math.cos(SINE / 32)),math.rad(0),math.rad(12.5 + 5 * math.cos(SINE / 32))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,CFrame.new(3,1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(10 + 15 * math.cos(SINE / 32)),math.rad(0),math.rad(25 + 7.5 * math.cos(SINE / 32))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,CFrame.new(3.75,2,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(15 + 20 * math.cos(SINE / 32)),math.rad(0),math.rad(37.5 + 10 * math.cos(SINE / 32))),.3)
		lwing4weld.C1=Clerp(lwing4weld.C1,CFrame.new(4.75,3,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(20 + 25 * math.cos(SINE / 32)),math.rad(0),math.rad(50 + 12.5 * math.cos(SINE / 32))),.3)
		lwing5weld.C1=Clerp(lwing5weld.C1,CFrame.new(5.75,4,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(25 + 30 * math.cos(SINE / 32)),math.rad(0),math.rad(62.5 + 15 * math.cos(SINE / 32))),.3)
		lwing6weld.C1=Clerp(lwing6weld.C1,CFrame.new(6.75,5,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(30 + 35 * math.cos(SINE / 32)),math.rad(0),math.rad(75 + 17.5 * math.cos(SINE / 32))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,CFrame.new(-2,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(5 + 10 * math.cos(SINE / 32)),math.rad(0),math.rad(-12.5 - 5 * math.cos(SINE / 32))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,CFrame.new(-3,1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(10 + 15 * math.cos(SINE / 32)),math.rad(0),math.rad(-25 - 7.5 * math.cos(SINE / 32))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,CFrame.new(-3.75,2,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(15 + 20 * math.cos(SINE / 32)),math.rad(0),math.rad(-37.5 - 10 * math.cos(SINE / 32))),.3)
		rwing4weld.C1=Clerp(rwing4weld.C1,CFrame.new(-4.75,3,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(20 + 25 * math.cos(SINE / 32)),math.rad(0),math.rad(-50 - 12.5 * math.cos(SINE / 32))),.3)
		rwing5weld.C1=Clerp(rwing5weld.C1,CFrame.new(-5.75,4,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(25 + 30 * math.cos(SINE / 32)),math.rad(0),math.rad(-62.5 - 15 * math.cos(SINE / 32))),.3)
		rwing6weld.C1=Clerp(rwing6weld.C1,CFrame.new(-6.75,5,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0))*ANGLES(math.rad(30 + 35 * math.cos(SINE / 32)),math.rad(0),math.rad(-75 - 17.5 * math.cos(SINE / 32))),.3)
	end
	if MODE == "V O D K A" then
		MODECOLOR =  Color3.fromRGB(0,math.random(0,255),0)
		MODESONG = 3581815255
		if ATTACK == false then
			Speed = 16
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
		sick.PlaybackSpeed = 1
		Bladee.Parent = nil
		SBGUN.Parent = nil
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
		LIGHTINGCANNON.Parent = nil
		immortalgun.Parent = nil
VODKA.Parent = Character
		Truss.Parent = nil
		anti.Parent = nil
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)
		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "STUDIO DUMMY" then
		MODECOLOR = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		MODESONG = 3979209289
		if ATTACK == false then
			Speed = 16
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
		sick.PlaybackSpeed = 1
		Bladee.Parent = nil
SBGUN.Parent = Character
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
		
LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil
		SBGUN.Weapon.gun.Color = Color3.fromRGB(MRANDOM(1,255),MRANDOM(1,255),MRANDOM(1,255))
		SBGUN.Weapon.HOLE.Color = Color3.fromRGB(MRANDOM(1,255),MRANDOM(1,255),MRANDOM(1,255))
		SBGUN.Weapon.Handle.Color = Color3.fromRGB(MRANDOM(1,255),MRANDOM(1,255),MRANDOM(1,255))

		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
	end

	if MODE == "G O D" then
		MODECOLOR = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		MODESONG = 151915559
		if ATTACK == false then
			Speed = 16
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
		sick.PlaybackSpeed = 0.85

		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
		rwing6.Parent = nil
		
LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
		Truss.Parent = nil
anti.Parent = nil


		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
	end
	if MODE == "ASRIEL" then
		MODECOLOR = rainbowcolor
		MODESONG = 5603602713
		if ATTACK == false then
			Speed = 16
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil
		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
				rwing6.Parent = nil

LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
Truss.Parent = nil
anti.Parent = nil
		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
	end
	
	if MODE == "MAYHEM" then
		MODECOLOR = Color3.new(8*sick.PlaybackLoudness/100,0,0)
		MODESONG = 407749940
		if ATTACK == false then
			Speed = 16
		end
		if HITFLOOR ~= nil then
		end
		Banisher.Parent = nil
		lwing1.Parent = Character
sick.PlaybackSpeed = 1
Bladee.Parent = nil
SBGUN.Parent = nil


		lwing2.Parent = Character
		lwing3.Parent = Character
		lwing4.Parent = nil
		lwing5.Parent = nil
		lwing6.Parent = nil
		rwing1.Parent = Character
		rwing2.Parent = Character
		rwing3.Parent = Character
		rwing4.Parent = nil
		rwing5.Parent = nil
				rwing6.Parent = nil

LIGHTINGCANNON.Parent = nil
immortalgun.Parent = nil
VODKA.Parent = nil
Truss.Parent = nil
anti.Parent = nil
  
		handlexweld.C1=Clerp(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
		handlexweld.C0=Clerp(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
		rotingweld.C0=Clerp(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 1500 * math.cos(sine / 2000))),1)
		rotingweld2.C0=Clerp(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 1500 * math.cos(sine / 2000))),1)

		HandleWeld.C1 = Clerp(HandleWeld.C1, CF(0,0 + .65 * COS(SINE/40)+ .125 * COS(SINE / 25),0) * ANGLES(RAD(0 + 15 * SIN(SINE / 50)), RAD(-SINE-3*COS(SINE / 25)), RAD(-0 + 15 * SIN(SINE / 50)+ 15 * COS(SINE / 25))), 0.15)
		lwing1weld.C1=Clerp(lwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
		lwing2weld.C1=Clerp(lwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
		lwing3weld.C1=Clerp(lwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
		rwing1weld.C1=Clerp(rwing1weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
		rwing2weld.C1=Clerp(rwing2weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
		rwing3weld.C1=Clerp(rwing3weld.C1,cf(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
	end
	if DoGlitch == true then
		if MRANDOM(1,100) == 1 then
			coroutine.resume(coroutine.create(function()
				VALUE1 = true
				for i=1,25 do
					Swait()
					FT.Parent = Torso
					FRA.Parent = RightArm
					FLA.Parent = LeftArm
					FRL.Parent = RightLeg
					FLL.Parent = LeftLeg
					Humanoid.CameraOffset = VT(MRANDOM(-25,25)/2.5,MRANDOM(-25,25)/2.5,MRANDOM(-25,25)/2.5)/30
					local oof = Instance.new("FlangeSoundEffect",sick)
					for _,v in next, Character:GetDescendants() do
						if(v:IsA'DataModelMesh')then
							v.Offset = VT(math.random(-50,50)/100,math.random(-50,50)/100,math.random(-50,50)/100)
						end
					end	
				end
				VALUE1 = false
				FT.Parent = nil
				FRA.Parent = nil
				FLA.Parent = nil
				FRL.Parent = nil
				FLL.Parent = nil
				for _,v in next, Character:GetDescendants() do
					if(v:IsA'DataModelMesh')then
						v.Offset = VT(0,0,0)
					end
				end
				sick:ClearAllChildren()
				Humanoid.CameraOffset = VT(0,0,0)
			end))

		end
	end
	--Anti Void
	if Torso.Position.Y <= -240 or Torso.Position.Y <= -800 or Torso.Position.Y <= -500 then
		Torso.CFrame = CFrame.new(math.random(-2,2),5,math.random(-2,2)) * (Torso.CFrame-Torso.CFrame.p)
		local bP = Instance.new("BodyPosition",Torso)
		bP.maxForce = Vector3.new(0,1e50,0)
		bP.position = Torso.Position
		delay(1,function()
			bP:Destroy()
		end)
	end	
	pcall(function()
		InstanceToAlter.TextColor3 = Torso.Color
	end)
	pcall(function()
		Character.Name = randomstring()
		end)
	if MODE == "ECHOV1" then
	if WEAPONEQUIPPED == false then
		Blade.Parent = nil
		BackBlade.Parent = Character
		sick.PlaybackSpeed = 1
	else
		Blade.Parent = Character
		BackBlade.Parent = nil
		sick.PlaybackSpeed = .8
	end
	if Bladee.Parent == Character then
		WEAPONEQUIPPED = true
	else
		WEAPONEQUIPPED = false
	end
	if BackBlade.Parent == Character then
		WEAPONEQUIPPED = false
	else
		WEAPONEQUIPPED = true
		end
		end
end


--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--
