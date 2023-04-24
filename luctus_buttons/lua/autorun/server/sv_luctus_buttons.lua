--Luctus Buttons
--Made by OverlordAkise

util.AddNetworkString("luctus_buttons")

function LuctusButtonAllowed(ply)
    if not IsValid(ply) then return false end
    if LUCTUS_BUTTONS_ADMINS[ply:GetUserGroup()] then return true end
    if LUCTUS_BUTTONS_CHECK_RANKS and not LUCTUS_BUTTONS_RANKS[ply:GetUserGroup()] then return false end
    if LUCTUS_BUTTONS_CHECK_JOB and not LUCTUS_BUTTONS_JOBS[team.GetName(ply:Team())] then return false end
    return true
end

local function LuctusNotify(ply,text,typ,duration)
    ply:PrintMessage(HUD_PRINTTALK, text)
    DarkRP.notify(ply,typ,duration,text)
end

net.Receive("luctus_buttons",function(len,ply)
    if not LuctusButtonAllowed(ply) then return end
    local cmd = net.ReadString()
    if not LUCTUS_BUTTONS_BUTTONS[cmd] then return end
    local pressingEnt = Entity(0)
    if LUCTUS_BUTTONS_PLAYERPRESS then
        pressingEnt = ply
    end
    for k,v in pairs(LUCTUS_BUTTONS_BUTTONS[cmd]) do
        LuctusButtonPush(v,pressingEnt)
    end
    LuctusNotify(ply,LUCTUS_BUTTONS_CHATTEXT.."'"..cmd.."'",0,5)
end)

function LuctusButtonPush(name,ply)
    local ent = ply
    if not ply or not IsValid(ply) then
        ent = Entity(0)
    end
    if type(name) == "string" then
        if ents.FindByName(name)[1] and IsValid(ents.FindByName(name)[1]) then
            ents.FindByName(name)[1]:Use(ent)
        end
    else
        if IsValid(ents.GetMapCreatedEntity(name)) then
            ents.GetMapCreatedEntity(name):Use(ent)
        end
    end
end

print("[luctus_buttons] sv loaded")
