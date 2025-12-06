if not pcall(client.create_interface) then
	error("Error: please make sure Allow unsafe scripts is enabled and try again")
	return
end

client.exec("Play ".. "buttons/button9")

------@libs
local ffi = require("ffi")
local c_entity = require("gamesense/entity")
local color = require ("gamesense/color")
local pui = require("gamesense/pui")
local http = require("gamesense/http")
local base64 = require("gamesense/base64")
local clipboard = require("gamesense/clipboard")
local websocket = require("gamesense/websockets")
local vector = require("vector")
local c_entity = require('gamesense/entity')
local json = require("json")


local ffi = require 'ffi' or error("[BLASSED ERROR!] Script cloud not be loaded correctly! Error code: FFI-X . Contact @xonegovno on telegram if problem stays.")
ffi.cdef[[
typedef void*** interface_ptr;
typedef void* (__thiscall* get_client_entity_t)(void*, int);
]]

------@libs

client.exec("Clear")
print("                                                   HAPPY NEW 2026 YEAR!!!!!!")
print(" ")
print(" ")
print(" ")

print("                                                 Welcome Back! Blassed User!")
print("                                                         build:1.7 !!!")


local lua_name = "blassed-yaw"
label22 = ui.new_label("AA", "Anti-aimbot angles", "\a9ECA2AFF~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")





-- #Libraries

local L0 = require 'ffi'
local L1 = require 'bit'
local L2 = require "vector"
local L3 = require "gamesense/antiaim_funcs" or error "https://gamesense.pub/forums/viewtopic.php?id=29665"
local L4 = require "gamesense/surface"
local L5 = require "gamesense/base64" or error("Base64 library required")
local L6 = require "gamesense/clipboard" or error("Clipboard library required")
local L7, L8, L9, L10, L11, L12, L13, L14, L15 = require, pcall, ipairs, pairs, unpack, tonumber, tostring, toticks, totime;
local L16 = { new = L0.new, typeof = L0.typeof, cast = L0.cast, cdef = L0.cdef, sizeof = L0.sizeof, string = L0.string }
local L17 = { loadstring = panorama.loadstring, open = panorama.open }
local L18 = { get = plist.get, set = plist.set }
local L19 = { export = config.export, import = config.import, load = config.load }
local L20 = { flush = database.flush, read = database.read, write = database.write }
local L21 = { arshift = L1.arshift, band = L1.band, bnot = L1.bnot, bor = L1.bor, bswap = L1.bswap, bxor = L1.bxor, lshift = L1.lshift, rol = L1.rol, ror = L1.ror, rshift = L1.rshift, tobit = L1.tobit, tohex = L1.tohex }
local L22 = { byte = string.byte, char = string.char, find = string.find, format = string.format, gmatch = string.gmatch, gsub = string.gsub, len = string.len, lower = string.lower, match = string.match, rep = string.rep, reverse = string.reverse, sub = string.sub, upper = string.upper }
local L23 = { abs = math.abs, acos = math.acos, asin = math.asin, atan = math.atan, atan2 = math.atan2, ceil = math.ceil, cos = math.cos, cosh = math.cosh, deg = math.deg, exp = math.exp, floor = math.floor, fmod = math.fmod, frexp = math.frexp, ldexp = math.ldexp, log = math.log, log10 = math.log10, max = math.max, min = math.min, modf = math.modf, pow = math.pow, rad = math.rad, random = math.random, randomseed = math.randomseed, sin = math.sin, sinh = math.sinh, sqrt = math.sqrt, tan = math.tan, tanh = math.tanh, pi = math.pi }
local L24 = { get = ui.get, is_menu_open = ui.is_menu_open, menu_size = ui.menu_size, menu_position = ui.menu_position, mouse_position = ui.mouse_position, name = ui.name, new_button = ui.new_button, new_checkbox = ui.new_checkbox, new_color_picker = ui.new_color_picker, new_combobox = ui.new_combobox, new_hotkey = ui.new_hotkey, new_label = ui.new_label, new_listbox = ui.new_listbox, new_multiselect = ui.new_multiselect, new_slider = ui.new_slider, new_string = ui.new_string, new_textbox = ui.new_textbox, reference = ui.reference, set = ui.set, set_callback = ui.set_callback, set_visible = ui.set_visible, update = ui.update }
local L25 = { blur = renderer.blur, circle = renderer.circle, circle_outline = renderer.circle_outline, gradient = renderer.gradient, indicator = renderer.indicator, line = renderer.line, load_jpg = renderer.load_jpg, load_png = renderer.load_png, load_rgba = renderer.load_rgba, load_svg = renderer.load_svg, measure_text = renderer.measure_text, rectangle = renderer.rectangle, text = renderer.text, texture = renderer.texture, triangle = renderer.triangle, world_to_screen = renderer.world_to_screen }
local L26 = { absoluteframetime = globals.absoluteframetime, chokedcommands = globals.chokedcommands, commandack = globals.commandack, curtime = globals.curtime, framecount = globals.framecount, frametime = globals.frametime, lastoutgoingcommand = globals.lastoutgoingcommand, mapname = globals.mapname, maxplayers = globals.maxplayers, oldcommandack = globals.oldcommandack, realtime = globals.realtime, tickcount = globals.tickcount, tickinterval = globals.tickinterval }
local L27 = { get_all = entity.get_all, get_bounding_box = entity.get_bounding_box, get_classname = entity.get_classname, get_esp_data = entity.get_esp_data, get_game_rules = entity.get_game_rules, get_local_player = entity.get_local_player, get_origin = entity.get_origin, get_player_name = entity.get_player_name, get_player_resource = entity.get_player_resource, get_player_weapon = entity.get_player_weapon, get_players = entity.get_players, get_prop = entity.get_prop, get_steam64 = entity.get_steam64, hitbox_position = entity.hitbox_position, is_alive = entity.is_alive, is_dormant = entity.is_dormant, is_enemy = entity.is_enemy, new_prop = entity.new_prop, set_prop = entity.set_prop }
local L28 = { camera_angles = _G.client.camera_angles, camera_position = _G.client.camera_position, color_log = _G.client.color_log, create_interface = _G.client.create_interface, current_threat = _G.client.current_threat, delay_call = _G.client.delay_call, draw_debug_text = _G.client.draw_debug_text, draw_hitboxes = _G.client.draw_hitboxes, error_log = _G.client.error_log, exec = _G.client.exec, eye_position = _G.client.eye_position, find_signature = _G.client.find_signature, fire_event = _G.client.fire_event, get_cvar = _G.client.get_cvar, get_model_name = _G.client.get_model_name, key_state = _G.client.key_state, latency = _G.client.latency, log = _G.client.log, random_float = _G.client.random_float, random_int = _G.client.random_int, real_latency = _G.client.real_latency, register_esp_flag = _G.client.register_esp_flag, reload_active_scripts = _G.client.reload_active_scripts, request_full_update = _G.client.request_full_update, scale_damage = _G.client.scale_damage, screen_size = _G.client.screen_size, set_clan_tag = _G.client.set_clan_tag, set_event_callback = _G.client.set_event_callback, system_time = _G.client.system_time, timestamp = _G.client.timestamp, trace_bullet = _G.client.trace_bullet, trace_line = _G.client.trace_line, unix_time = _G.client.unix_time, unset_event_callback = _G.client.unset_event_callback, update_player_list = _G.client.update_player_list, userid_to_entindex = _G.client.userid_to_entindex, visible = _G.client.visible }
local L29 = L16.typeof('void***')
local L30 = L28.create_interface('client.dll', 'VClientEntityList003') or error('VClientEntityList003 wasnt found', 2)
local L31 = L16.cast(L29, L30) or error('rawientitylist is nil', 2)
local L32 = L16.cast('void*(__thiscall*)(void*, int)', L31[0][3]) or error('get_client_entity is nil', 2)
local L33 = L16.cast('void*(__thiscall*)(void*, int)', L31[0][0]) or error('get_client_networkable_t is nil', 2)
L16.cdef([[
    struct animation_layer_t {
        char  pad_0000[20];
        uint32_t m_nOrder; //0x0014
        uint32_t m_nSequence; //0x0018
        float m_flPrevCycle; //0x001C
        float m_flWeight; //0x0020
        float m_flWeightDeltaRate; //0x0024
        float m_flPlaybackRate; //0x0028
        float m_flCycle; //0x002C
        void *m_pOwner; //0x0030 // player's thisptr
        char  pad_0038[4]; //0x0034
    };

    struct animstate_t1 {
        char pad[ 3 ];
        char m_bForceWeaponUpdate; //0x4
        char pad1[ 91 ];
        void* m_pBaseEntity; //0x60
        void* m_pActiveWeapon; //0x64
        void* m_pLastActiveWeapon; //0x68
        float m_flLastClientSideAnimationUpdateTime; //0x6C
        int m_iLastClientSideAnimationUpdateFramecount; //0x70
        float m_flAnimUpdateDelta; //0x74
        float m_flEyeYaw; //0x78
        float m_flPitch; //0x7C
        float m_flGoalFeetYaw; //0x80
        float m_flCurrentFeetYaw; //0x84
        float m_flCurrentTorsoYaw; //0x88
        float m_flUnknownVelocityLean; //0x8C
        float m_flLeanAmount; //0x90
        char pad2[ 4 ];
        float m_flFeetCycle; //0x98
        float m_flFeetYawRate; //0x9C
        char pad3[ 4 ];
        float m_fDuckAmount; //0xA4
        float m_fLandingDuckAdditiveSomething; //0xA8
        char pad4[ 4 ];
        float m_vOriginX; //0xB0
        float m_vOriginY; //0xB4
        float m_vOriginZ; //0xB8
        float m_vLastOriginX; //0xBC
        float m_vLastOriginY; //0xC0
        float m_vLastOriginZ; //0xC4
        float m_vVelocityX; //0xC8
        float m_vVelocityY; //0xCC
        char pad5[ 4 ];
        float m_flUnknownFloat1; //0xD4
        char pad6[ 8 ];
        float m_flUnknownFloat2; //0xE0
        float m_flUnknownFloat3; //0xE4
        float m_flUnknown; //0xE8
        float m_flSpeed2D; //0xEC
        float m_flUpVelocity; //0xF0
        float m_flSpeedNormalized; //0xF4
        float m_flFeetSpeedForwardsOrSideWays; //0xF8
        float m_flFeetSpeedUnknownForwardOrSideways; //0xFC
        float m_flTimeSinceStartedMoving; //0x100
        float m_flTimeSinceStoppedMoving; //0x104
        bool m_bOnGround; //0x108
        bool m_bInHitGroundAnimation; //0x109
        char m_pad[2];
        float m_flJumpToFall;
        float m_flTimeSinceInAir; //0x10A
        float m_flLastOriginZ; //0x10E
        float m_flHeadHeightOrOffsetFromHittingGroundAnimation; //0x112
        float m_flStopToFullRunningFraction; //0x116
        char pad7[ 4 ]; //0x11A
        float m_flMagicFraction; //0x11E
        char pad8[ 60 ]; //0x122
        float m_flWorldForce; //0x15E
        char pad9[ 462 ]; //0x162
        float m_flMaxYaw; //0x334
    };

]])



-- #sex
local L647 = function(L631)
    local L632 = L27.get_players(true)
    if #L632 == 0 then
        L71 = { cur = {}, prev = {}, pre_prev = {}, pre_pre_prev = {} }
        return nil
    end;
    for L633, L634 in L9(L632) do
        if L27.is_alive(L634) and not L27.is_dormant(L634) then
            local L635 = 0;
            local L636 = L27.get_esp_data(L634).flags or 0; 
            if L21.band(L636, L21.lshift(1, 17)) ~= 0 then
                L635 = L503(L27.get_prop(L634, "m_flSimulationTime")) - 14
            else
                L635 = L503(L27.get_prop(L634, "m_flSimulationTime"))
            end;
            if L71.cur[L634] == nil or L635 - L71.cur[L634].simtime >= 1 then
                L71.pre_pre_prev[L634] = L71.pre_prev[L634]
                L71.pre_prev[L634] = L71.prev[L634]
                L71.prev[L634] = L71.cur[L634]
                local L637 = L2(L27.get_prop(L631, "m_vecOrigin"))
                local L638 = L2(L27.get_prop(L634, "m_angEyeAngles"))
                local L639 = L2(L27.get_prop(L634, "m_vecOrigin"))
                local L640 = L23.floor(L138(L638.y - calculate_angle(L637, L639)))
                local L641 = L27.get_prop(L634, "m_flDuckAmount")
                local L642 = L21.band(L27.get_prop(L634, "m_fFlags"), 1) == 1;
                local L643 = L2(L27.get_prop(L634, 'm_vecVelocity')):length2d()
                local L644 = L642 and (L641 == 1 and "duck" or (L643 > 1.2 and "running" or "standing")) or "air"
                local L645 = L27.get_player_weapon(L634)
                local L646 = L27.get_prop(L645, "m_fLastShotTime")
                L71.cur[L634] = { id = L634, origin = L2(L27.get_origin(L634)), pitch = L638.x, yaw = L640, yaw_backwards = L23.floor(L138(calculate_angle(L637, L639))), simtime = L635, stance = L644, esp_flags = L27.get_esp_data(L634).flags or 0, last_shot_time = L646 }
            end
        end
    end
end;
local L648 = false;
local L672 = function(L649)
    if not L27.is_alive(L649) then
        if L648 then
        end;
        L648 = false;
        return
    end;
    local L650 = L27.get_players(true)
    if #L650 == 0 then
        return nil
    end;
    for L651, L652 in L9(L650) do
        if L27.is_alive(L652) and not L27.is_dormant(L652) then
            if L71.cur[L652] ~= nil and L71.prev[L652] ~= nil and L71.pre_prev[L652] ~= nil and L71.pre_pre_prev[L652] ~= nil then
                local L653 = nil;
                local L654 = nil;
                local L655;
                local L656;
                local L657 = L23.abs(L138(L71.cur[L652].yaw - L71.prev[L652].yaw))
                local L658 = L138(L71.cur[L652].yaw - L71.prev[L652].yaw)
                if L71.cur[L652].last_shot_time ~= nil then
                    L655 = L26.curtime() - L71.cur[L652].last_shot_time;
                    L656 = L655 / L26.tickinterval()
                    L654 = L656 <= L23.floor(0.2 / L26.tickinterval())
                end;
                if L24.get(L90["debug"][1]) == "desync" then
                    L648 = true;
                    local L659 = L71.cur[L652].yaw;
                    local L660 = L71.prev[L652].yaw;
                    local L661 = L71.pre_prev[L652].yaw;
                    local L662 = L71.pre_pre_prev[L652].yaw;
                    local L663 = L138(L659 - L660)
                    local L664 = L138(L659 - L661)
                    local L665 = L138(L660 - L662)
                    local L666 = L138(L660 - L661)
                    local L667 = L138(L661 - L662)
                    local L668 = L138(L662 - L659)
                    local L669 = L138(L657 - L668)
                    if L654 and L23.abs(L23.abs(L71.cur[L652].pitch) - L23.abs(L71.prev[L652].pitch)) > 30 and L71.cur[L652].pitch < L71.prev[L652].pitch then
                        L653 = "ON SHOT"
                    else
                        if L23.abs(L71.cur[L652].pitch) > 60 then
                            if L657 > 30 and L23.abs(L664) < 15 and L23.abs(L665) < 15 then
                                L653 = "[!!]"
                            elseif L23.abs(L663) > 15 or L23.abs(L666) > 15 or L23.abs(L667) > 15 or L23.abs(L668) > 15 then
                                L653 = "[!!!]"
                            end
                        end
                    end;
                    if L24.get(L90["debug"][5]) and L24.get(L90["debug"][6]) then
                        if L653 ~= "ON SHOT" then
                            L18.set(L652, "Add to whitelist", true)
                        else
                            L18.set(L652, "Add to whitelist", false)
                        end
                    else
                        L18.set(L652, "Add to whitelist", false)
                    end;
                    if L147[L652] and L653 ~= nil then
                        if L71.cur[L652].stance == "standing" and #L73[L652].stand < 20 then
                            table.insert(L73[L652].stand_type, L653)
                            if L653 == "[!!!]" and L657 > 5 then
                                table.insert(L73[L652].stand, L657)
                            else
                                if L653 == "[!!]" then
                                    table.insert(L73[L652].stand, L657)
                                end
                            end
                        elseif L71.cur[L652].stance == "running" and #L73[L652].run < 20 then
                            table.insert(L73[L652].run_type, L653)
                            if L653 == "[!!!]" and L657 > 5 then
                                table.insert(L73[L652].run, L657)
                            else
                                if L653 == "[!!]" then
                                    table.insert(L73[L652].run, L657)
                                end
                            end
                        elseif L71.cur[L652].stance == "air" and #L73[L652].air < 20 then
                            table.insert(L73[L652].air_type, L653)
                            if L653 == "[!!!]" and L657 > 5 then
                                table.insert(L73[L652].air, L657)
                            else
                                if L653 == "[!!]" then
                                    table.insert(L73[L652].air, L657)
                                end
                            end
                        elseif L71.cur[L652].stance == "duck" and #L73[L652].duck < 20 then
                            table.insert(L73[L652].duck_type, L653)
                            if L653 == "[!!!]" and L657 > 5 then
                                table.insert(L73[L652].duck, L657)
                            else
                                if L653 == "[!!]" then
                                    table.insert(L73[L652].duck, L657)
                                end
                            end
                        end
                    end;
                    if L71.cur[L652].pitch >= 78 and L71.prev[L652].pitch > 78 then
                        if L653 == "[!!!]" or L653 == "[!!]" then
                            if L653 == "[!!]" then
                                if L138(L659 - L660) > 0 then
                                    L18.set(L652, "Force body yaw", true)
                                    L18.set(L652, "Force body yaw value", 60)
                                elseif L138(L659 - L660) < 0 then
                                    L18.set(L652, "Force body yaw", true)
                                    L18.set(L652, "Force body yaw value", -60)
                                end
                            elseif L653 == "[!!!]" then
                                local L670 = 0;
                                local L671 = 0;
                                if (L660 == L138(L659 - L657) or L660 == L138(L659 + L657)) and (L661 == L138(L659 + L657) or L661 == L659) and (L661 == L138(L659 + L657) or L661 == L659) then
                                    L18.set(L652, "Force body yaw", true)
                                    L18.set(L652, "Force body yaw value", 0)
                                    L670 = L659
                                else
                                    if L659 ~= L670 then
                                        if L659 < 0 then
                                            L18.set(L652, "Force body yaw", true)
                                            L18.set(L652, "Force body yaw value", 60)
                                        else
                                            L18.set(L652, "Force body yaw", true)
                                            L18.set(L652, "Force body yaw value", -60)
                                        end
                                    end
                                end
                            end
                        else
                            L18.set(L652, "Force body yaw", false)
                            L18.set(L652, "Force body yaw value", 0)
                        end
                    end
                elseif L24.get(L90["debug"][1]) == "---" then
                    L653 = nil;
                    L648 = true;
                    break
                elseif L24.get(L90["debug"][1]) == "off" then
                    if L648 then
                        L653 = nil;
                        L24.set(L127.plist.reset, true)
                        L18.set(L652, "Force body yaw", false)
                        L18.set(L652, "Force body yaw value", 0)
                        L648 = false
                    end
                end;
                L72[L652] = { anti_aim_type = L653, yaw_delta = L658 }
            end
        else
            m_fired = false;
            time_difference = 0;
            ticks_since_last_shot = 0
        end
    end
end





local data = database.read("blassed-yaw") or {}
data.load_count = (data.load_count or 0) + 1
data.defensive_window_x = data.defensive_window_x or nil
data.defensive_window_y = data.defensive_window_y or nil
data.velocity_window_x = data.velocity_window_x or nil
data.velocity_window_y = data.velocity_window_y or nil
client.set_event_callback("shutdown", function()
database.write("blassed-yaw", data)
end)
local t_player_models = {

    ["swmotr5"] = "models/player/custom_player/eminem/gta_sa/swmotr5.mdl",
    ["ballas1"] = "models/player/custom_player/eminem/gta_sa/ballas1.mdl",
    ["bmybar"] = "models/player/custom_player/eminem/gta_sa/bmybar.mdl",
    ["fam1"] = "models/player/custom_player/eminem/gta_sa/fam1.mdl",
    ["somyst"] = "models/player/custom_player/eminem/gta_sa/somyst.mdl",
    ["vwfypro"] = "models/player/custom_player/eminem/gta_sa/vwfypro.mdl",
    ["wuzimu"] = "models/player/custom_player/eminem/gta_sa/wuzimu.mdl",
    
    ["artic"] = "models/player/custom_player/eminem/css/t_arctic.mdl",
    ["haku"] = "models/player/custom_player/maoling/vocaloid/haku/uniform/haku.mdl", 
        
}

local ct_player_models = {

    ["swmotr5"] = "models/player/custom_player/eminem/gta_sa/swmotr5.mdl",
    ["ballas1"] = "models/player/custom_player/eminem/gta_sa/ballas1.mdl",
    ["bmybar"] = "models/player/custom_player/eminem/gta_sa/bmybar.mdl",
    ["fam1"] = "models/player/custom_player/eminem/gta_sa/fam1.mdl",
    ["somyst"] = "models/player/custom_player/eminem/gta_sa/somyst.mdl",
    ["vwfypro"] = "models/player/custom_player/eminem/gta_sa/vwfypro.mdl",
    ["wuzimu"] = "models/player/custom_player/eminem/gta_sa/wuzimu.mdl",
    
    ["artic"] = "models/player/custom_player/eminem/css/t_arctic.mdl", 
    ["haku"] = "models/player/custom_player/maoling/vocaloid/haku/uniform/haku.mdl", 

}

local function contains(tab, val)
	for i = 1, #tab do
		if tab[i] == val then
			return true
		end
	end
	return false
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local ffi = require("ffi")

ffi.cdef[[
    typedef struct 
    {
    	void*   fnHandle;        
    	char    szName[260];     
    	int     nLoadFlags;      
    	int     nServerCount;    
    	int     type;            
    	int     flags;           
    	float  vecMins[3];       
    	float  vecMaxs[3];       
    	float   radius;          
    	char    pad[0x1C];       
    }model_t;
    
    typedef int(__thiscall* get_model_index_t)(void*, const char*);
    typedef const model_t(__thiscall* find_or_load_model_t)(void*, const char*);
    typedef int(__thiscall* add_string_t)(void*, bool, const char*, int, const void*);
    typedef void*(__thiscall* find_table_t)(void*, const char*);
    typedef void(__thiscall* set_model_index_t)(void*, int);
    typedef int(__thiscall* precache_model_t)(void*, const char*, bool);
    typedef void*(__thiscall* get_client_entity_t)(void*, int);
]]

local class_ptr = ffi.typeof("void***")

local rawientitylist = client.create_interface("client_panorama.dll", "VClientEntityList003") or error("VClientEntityList003 wasnt found", 2)
local ientitylist = ffi.cast(class_ptr, rawientitylist) or error("rawientitylist is nil", 2)
local get_client_entity = ffi.cast("get_client_entity_t", ientitylist[0][3]) or error("get_client_entity is nil", 2)

local rawivmodelinfo = client.create_interface("engine.dll", "VModelInfoClient004") or error("VModelInfoClient004 wasnt found", 2)
local ivmodelinfo = ffi.cast(class_ptr, rawivmodelinfo) or error("rawivmodelinfo is nil", 2)
local get_model_index = ffi.cast("get_model_index_t", ivmodelinfo[0][2]) or error("get_model_info is nil", 2)
local find_or_load_model = ffi.cast("find_or_load_model_t", ivmodelinfo[0][39]) or error("find_or_load_model is nil", 2)

local rawnetworkstringtablecontainer = client.create_interface("engine.dll", "VEngineClientStringTable001") or error("VEngineClientStringTable001 wasnt found", 2)
local networkstringtablecontainer = ffi.cast(class_ptr, rawnetworkstringtablecontainer) or error("rawnetworkstringtablecontainer is nil", 2)
local find_table = ffi.cast("find_table_t", networkstringtablecontainer[0][3]) or error("find_table is nil", 2)

local cl_fullupdate = cvar.cl_fullupdate

local model_names = {}
local model_names_ct = {}

for k,v in pairs(t_player_models) do
    table.insert(model_names, k)
end

for k,v in pairs(ct_player_models) do
    table.insert(model_names_ct, k)
end

local function precache_model(modelname)
    local rawprecache_table = find_table(networkstringtablecontainer, "modelprecache") or error("couldnt find modelprecache", 2)
    if rawprecache_table then 
        local precache_table = ffi.cast(class_ptr, rawprecache_table) or error("couldnt cast precache_table", 2)
        if precache_table then 
            local add_string = ffi.cast("add_string_t", precache_table[0][8]) or error("add_string is nil", 2)

            find_or_load_model(ivmodelinfo, modelname)
            local idx = add_string(precache_table, false, modelname, -1, nil)
            if idx == -1 then 
                return false
            end
        end
    end
    return true
end

local function set_model_index(entity, idx)
    local raw_entity = get_client_entity(ientitylist, entity)
    if raw_entity then 
        local gce_entity = ffi.cast(class_ptr, raw_entity)
        local a_set_model_index = ffi.cast("set_model_index_t", gce_entity[0][75])
        if a_set_model_index == nil then 
            error("set_model_index is nil")
        end
        a_set_model_index(gce_entity, idx)
    end
end

local function change_model(ent, model)
    if model:len() > 5 then 
        if precache_model(model) == false then 
            error("invalid model", 2)
        end
        local idx = get_model_index(ivmodelinfo, model)
        if idx == -1 then 
            return
        end
        set_model_index(ent, idx)
    end
end

    update_skins = true

local elements = {
button		= { type = "function",	arg = 2, unsavable = true },
checkbox	= { type = "boolean",	arg = 1, init = false	},
color_picker= { type = "table",		arg = 5 },
combobox	= { type = "string",	arg = 2, variable = true },
hotkey		= { type = "table",		arg = 3, enum = {[0] = "Always on", "On hotkey", "Toggle", "Off hotkey"} },
label		= { type = "string",	arg = 1, unsavable = true },
listbox		= { type = "number",	arg = 2, init = 0, variable = true },
multiselect	= { type = "table",		arg = 2, init = {}, variable = true },
slider		= { type = "number",	arg = 8 },
textbox		= { type = "string",	arg = 1, init = "" },
string		= { type = "string",	arg = 2, init = "" },
unknown		= { type = "string",	arg = 2, init = "" } -- new_string type
}

local weapons = { "Global", "G3SG1 / SCAR-20", "SSG 08", "AWP", "R8 Revolver", "Desert Eagle", "Pistol", "Zeus", "Rifle", "Shotgun", "SMG", "Machine gun" }

calculateGradien = function(color1, color2, text, speed)

local output = ''

local curtime = globals.curtime()

for idx = 0, #text - 1 do  
local x = idx * 10
local wave = math.cos(8 * speed * curtime + x / 30)

-- Интерполяция цвета
local r = lerp(color1[1], color2[1], clamp(wave, 0, 1))
local g = lerp(color1[2], color2[2], clamp(wave, 0, 1))
local b = lerp(color1[3], color2[3], clamp(wave, 0, 1))
local a = color1[4] 

-- Формируем цвет в HEX формате
local color = ('\a%02x%02x%02x%02x'):format(r, g, b, a)

output = output .. color .. text:sub(idx + 1, idx + 1) -- Индекс + 1 для Lua
end

return output
end

local function mcopy (o)
if type(o) ~= "table" then return o end
local res = {} for k, v in pairs(o) do res[mcopy(k)] = mcopy(v) end return res
end

local table, math, string = mcopy(table), mcopy(math), mcopy(string)
local ui, client = mcopy(ui), mcopy(client)

table.find = function (t, j)  for k, v in pairs(t) do if v == j then return k end end return false  end
table.ifind = function (t, j)  for i = 1, table.maxn(t) do if t[i] == j then return i end end  end
table.qfind = function (t, j)  for i = 1, #t do if t[i] == j then return i end end  end
table.ihas = function (t, ...) local arg = {...} for i = 1, table.maxn(t) do for j = 1, #arg do if t[i] == arg[j] then return true end end end return false end

table.minn = function (t) local s = 0 for i = 1, #t do if t[i] == nil then break end s = s + 1 end return s end
table.filter = function (t)  local res = {} for i = 1, table.maxn(t) do if t[i] ~= nil then res[#res+1] = t[i] end end return res  end
table.append = function (t, ...)  for i, v in ipairs{...} do table.insert(t, v) end  end
table.copy = mcopy

math.max_lerp_low_fps = (1 / 45) * 100
math.clamp = function (x, a, b) if a > x then return a elseif b < x then return b else return x end end
math.vector_lerp = function(start, end_pos, time) local frametime = globals.frametime()*100; time = time * math.min(frametime, math.max_lerp_low_fps); return start:lerp(end_pos, time) end
math.lerp = function(start, end_pos, time) if start == end_pos then return end_pos end local frametime = globals.frametime() * 170; time = time * frametime; local val = start + (end_pos - start) * time; if(math.abs(val - end_pos) < 0.01) then return end_pos end return val end
math.normalize_yaw = function(yaw) yaw = (yaw % 360 + 360) % 360 return yaw > 180 and yaw - 360 or yaw end
local try_require = function (module, msg) local success, result = pcall(require, module) if success then return result else return error(msg) end end
local ternary = function (c, a, b)  if c then return a else return b end  end
local contend = function (func, callback, ...)
local t = { pcall(func, ...) }
if not t[1] then return type(callback) == "function" and callback(t[2]) or error(t[2], callback or 2) end
return unpack(t, 2)
end

    config, package, aa_config, aa_package = nil, nil, nil, nil
local dirs = {
execute = function (t, path, func)
local p, k for _, s in ipairs(path) do
k, p, t = s, t, t[s]
if t == nil then return end
end
if p[k] then func(p[k]) end
end,
replace = function (t, path, value)
local p, k for _, s in ipairs(path) do
k, p, t = s, t, t[s]
if t == nil then return end
end
p[k] = value
end,
find = function (t, path)
local p, k for _, s in ipairs(path) do
k, p, t = s, t, t[s]
if t == nil then return end
end
return p[k]
end,
}

dirs.pave = function (t, place, path)
local p = t for i, v in ipairs(path) do
if type(p[v]) == "table" then p = p[v]
else p[v] = (i < #path) and {} or place  p = p[v]  end
end return t
end

dirs.extract = function (t, path)
if not path or #path == 0 then return t end
local j = dirs.find(t, path)
return dirs.pave({}, j, path)
end

local ui_handler, ui_handler_mt, methods_mt = {}, {}, {
element = {}, group = {}
}

local registry, ragebot, players = {}, {}, {} do
client.set_event_callback("shutdown", function ()
for k, v in next, registry do
if v.__ref and not v.__rage then
    if v.overridden then ui.set(k, v.original) end
    ui.set_enabled(k, true)
    ui.set_visible(k, not v.__hidden)
end
end
end)
client.set_event_callback("pre_config_save", function ()
for k, v in next, registry do
if v.__ref and not v.__rage and v.overridden then v.ovr_restore = {ui.get(k)}; ui.set(k, v.original) end
end
ragebot.cycle(function (active)
for k, v in pairs(ragebot.context[active]) do if registry[k].overridden then ragebot.cache[active][k] = ui.get(k); ui.set(k, v) end end
end, true)
end)
client.set_event_callback("post_config_save", function ()
for k, v in next, registry do
if v.__ref and not v.__rage and v.overridden then ui.set(k, unpack(v.ovr_restore)); v.ovr_restore = nil end
end
ragebot.cycle(function (active)
for k, v in pairs(ragebot.context[active]) do
    if registry[k].overridden then ui.set(k, ragebot.cache[active][k]); ragebot.cache[active][k] = nil end
end
end, true)
end)
end

local elemence = {} do
local callbacks = function (this, isref)
if this.name == "Weapon type" and string.lower(registry[this.ref].tab) == "rage" then return ui.get(this.ref) end

ui.set_callback(this.ref, function (self)
if registry[self].__rage and ragebot.silent then return end
for i = 0, #registry[self].callbacks, 1 do
    if type(registry[self].callbacks[i]) == "function" then registry[self].callbacks[i](this) end
end

 
end)

if this.type == "button" then return
elseif this.type == "color_picker" or this.type == "hotkey" then
registry[this.ref].callbacks[0] = function (self) this.value = { ui.get(self.ref) } end
return { ui.get(this.ref) }
else
registry[this.ref].callbacks[0] = function (self) this.value = ui.get(self.ref) end
if this.type == "multiselect" then
    this.value = ui.get(this.ref)
    registry[this.ref].callbacks[1] = function (self)
        registry[this.ref].options = {}
        for i = 1, #self.value do registry[this.ref].options[ self.value[i] ] = true end
    end
    registry[this.ref].callbacks[1](this)
end
return ui.get(this.ref)
end
end

elemence.new = function (ref, add)
local self = {}; add = add or {}

self.ref = ref
self.name, self.type = ui.name(ref), ui.type(ref)

--
registry[ref] = registry[ref] or {
type = self.type, ref = ref, tab = add.__tab, container = add.__container,
__ref = add.__ref, __hidden = add.__hidden, __init = add.__init, __list = add.__list, __rage = add.__rage,
__plist = add.__plist and not (self.type == "label" or self.type == "button" or self.type == "hotkey"),

overridden = false, original = self.value, donotsave = add.__plist or false,
callbacks = { [0] = add.__callback }, events = {}, depend = { [0] = {ref}, {}, {} },
}

registry[ref].self = setmetatable(self, methods_mt.element)
self.value = callbacks(self, add.__ref)

if add.__rage then
methods_mt.element.set_callback(self, ragebot.memorize)
end
if registry[ref].__plist then
players.elements[#players.elements+1] = self
methods_mt.element.set_callback(self, players.slot_update, true)
end

return self
end

elemence.group = function (...)
return setmetatable({ ... }, methods_mt.group)
end

elemence.string = function (name, default)
local this = {}

this.ref = ui.new_string(name, default or "")
this.type = "string"
this[0] = {savable = true}

return setmetatable(this, methods_mt.element)
end

elemence.features = function (self, args)
do
local addition
local v, kind = args[1], type(args[1])

if not addition and (kind == "table" or kind == "cdata") and not v.r then
    addition = "color"
    local r, g, b, a = v[1] or 255, v[2] or 255, v[3] or 255, v[4] or 255
    self.color = elemence.new( ui.new_color_picker(registry[self.ref].tab, registry[self.ref].container, self.name, r, g, b, a), {
        __init = { r, g, b, a },
        __plist = registry[self.ref].__plist
    } )
elseif not addition and (kind == "table" or kind == "cdata") and v.r then
    addition = "color"
    self.color = elemence.new( ui.new_color_picker(registry[self.ref].tab, registry[self.ref].container, self.name, v.r, v.g, v.b, v.a), {
        __init = { v.r, v.g, v.b, v.a },
        __plist = registry[self.ref].__plist
    } )
elseif not addition and kind == "number" then
    addition = "hotkey"
    self.hotkey = elemence.new( ui.new_hotkey(registry[self.ref].tab, registry[self.ref].container, self.name, true, v, {
        __init = v
    }) )
end
registry[self.ref].depend[0][2] = addition and self[addition].ref
registry[self.ref].__addon = addition
end
do
registry[self.ref].donotsave = args[2] == false
end
end

elemence.memorize = function (self, path, origin)
-- Проверка типа self
if type(self) ~= "table" then
error("Expected 'self' to be a table")
end

if registry[self.ref].donotsave then return end

if not elements[self.type].unsavable then
dirs.pave(origin, self.ref, path)
end

if self.color then
path[#path] = path[#path] .. "_c"
dirs.pave(origin, self.color.ref, path)
end
if self.hotkey then
path[#path] = path[#path] .. "_h"
dirs.pave(origin, self.hotkey.ref, path)
end
end


elemence.hidden_refs = {
"Unlock hidden cVars", "Allow custom game events", "Faster grenade toss",
"sv_maxunlag", "sv_maxusrcmdprocessticks", "sv_clockcorrection_msecs",
}

local cases = {
combobox = function (v)
if v[3] == true then
    return v[1].value ~= v[2]
else
    for i = 2, #v do
        if v[1].value == v[i] then return true end
    end
end
return false
end,
listbox = function (v)
if v[3] == true then
    return v[1].value ~= v[2]
else
    for i = 2, #v do
        if v[1].value == v[i] then return true end
    end
end
return false
end,
multiselect = function (v)
return table.ihas(v[1].value, unpack(v, 2))
end,
slider = function (v)
return v[2] <= v[1].value and v[1].value <= (v[3] or v[2])
end,
}

local depend = function (v)
local condition = false

if type(v[2]) == "function" then
condition = v[2]( v[1] )
else
local f = cases[v[1].type]
if f then condition = f(v)
else condition = v[1].value == v[2] end
end

return condition and true or false
end

elemence.dependant = function (owner, dependant, dis)
    count = 0

for i = 1, #owner do
if depend(owner[i]) then count = count + 1 else break end
end

    allow, action = count >= #owner, dis and "set_enabled" or "set_visible"

for i, v in ipairs(dependant) do ui[action](v, allow) end
end
end
local utils = {}

utils.time_to_ticks = function(t)
return math.floor(0.5 + (t / globals.tickinterval()))
end

utils.rgb_to_hex = function(color)
return string.format("%02X%02X%02X%02X", color[1], color[2], color[3], color[4] or 255)
end

utils.animate_text = function(time, string, r, g, b, a, r1, g1, b1, a1)
    t_out, t_out_iter = {}, 1
    l = string:len() - 1

local r_add = (r1 - r)
local g_add = (g1 - g)
local b_add = (b1 - b)
local a_add = (a1 - a)

for i = 1, #string do
local iter = (i - 1)/(#string - 1) + time
t_out[t_out_iter] = "\a" .. utils.rgb_to_hex({r + r_add * math.abs(math.cos( iter )), g + g_add * math.abs(math.cos( iter )), b + b_add * math.abs(math.cos( iter )), a + a_add * math.abs(math.cos( iter ))})

t_out[t_out_iter+1] = string:sub(i, i)
t_out_iter = t_out_iter + 2
end

return table.concat(t_out)
end

utils.hex_to_rgb = function (hex)
hex = hex:gsub("^#", "")
return tonumber(hex:sub(1, 2), 16), tonumber(hex:sub(3, 4), 16), tonumber(hex:sub(5, 6), 16), tonumber(hex:sub(7, 8), 16) or 255
end

utils.gradient_text = function (text, colors, precision)
local symbols, length = {}, #string.gsub(text, ".[\128-\191]*", "a")
local s = 1 / (#colors - 1)
precision = precision or 1

local i = 0
for letter in string.gmatch(text, ".[\128-\191]*") do
i = i + 1

local weight = i / length
local cw = weight / s
local j = math.ceil(cw)
local w = (cw / j)
local L, R = colors[j], colors[j+1]

local r = L[1] + (R[1] - L[1]) * w
local g = L[2] + (R[2] - L[2]) * w
local b = L[3] + (R[3] - L[3]) * w
local a = L[4] + (R[4] - L[4]) * w

symbols[#symbols+1] = ((i-1) % precision == 0) and ("\a%02x%02x%02x%02x%s"):format(r, g, b, a, letter) or letter
end

symbols[#symbols+1] = "\aCDCDCDFF"

return table.concat(symbols)
end

local gradients = function (col, text)
local colors = {}; for w in string.gmatch(col, "\b%x+") do
colors[#colors+1] = { utils.hex_to_rgb( string.sub(w, 2) ) }
end
if #colors > 0 then return utils.gradient_text(text, colors, #text > 8 and 2 or 1) end
end

utils.format = function (s)
if type(s) == "string" then
s = string.gsub(s, "\f<(.-)>", ui_handler.macros)
s = string.gsub(s, "[\v\r\t]", {["\v"] = "\a".. ui_handler.accent, ["\r"] = "\aCDCDCDFF", ["\t"] = "    "})
s = string.gsub(s, "([\b%x]-)%[(.-)%]", gradients)
end return s
end

utils.unpack_color = function (...)
local arg = {...}
local kind = type(arg[1])

if kind == "table" or kind == "cdata" or kind == "userdata" then
if arg[1].r then
return {arg[1].r, arg[1].g, arg[1].b, arg[1].a}
elseif arg[1][1] then
return {arg[1][1], arg[1][2], arg[1][3], arg[1][4]}
end
end

return arg
end

local dispensers = {
color_picker = function (args)
args[1] = string.sub(utils.format(args[1]), 1, 117)

if type(args[2]) ~= "number" then
local col = args[2]
args.n, args.req, args[2] = args.n + 3, args.req + 3, col.r
table.insert(args, 3, col.g)
table.insert(args, 4, col.b)
table.insert(args, 5, col.a)
end

for i = args.req + 1, args.n do
args.misc[i - args.req] = args[i]
end

args.data.__init = {args[2] or 255, args[3] or 255, args[4] or 255, args[5] or 255}
end,
listbox = function (args, variable)
args[1] = string.sub(utils.format(args[1]), 1, 117)
for i = args.req + 1, args.n do
args.misc[i - args.req] = args[i]
end

args.data.__init, args.data.__list = 0, not variable and args[2] or {unpack(args, 2, args.n)}
end,
combobox = function (args, variable)
args[1] = string.sub(utils.format(args[1]), 1, 117)
for i = args.req + 1, args.n do
args.misc[i - args.req] = args[i]
end

args.data.__init, args.data.__list = not variable and args[2][1] or args[2], not variable and args[2] or {unpack(args, 2, args.n)}
end,
multiselect = function (args, variable)
args[1] = string.sub(utils.format(args[1]), 1, 117)
for i = args.req + 1, args.n do
args.misc[i - args.req] = args[i]
end

args.data.__init, args.data.__list = {}, not variable and args[2] or {unpack(args, 2, args.n)}
end,
slider = function (args)
args[1] = string.sub(utils.format(args[1]), 1, 117)

for i = args.req + 1, args.n do
args.misc[i - args.req] = args[i]
end

args.data.__init = args[4] or args[2]
end,
button = function (args)
args[2] = args[2] or function()end
args[1] = string.sub(utils.format(args[1]), 1, 117)
args.n, args.data.__callback = 2, args[2]
end
}

utils.dispense = function (key, raw, ...)
local args, group, ctx = {...}, {}, elements[key]

if type(raw) == "table" then
group[1], group[2] = raw[1], raw[2]
group.__plist = raw.__plist
else
group[1], group[2] = raw, args[1]
table.remove(args, 1)
end

args.n, args.data = table.maxn(args), {
__tab = group[1], __container = group[2],
__plist = group.__plist and true or nil
}

local variable = (ctx and ctx.variable) and type(args[2]) == "string"
args.req, args.misc = not variable and ctx.arg or args.n, {}

if dispensers[key] then
dispensers[key](args, variable)
else
for i = 1, args.n do
if type(args[i]) == "string" then
    args[i] = string.sub(utils.format(args[i]), 1, 117)
end

if i > args.req then args.misc[i - args.req] = args[i] end
end
args.data.__init = ctx.init
end

return args, group
end

local render = renderer

do
render.rec = function(x, y, w, h, radius, color)
radius = math.min(x/2, y/2, radius)
local r, g, b, a = unpack(color)
renderer.rectangle(x, y + radius, w, h - radius*2, r, g, b, a)
renderer.rectangle(x + radius, y, w - radius*2, radius, r, g, b, a)
renderer.rectangle(x + radius, y + h - radius, w - radius*2, radius, r, g, b, a)
renderer.circle(x + radius, y + radius, r, g, b, a, radius, 180, 0.25)
renderer.circle(x - radius + w, y + radius, r, g, b, a, radius, 90, 0.25)
renderer.circle(x - radius + w, y - radius + h, r, g, b, a, radius, 0, 0.25)
renderer.circle(x + radius, y - radius + h, r, g, b, a, radius, -90, 0.25)
end

render.rec_outline = function(x, y, w, h, radius, thickness, color)
radius = math.min(w/2, h/2, radius)
local r, g, b, a = unpack(color)
if radius == 1 then
renderer.rectangle(x, y, w, thickness, r, g, b, a)
renderer.rectangle(x, y + h - thickness, w , thickness, r, g, b, a)
else
renderer.rectangle(x + radius, y, w - radius*2, thickness, r, g, b, a)
renderer.rectangle(x + radius, y + h - thickness, w - radius*2, thickness, r, g, b, a)
renderer.rectangle(x, y + radius, thickness, h - radius*2, r, g, b, a)
renderer.rectangle(x + w - thickness, y + radius, thickness, h - radius*2, r, g, b, a)
renderer.circle_outline(x + radius, y + radius, r, g, b, a, radius, 180, 0.25, thickness)
renderer.circle_outline(x + radius, y + h - radius, r, g, b, a, radius, 90, 0.25, thickness)
renderer.circle_outline(x + w - radius, y + radius, r, g, b, a, radius, -90, 0.25, thickness)
renderer.circle_outline(x + w - radius, y + h - radius, r, g, b, a, radius, 0, 0.25, thickness)
end
end

render.shadow = function(x, y, w, h, width, rounding, accent, accent_inner)
local thickness = 1
local Offset = 1
local r, g, b, a = unpack(accent)
if accent_inner then
render.rec(x, y, w, h + 1, rounding, accent_inner)
end
for k = 0, width do
if a * (k/width)^(1) > 5 then
local accent = {r, g, b, a * (k/width)^(2)}
render.rec_outline(x + (k - width - Offset)*thickness, y + (k - width - Offset) * thickness, w - (k - width - Offset)*thickness*2, h + 1 - (k - width - Offset)*thickness*2, rounding + thickness * (width - k + Offset), thickness, accent)
end
end
end
end

ui_handler.macros = setmetatable({}, {
__newindex = function (self, key, value) rawset(self, tostring(key), value) end,
__index = function (self, key) return rawget(self, tostring(key)) end
})

ui_handler.accent, ui_handler.menu_open = nil, ui.is_menu_open()

do
local reference = ui.reference("MISC", "Settings", "Menu color")
ui_handler.accent = utils.rgb_to_hex{ ui.get(reference) }
local previous = ui_handler.accent

ui.set_callback(reference, function ()
local color = { ui.get(reference) }
ui_handler.accent = utils.rgb_to_hex(color)

for idx, ref in next, registry do
if ref.type == "label" and not ref.__ref then
local new, count = string.gsub(ref.self.value, previous, ui_handler.accent)
if count > 0 then
    ui.set(idx, new)
    ref.self.value = new
end
end
end
previous = ui_handler.accent
client.fire_event("ui_handler::accent_color", color)
end)
end


ui_handler.group = function (tab, container) return elemence.group(tab, container) end

ui_handler.format = utils.format

ui_handler.reference = function (tab, container, name)
local found = { contend(ui.reference, 3, tab, container, name) }
local total, hidden = #found, false

-- done on purpose, don't blame me
if string.lower(tab) == "misc" and string.lower(container) == "settings" then
for i, v in ipairs(elemence.hidden_refs) do
if string.find(name, "^" ..v) then hidden = true break end
end
end

for i, v in ipairs(found) do
found[i] = elemence.new(v, {
__ref = true, __hidden = hidden or nil,
__tab = tab, __container = container,
__rage = container == "Aimbot" or nil,
})
end

if total > 1 then local shift = 0
for i = 1, total > 4 and total or 4, 2 do
local m, j = i - shift, i + 1 - shift
if found[j] and (found[j].type == "hotkey" or found[j].type == "color_picker") then
local addition = found[j].type == "color_picker" and "color" or "hotkey"
registry[ found[m].ref ].__addon, found[m][addition] = addition, found[j]

table.remove(found, j) shift = shift + 1
end
end return unpack(found)
else return found[1] end
end

ui_handler.traverse = function (t, f, p)
p = p or {}

if type(t) == "table" and t.__name ~= "ui_handler::element" and t[#t] ~= "~" then
for k, v in next, t do
local np = table.copy(p); np[#np+1] = k
ui_handler.traverse(v, f, np)
end
else
f(t, p)
end
end

do
save = function (config, ...)
local packed = {}

ui_handler.traverse(dirs.extract(config, {...}), function (ref, path)
local value
local etype = registry[ref].type

if etype == "color_picker" then
value = "#".. utils.rgb_to_hex{ ui.get(ref) }
elseif etype == "hotkey" then
local _, mode, key = ui.get(ref)
value = {mode, key or 0}
else
value = ui.get(ref)
end

if type(value) == "table" then value[#value+1] = "~" end
dirs.pave(packed, value, path)
end)

return packed
end

load = function (config, package, ...)
if not package then return end

local packed = dirs.extract(package, {...})
ui_handler.traverse(dirs.extract(config, {...}), function (ref, path)
pcall(function ()
local value, proxy = dirs.find(packed, path), registry[ref]
local vtype, etype = type(value), proxy.type
local object = elements[etype]

if vtype == "string" and value:sub(1, 1) == "#" then
    value, vtype = { utils.hex_to_rgb(value) }, "table"
elseif vtype == "table" and value[#value] == "~" then
    value[#value] = nil
end

if etype == "hotkey" and value and type(value[1]) == "number" then
    value[1] = elements.hotkey.enum[ value[1] ]
end

if object and object.type == vtype then
    if vtype == "table" and etype ~= "multiselect" then
        ui.set(ref, unpack(value))
        if etype == "color_picker" then methods_mt.element.invoke(proxy.self) end
    else
        ui.set(ref, value)
    end
else
    if proxy.__init then ui.set(ref, proxy.__init) end
end
end)
end)
end

--
local package_mt = {
__type = "ui_handler::package", __metatable = false,
__call = function (self, raw, ...)
return (type(raw) == "table" and load or save)(self[0], raw, ...)
end,
save = function (self, ...) return save(self[0], ...) end,
load = function (self, ...) load(self[0], ...) end,
}	package_mt.__index = package_mt

ui_handler.setup = function (t)
local package = { [0] = {} }
ui_handler.traverse(t, function (r, p) elemence.memorize(r, p, package[0]) end)
return setmetatable(package, package_mt)
end
end

methods_mt.element = {
__type = "ui_handler::element", __name = "ui_handler::element", __metatable = false,
__eq = function (this, that) return this.ref == that.ref end,
__tostring = function (self) return string.format('ui_handler.%s[%d] "%s"', self.type, self.ref, self.name) end,
__call = function (self, ...) if #{...} > 0 then ui.set(self.ref, ...) else return ui.get(self.ref) end end,

depend = function (self, ...)
local arg = {...}
local disabler = arg[1] == true

local depend = registry[self.ref].depend[disabler and 2 or 1]
local this = registry[self.ref].depend[0]

for i = (disabler and 2 or 1), table.maxn(arg) do
local v = arg[i]
if v then
if v.__name == "ui_handler::element" then v = {v, true} end
depend[#depend+1] = v

local check = function () elemence.dependant(depend, this, disabler) end
check()

registry[v[1].ref].callbacks[#registry[v[1].ref].callbacks+1] = check
end
end

return self
end,

override = function (self, value)
local is_hk = self.type == "hotkey"
local ctx, wctx = registry[self.ref], ragebot.context[ragebot.ref.value]

if value ~= nil then
if not ctx.overridden then
if is_hk then self.value = { ui.get(self.ref) } end
if ctx.__rage then wctx[self.ref] = self.value else ctx.original = self.value end
end ctx.overridden = true
if is_hk then ui.set(self.ref, value[1], value[2]) else ui.set(self.ref, value) end
if ctx.__rage then ctx.__ovr_v = value end
else
if ctx.overridden then
local original = ctx.original if ctx.__rage then original, ctx.__ovr_v = wctx[self.ref], nil end
if is_hk then ui.set(self.ref, elements.hotkey.enum[original[2]], original[3] or 0)
else ui.set(self.ref, original) end ctx.overridden = false
end
end
end,
get_original = function (self)
if registry[self.ref].__rage then
if registry[self.ref].overridden then return ragebot.context[ragebot.ref.value][self.ref] else return self.value end
else
if registry[self.ref].overridden then return registry[self.ref].original else return self.value end
end
end,

set = function (self, ...)
if self.type == "color_picker" then
ui.set(self.ref, unpack(utils.unpack_color(...)) )
methods_mt.element.invoke(self)
elseif self.type == "label" then
local t = utils.format(...)
ui.set(self.ref, t)
self.value = t
else
ui.set(self.ref, ...)
end
end,
get = function (self, value)
if value and self.type == "multiselect" then
return registry[self.ref].options[value] or false
end
return ui.get(self.ref)
end,

reset = function (self) if registry[self.ref].__init then ui.set(self.ref, registry[self.ref].__init) end end,

update = function (self, t)
ui.update(self.ref, t)
registry[self.ref].__list = t

local cap = #t-1
--if ui.get(self.ref) > cap then ui.set(self.ref, cap) end
end,

get_list = function (self) return registry[self.ref].__list end,

get_color = function (self)
if registry[self.ref].__addon then return ui.get(self.color.ref) end
end,
set_color = function (self, ...)
if registry[self.ref].__addon then methods_mt.element.set(self.color, ...) end
end,
get_hotkey = function (self)
if registry[self.ref].__addon then return ui.get(self.hotkey.ref) end
end,
set_hotkey = function (self, ...)
if registry[self.ref].__addon then methods_mt.element.set(self.hotkey, ...) end
end,

is_reference = function (self) return registry[self.ref].__ref or false end,
get_type = function (self) return self.type end,
get_name = function (self) return self.name end,

set_visible = function (self, visible)
ui.set_visible(self.ref, visible)
if registry[self.ref].__addon then ui.set_visible(self[registry[self.ref].__addon].ref, visible) end
end,
set_enabled = function (self, enabled)
ui.set_enabled(self.ref, enabled)
if registry[self.ref].__addon then ui.set_enabled(self[registry[self.ref].__addon].ref, enabled) end
end,

set_callback = function (self, func, once)
if once == true then func(self) end
registry[self.ref].callbacks[#registry[self.ref].callbacks+1] = func
end,
unset_callback = function (self, func)
table.remove(registry[self.ref].callbacks, table.qfind(registry[self.ref].callbacks, func) or 0)
end,
invoke = function (self, ...)
for i = 0, #registry[self.ref].callbacks do registry[self.ref].callbacks[i](self, ...) end
end,

set_event = function (self, event, func, condition)
local slot = registry[self.ref]
if condition == nil then condition = true end
local is_cond_fn, latest = type(condition) == "function", nil
slot.events[func] = function (this)
local permission if is_cond_fn then permission = condition(this) else permission = this.value == condition end

local action = permission and client.set_event_callback or client.unset_event_callback
if latest ~= permission then action(event, func) latest = permission end
end
slot.events[func](self)
slot.callbacks[#slot.callbacks+1] = slot.events[func]
end,
unset_event = function (self, event, func)
client.unset_event_callback(event, func)
methods_mt.element.unset_callback(self, registry[self.ref].events[func])
registry[self.ref].events[func] = nil
end,

get_location = function (self) return registry[self.ref].tab, registry[self.ref].container end,
}	methods_mt.element.__index = methods_mt.element

methods_mt.group = {
__name = "ui_handler::group",
__metatable = false,
__index = function (self, key) return rawget(methods_mt.group, key) or ui_handler_mt.__index(self, key) end,
get_location = function (self) return self[1], self[2] end
}

do
for k, v in next, elements do
v.fn = function (origin, ...)
local args, group = utils.dispense(k, origin, ...)
local this = elemence.new( contend(ui["new_".. k], 3, group[1], group[2], unpack(args, 1, args.n < args.req and args.n or args.req)), args.data )

elemence.features(this, args.misc)
return this
end
end

ui_handler_mt.__name, ui_handler_mt.__metatable = "ui_handler::basement", false
ui_handler_mt.__index = function (self, key)
if not elements[key] then return ui[key] end
if key == "string" then return elemence.string end

return elements[key].fn
end
end

ragebot = {
ref = ui_handler.reference("RAGE", "Weapon type", "Weapon type"),
context = {}, cache = {},
silent = false,
} do
    previous, cycle_action = ragebot.ref.value, nil
for i, v in ipairs(weapons) do ragebot.context[v], ragebot.cache[v] = {}, {} end

local neutral = ui.reference("RAGE", "Aimbot", "Enabled")
ui.set_callback(neutral, function ()
if not ragebot.silent then client.delay_call(0, client.fire_event, "ui_handler::adaptive_weapon", ragebot.ref.value, previous) end
if cycle_action then cycle_action(ragebot.ref.value) end
end)

ragebot.cycle = function (fn, mute)
cycle_action = mute and fn or nil
ragebot.silent = mute and true or false

for i, v in ipairs(weapons) do
ragebot.ref:override(v)
end

ragebot.ref:override()
cycle_action, ragebot.silent = nil, false
end

ui.set_callback(ragebot.ref.ref, function (self)
ragebot.ref.value = ui.get(self)

if not ragebot.silent and previous ~= ragebot.ref.value then
for i = 1, #registry[self].callbacks, 1 do registry[self].callbacks[i](ragebot.ref) end
end

previous = ragebot.ref.value
end)

ragebot.memorize = function (self)
local ctx = ragebot.context[ragebot.ref.value]

if registry[self.ref].overridden then
if ctx[self.ref] == nil then
ctx[self.ref] = self.value
methods_mt.element.override(self, registry[self.ref].__ovr_v)
end
else
if ctx[self.ref] then
methods_mt.element.set(self, ctx[self.ref])
ctx[self.ref] = nil
end
end
end
end

players = {
elements = {}, list = {},
} do

ui_handler.plist = elemence.group("PLAYERS", "Adjustments")
ui_handler.plist.__plist = true

    selected = 0
    refs, slot = {
list = ui_handler.reference("PLAYERS", "Players", "Player list"),
reset = ui_handler.reference("PLAYERS", "Players", "Reset all"),
apply = ui_handler.reference("PLAYERS", "Adjustments", "Apply to all"),
}, {}

local slot_mt = {
__type = "ui_handler::player_slot", __metatable = false,
__tostring = function (self)
return string.format("ui_handler::player_slot[%d] of %s", self.idx, methods_mt.element.__tostring(registry[self.ref].self))
end,
set = function (self, ...) -- don't mind
local ctx, value = registry[self.ref], {...}

local is_colorpicker = ctx.type == "color_picker"
if is_colorpicker then
value = utils.unpack_color(...)
end

if self.idx == selected then
ui.set( self.ref, unpack(value) )
if is_colorpicker then
    methods_mt.element.invoke(ctx.self)
end
else
self.value = is_colorpicker and value or unpack(value)
end
end,
get = function (self, find)
if find and registry[self.ref].type == "multiselect" then
return table.qfind(self.value, find) ~= nil
end

if registry[self.ref].type ~= "color_picker" then return self.value
else return unpack(self.value) end
end,
}	slot_mt.__index = slot_mt

players.traverse = function (fn) for i, v in ipairs(players.elements) do fn(v) end end

slot = {
select = function (idx)
for i, v in ipairs(players.elements) do
methods_mt.element.set(v, v[idx].value)
end
end,
add = function (idx)
for i, v in ipairs(players.elements) do
local default = ternary(registry[v.ref].__init ~= nil, registry[v.ref].__init, v.value)
v[idx], players.list[idx] = setmetatable({
    ref = v.ref, idx = idx, value = default
}, slot_mt), true
end
end,
remove = function (idx)
for i, v in ipairs(players.elements) do
v[idx], players.list[idx] = nil, nil
end
end,
}

players.slot_update = function (self)
if self[selected] then self[selected].value = self.value
else slot.add(selected) end
end

local silent = false
update = function (e)
selected = ui.get(refs.list.ref)

local new, old = entity.get_players(), players.list
local me = entity.get_local_player()

for idx, v in next, old do
if entity.get_classname(idx) ~= "CCSPlayer" then
slot.remove(idx)
end
end

for i, idx in ipairs(new) do
if idx ~= me and not players.list[idx] and entity.get_classname(idx) == "CCSPlayer" then
slot.add(idx)
end
end

if not silent and not e.value then
for i = #new, 1, -1 do
if new[i] ~= me then ui.set(refs.list.ref, new[i]) break end
end
client.update_player_list()
silent = true
else
silent = false
end

slot.select(selected)
client.fire_event("ui_handler::plist_update", selected)
end

do
local function once ()
update{}
client.unset_event_callback("pre_render", once)
end
client.set_event_callback("pre_render", once)
end
end

build = "BETA free"

steam_name = panorama.open("CSGOHud").MyPersonaAPI.GetName()

js = panorama.open()

MyPersonaAPI, LobbyAPI, PartyListAPI, SteamOverlayAPI = js.MyPersonaAPI, js.LobbyAPI, js.PartyListAPI, js.SteamOverlayAPI

local _modules = {
    img = {},
    files = {},
    widgets = {},
    animations = {},
    shot_logger = {},
    fast_ladder = {},
    aero_lag_exp = {},
    chat_spammer = {},
    death_spammer = {},
    model_breaker = {},
    antiaim_on_use = {},
    anti_bruteforce = {},
    crosshair_logger = {},
    screen_indication = {},
    manual_indication = {},
    conditional_antiaims = {},
    expres1 = {}
}
gamesense_refs = {}

ffi.cdef[[
void* __stdcall URLDownloadToFileA(void* LPUNKNOWN, const char* LPCSTR, const char* LPCSTR2, int a, int LPBINDSTATUSCALLBACK);  
bool DeleteUrlCacheEntryA(const char* lpszUrlName);
]]

gram_create = function(value, count) local gram = { }; for i=1, count do gram[i] = value; end return gram; end
gram_update = function(tab, value, forced) local new_tab = tab; if forced or new_tab[#new_tab] ~= value then table.insert(new_tab, value); table.remove(new_tab, 1); end; tab = new_tab; end
get_average = function(tab) local elements, sum = 0, 0; for k, v in pairs(tab) do sum = sum + v; elements = elements + 1; end return sum / elements; end

breaker = {
defensive = 0,
defensive_check = 0,
cmd = 0,
last_origin = nil,
origin = nil,
tp_dist = 0,
tp_data = gram_create(0,3),
mapname = globals.mapname()
}

------@ref

gamesense_refs.prefer_safe_point = ui.reference('RAGE', 'Aimbot', 'Prefer safe point')
gamesense_refs.force_safe_point = ui.reference('RAGE', 'Aimbot', 'Force safe point')

local ref = {
enabled = ui.reference('AA', 'Anti-aimbot angles', 'Enabled'),
yawbase = ui.reference('AA', 'Anti-aimbot angles', 'Yaw base'),
fsbodyyaw = ui.reference('AA', 'anti-aimbot angles', 'Freestanding body yaw'),
edgeyaw = ui.reference('AA', 'Anti-aimbot angles', 'Edge yaw'),
fakeduck = ui.reference('RAGE', 'Other', 'Duck peek assist'),
forcebaim = ui.reference('RAGE', 'Aimbot', 'Force body aim'),
safepoint = ui.reference('RAGE', 'Aimbot', 'Force safe point'),
roll = { ui.reference('AA', 'Anti-aimbot angles', 'Roll') },
clantag = ui.reference('Misc', 'Miscellaneous', 'Clan tag spammer'),
fakelag = ui.reference("AA", "Fake lag", "Limit"),

pitch = { ui.reference('AA', 'Anti-aimbot angles', 'pitch'), },
rage = { ui.reference('RAGE', 'Aimbot', 'Enabled') },
yaw = { ui.reference('AA', 'Anti-aimbot angles', 'Yaw') }, 
yawjitter = { ui.reference('AA', 'Anti-aimbot angles', 'Yaw jitter') },
bodyyaw = { ui.reference('AA', 'Anti-aimbot angles', 'Body yaw') },
freestand = { ui.reference('AA', 'Anti-aimbot angles', 'Freestanding') },
slow = { ui.reference('AA', 'Other', 'Slow motion') },
os = { ui.reference('AA', 'Other', 'On shot anti-aim') },
slow = { ui.reference('AA', 'Other', 'Slow motion') },
dt = { ui.reference('RAGE', 'Aimbot', 'Double tap') },
leg_movement = ui.reference('AA', 'Other', "Leg movement"),
minimum_damage = ui.reference("RAGE", "Aimbot", "Minimum damage"),
delayshot = ui.reference('RAGE', 'Other', 'Delay shot'),
minimum_damage_override = { ui.reference("RAGE", "Aimbot", "Minimum damage override") },

menu_color = ui.reference("Misc", "Settings", "Menu color"),
mates = ui.reference("Visuals", "Player ESP", "Teammates"),

bunnyhop = ui.reference("Misc", "Movement", "Bunny hop"),
autostrafe = ui.reference("Misc", "Movement", "Air strafe"),
}

    _screen = {client.screen_size()}
    x_ind, y_ind = _screen[1], _screen[2]

    local _groups = {
        lua = ui_handler.group("aa", "anti-aimbot angles"),
        config = ui_handler.group("aa", "anti-aimbot angles"),
        other = ui_handler.group("aa", "anti-aimbot angles"),
        warmup = ui_handler.group("aa", "other")
    }
    local lua_group, config_group, other_group, warmup_group = _groups.lua, _groups.config, _groups.other, _groups.warmup
    pui.accent = "" .. color(table.unpack({ui.get(ref.menu_color)})):to_hex()

    local antiaim_cond = { '\vGlobal\r', '\vStanding\r', '\vWalking\r', '\vRunning\r' , '\vAir\r', '\vAir-Crouch\r', '\vDuck\r', '\vDuck-Move\r' }
    local short_cond = { '\vGlobal »\r', '\vStanding »\r', '\vWakling »\r', '\vRunning »\r' ,'\vAir »\r', '\vAir-Crouch »\r', '\vDuck »\r', '\vDuck-Move »\r' }

    local lua_menu = {
        main = {
            label_logo = lua_group:label("                  \aFA3F3FFF♥ \aFFFFFFFFBLASSED.LUA \aFA3F3FFF♥"),
            tab = lua_group:combobox('Current Tab:', {" Information", " Ragebot Features", " Anti-Aim System", " Visuals Features", " Miscellaneous", " Configs System"}),



            -- Информация о пользователе
            user = lua_group:label("Welcome Dear User: \v" .. steam_name),

            -- Информация о версии
            build = lua_group:label("Version: \v1.7 " .. build),
            last_upd = lua_group:label("Build: \v06.12.2025"),

            -- Информация о Соц.Сетях
            discord_link = lua_group:button("Join Us: \vDiscord channel", function() SteamOverlayAPI.OpenExternalBrowserURL("https://raw.githubusercontent.com/kubiszxc/soon/refs/heads/main/soon.txt") end),
            telegram_link = lua_group:button("Join Us: \vTeleram channel", function() SteamOverlayAPI.OpenExternalBrowserURL("https://t.me/blassedresolver") end),
        },
        antiaim = {
            
            tab = lua_group:combobox("⟢ AntiAim Tab", {"Main", "Builder"}),
            yaw_base = lua_group:combobox("⟢ Yaw Base", {"Local view", "At targets"}),
            addons = lua_group:multiselect('⟢ Helpers', {"Anti-Bruteforce", 'Spin AA On Warmup', 'Anti Backstab', 'Safe Head'}),
            anti_bruteforce_mode = lua_group:combobox("Anti-Bruteforce Mode", {"Minimal", "Super"}),
            safe_head = lua_group:multiselect('Safe Head', {'Air+C Knife', 'Air+C Zeus', 'High Distance'}),
            yaw_direction = lua_group:multiselect('⟢ Yaw Override', {'Freestanding', 'Manual', 'Edge Yaw'}),
            key_freestand = lua_group:hotkey('\v » \rFreestanding'),
            key_left = lua_group:hotkey('\v » \rManual Left'),
            key_right = lua_group:hotkey('\v » \rManual Right'),
            key_forward = lua_group:hotkey('\v » \rManual Forward'),
            key_edge_yaw = lua_group:hotkey('\v » \rEdge Yaw'),
            condition = lua_group:combobox('⟢ Current Condition', antiaim_cond),
        },

   misc = {
            watermark = lua_group:checkbox("☾ Watermark"),
            watermark_color = lua_group:checkbox("\v » \rWatermark Color", {255, 255, 255}),
            watermark_style = lua_group:combobox("\v » \rWatermark Style", {"Default", "Modern", "Legacy", "Branded"}),
            watermark_position = lua_group:combobox("\v » \rWatermark Position", {"Bottom Center", "Right Center"}),
            cross_ind = lua_group:checkbox("☾ Crosshair Indicators", {255, 255, 255}),
            cross_color = lua_group:checkbox("\v » \rIndicator Gradient Color", {255, 255, 255}),
            key_color = lua_group:checkbox("\v » \rKeybinds Color", {255, 255, 255}),
            manual_arrows = lua_group:checkbox("☾ Manual Indicator", {255,255,255}),
            damage_indicator = lua_group:checkbox("☾ Damage Indicator"),
            damage_indicator_mode = lua_group:combobox("\v » \rMode", {"On Bind", "Always"}),
            damage_indicator_style = lua_group:combobox("\v » \rStyle", {"Default", "Pixel"}),
            info_panel = lua_group:checkbox("☾ Info Panel", {255, 255, 255}),
            defensive_window = lua_group:checkbox("☾ Defensive Window", {255, 255, 255}),
            defensive_style = lua_group:combobox("\v » \rDefensive Style", {"Default", "Gradient", "Modern"}),
            velocity_window = lua_group:checkbox("☾ Velocity Window", {255, 255, 255}),
            velocity_style = lua_group:combobox("\v » \rVelocity Style", {"Default", "Gradient", "Modern"}),
            perfomance_boost = lua_group:checkbox("⚚ FPS \v[Boost]"),
            fix_hideshots = lua_group:checkbox("⚚ Fix HideShots"),
            fast_ladder = lua_group:checkbox("⚚ Fast Ladder"),
            log = lua_group:checkbox("☾ Ragebot Logs"),
            log_glow_color = lua_group:label("\v » \rGlow Color", {255, 255, 255}),
            log_hit_color = lua_group:label("\v » \rHit Color", {255, 255, 255}),
            log_miss_color = lua_group:label("\v » \rMiss Color", {255, 100, 100}),
            log_type = lua_group:multiselect("\v » \rLog Types", {"Console", "Screen"}),
            third_person = lua_group:checkbox("⚚ Third Person Distance"),
            third_person_value = lua_group:slider("\v » \rThird Person Distance Value", 30, 200, 50),
            aspectratio = lua_group:checkbox("⚚ Aspect Ratio"),
            aspectratio_value = lua_group:slider("\v » \rAspect Ratio Value", 0, 200, 0, true, " ", 0.01, {[0] = "Disabled", [125] = "5:4", [133] = "4:3", [160] = "16:9", [170] = "16:10"}),
            animation = lua_group:checkbox("⚚ Animation Breakers"),
            animation_ground = lua_group:combobox("\v » \rGround", {"Off", "Static", "Jitter", "Moonwalk", "Randomize"}),
            animation_air = lua_group:combobox("\v » \rAir", {"Off", "Static", "Jitter", "Moonwalk", "Randomize"}),
            animation_addons = lua_group:multiselect("\v » \rAddons", {"Adjust Body Lean", "Earthquake", "Smoothing"}),
            animation_body_lean = lua_group:slider("Body Lean Value", 0, 100, 0, true, "%", 0.01, {[0] = "Disabled", [35] = "Low", [50] = "Medium", [75] = "High", [100] = "Extreme"}),
            resolver = lua_group:checkbox("♱ Custom Resolver"),
            resolver_flag = lua_group:checkbox("\v » \rResolver ESP Flag"),
            resolver_type = lua_group:combobox("\v » \rResolver Type", {"Default", "Defensive"}),
            teleport = lua_group:checkbox("⚚ Break LC Teleport (Exploit)"),
            teleport_key = lua_group:hotkey("Break LC Teleport (Exploit)", true),
            jump_stop = lua_group:checkbox("♱ Jump Stop"),
            jump_stop_hotkey = lua_group:hotkey("Jump Stop", true),
            jump_stop_distance = lua_group:slider("\v » \rJump Stop Distance", 0, 200, 100, true, "in", 1),
            predict = lua_group:checkbox("♱ Predict Enemies"),
            predict_key = lua_group:hotkey("Predict Enemies", true),
            aimtools = lua_group:checkbox("♱ Aim Tools"),
            aimtools_priority = lua_group:checkbox("\v » \rAim Tools: High Priority"),
            aimtools_esp_flags = lua_group:checkbox("\v » \rAim Tools: ESP Flags"),
            aimtools_baim_safe = lua_group:checkbox("\v » \rAim Tools: Baim & Safe Settings"),
            aimtools_value_baim = lua_group:slider("\v » \rBaim < HP", 0, 100, 25, true, " ", 1, {[0] = "Disabled"}),
            aimtools_value_safe = lua_group:slider("\v » \rSafe < HP", 0, 100, 25, true, " ", 1, {[0] = "Disabled"}),
            delay_shot = lua_group:checkbox("♱ Delay Shot"),
            -- ▪
            autobuy = lua_group:checkbox("⚚ Smart AutoBuy"),
            autobuy_primary = lua_group:combobox("\v » \rPrimary", {"None", "AWP", "Auto", "Scout"}),
            autobuy_second = lua_group:combobox("\v » \rSecond", {"None", "Deagle | R8", "Dualies", "P250", "CZ | FN57 | Tec9"}),
            autobuy_nades = lua_group:multiselect("\v » \rNades", {"Molotov", "Hegrenade", "Smoke"}),
            autobuy_other = lua_group:multiselect("\v » \rOther", {"Vesthelm", "Vest", "Taser", "Defuser"}),
            spammers = lua_group:checkbox("␥ Trashralk"),
            spammers2 = lua_group:combobox("Select type Trashtalk", {"Ragebait (1)", "Russian rage"}),
            clantag2 = lua_group:checkbox("␥ Clantag"),
            
            -- ▪
            model_label_sep = lua_group:checkbox('Enable Agent Changer'),
            model_check = lua_group:multiselect('Agent changer', {"CT", "T"}),
            localplayer_model_ct = lua_group:combobox("CT Model", model_names_ct),
            localplayer_model_t = lua_group:combobox("T Model", model_names),


            warmup_settings = warmup_group:button("Default Local Server Settings", function() return client.exec('sv_cheats 1; mp_do_warmup_offine 1; bot_stop 1; sv_airaccelerate 100; sv_infinite_ammo 1; sv_regeneration_force_on 1; sv_grenade_trajectory 1; sv_grenade_trajectory_thickness 0.2; bot_kick; give weapon_hegrenade; give weapon_molotov; give weapon_smokegrenade; give weapon_ssg08; mp_warmuptime 9999999999999 mp_autoteambalance 0;mp_limitteams 0;mp_death_drop_gun 0;mp_buy_anywhere 1; impulse 101') end),
        },
        config = {
            list = config_group:listbox('Configs', '', false),
            name = config_group:textbox('Configuration name', '', false),
            load = config_group:button('Load', function() end),

            save = config_group:button('Create \v/\r Save', function() end),
    
            delete = config_group:button('Delete', function() end),
            import = config_group:button('Import from \vclipboard', function() end),
            export = config_group:button('Export to \vclipboard', function() end)
        }
    }
            lua_menu.misc.delay_shot:set_callback(function()
    ui.set(ref.delayshot, lua_menu.misc.delay_shot:get())
end)
     




    local antiaim_system = {}

    for i=1, #antiaim_cond do
        antiaim_system[i] = {
            label = lua_group:label('» Conditional \vBuilder\r Setup ༒︎ '),
            enable = lua_group:checkbox('Enable · '..antiaim_cond[i]),
            yaw_type = lua_group:combobox(short_cond[i]..' Yaw Type', {"Default", "Delay"}),
            yaw_delay = lua_group:slider(short_cond[i]..' Delay Ticks', 1, 14, 4, true, 't', 1),
            yaw_left = lua_group:slider(short_cond[i]..' Yaw Left', -180, 180, 0, true, '°', 1),
            yaw_right = lua_group:slider(short_cond[i]..' Yaw Right', -180, 180, 0, true, '°', 1),
            yaw_random = lua_group:slider(short_cond[i]..' Randomization', 0, 100, 0, true, '%', 1),
            mod_type = lua_group:combobox(short_cond[i]..' Jitter Type', {'Off', 'Offset', 'Center', 'Random', 'Skitter'}),
            mod_dm = lua_group:slider(short_cond[i]..' Jitter Amount', -180, 180, 0, true, '°', 1),
            body_yaw_type = lua_group:combobox(short_cond[i]..' Body Yaw', {'Off', 'Opposite', 'Jitter', 'Static'}),
            body_slider = lua_group:slider(short_cond[i]..' Body Yaw Amount', -180, 180, 0, true, '°', 1),
            force_def = lua_group:checkbox(short_cond[i]..' Force Defensive'),
            defensive = lua_group:checkbox(short_cond[i]..' Defensive Anti~Aim'),
            defensive_type = lua_group:combobox(short_cond[i]..' Defensive Type', {'Default', 'Builder'}),

            defensive_yaw = lua_group:combobox(short_cond[i]..' Defensive Yaw', {'Off', 'Spin', 'Jitter', "Opposite", 'Random'}),

            yaw_value = lua_group:slider(short_cond[i]..' Yaw Value', -180, 180, 0, true, '°', 1),
            yaw_value_opposite = lua_group:slider(short_cond[i]..' Yaw Value', -180, 180, 0, true, '°', 1),
            yaw_value_jitter1 = lua_group:slider(short_cond[i]..' Yaw Value \v#1', -180, 180, 0, true, '°', 1),
            yaw_value_jitter2 = lua_group:slider(short_cond[i]..' Yaw Value \v#2', -180, 180, 0, true, '°', 1),
            yaw_value_random1 = lua_group:slider(short_cond[i]..' Yaw Value \v#1', -180, 180, 0, true, '°', 1),
            yaw_value_random2 = lua_group:slider(short_cond[i]..' Yaw Value \v#2', -180, 180, 0, true, '°', 1),
            def_yaw_value = lua_group:slider(short_cond[i]..' [DEF] Yaw Value', -180, 180, 0, true, '°', 1),
            def_mod_type = lua_group:combobox(short_cond[i]..' [DEF] Jitter Type', {'Off', 'Offset', 'Center', 'Random', 'Skitter'}),
            def_mod_dm = lua_group:slider(short_cond[i]..' [DEF] Jitter Amount', -180, 180, 0, true, '°', 1),
            def_body_yaw_type = lua_group:combobox(short_cond[i]..' [DEF] Body Yaw', {'Off', 'Opposite', 'Jitter', 'Static'}),
            def_body_slider = lua_group:slider(short_cond[i]..' [DEF] Body Yaw Amount', -180, 180, 0, true, '°', 1),

            defensive_pitch = lua_group:combobox(short_cond[i]..' Defensive Pitch', {'Off', 'Custom', 'Jitter', 'Random', "Spin"}),
            pitch_value = lua_group:slider(short_cond[i]..' Pitch Value', -89, 89, 0, true, '°', 1),
            pitch_value1 = lua_group:slider(short_cond[i]..' Pitch Value \v#1', -89, 89, 0, true, '°', 1),
            pitch_value2 = lua_group:slider(short_cond[i]..' Pitch Value \v#2', -89, 89, 0, true, '°', 1),
            pitch_spin_value = lua_group:slider(short_cond[i]..' Pitch Value', -89, 89, 0, true, '°', 1),
            pitch_spin_speed = lua_group:slider(short_cond[i]..' Speed', -10, 10, 0, true, '°', 1),
            pitch_random_value1 = lua_group:slider(short_cond[i]..' Pitch Value \v#1', -89, 89, 0, true, '°', 1),
            pitch_random_value2 = lua_group:slider(short_cond[i]..' Pitch Value \v#2', -89, 89, 0, true, '°', 1),
        }
    end

    local info_tab = {lua_menu.main.tab, " Information"}
    local aa_tab = {lua_menu.main.tab, " Anti-Aim System"}
    local misc_tab = {lua_menu.main.tab, " Miscellaneous"}
    local configs_tab = {lua_menu.main.tab, " Configs System"}
    local visual_tab = {lua_menu.main.tab, " Visuals Features"}
    local aa_builder = {lua_menu.antiaim.tab, "Builder"}
    local aa_main = {lua_menu.antiaim.tab, "Main"}
    local ragebot_tab = {lua_menu.main.tab, " Ragebot Features"}

    lua_menu.config.list:depend(configs_tab)
    lua_menu.config.name:depend(configs_tab)
    lua_menu.config.save:depend(configs_tab)
    lua_menu.config.load:depend(configs_tab)
    lua_menu.config.delete:depend(configs_tab)
    lua_menu.config.import:depend(configs_tab)
    lua_menu.config.export:depend(configs_tab)
    lua_menu.main.user:depend(info_tab)
    lua_menu.main.build:depend(info_tab)
    lua_menu.main.last_upd:depend(info_tab)
    lua_menu.main.discord_link:depend(info_tab)
    lua_menu.main.telegram_link:depend(info_tab)
    lua_menu.antiaim.tab:depend(aa_tab)
    lua_menu.antiaim.addons:depend(aa_tab, aa_main)
    lua_menu.antiaim.anti_bruteforce_mode:depend(aa_tab, {lua_menu.antiaim.addons, "Anti-Bruteforce"}, aa_main)
    lua_menu.antiaim.safe_head:depend(aa_tab, {lua_menu.antiaim.addons, "Safe Head"}, aa_main)
    lua_menu.antiaim.yaw_base:depend(aa_tab, aa_main)
    lua_menu.antiaim.condition:depend(aa_tab, aa_builder)
    lua_menu.antiaim.yaw_direction:depend(aa_tab, aa_main)
    lua_menu.antiaim.key_freestand:depend(aa_tab, {lua_menu.antiaim.yaw_direction, "Freestanding"}, aa_main)
    lua_menu.antiaim.key_left:depend(aa_tab, {lua_menu.antiaim.yaw_direction, "Manual"}, aa_main)
    lua_menu.antiaim.key_right:depend(aa_tab, {lua_menu.antiaim.yaw_direction, "Manual"}, aa_main)
    lua_menu.antiaim.key_forward:depend(aa_tab, {lua_menu.antiaim.yaw_direction, "Manual"}, aa_main)
    lua_menu.antiaim.key_edge_yaw:depend(aa_tab, {lua_menu.antiaim.yaw_direction, "Edge Yaw"}, aa_main)
    lua_menu.misc.watermark:depend(visual_tab)
    lua_menu.misc.watermark_color:depend(visual_tab, {lua_menu.misc.watermark, true})
    lua_menu.misc.watermark_style:depend(visual_tab, {lua_menu.misc.watermark, true})
    lua_menu.misc.watermark_position:depend(visual_tab, {lua_menu.misc.watermark, true})
    lua_menu.misc.cross_ind:depend(visual_tab)
    lua_menu.misc.damage_indicator:depend(visual_tab)
    lua_menu.misc.manual_arrows:depend(visual_tab)
    lua_menu.misc.damage_indicator_mode:depend(visual_tab, {lua_menu.misc.damage_indicator, true})
    lua_menu.misc.damage_indicator_style:depend(visual_tab, {lua_menu.misc.damage_indicator, true})
    lua_menu.misc.info_panel:depend(visual_tab)
    lua_menu.misc.defensive_window:depend(visual_tab)
    lua_menu.misc.defensive_style:depend(visual_tab, {lua_menu.misc.defensive_window, true})
    lua_menu.misc.velocity_window:depend(visual_tab)
    lua_menu.misc.velocity_style:depend(visual_tab, {lua_menu.misc.velocity_window, true})
    lua_menu.misc.cross_color:depend(visual_tab, {lua_menu.misc.cross_ind, true})
    lua_menu.misc.key_color:depend(visual_tab, {lua_menu.misc.cross_ind, true})
    lua_menu.misc.log:depend(visual_tab)
    lua_menu.misc.log_type:depend(visual_tab, {lua_menu.misc.log, true})
    lua_menu.misc.log_glow_color:depend(visual_tab, {lua_menu.misc.log, true})
    lua_menu.misc.log_hit_color:depend(visual_tab, {lua_menu.misc.log, true})
    lua_menu.misc.log_miss_color:depend(visual_tab, {lua_menu.misc.log, true})
    lua_menu.misc.perfomance_boost:depend(misc_tab)
    lua_menu.misc.fast_ladder:depend(misc_tab)
    lua_menu.misc.delay_shot:depend(ragebot_tab)
    lua_menu.misc.fix_hideshots:depend(misc_tab)
    lua_menu.misc.animation:depend(misc_tab)
    lua_menu.misc.animation_ground:depend(misc_tab, {lua_menu.misc.animation, true})
    lua_menu.misc.animation_air:depend(misc_tab, {lua_menu.misc.animation, true})
    lua_menu.misc.animation_addons:depend(misc_tab, {lua_menu.misc.animation, true})
    lua_menu.misc.animation_body_lean:depend(misc_tab, {lua_menu.misc.animation, true}, {lua_menu.misc.animation_addons, "Adjust Body Lean"})
    lua_menu.misc.third_person:depend(misc_tab)
    lua_menu.misc.third_person_value:depend(misc_tab, {lua_menu.misc.third_person, true})
    lua_menu.misc.aspectratio:depend(misc_tab)
    lua_menu.misc.aspectratio_value:depend(misc_tab, {lua_menu.misc.aspectratio, true})
    lua_menu.misc.teleport:depend(misc_tab)
    lua_menu.misc.teleport_key:depend(misc_tab)
    lua_menu.misc.predict:depend(ragebot_tab)
    lua_menu.misc.jump_stop:depend(ragebot_tab)
    lua_menu.misc.jump_stop_distance:depend(ragebot_tab, {lua_menu.misc.jump_stop, true})
    lua_menu.misc.jump_stop_hotkey:depend(ragebot_tab, {lua_menu.misc.jump_stop, true})
    lua_menu.misc.predict_key:depend(ragebot_tab)
    lua_menu.misc.aimtools:depend(ragebot_tab)
    lua_menu.misc.aimtools_priority:depend(ragebot_tab, {lua_menu.misc.aimtools, true})
    lua_menu.misc.aimtools_esp_flags:depend(ragebot_tab, {lua_menu.misc.aimtools, true})
    lua_menu.misc.aimtools_baim_safe:depend(ragebot_tab, {lua_menu.misc.aimtools, true})
    lua_menu.misc.aimtools_value_baim:depend(ragebot_tab, {lua_menu.misc.aimtools, true}, {lua_menu.misc.aimtools_baim_safe, true})
    lua_menu.misc.aimtools_value_safe:depend(ragebot_tab, {lua_menu.misc.aimtools, true}, {lua_menu.misc.aimtools_baim_safe, true})
    lua_menu.misc.autobuy:depend(misc_tab)
    lua_menu.misc.autobuy_primary:depend(misc_tab, {lua_menu.misc.autobuy, true})
    lua_menu.misc.autobuy_second:depend(misc_tab, {lua_menu.misc.autobuy, true})
    lua_menu.misc.autobuy_nades:depend(misc_tab, {lua_menu.misc.autobuy, true})
    lua_menu.misc.autobuy_other:depend(misc_tab, {lua_menu.misc.autobuy, true})
    lua_menu.misc.resolver:depend(ragebot_tab)
    lua_menu.misc.resolver_flag:depend(ragebot_tab, {lua_menu.misc.resolver, true})
    lua_menu.misc.resolver_type:depend(ragebot_tab, {lua_menu.misc.resolver, true})
    lua_menu.misc.spammers:depend(misc_tab)
    lua_menu.misc.spammers2:depend(misc_tab, {lua_menu.misc.spammers, true})
    lua_menu.misc.clantag2:depend(misc_tab)
    lua_menu.misc.warmup_settings:depend(misc_tab)
    -- lua_menu.misc.Backtrack2:depend(ragebot_tab) -- Backtrack2 не определен в меню
    
    -- Model Changer dependencies
    local model_ct_check = {lua_menu.misc.model_check, function() return contains(lua_menu.misc.model_check:get(), 'CT') end}
    local model_t_check = {lua_menu.misc.model_check, function() return contains(lua_menu.misc.model_check:get(), 'T') end}
    
    lua_menu.misc.model_label_sep:depend(misc_tab)
    lua_menu.misc.model_check:depend(misc_tab, {lua_menu.misc.model_label_sep, true})
    lua_menu.misc.localplayer_model_ct:depend(misc_tab, {lua_menu.misc.model_label_sep, true}, model_ct_check)
    lua_menu.misc.localplayer_model_t:depend(misc_tab, {lua_menu.misc.model_label_sep, true}, model_t_check)


    for i=1, #antiaim_cond do
        local cond_check = {lua_menu.antiaim.condition, function() return (i ~= 1) end}
        local tab_cond = {lua_menu.antiaim.condition, antiaim_cond[i]}
        local cnd_en = {antiaim_system[i].enable, function() if (i == 1) then return true else return antiaim_system[i].enable:get() end end}
        local aa_tab = {lua_menu.main.tab, " Anti-Aim System"}
        local jit_ch = {antiaim_system[i].mod_type, function() return antiaim_system[i].mod_type:get() ~= "Off" end}
        local def_jit_ch = {antiaim_system[i].def_mod_type, function() return antiaim_system[i].def_mod_type:get() ~= "Off" end}
        local def_ch = {antiaim_system[i].defensive, true}
        local body_ch = {antiaim_system[i].body_yaw_type, function() return antiaim_system[i].body_yaw_type:get() ~= "Off" end}
        local def_body_ch = {antiaim_system[i].def_body_yaw_type, function() return antiaim_system[i].def_body_yaw_type:get() ~= "Off" end}
        local delay_ch = {antiaim_system[i].yaw_type, "Delay"}
        local yaw_ch = {antiaim_system[i].defensive_yaw, "Spin"}
        local yaw_ch1 = {antiaim_system[i].defensive_yaw, "Jitter"}
        local yaw_ch2 = {antiaim_system[i].defensive_yaw, "Random"}
        local yaw_ch3 = {antiaim_system[i].defensive_yaw, "Opposite"}
        local def_yaw_ch = {antiaim_system[i].defensive_type, "Builder"}

        local def_def = {antiaim_system[i].defensive_type, "Default"}
        local def_build = {antiaim_system[i].defensive_type, "Builder"}
        local pitch_ch = {antiaim_system[i].defensive_pitch, "Custom"}
        local pitch_ch1 = {antiaim_system[i].defensive_pitch, "Jitter"}
        local pitch_ch2 = {antiaim_system[i].defensive_pitch, "Spin"}
        local pitch_ch3 = {antiaim_system[i].defensive_pitch, "Random"}
        antiaim_system[i].label:depend(tab_cond, aa_tab, aa_builder)
        antiaim_system[i].enable:depend(cond_check, tab_cond, aa_tab, aa_builder)
        antiaim_system[i].yaw_type:depend(cnd_en, tab_cond, aa_tab, aa_builder)
        antiaim_system[i].yaw_delay:depend(cnd_en, tab_cond, aa_tab, delay_ch, aa_builder)
        antiaim_system[i].yaw_left:depend(cnd_en, tab_cond, aa_tab, aa_builder)
        antiaim_system[i].yaw_right:depend(cnd_en, tab_cond, aa_tab, aa_builder)
        antiaim_system[i].yaw_random:depend(cnd_en, tab_cond, aa_tab, aa_builder)
        antiaim_system[i].mod_type:depend(cnd_en, tab_cond, aa_tab, aa_builder)

        antiaim_system[i].mod_dm:depend(cnd_en, tab_cond, aa_tab, jit_ch, aa_builder)
        antiaim_system[i].body_yaw_type:depend(cnd_en, tab_cond, aa_tab, aa_builder)
        antiaim_system[i].body_slider:depend(cnd_en, tab_cond, aa_tab, body_ch, aa_builder)

        antiaim_system[i].force_def:depend(cnd_en, tab_cond, aa_tab, aa_builder)
        antiaim_system[i].defensive:depend(cnd_en, tab_cond, aa_tab, aa_builder)
        antiaim_system[i].defensive_type:depend(cnd_en, tab_cond, aa_tab, def_ch, aa_builder)
        antiaim_system[i].defensive_yaw:depend(cnd_en, tab_cond, aa_tab, def_ch, def_def, aa_builder)
        antiaim_system[i].def_yaw_value:depend(cnd_en, tab_cond, aa_tab, def_ch, def_yaw_ch, aa_builder)
        antiaim_system[i].yaw_value:depend(cnd_en, tab_cond, aa_tab, def_ch, yaw_ch, def_def, aa_builder)
        antiaim_system[i].yaw_value_jitter1:depend(cnd_en, tab_cond, aa_tab, def_ch, yaw_ch1, def_def, aa_builder)
        antiaim_system[i].yaw_value_jitter2:depend(cnd_en, tab_cond, aa_tab, def_ch, yaw_ch1, def_def, aa_builder)
        antiaim_system[i].yaw_value_random1:depend(cnd_en, tab_cond, aa_tab, def_ch, yaw_ch2, def_def, aa_builder)
        antiaim_system[i].yaw_value_random2:depend(cnd_en, tab_cond, aa_tab, def_ch, yaw_ch2, def_def, aa_builder)
        antiaim_system[i].yaw_value_opposite:depend(cnd_en, tab_cond, aa_tab, def_ch, yaw_ch3, def_def, aa_builder)
        antiaim_system[i].def_mod_type:depend(cnd_en, tab_cond, aa_tab, def_ch, def_build, aa_builder)
        antiaim_system[i].def_mod_dm:depend(cnd_en, tab_cond, aa_tab, def_ch, def_build, def_jit_ch, aa_builder)
        antiaim_system[i].def_body_yaw_type:depend(cnd_en, tab_cond, aa_tab, def_ch, def_build, aa_builder)
        antiaim_system[i].def_body_slider:depend(cnd_en, tab_cond, aa_tab, def_ch, def_build, def_body_ch, aa_builder)
        antiaim_system[i].defensive_pitch:depend(cnd_en, tab_cond, aa_tab, def_ch, aa_builder)
        antiaim_system[i].pitch_value:depend(cnd_en, tab_cond, aa_tab, def_ch, pitch_ch, aa_builder)
        antiaim_system[i].pitch_value1:depend(cnd_en, tab_cond, aa_tab, def_ch, pitch_ch1, aa_builder)
        antiaim_system[i].pitch_value2:depend(cnd_en, tab_cond, aa_tab, def_ch, pitch_ch1, aa_builder)
        antiaim_system[i].pitch_spin_value:depend(cnd_en, tab_cond, aa_tab, def_ch, pitch_ch2, aa_builder)
        antiaim_system[i].pitch_spin_speed:depend(cnd_en, tab_cond, aa_tab, def_ch, pitch_ch2, aa_builder)
        antiaim_system[i].pitch_random_value1:depend(cnd_en, tab_cond, aa_tab, def_ch, pitch_ch3, aa_builder)
        antiaim_system[i].pitch_random_value2:depend(cnd_en, tab_cond, aa_tab, def_ch, pitch_ch3, aa_builder)
    end

    -- Model Changer Callbacks
    client.set_event_callback("pre_render", function()
        local me = entity.get_local_player()
        if me == nil then return end

        local team = entity.get_prop(me, 'm_iTeamNum') 

        if (team == 2 and contains(lua_menu.misc.model_check:get(), 'T') ) or (team == 3 and contains(lua_menu.misc.model_check:get(), 'CT') ) then
            change_model(me, team == 2 and t_player_models[lua_menu.misc.localplayer_model_t:get()] or ct_player_models[lua_menu.misc.localplayer_model_ct:get()] )
        end
    end)

    local function hide_original_menu(state)
        ui.set_visible(ref.enabled, state)
        ui.set_visible(ref.pitch[1], state)
        ui.set_visible(ref.pitch[2], state)
        ui.set_visible(ref.yawbase, state)
        ui.set_visible(ref.yaw[1], state)
        ui.set_visible(ref.yaw[2], state)
        ui.set_visible(ref.yawjitter[1], state)
        ui.set_visible(ref.roll[1], state)
        ui.set_visible(ref.yawjitter[2], state)
        ui.set_visible(ref.bodyyaw[1], state)
        ui.set_visible(ref.bodyyaw[2], state)
        ui.set_visible(ref.fsbodyyaw, state)
        ui.set_visible(ref.edgeyaw, state)
        ui.set_visible(ref.freestand[1], state)
        ui.set_visible(ref.freestand[2], state)
    end

    local function randomize_value(original_value, percent)
        local min_range = original_value - (original_value * percent / 100)
        local max_range = original_value + (original_value * percent / 100)
        return math.random(min_range, max_range)
    end

    last_sim_time = 0
    native_GetClientEntity = vtable_bind('client.dll', 'VClientEntityList003', 3, 'void*(__thiscall*)(void*, int)')

    client.set_event_callback("predict_command", function(cmd)
        if cmd.command_number == breaker.cmd then
            local tickbase = entity.get_prop(entity.get_local_player(), "m_nTickBase")
            breaker.defensive = math.abs(tickbase - breaker.defensive_check)
            breaker.defensive_check = math.max(tickbase, breaker.defensive_check)
            breaker.cmd = 0
        end
    end)
    
    client.set_event_callback("run_command", function(cmd)
        breaker.cmd = cmd.command_number
        if cmd.chokedcommands == 0 then
            breaker.origin = vector(entity.get_origin(entity.get_local_player()))
            if breaker.last_origin ~= nil then
                breaker.tp_dist = (breaker.origin - breaker.last_origin):length2dsqr()
                gram_update(breaker.tp_data, breaker.tp_dist, true)
            end
            breaker.last_origin = breaker.origin
        end
        
    end)

    local id = 1   
    local function player_state(cmd)
        local lp = entity.get_local_player()
        if lp == nil then return end

        local vecvelocity = { entity.get_prop(lp, 'm_vecVelocity') }
        local flags = entity.get_prop(lp, 'm_fFlags')
        local velocity = math.sqrt(vecvelocity[1]^2+vecvelocity[2]^2)
        local groundcheck = bit.band(flags, 1) == 1
        local jumpcheck = bit.band(flags, 1) == 0 or cmd.in_jump == 1
        local ducked = entity.get_prop(lp, 'm_flDuckAmount') > 0.7
        local duckcheck = ducked or ui.get(ref.fakeduck)
        local slowwalk_key = ui.get(ref.slow[1]) and ui.get(ref.slow[2])

        if jumpcheck and duckcheck then return "Air+C"
        elseif jumpcheck then return "Air"
        elseif duckcheck and velocity > 10 then return "Duck-Moving"
        elseif duckcheck and velocity < 10 then return "Duck"
        elseif groundcheck and slowwalk_key and velocity > 10 then return "Walking"
        elseif groundcheck and velocity > 5 then return "Moving"
        elseif groundcheck and velocity < 5 then return "Stand"
        else return "Global" end
    end

    local yaw_direction = 0
    local last_press_t_dir = 0

    local run_direction = function()
        ui.set(ref.freestand[1], lua_menu.antiaim.yaw_direction:get("Freestanding"))
        ui.set(ref.freestand[2], lua_menu.antiaim.key_freestand:get() and 'Always on' or 'On hotkey')

        if yaw_direction ~= 0 then
            ui.set(ref.freestand[1], false)
        end

        if lua_menu.antiaim.yaw_direction:get("Edge Yaw") then
            ui.set(ref.edgeyaw, lua_menu.antiaim.key_edge_yaw:get())
        else
            ui.set(ref.edgeyaw, false)
        end

        if lua_menu.antiaim.yaw_direction:get("Manual") and lua_menu.antiaim.key_right:get() and last_press_t_dir + 0.2 < globals.curtime() then
            yaw_direction = yaw_direction == 90 and 0 or 90
            last_press_t_dir = globals.curtime()
        elseif lua_menu.antiaim.yaw_direction:get("Manual") and lua_menu.antiaim.key_left:get() and last_press_t_dir + 0.2 < globals.curtime() then
            yaw_direction = yaw_direction == -90 and 0 or -90
            last_press_t_dir = globals.curtime()
        elseif lua_menu.antiaim.yaw_direction:get("Manual") and lua_menu.antiaim.key_forward:get() and last_press_t_dir + 0.2 < globals.curtime() then
            yaw_direction = yaw_direction == 180 and 0 or 180
            last_press_t_dir = globals.curtime()
        elseif last_press_t_dir > globals.curtime() then
            last_press_t_dir = globals.curtime()
        end
    end

    anti_knife_dist = function (x1, y1, z1, x2, y2, z2)
        return math.sqrt((x2 - x1)^2 + (y2 - y1)^2 + (z2 - z1)^2)
    end

    local function is_vulnerable()
        for _, v in ipairs(entity.get_players(true)) do
            local flags = (entity.get_esp_data(v)).flags
            if bit.band(flags, bit.lshift(1, 11)) ~= 0 then
                return true
            end
        end
        return false
    end

    local function safe_func()
        ui.set(ref.yawjitter[1], "Off")
        ui.set(ref.yaw[1], '180')
        ui.set(ref.bodyyaw[1], "Static")
        ui.set(ref.bodyyaw[2], 1)
        ui.set(ref.yaw[2], 14)
        ui.set(ref.pitch[2], 89)
    end

    local current_tickcount = 0
    local to_jitter = false
    local to_defensive = true
    local first_execution = true
    local yaw_amount = 0

    local function get_velocity(player)
        local x,y,z = entity.get_prop(player, "m_vecVelocity")
        if x == nil then return end
        return math.sqrt(x*x + y*y + z*z)
    end

    local function aa_setup(cmd)
    local lp = entity.get_local_player()
    local tp_amount = get_average(breaker.tp_data)/get_velocity(entity.get_local_player())*100 
    local is_defensive = (breaker.defensive > 1) and not (tp_amount >= 25 and breaker.defensive >= 13) and ui.get(ref.dt[1]) and ui.get(ref.dt[2]) and not ui.get(ref.fakeduck)
        if lp == nil then return end
        if player_state(cmd) == "Duck-Moving" and antiaim_system[8].enable:get() then id = 8
        elseif player_state(cmd) == "Duck" and antiaim_system[7].enable:get() then id = 7
        elseif player_state(cmd) == "Air+C" and antiaim_system[6].enable:get() then id = 6
        elseif player_state(cmd) == "Air" and antiaim_system[5].enable:get() then id = 5
        elseif player_state(cmd) == "Moving" and antiaim_system[4].enable:get() then id = 4
        elseif player_state(cmd) == "Walking" and antiaim_system[3].enable:get() then id = 3
        elseif player_state(cmd) == "Stand" and antiaim_system[2].enable:get() then id = 2
        else id = 1 end

        ui.set(ref.roll[1], 0)

        run_direction()

        if globals.tickcount() > current_tickcount + antiaim_system[id].yaw_delay:get() then
            if cmd.chokedcommands == 0 then
                to_jitter = not to_jitter
                current_tickcount = globals.tickcount()
            end
        elseif globals.tickcount() <  current_tickcount then
            current_tickcount = globals.tickcount()
        end

        ui.set(ref.fsbodyyaw, false)
        ui.set(ref.pitch[1], "Custom")
        ui.set(ref.yawbase, lua_menu.antiaim.yaw_base:get())

        local selected_builder_def = antiaim_system[id].defensive:get() and antiaim_system[id].defensive_type:get() == "Builder" and is_defensive

        if selected_builder_def then
            ui.set(ref.yawjitter[1], antiaim_system[id].def_mod_type:get())
            ui.set(ref.yawjitter[2], antiaim_system[id].def_mod_dm:get())
            ui.set(ref.bodyyaw[1], antiaim_system[id].def_body_yaw_type:get())
            ui.set(ref.bodyyaw[2], antiaim_system[id].def_body_slider:get())
            yaw_amount = yaw_direction == 0 and antiaim_system[id].def_yaw_value:get() or yaw_direction
        else
            ui.set(ref.yawjitter[1], antiaim_system[id].mod_type:get())
            ui.set(ref.yawjitter[2], antiaim_system[id].mod_dm:get())
            if antiaim_system[id].yaw_type:get() == "Delay" then
                ui.set(ref.bodyyaw[1], "Static")
                ui.set(ref.bodyyaw[2], to_jitter and 1 or -1)
            else
                ui.set(ref.bodyyaw[1], antiaim_system[id].body_yaw_type:get())
                ui.set(ref.bodyyaw[2], antiaim_system[id].body_slider:get())
            end
        end

        if is_defensive and antiaim_system[id].defensive:get() and antiaim_system[id].defensive_type:get() == "Default" and antiaim_system[id].defensive_yaw:get() == "Spin" then
            ui.set(ref.yaw[1], 'Spin')
        else
            ui.set(ref.yaw[1], '180')
        end
        
        cmd.force_defensive = antiaim_system[id].force_def:get() and to_defensive

        local desync_type = entity.get_prop(lp, 'm_flPoseParameter', 11) * 120 - 60
        local desync_side = desync_type > 0

        if is_defensive and antiaim_system[id].defensive:get() and antiaim_system[id].defensive_type:get() == "Default" then
            if antiaim_system[id].defensive_yaw:get() == "Spin" then
                yaw_amount = antiaim_system[id].yaw_value:get()
            elseif antiaim_system[id].defensive_yaw:get() == "Jitter" then
                yaw_amount = desync_side and antiaim_system[id].yaw_value_jitter1:get() or antiaim_system[id].yaw_value_jitter2:get()
            elseif antiaim_system[id].defensive_yaw:get() == "Opposite" then
                yaw_amount = antiaim_system[id].yaw_value_opposite:get()
            elseif antiaim_system[id].defensive_yaw:get() == "Random" then
                yaw_amount = math.random(antiaim_system[id].yaw_value_random1:get(), antiaim_system[id].yaw_value_random2:get())
            else
                yaw_amount = desync_side and randomize_value(antiaim_system[id].yaw_left:get(), antiaim_system[id].yaw_random:get()) or randomize_value(antiaim_system[id].yaw_right:get(), antiaim_system[id].yaw_random:get())
            end
        elseif not selected_builder_def then
            yaw_amount = desync_side and randomize_value(antiaim_system[id].yaw_left:get(), antiaim_system[id].yaw_random:get()) or randomize_value(antiaim_system[id].yaw_right:get(), antiaim_system[id].yaw_random:get())
            ui.set(ref.pitch[2], 89)
        end


        if is_defensive and antiaim_system[id].defensive:get() then
            if antiaim_system[id].defensive_pitch:get() == "Custom" then
                ui.set(ref.pitch[2], antiaim_system[id].pitch_value:get())
            elseif antiaim_system[id].defensive_pitch:get() == "Jitter" then
                ui.set(ref.pitch[2], desync_side and antiaim_system[id].pitch_value1:get() or antiaim_system[id].pitch_value2:get())
            elseif antiaim_system[id].defensive_pitch:get() == "Random" then
                ui.set(ref.pitch[2], math.random(antiaim_system[id].pitch_random_value1:get(), antiaim_system[id].pitch_random_value2:get()))
            elseif antiaim_system[id].defensive_pitch:get() == "Spin" then
                local speed = antiaim_system[id].pitch_spin_speed:get()
                local range = antiaim_system[id].pitch_spin_value:get()
                ui.set(ref.pitch[2], (-1 + -math.sin(globals.curtime() * speed) * range))
            else
                ui.set(ref.pitch[2], 89)
            end
        end

        ui.set(ref.yaw[2], yaw_direction == 0 and yaw_amount or yaw_direction)

        local players = entity.get_players(true)
        if lua_menu.antiaim.addons:get("Spin AA On Warmup") then
            if entity.get_prop(entity.get_game_rules(), "m_bWarmupPeriod") == 1 then
                ui.set(ref.yaw[1], "Spin")
                ui.set(ref.yaw[2], 20)
                ui.set(ref.yawjitter[2], 0)
                ui.set(ref.bodyyaw[1], "Static")
                ui.set(ref.bodyyaw[2], 0)
                ui.set(ref.pitch[1], "Custom")
                ui.set(ref.pitch[2], 0) 
            end
        end

        if lua_menu.antiaim.addons:get("Anti-Bruteforce") then
            if lua_menu.antiaim.anti_bruteforce_mode:get("Minimal") then
            ui.set(ref.yaw[2], yaw_direction == 0 and yaw_amount or yaw_direction + math.random(-1, 1) % 2)
            elseif lua_menu.antiaim.anti_bruteforce_mode:get("Big") then
            ui.set(ref.yaw[2], yaw_direction == 0 and yaw_amount or yaw_direction + math.random(-10, 10) % 2)
            end
        end

        local threat = client.current_threat()
        local lp_weapon = entity.get_player_weapon(lp)
        local lp_orig_x, lp_orig_y, lp_orig_z = entity.get_prop(lp, "m_vecOrigin")
        local flags = entity.get_prop(lp, 'm_fFlags')
        local jumpcheck = bit.band(flags, 1) == 0 or cmd.in_jump == 1
        local ducked = entity.get_prop(lp, 'm_flDuckAmount') > 0.7

        if lua_menu.antiaim.addons:get("Safe Head") then
            if lp_weapon ~= nil then
                if lua_menu.antiaim.safe_head:get("Air+C Knife") then
                    if jumpcheck and ducked and entity.get_classname(lp_weapon) == "CKnife" then
                        safe_func()
                    end
                end
                if lua_menu.antiaim.safe_head:get("Air+C Zeus") then
                    if jumpcheck and ducked and entity.get_classname(lp_weapon) == "CWeaponTaser" then
                        safe_func()
                    end
                end
                if lua_menu.antiaim.safe_head:get("High Distance") then
                    if threat ~= nil then
                        threat_x, threat_y, threat_z = entity.get_prop(threat, "m_vecOrigin")
                        threat_dist = anti_knife_dist(lp_orig_x, lp_orig_y, lp_orig_z, threat_x, threat_y, threat_z)
                        if threat_dist > 1000 then
                            safe_func()
                        end
                    end
                end
            end
        end
                    
        if lua_menu.antiaim.addons:get("Anti Backstab") then
            for i=1, #players do
                if players == nil then return end
                enemy_orig_x, enemy_orig_y, enemy_orig_z = entity.get_prop(players[i], "m_vecOrigin")
                distance_to = anti_knife_dist(lp_orig_x, lp_orig_y, lp_orig_z, enemy_orig_x, enemy_orig_y, enemy_orig_z)
                weapon = entity.get_player_weapon(players[i])
                if weapon == nil then return end
                if entity.get_classname(weapon) == "CKnife" and distance_to <= 250 then
                    ui.set(ref.yaw[2], 180)
                    ui.set(ref.yawbase, "At targets")
                end
            end
        end
    end

    local lastmiss = 0
    local function GetClosestPoint(A, B, P)
        a_to_p = { P[1] - A[1], P[2] - A[2] }
        a_to_b = { B[1] - A[1], B[2] - A[2] }
    
        atb2 = a_to_b[1]^2 + a_to_b[2]^2
    
        atp_dot_atb = a_to_p[1]*a_to_b[1] + a_to_p[2]*a_to_b[2]
        t = atp_dot_atb / atb2
        
        return { A[1] + a_to_b[1]*t, A[2] + a_to_b[2]*t }
    end
    
    client.set_event_callback("bullet_impact", function(e)                  
        if not entity.is_alive(entity.get_local_player()) then return end
        local ent = client.userid_to_entindex(e.userid)
        if ent ~= client.current_threat() then return end
        if entity.is_dormant(ent) or not entity.is_enemy(ent) then return end
    
        local ent_origin = { entity.get_prop(ent, "m_vecOrigin") }
        ent_origin[3] = ent_origin[3] + entity.get_prop(ent, "m_vecViewOffset[2]")
        local local_head = { entity.hitbox_position(entity.get_local_player(), 0) }
        local closest = GetClosestPoint(ent_origin, { e.x, e.y, e.z }, local_head)
        local delta = { local_head[1]-closest[1], local_head[2]-closest[2] }
        local delta_2d = math.sqrt(delta[1]^2+delta[2]^2)
        if math.abs(delta_2d) <= 60 and globals.curtime() - lastmiss > 0.015 then
            lastmiss = globals.curtime()
            if lua_menu.misc.log_type:get("Screen") then
                renderer.log(entity.get_player_name(ent).." fired to shot to you")
            end
        end
    end)

    local function anim_breaker()
        local lp = entity.get_local_player()
        if not lp then return end
        if not entity.is_alive(lp) then return end

        local self_index = c_entity.new(lp)
        local self_anim_state = self_index:get_anim_state()
        local body_lean_value = lua_menu.misc.animation_body_lean:get()
    
        if not self_anim_state then
            return
        end

        if lua_menu.misc.animation_ground:get() == "Static" then
            ui.set(ref.leg_movement, "Always slide")
            entity.set_prop(lp, "m_flPoseParameter", 1, 0)
        elseif lua_menu.misc.animation_ground:get() == "Jitter" then
            ui.set(ref.leg_movement, "Always slide")
            entity.set_prop(lp, "m_flPoseParameter", globals.tickcount() %4 > 1 and 9/10 or 0, 0)
        elseif lua_menu.misc.animation_ground:get() == "Moonwalk" then
            ui.set(ref.leg_movement, "Never slide")
            entity.set_prop(lp, 'm_flPoseParameter', 0, 7)
        elseif lua_menu.misc.animation_ground:get() == "Randomize" then
            ui.set(ref.leg_movement, "Always slide")
            entity.set_prop(lp, "m_flPoseParameter", math.random(9, 10)/10, 0)
        end
        
        if lua_menu.misc.animation_air:get() == "Static" then
            entity.set_prop(lp, "m_flPoseParameter", 1, 6)
        elseif lua_menu.misc.animation_air:get() == "Jitter" then
            entity.set_prop(lp, "m_flPoseParameter", globals.tickcount() %4 > 1 and 9/10 or 0, 6)
        elseif lua_menu.misc.animation_air:get() == "Randomize" then
            entity.set_prop(lp, "m_flPoseParameter", math.random(0, 10)/10, 6)
        elseif lua_menu.misc.animation_air:get() == "Moonwalk" then
        self_anim_overlay = self_index:get_anim_overlay(6)

        local x_velocity = entity.get_prop(lp, 'm_vecVelocity[0]')
        if math.abs(x_velocity) >= 3 then
        self_anim_overlay.weight = 1
        end
end
end

    local function auto_tp(cmd)
        local lp = entity.get_local_player()
        if lp == nil then return end
        local flags = entity.get_prop(lp, 'm_fFlags')
        local jumpcheck = bit.band(flags, 1) == 0
        if is_vulnerable() and jumpcheck then
            cmd.force_defensive = true
            cmd.discharge_pending = true
        end
    end

    local screen = {client.screen_size()}
    local center = {screen[1]/2, screen[2]/2} 

    -- Переменные для позиции defensive window
    local defensive_window_x = data.defensive_window_x or (center[1] - 50)  -- Начальная позиция X (центр - половина ширины окна)
    local defensive_window_y = data.defensive_window_y or (screen[2] / 4 - 10)  -- Начальная позиция Y
    local defensive_window_width = 195  -- Ширина окна для Modern стиля
    local defensive_window_height = 40  -- Высота окна для Modern стиля
    local defensive_dragging = false  -- Состояние перетаскивания
    local defensive_drag_offset_x = 0  -- Смещение мыши по X
    local defensive_drag_offset_y = 0  -- Смещение мыши по Y

    -- Переменные для позиции velocity window
    local velocity_window_x = data.velocity_window_x or (center[1] - 50)  -- Начальная позиция X (центр - половина ширины окна)
    local velocity_window_y = data.velocity_window_y or (screen[2] / 3 - 10)  -- Начальная позиция Y
    local velocity_window_width = 195  -- Ширина окна для Modern стиля
    local velocity_window_height = 40  -- Высота окна для Modern стиля
    local velocity_dragging = false  -- Состояние перетаскивания
    local velocity_drag_offset_x = 0  -- Смещение мыши по X
    local velocity_drag_offset_y = 0  -- Смещение мыши по Y

    math.lerp = function(name, value, speed)
        return name + (value - name) * globals.absoluteframetime() * speed
    end

    
    -- Функция для обработки перетаскивания окон мышкой
    local function handle_window_dragging()
        if not ui.is_menu_open() then return end
        
        local mouse_x, mouse_y = ui.mouse_position()
        local mouse_left = client.key_state(0x01)
        
        -- Обработка перетаскивания Defensive Window
        if lua_menu.misc.defensive_window:get() then
            local box_width, box_height = defensive_window_width, defensive_window_height
            local box_x, box_y = defensive_window_x, defensive_window_y
            
            -- Определяем размеры окна в зависимости от стиля
            if lua_menu.misc.defensive_style:get() == "Default" or lua_menu.misc.defensive_style:get() == "Gradient" then
                box_width = 100
                box_height = 25  -- Учитываем текст сверху
                box_y = box_y - 10  -- Учитываем смещение текста
            end
            
            local is_hovering = mouse_x >= box_x and mouse_x <= box_x + box_width and mouse_y >= box_y and mouse_y <= box_y + box_height
            
            if mouse_left and is_hovering then
                if not defensive_dragging then
                    defensive_dragging = true
                    defensive_drag_offset_x = mouse_x - box_x
                    defensive_drag_offset_y = mouse_y - box_y
                else
                    defensive_window_x = mouse_x - defensive_drag_offset_x
                    defensive_window_y = mouse_y - defensive_drag_offset_y
                    -- Ограничиваем позицию в пределах экрана
                    defensive_window_x = math.max(0, math.min(defensive_window_x, screen[1] - box_width))
                    defensive_window_y = math.max(0, math.min(defensive_window_y, screen[2] - box_height))
                    data.defensive_window_x = defensive_window_x
                    data.defensive_window_y = defensive_window_y
                end
            else
                defensive_dragging = false
            end
        end
        
        -- Обработка перетаскивания Velocity Window
        if lua_menu.misc.velocity_window:get() then
            local box_width, box_height = velocity_window_width, velocity_window_height
            local box_x, box_y = velocity_window_x, velocity_window_y
            
            -- Определяем размеры окна в зависимости от стиля
            if lua_menu.misc.velocity_style:get() == "Default" or lua_menu.misc.velocity_style:get() == "Gradient" then
                box_width = 100
                box_height = 25  -- Учитываем текст сверху
                box_y = box_y - 10  -- Учитываем смещение текста
            end
            
            local is_hovering = mouse_x >= box_x and mouse_x <= box_x + box_width and mouse_y >= box_y and mouse_y <= box_y + box_height
            
            if mouse_left and is_hovering then
                if not velocity_dragging then
                    velocity_dragging = true
                    velocity_drag_offset_x = mouse_x - box_x
                    velocity_drag_offset_y = mouse_y - box_y
                else
                    velocity_window_x = mouse_x - velocity_drag_offset_x
                    velocity_window_y = mouse_y - velocity_drag_offset_y
                    -- Ограничиваем позицию в пределах экрана
                    velocity_window_x = math.max(0, math.min(velocity_window_x, screen[1] - box_width))
                    velocity_window_y = math.max(0, math.min(velocity_window_y, screen[2] - box_height))
                    data.velocity_window_x = velocity_window_x
                    data.velocity_window_y = velocity_window_y
                end
            else
                velocity_dragging = false
            end
        end
    end

    logs = {}
    local function ragebot_logs()
        local offset, x, y = 0, screen[1] / 2, screen[2] / 1.4
        local radius = 8
        for idx, data in ipairs(logs) do
            if (((globals.curtime() / 2) * 2.0) - data[3]) < 4.0 and not (#logs > 5 and idx < #logs - 5) then
                data[2] = math.lerp(data[2], 255, 10)
            else
                data[2] = math.lerp(data[2], 0, 10)
            end
            offset = offset - 40 * (data[2] / 255)
            local text_size_x, text_size_y = renderer.measure_text("", data[1])
            local box_width, box_height = text_size_x + 13, 23
    
            -- Rounded rectangle with rounded glow
            local function draw_rounded_rect_with_glow(x, y, width, height, radius, r, g, b, a, glow_strength)
                -- Glow effect
                local r, g ,b, a = lua_menu.misc.log_glow_color:get_color()
                for i = 1, glow_strength do
                    local glow_alpha = (data[2] / 255) * (30 / i)
    
                    -- Rounded glow (white color)
                    renderer.circle(x + radius, y + radius, r, g, b, glow_alpha, radius + i, 180, 90) -- Top-left
                    renderer.circle(x + width - radius, y + radius, r, g, b, glow_alpha, radius + i, 270, 90) -- Top-right
                    renderer.circle(x + radius, y + height - radius, r, g, b, glow_alpha, radius + i, 90, 90) -- Bottom-left
                    renderer.circle(x + width - radius, y + height - radius, r, g, b, glow_alpha, radius + i, 0, 90) -- Bottom-right
    
                    -- Glow rectangles along the edges
                    renderer.rectangle(x + radius - i, y - i, width - radius * 2 + (i * 2), i * 2, r, g, b, glow_alpha) -- Top
                    renderer.rectangle(x + radius - i, y + height - i, width - radius * 2 + (i * 2), i * 2, r, g, b, glow_alpha) -- Bottom
                    renderer.rectangle(x - i, y + radius - i, i * 2, height - radius * 2 + (i * 2), r, g, b, glow_alpha) -- Left
                    renderer.rectangle(x + width - i, y + radius - i, i * 2, height - radius * 2 + (i * 2), r, g, b, glow_alpha) -- Right
                end
    
                -- Filled body
                renderer.rectangle(x + radius, y, width - radius * 2, height, 20, 20, 20, data[2]) -- Middle
                renderer.rectangle(x, y + radius, radius, height - radius * 2, 20, 20, 20, data[2]) -- Left
                renderer.rectangle(x + width - radius, y + radius, radius, height - radius * 2, 20, 20, 20, data[2]) -- Right
    
                -- Rounded corners
                renderer.circle(x + radius, y + radius, 20, 20, 20, data[2], radius, 180, 90) -- Top-left
                renderer.circle(x + width - radius, y + radius, 20, 20, 20, data[2], radius, 270, 90) -- Top-right
                renderer.circle(x + radius, y + height - radius, 20, 20, 20, data[2], radius, 90, 90) -- Bottom-left
                renderer.circle(x + width - radius, y + height - radius, 20, 20, 20, data[2], radius, 0, 90) -- Bottom-right
            end
    
            -- Draw rounded rectangle with rounded white glow
            draw_rounded_rect_with_glow(
                x - 8 - text_size_x / 2, y - offset - 9,
                box_width, box_height, radius,
                20, 20, 20, (data[2] / 255) * 255, 10
            )
    
            -- Draw the text
            renderer.text(x - 1 - text_size_x / 2, y - offset -4.2, 255, 255, 255, data[2], "", 0, data[1])
    
            -- Remove old logs
            if data[2] < 0.1 or not entity.get_local_player() then
                table.remove(logs, idx)
            end
        end
    end

    shot_logger = {}
    shot_logger.add = function(...)
        args = { ... }
        len = #args
        for i = 1, len do
            arg = args[i]
            r, g, b = unpack(arg)
    
            msg = {}
    
            if #arg == 3 then
                table.insert(msg, " ")
            else
                for i = 4, #arg do
                    table.insert(msg, arg[i])
                end
            end
            msg = table.concat(msg)
    
            if len > i then
                msg = msg .. "\0"
            end
    
            client.color_log(r, g, b, msg)
        end
    end
    
    shot_logger.bullet_impacts = {}
    shot_logger.bullet_impact = function(e)
        local tick = globals.tickcount()
        local me = entity.get_local_player()
        local user = client.userid_to_entindex(e.userid)
        
        if user ~= me then
            return
        end
    
        if #shot_logger.bullet_impacts > 150 then
            shot_logger.bullet_impacts = { }
        end
    
        shot_logger.bullet_impacts[#shot_logger.bullet_impacts+1] = {
            tick = tick,
            eye = vector(client.eye_position()),
            shot = vector(e.x, e.y, e.z)
        }
    end
    
    shot_logger.get_inaccuracy_tick = function(pre_data, tick)
        local spread_angle = -1
        for k, impact in pairs(shot_logger.bullet_impacts) do
            if impact.tick == tick then
                local aim, shot = 
                    (pre_data.eye-pre_data.shot_pos):angles(),
                    (pre_data.eye-impact.shot):angles()
    
                    spread_angle = vector(aim-shot):length2d()
                break
            end
        end
    
        return spread_angle
    end
    
    shot_logger.get_safety = function(aim_data, target)
        local has_been_boosted = aim_data.boosted
        local plist_safety = plist.get(target, 'Override safe point')
        local ui_safety = { ui.get(gamesense_refs.prefer_safe_point), ui.get(gamesense_refs.force_safe_point) or plist_safety == 'On' }
    
        if not has_been_boosted then
            return -1
        end
    
        if plist_safety == 'Off' or not (ui_safety[1] or ui_safety[2]) then
            return 0
        end
    
        return ui_safety[2] and 2 or (ui_safety[1] and 1 or 0)
    end
    
    shot_logger.generate_flags = function(pre_data)
        return {
            pre_data.self_choke > 1 and 1 or 0,
            pre_data.velocity_modifier < 1.00 and 1 or 0,
            pre_data.flags.boosted and 1 or 0
        }
    end
    
    shot_logger.hitboxes = {"generic", "head", "chest", "stomach", "left arm", "right arm", "left leg", "right leg", "neck", "?", "gear"}
    shot_logger.on_aim_fire = function(e)
        local p_ent = e.target
        local me = entity.get_local_player()
    
        shot_logger[e.id] = {
            original = e,
            dropped_packets = { },
    
            handle_time = globals.realtime(),
            self_choke = globals.chokedcommands(),
    
            flags = {
                boosted = e.boosted
            },
    
            feet_yaw = entity.get_prop(p_ent, 'm_flPoseParameter', 11)*120-60,
            correction = plist.get(p_ent, 'Correction active'),
    
            safety = shot_logger.get_safety(e, p_ent),
            shot_pos = vector(e.x, e.y, e.z),
            eye = vector(client.eye_position()),
            view = vector(client.camera_angles()),
    
            velocity_modifier = entity.get_prop(me, 'm_flVelocityModifier'),
            total_hits = entity.get_prop(me, 'm_totalHitsOnServer'),
    
            history = globals.tickcount() - e.tick
        }
    end
    shot_logger.on_aim_hit = function(e)
        if not (lua_menu.misc.log_type:get('Console') and lua_menu.misc.log_type:get('Console')) then
            return
        end
    
        if shot_logger[e.id] == nil then
            return 
        end
    
        local info = 
        {
            type = math.max(0, entity.get_prop(e.target, 'm_iHealth')) > 0,
            prefix = { lua_menu.misc.log_hit_color:get_color() },
            hit = { lua_menu.misc.log_hit_color:get_color() },
            name = entity.get_player_name(e.target),
            hitgroup = shot_logger.hitboxes[e.hitgroup + 1] or '?',
            flags = string.format('%s', table.concat(shot_logger.generate_flags(shot_logger[e.id]))),
            aimed_hitgroup = shot_logger.hitboxes[shot_logger[e.id].original.hitgroup + 1] or '?',
            aimed_hitchance = string.format('%d%%', math.floor(shot_logger[e.id].original.hit_chance + 0.5)),
            hp = math.max(0, entity.get_prop(e.target, 'm_iHealth')),
            spread_angle = string.format('%.2f°', shot_logger.get_inaccuracy_tick(shot_logger[e.id], globals.tickcount())),
            correction = string.format('%d:%d°', shot_logger[e.id].correction and 1 or 0, (shot_logger[e.id].feet_yaw < 10 and shot_logger[e.id].feet_yaw > -10) and 0 or shot_logger[e.id].feet_yaw)
        }
    
        shot_logger.add({ info.prefix[1], info.prefix[2], info.prefix[3], '~ BLASSED [BETA FREE]'}, 
                        { 134, 134, 134, ' » ' }, 
                        { 200, 200, 200, info.type and 'Damaged ' or 'Killed ' }, 
                        { info.hit[1], info.hit[2], info.hit[3],  info.name }, 
                        { 200, 200, 200, ' in the ' }, 
                        { info.hit[1], info.hit[2], info.hit[3], info.hitgroup }, 
                        { 200, 200, 200, info.type and info.hitgroup ~= info.aimed_hitgroup and ' (' or ''},
                        { info.hit[1], info.hit[2], info.hit[3], info.type and (info.hitgroup ~= info.aimed_hitgroup and info.aimed_hitgroup) or '' },
                        { 200, 200, 200, info.type and info.hitgroup ~= info.aimed_hitgroup and ')' or ''},
                        { 200, 200, 200, info.type and ' for ' or '' },
                        { info.hit[1], info.hit[2], info.hit[3], info.type and e.damage or '' },
                        { 200, 200, 200, info.type and e.damage ~= shot_logger[e.id].original.damage and ' (' or ''},
                        { info.hit[1], info.hit[2], info.hit[3], info.type and (e.damage ~= shot_logger[e.id].original.damage and shot_logger[e.id].original.damage) or '' },
                        { 200, 200, 200, info.type and e.damage ~= shot_logger[e.id].original.damage and ')' or ''},
                        { 200, 200, 200, info.type and ' damage' or '' },
                        { 200, 200, 200, info.type and ' (' or '' }, { info.hit[1], info.hit[2], info.hit[3], info.type and info.hp or '' }, { 200, 200, 200, info.type and ' hp remaning)' or '' },
                        { 200, 200, 200, ' ['}, { info.hit[1], info.hit[2], info.hit[3], info.spread_angle }, { 200, 200, 200, ' | ' }, { info.hit[1], info.hit[2], info.hit[3], info.correction}, { 200, 200, 200, ']' },
                        { 200, 200, 200, ' (hc: ' }, { info.hit[1], info.hit[2], info.hit[3], info.aimed_hitchance }, { 200, 200, 200, ' | safety: ' }, { info.hit[1], info.hit[2], info.hit[3], shot_logger[e.id].safety },
                        { 200, 200, 200, ' | history(Δ): ' }, { info.hit[1], info.hit[2], info.hit[3], shot_logger[e.id].history }, { 200, 200, 200, ' | flags: ' }, { info.hit[1], info.hit[2], info.hit[3], info.flags },
                        { 200, 200, 200, ')' })
    end
    
    shot_logger.on_aim_miss = function(e)
        if not (lua_menu.misc.log_type:get('Console') and lua_menu.misc.log_type:get('Console')) then
            return
        end
    
        local me = entity.get_local_player()
        local info = 
        {
            prefix = {lua_menu.misc.log_miss_color:get_color()},
            hit = {lua_menu.misc.log_miss_color:get_color()},
            name = entity.get_player_name(e.target),
            hitgroup = shot_logger.hitboxes[e.hitgroup + 1] or '?',
            flags = string.format('%s', table.concat(shot_logger.generate_flags(shot_logger[e.id]))),
            aimed_hitgroup = shot_logger.hitboxes[shot_logger[e.id].original.hitgroup + 1] or '?',
            aimed_hitchance = string.format('%d%%', math.floor(shot_logger[e.id].original.hit_chance + 0.5)),
            hp = math.max(0, entity.get_prop(e.target, 'm_iHealth')),
            reason = e.reason,
            spread_angle = string.format('%.2f°', shot_logger.get_inaccuracy_tick(shot_logger[e.id], globals.tickcount())),
            correction = string.format('%d:%d°', shot_logger[e.id].correction and 1 or 0, (shot_logger[e.id].feet_yaw < 10 and shot_logger[e.id].feet_yaw > -10) and 0 or shot_logger[e.id].feet_yaw)
        }
    
        if info.reason == '?' then
            info.reason = 'resolver';
    
            if shot_logger[e.id].total_hits ~= entity.get_prop(me, 'm_totalHitsOnServer') then
                info.reason = 'damage rejection';
            end
        end
    
        shot_logger.add({ info.prefix[1], info.prefix[2], info.prefix[3], '~ BLASSED [BETA FREE]'}, 
                        { 134, 134, 134, ' » ' }, 
                        { 200, 200, 200, 'Missed shot at ' }, 
                        { info.hit[1], info.hit[2], info.hit[3],  info.name }, 
                        { 200, 200, 200, ' in the ' }, 
                        { info.hit[1], info.hit[2], info.hit[3], info.hitgroup }, 
                        { 200, 200, 200, ' due to: '},
                        { info.hit[1], info.hit[2], info.hit[3], info.reason },
                        { 200, 200, 200, ' ['}, { info.hit[1], info.hit[2], info.hit[3], info.spread_angle }, { 200, 200, 200, ' | ' }, { info.hit[1], info.hit[2], info.hit[3], info.correction}, { 200, 200, 200, ']' },
                        { 200, 200, 200, ' (hc: ' }, { info.hit[1], info.hit[2], info.hit[3], info.aimed_hitchance }, { 200, 200, 200, ' | safety: ' }, { info.hit[1], info.hit[2], info.hit[3], shot_logger[e.id].safety },
                        { 200, 200, 200, ' | history(Δ): ' }, { info.hit[1], info.hit[2], info.hit[3], shot_logger[e.id].history }, { 200, 200, 200, ' | flags: ' }, { info.hit[1], info.hit[2], info.hit[3], info.flags },
                        { 200, 200, 200, ')' })
    end
    
    client.set_event_callback('aim_fire', shot_logger.on_aim_fire)
    client.set_event_callback('aim_miss', shot_logger.on_aim_miss)
    client.set_event_callback('aim_hit', shot_logger.on_aim_hit)
    client.set_event_callback('bullet_impact', shot_logger.bullet_impact)
    
    renderer.log = function(text)
        table.insert(logs, { text, 0, ((globals.curtime() / 2) * 2.0)})
    end

    local hitgroup_names = {'generic', 'head', 'chest', 'stomach', 'left arm', 'right arm', 'left leg', 'right leg', 'neck', '?', 'gear'}

    local function aim_hit(e)
        if not lua_menu.misc.log:get() then return end
        local group = hitgroup_names[e.hitgroup + 1] or '?'
        if lua_menu.misc.log_type:get("Screen") then
            renderer.log(string.format('[BLASSED] Hit: %s in the %s for %d damage', entity.get_player_name(e.target), group, e.damage))
        end
    end
    client.set_event_callback('aim_hit', aim_hit)


    local function aim_miss(e)
        if not lua_menu.misc.log:get() then return end
        local group = hitgroup_names[e.hitgroup + 1] or '?'
        if lua_menu.misc.log_type:get("Screen") then
            renderer.log(string.format('[BLASSED] Missed: %s in the %s due to: %s', entity.get_player_name(e.target), group, e.reason))
        end
    end
    client.set_event_callback('aim_miss', aim_miss)

    local rgba_to_hex = function(b, c, d, e)
        return string.format('%02x%02x%02x%02x', b, c, d, e)
    end

    function lerp(a, b, t)
        return a + (b - a) * t
    end

    function clamp(x, minval, maxval)
        if x < minval then
            return minval
        elseif x > maxval then
            return maxval
        else
            return x
        end
    end

    local function text_fade_animation(x, y, speed, color1, color2, text, flag)
        local final_text = ''
        local curtime = globals.curtime()
        for i = 0, #text do
            local x = i * 10  
            local wave = math.cos(8 * speed * curtime + x / 30)
            local color = rgba_to_hex(
                lerp(color1.r, color2.r, clamp(wave, 0, 1)),
                lerp(color1.g, color2.g, clamp(wave, 0, 1)),
                lerp(color1.b, color2.b, clamp(wave, 0, 1)),
                color1.a
            ) 
            final_text = final_text .. '\a' .. color .. text:sub(i, i) 
        end
        
        renderer.text(x, y, color1.r, color1.g, color1.b, color1.a, flag, nil, final_text)
    end

    local function doubletap_charged()
        if not ui.get(ref.dt[1]) or not ui.get(ref.dt[2]) or ui.get(ref.fakeduck) then return false end
        if not entity.is_alive(entity.get_local_player()) or entity.get_local_player() == nil then return end
        local weapon = entity.get_prop(entity.get_local_player(), "m_hActiveWeapon")
        if weapon == nil then return false end
        local next_attack = entity.get_prop(entity.get_local_player(), "m_flNextAttack") + 0.01
        local checkcheck = entity.get_prop(weapon, "m_flNextPrimaryAttack")
        if checkcheck == nil then return end
        local next_primary_attack = checkcheck + 0.01
        if next_attack == nil or next_primary_attack == nil then return false end
        return next_attack - globals.curtime() < 0 and next_primary_attack - globals.curtime() < 0
    end

    local scoped_space = 0
    local main_font = "c-b"
    local key_font = "c"

    local function screen_indicator()
        local lp = entity.get_local_player()
        if lp == nil then return end
        local ind_size = renderer.measure_text("cb", "blassed")
        local scpd = entity.get_prop(lp, "m_bIsScoped") == 1
        scoped_space = math.lerp(scoped_space, scpd and 30 or 0, 20)
        local condition = "GLOBAL"
        if id == 1 then condition = "GLOBAL"
        elseif id == 2 then condition = "STAND"
        elseif id == 3 then condition = "SLOW-WALKING"
        elseif id == 4 then condition = "RUN"
        elseif id == 5 then condition = "AIR"
        elseif id == 6 then condition = "AIR+"
        elseif id == 7 then condition = "DUCK"
        elseif id == 8 then condition = "DUCK+" end
        local spaceind = 10

        main_font = "c-d"
        key_font = "c-d"

        local new_check = lua_menu.misc.cross_ind:get()

        lua_menu.misc.cross_color:override(true)
        lua_menu.misc.key_color:override(true)
        local r1, g1, b1, a1 = lua_menu.misc.cross_ind:get_color()
        local r2, g2, b2, a2 = lua_menu.misc.cross_color:get_color()
        local r3, g3, b3, a3 = lua_menu.misc.key_color:get_color()
        local r, g, b, a = 255, 255, 255, 255
        text_fade_animation(center[1] + scoped_space, center[2] + 30, -1, {r=r1, g=g1, b=b1, a=255}, {r=r2, g=g2, b=b2, a=255}, "BLASSED", "-cd")
        text_fade_animation(center[1] + scoped_space, center[2] + 40, -1, {r=r1, g=g1, b=b1, a=255}, {r=r2, g=g2, b=b2, a=255}, "BETA free", "-cd")
        renderer.text(center[1] + scoped_space, center[2] + 50, r2, g2, b2, 255, "-cd", 0, condition)

        if ui.get(ref.forcebaim)then
            renderer.text(center[1] + scoped_space, center[2] + 50 + (spaceind), 255, 102, 117, 255, key_font, 0, new_check and "BODY" or "BODY")
            spaceind = spaceind + 10
        end

        if ui.get(ref.os[2]) then
            renderer.text(center[1] + scoped_space, center[2] + 50 + (spaceind), r3, g3, b3, 255, key_font, 0, new_check and "OSAA" or"OSAA")
            spaceind = spaceind + 10
        end

        if ui.get(ref.minimum_damage_override[2]) then
            renderer.text(center[1] + scoped_space, center[2] + 50 + (spaceind), r3, g3, b3, 255, key_font, 0, new_check and "DMG" or"DMG")
            spaceind = spaceind + 10
        end

        if ui.get(ref.dt[1]) and ui.get(ref.dt[2]) then
            if doubletap_charged() then
                renderer.text(center[1] + scoped_space, center[2] + 50 + (spaceind), r3, g3, b3, a, key_font, 0, new_check and "DT" or "DT")
            else
                renderer.text(center[1] + scoped_space, center[2] + 50 + (spaceind), 255, 0, 0, 255, key_font, 0, new_check and "DT" or "DT")
            end
            spaceind = spaceind + 10
        end

        if ui.get(ref.freestand[1]) and ui.get(ref.freestand[2]) then
            renderer.text(center[1] + scoped_space, center[2] + 50 + (spaceind), r3, g3, b3, a, key_font, 0, new_check and "FS" or "FS")
            spaceind = spaceind + 10
        end

    end

    local function damage_indicator()
    local sizeX, sizeY = client.screen_size()

    if lua_menu.misc.damage_indicator_style:get() == "Default" then
        main_font = "d"
    else
        main_font = "-d"
    end

    if lua_menu.misc.damage_indicator:get() and entity.get_classname(weapon) ~= "CKnife"  then
        if lua_menu.misc.damage_indicator_mode:get() == "Always" then
            if ( ui.get(ref.minimum_damage_override[1]) and ui.get(ref.minimum_damage_override[2]) ) == false then
                renderer.text(sizeX / 2 + 3, sizeY / 2 - 15, 255, 255, 255, 255, main_font or "cd", 0, ui.get(ref.minimum_damage))
            else
                renderer.text(sizeX / 2 + 3, sizeY / 2 - 15, 255, 255, 255, 255, main_font or "cd", 0, ui.get(ref.minimum_damage_override[3]))
            end
        elseif ui.get(ref.minimum_damage_override[1]) and ui.get(ref.minimum_damage_override[2]) and lua_menu.misc.damage_indicator_mode:get() == "On Bind" then
            dmg = ui.get(ref.minimum_damage_override[3])
            renderer.text(sizeX / 2 + 3, sizeY / 2 - 15, 255, 255, 255, 255, main_font or "cd", 0, dmg)
        end
    end
end

local function manual_arrows()
local sizeX, sizeY = client.screen_size()
local r, g, b, a = lua_menu.misc.manual_arrows:get_color()
if lua_menu.misc.manual_arrows:get() then
    if yaw_direction == 90 then 
        renderer.text(sizeX / 2 + 35, sizeY / 2 - 6.5, r, g, b, a, "bсd", 0, "⮚")
    end
    if yaw_direction == -90 then 
    renderer.text(sizeX / 2 - 45, sizeY / 2 - 7.5, r, g, b, a, "bсd", 0, "⮘")
    end
end
end

    defensive_alpha = 0
    defensive_amount = 0
    velocity_alpha = 0
    velocity_amount = 0
    blur_alpha = 0

    --lua_menu.misc.velocity_style
    --lua_menu.misc.defensive_style

    renderer.rounded_rectangle = function(x, y, w, h, r, g, b, a, radius)
        y = y + radius
        local data_circle = {
            {x + radius, y, 180},
            {x + w - radius, y, 90},
            {x + radius, y + h - radius * 2, 270},
            {x + w - radius, y + h - radius * 2, 0},
        }

        local data = {
            {x + radius, y, w - radius * 2, h - radius * 2},
            {x + radius, y - radius, w - radius * 2, radius},
            {x + radius, y + h - radius * 2, w - radius * 2, radius},
            {x, y, radius, h - radius * 2},
            {x + w - radius, y, radius, h - radius * 2},
        }

        for _, data in next, data_circle do
            renderer.circle(data[1], data[2], r, g, b, a, radius, data[3], 0.25)
        end

        for _, data in next, data do
            renderer.rectangle(data[1], data[2], data[3], data[4], r, g, b, a)
        end
    end

    local function velocity_ind()
        local lp = entity.get_local_player()
        if lp == nil then return end
        local r, g, b, a = lua_menu.misc.velocity_window:get_color()
        local vel_mod = entity.get_prop(lp, 'm_flVelocityModifier')
        local svg_data = renderer.load_svg('<svg width="22" height="22" viewBox="0 0 16 16"><path fill="'..string.format("#%02x%02x%02x", r, g, b)..'" d="m13.259 13h-10.518c-0.35787 0.0023-0.68906-0.1889-0.866-0.5-0.18093-0.3088-0.18093-0.6912 0-1l5.259-9.015c0.1769-0.31014 0.50696-0.50115 0.864-0.5 0.3568-0.00121 0.68659 0.18986 0.863 0.5l5.26 9.015c0.1809 0.3088 0.1809 0.6912 0 1-0.1764 0.3097-0.5056 0.5006-0.862 0.5zm-6.259-3v2h2v-2zm0-5v4h2v-4z"/></svg>', 22, 22)

        if not ui.is_menu_open() then
            velocity_alpha = math.lerp(velocity_alpha, vel_mod < 1 and 255 or 0, 10)
            velocity_amount = math.lerp(velocity_amount, vel_mod, 10)
            blur_alpha = math.lerp(blur_alpha, vel_mod < 1 and 255 or 0, 10)
        else
            velocity_alpha = math.lerp(velocity_alpha, 255, 10)
            velocity_amount = globals.tickcount() % 50/100 * 2
            blur_alpha = math.lerp(blur_alpha, 255, 10)
        end

        local box_x, box_y = velocity_window_x, velocity_window_y
        
        if lua_menu.misc.velocity_style:get() == "Default" then
            renderer.text(center[1], screen[2] / 3 - 10, 255, 255, 255, velocity_alpha, "dc", 0, "- velocity -")
            renderer.rectangle(center[1]-50, screen[2] / 3, 100, 5, 0,0,0, velocity_alpha)
            renderer.rectangle(center[1]-49, screen[2] / 3+1, (100*velocity_amount)-1, 3, r, g, b, velocity_alpha)
        elseif lua_menu.misc.velocity_style:get() == "Gradient" then
            renderer.text(center[1], screen[2] / 3 - 10, 255, 255, 255, velocity_alpha, "dc", 0, "- velocity -")
            renderer.gradient(screen[1]/2 - (50 *velocity_amount), screen[2] / 3, 1 + 50*velocity_amount, 2, r, g, b, velocity_alpha/3, r, g, b, velocity_alpha, true)
            renderer.gradient(screen[1]/2, screen[2] / 3, 50*velocity_amount, 2, r, g, b, velocity_alpha, r, g, b, velocity_alpha/3, true)
        elseif lua_menu.misc.velocity_style:get() == "Modern" then
            local box_width, box_height = velocity_window_width, velocity_window_height
            local box_x, box_y = velocity_window_x, velocity_window_y
            local bar_width = 130

            renderer.rounded_rectangle(box_x, box_y, box_width, box_height, 15, 15, 15, velocity_alpha * 0.8, 5)
            renderer.text(box_x + box_width / 2 - 18, box_y + 14, 200, 200, 200, velocity_alpha, "c", 0, "slowed down")
            renderer.text(box_x + box_width - 11, box_y + 8, 200, 200, 200, velocity_alpha, "r", 0, math.floor(velocity_amount * 100) .. "%")
            renderer.rectangle(box_x + 50, box_y + 25, bar_width, 4, 50, 50, 50, velocity_alpha)
            renderer.rectangle(box_x + 50, box_y + 25, bar_width * velocity_amount, 4, r, g, b, velocity_alpha)

            renderer.texture(svg_data, box_x + 7, box_y + 9, 22, 22, 255, 255, 255, velocity_alpha, "f")
            
            renderer.rectangle(box_x + 37, box_y, 1, box_height, 51, 51, 51, velocity_alpha)
end
end 

    local function defensive_ind()
        local lp = entity.get_local_player()
        if lp == nil then return end
        local charged = doubletap_charged()
        local tp_amount = get_average(breaker.tp_data)/get_velocity(entity.get_local_player())*100 
        local active = (breaker.defensive > 1) and not (tp_amount >= 25 and breaker.defensive >= 13) and ui.get(ref.dt[1]) and ui.get(ref.dt[2]) and not ui.get(ref.fakeduck)
        local r, g, b, a = lua_menu.misc.defensive_window:get_color()
        if not ui.is_menu_open() then
            if ui.get(ref.dt[1]) and ui.get(ref.dt[2]) and not ui.get(ref.fakeduck) then
                if charged and active then
                    defensive_alpha = math.lerp(defensive_alpha, 255, 10)
                    defensive_amount = math.lerp(defensive_amount, 1, 10)
                elseif charged and not active then
                    defensive_alpha = math.lerp(defensive_alpha, 0, 10)
                    defensive_amount = math.lerp(defensive_amount, 0.5, 10)
                else
                    defensive_alpha = math.lerp(defensive_alpha, 255, 10)
                    defensive_amount = math.lerp(defensive_amount, 0, 10)
                end
            else
                defensive_alpha = math.lerp(defensive_alpha, 0, 10)
                defensive_amount = math.lerp(defensive_amount, 0, 10)
            end
        else
            defensive_alpha = math.lerp(defensive_alpha, 255, 10)
            defensive_amount = globals.tickcount() % 50/100 * 2
        end

        local box_x, box_y = defensive_window_x, defensive_window_y
        
        if lua_menu.misc.defensive_style:get() == "Default" then
            renderer.text(center[1], screen[2] / 4 - 10, 255, 255, 255, defensive_alpha, "c", 0, "- defensive -")
            renderer.rectangle(center[1]-50, screen[2] / 4, 100, 5, 0,0,0, defensive_alpha)
            renderer.rectangle(center[1]-49, screen[2] / 4+1, (100*defensive_amount)-1, 3, r, g, b, defensive_alpha)
        elseif lua_menu.misc.defensive_style:get() == "Gradient" then
            renderer.text(center[1], screen[2] / 4 - 10, 255, 255, 255, defensive_alpha, "c", 0, "- defensive -")
            renderer.gradient(screen[1]/2 - (50 *defensive_amount), screen[2] / 4, 1 + 50*defensive_amount, 2, r, g, b, defensive_alpha/3, r, g, b, defensive_alpha, true)
            renderer.gradient(screen[1]/2, screen[2] / 4, 50*defensive_amount, 2, r, g, b, defensive_alpha, r, g, b, defensive_alpha/3, true)
        elseif lua_menu.misc.defensive_style:get() == "Modern" then
            local box_width, box_height = defensive_window_width, defensive_window_height
        local box_x, box_y = defensive_window_x, defensive_window_y
        local bar_width = 130


            local svg_data = renderer.load_svg(string.format('<svg fill="" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="64px" height="64px" viewBox="0 0 505.74 505.74" xml:space="preserve" stroke="" stroke-width="0.00505736" transform="matrix(1, 0, 0, 1, 0, 0)"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g> <path d="M396.007,191.19c-0.478,0-1.075,0-1.554,0c-6.693-54.147-52.833-96.103-108.773-96.103 c-48.171,0-89.051,31.078-103.753,74.349c-16.734-8.128-35.381-12.67-55.224-12.67C56.658,156.765,0,213.542,0,283.707 c0,67.416,52.594,122.64,118.934,126.703v0.239h277.91c60.244-0.358,108.893-49.366,108.893-109.729 C505.617,240.317,456.609,191.19,396.007,191.19z" fill="#%02x%02x%02x"></path> </g> </g></svg>', r, g, b), 64, 64)

            if defensive_alpha <= 0 then return end
            renderer.rounded_rectangle(box_x, box_y, box_width, box_height, 15, 15, 15, defensive_alpha * 0.8, 5)
            renderer.text(box_x + box_width / 2 - 12, box_y + 14, 200, 200, 200, defensive_alpha, "c", 0, "defensive down")
            renderer.text(box_x + box_width - 11, box_y + 8, 200, 200, 200, defensive_alpha, "r", 0, math.floor(defensive_amount * 100) .. "%")
            renderer.rectangle(box_x + 50, box_y + 25, bar_width, 4, 50, 50, 50, defensive_alpha)
            renderer.rectangle(box_x + 50, box_y + 25, bar_width * defensive_amount, 4, r, g, b, defensive_alpha)
            renderer.texture(svg_data, box_x + 7, box_y + 9, 22, 22, 255, 255, 255, defensive_alpha, "f")
            renderer.rectangle(box_x + 37, box_y, 1, box_height, 51, 51, 51, defensive_alpha)
        end
    end

local function watermark()
    lua_menu.misc.watermark_color:override(true)
    local r, g, b, a = lua_menu.misc.watermark_color:get_color()
    if lua_menu.misc.watermark:get() then
        local position = lua_menu.misc.watermark_position:get()
        
        if lua_menu.misc.watermark_style:get() == "Default" then
            local x, y
            if position == "Right Center" then
                x = x_ind - 45 -- Отступ от правого края
                y = y_ind / 2 -- По центру экрана по вертикали
                text_fade_animation(x, y, -1, {r=r, g=g, b=b, a=255}, {r=150, g=150, b=150, a=255}, "BLASSED [BETA FREE]", "cd-")
            
            else -- Bottom Center (по умолчанию)
                x = x_ind / 2
                y = y_ind - 10
                text_fade_animation(x, y, -1, {r=r, g=g, b=b, a=255}, {r=150, g=150, b=150, a=255}, "BLASSED [BETA FREE]", "cd-")
            end
        elseif lua_menu.misc.watermark_style:get() == "Modern" then 
            if position == "Right Center" then
                local x = x_ind - 50
                local y1 = y_ind / 2 - 10
                local y2 = y_ind / 2
                text_fade_animation(x, y1, -1, {r=r, g=g, b=b, a=255}, {r=150, g=150, b=150, a=255}, "BLASSED", "cd-")
                text_fade_animation(x, y2, -1, {r=255, g=255, b=255, a=255}, {r=150, g=150, b=150, a=255}, " " ..string.upper(build), "cd-")
            else
                text_fade_animation(x_ind/2, y_ind-20, -1, {r=r, g=g, b=b, a=255}, {r=150, g=150, b=150, a=255}, "BLASSED", "cd-")
                text_fade_animation(x_ind/2, y_ind-10, -1, {r=255, g=255, b=255, a=255}, {r=150, g=150, b=150, a=255}, " " ..string.upper(build), "cd-")
            end
        elseif lua_menu.misc.watermark_style:get() == "Legacy" then
            local x, y
            if position == "Right Center" then
                x = x_ind - 70
                y = y_ind / 2
                text_fade_animation(x, y, -1, {r=r, g=g, b=b, a=255}, {r=150, g=150, b=150, a=255}, "Blassed-yaw (BETA FREE)", "cdb")
            else
                x = x_ind / 2
                y = y_ind - 10
                text_fade_animation(x, y, -1, {r=r, g=g, b=b, a=255}, {r=150, g=150, b=150, a=255}, "Blassed-yaw (BETA FREE)", "cdb")
            end
        elseif lua_menu.misc.watermark_style:get() == "Branded" then
            local x, y
            if position == "Right Center" then
                x = x_ind - 50
                y = y_ind / 2
                text_fade_animation(x, y, -1, {r=r, g=g, b=b, a=255}, {r=150, g=150, b=150, a=255}, "B L A S S E D", "cd")
            else
                x = x_ind / 2
                y = y_ind - 10
                text_fade_animation(x, y, -1, {r=r, g=g, b=b, a=255}, {r=150, g=150, b=150, a=255}, "B L A S S E D", "cd")
            end
        end
    end
end


    local function info_panel()
        local lp = entity.get_local_player()
        if lp == nil then return end
        local condition = "GLOBAL"
        if id == 1 then condition = "GLOBAL"
        elseif id == 2 then condition = "STAND"
        elseif id == 3 then condition = "WALK"
        elseif id == 4 then condition = "RUN"
        elseif id == 5 then condition = "AIR"
        elseif id == 6 then condition = "AIR+"
        elseif id == 7 then condition = "DUCK"
        elseif id == 8 then condition = "DUCK+" end
        local threat = client.current_threat()
        local name = "nil"
        local threat_desync = 0
        local showed_name = steam_name
        if threat then
            name = entity.get_player_name(threat)
            threat_desync = math.floor(entity.get_prop(threat, 'm_flPoseParameter', 11) * 120 - 60)
        end
        local r, g, b, a = lua_menu.misc.info_panel:get_color()
        showed_name = showed_name:sub(1, 64)
        name = name:sub(1, 64)

        local desync_amount = math.floor(entity.get_prop(lp, 'm_flPoseParameter', 11) * 120 - 60)
        text_fade_animation(20, center[2], -1, {r=r, g=g, b=b, a=a}, {r=255, g=255, b=255, a=255}, "Blassed ~ BETA (FREE)", "d")
        local textsize = renderer.measure_text("cd", "Blassed ~ BETA FREE")
        renderer.gradient(20, center[2] + 15, textsize/2, 2, r, g, b, 50, r, g, b, a, true)
        renderer.gradient(20 + textsize/2,center[2] + 15, textsize/2, 2, r, g, b, a, r, g, b, 50, true)
        renderer.text(20, center[2] + 20, 255, 255, 255, 255, "-d", 0, "USER: "..string.upper(showed_name))
        renderer.text(20, center[2] + 30, 255, 255, 255, 255, "-d", 0, "STATE: " ..string.upper(condition.. " "..math.abs(desync_amount).."°"))
        renderer.text(20, center[2] + 40, 255, 255, 255, 255, "-d", 0, "TARGET: "..string.upper(name).." "..math.abs(threat_desync).."°")
        if lua_menu.misc.resolver:get() then
            renderer.text(20, center[2] + 50, 255, 255, 255, 255, "-d", 0, "RESOLVER MODE: "..string.upper(lua_menu.misc.resolver_type:get()))
        end 
        if lua_menu.misc.resolver:get() then 
        renderer.gradient(20, center[2] + 65, textsize/2, 2, r, g, b, 50, r, g, b, a, true)
        renderer.gradient(20 + textsize/2,center[2] + 65, textsize/2, 2, r, g, b, a, r, g, b, 50, true)
        end
    end

    local ws_clantag = {
        " ",
        "b",
        "B%",
        "bl",
        "Bla",
        "Bla$ ",
        "Blas #",
        "Blass",
        "Blasse$",
        "Blassed b#",
        "Blassed b1",
        "Blass$d bet",
        "Blassed beta",
        "Blassed beta",
        "Blassed beta",
        "Blass$d bet",
        "Blassed b1",
        "Bla1sed b#",
        "Blasse$",
        "Blasse",
        "Blass",
        "Blas #",
        "Bla$ ",
        "Bla",
        "bl",
        "B%",
        "b",
        " ",

    }

    iter = 1
    wstime = 0
    local clantag_cleared = false
    local function rotate_string()
        local ret_str = ws_clantag[iter]
        if iter < 25 then
            iter = iter + 1
        else
            iter = 1
        end
        return ret_str
    end

    local function clantag_en()
        ui.set(ref.clantag, false)
        if wstime + 0.3 < globals.curtime() then
            client.set_clan_tag(rotate_string())
            wstime = globals.curtime()
        elseif wstime > globals.curtime() then
            wstime = globals.curtime()
        end
    end

    local function fastladder(e)
        local local_player = entity.get_local_player()
        local pitch, yaw = client.camera_angles()
        if entity.get_prop(local_player, "m_MoveType") == 9 then
            e.yaw = math.floor(e.yaw+0.5)
            e.roll = 0
                if e.forwardmove == 0 then
                    if e.sidemove ~= 0 then
                        e.pitch = 89
                        e.yaw = e.yaw + 180
                        if e.sidemove < 0 then
                            e.in_moveleft = 0
                            e.in_moveright = 1
                        end
                        if e.sidemove > 0 then
                            e.in_moveleft = 1
                            e.in_moveright = 0
                        end
                    end
                end
                if e.forwardmove > 0 then
                    if pitch < 45 then
                        e.pitch = 89
                        e.in_moveright = 1
                        e.in_moveleft = 0
                        e.in_forward = 0
                        e.in_back = 1
                        if e.sidemove == 0 then
                            e.yaw = e.yaw + 90
                        end
                        if e.sidemove < 0 then
                            e.yaw = e.yaw + 150
                        end
                        if e.sidemove > 0 then
                            e.yaw = e.yaw + 30
                        end
                    end 
                end
                if e.forwardmove < 0 then
                    e.pitch = 89
                    e.in_moveleft = 1
                    e.in_moveright = 0
                    e.in_forward = 1
                    e.in_back = 0
                    if e.sidemove == 0 then
                        e.yaw = e.yaw + 90
                    end
                    if e.sidemove > 0 then
                        e.yaw = e.yaw + 150
                    end
                    if e.sidemove < 0 then
                        e.yaw = e.yaw + 30
                    end
                end
        end
    end

    local function thirdperson(value)
        if value ~= nil then
            cvar.cam_idealdist:set_int(value)
        end
    end

    local function aspectratio(value)
        if value then
            cvar.r_aspectratio:set_float(value)
        end
    end 

    local native_GetClientEntity = vtable_bind('client.dll', 'VClientEntityList003', 3, 'void*(__thiscall*)(void*, int)')

    math.clamp = function (x, a, b)
        if a > x then return a
        elseif b < x then return b
        else return x end
    end

    local expres = {}

    expres.get_prev_simtime = function(ent)
        local ent_ptr = native_GetClientEntity(ent)    
        if ent_ptr ~= nil then 
            return ffi.cast('float*', ffi.cast('uintptr_t', ent_ptr) + 0x26C)[0] 
        end
    end

    expres.restore = function()
        for i = 1, 64 do
            plist.set(i, "Force body yaw", false)
        end
    end

    expres.body_yaw, expres.eye_angles = {}, {}

    expres.get_max_desync = function (animstate)
        local speedfactor = math.clamp(animstate.feet_speed_forwards_or_sideways, 0, 1)
        local avg_speedfactor = (animstate.stop_to_full_running_fraction * -0.3 - 0.2) * speedfactor + 1

        local duck_amount = animstate.duck_amount
        if duck_amount > 0 then
            avg_speedfactor = avg_speedfactor + (duck_amount * speedfactor * (0.5 - avg_speedfactor))
        end

        return math.clamp(avg_speedfactor, .5, 1)
    end

    expres.handle = function(current_threat)
        if current_threat == nil or not entity.is_alive(current_threat) or entity.is_dormant(current_threat) then 
            expres.restore()
            return 
        end

        if expres.body_yaw[current_threat] == nil then 
            expres.body_yaw[current_threat], expres.eye_angles[current_threat] = {}, {}
        end

        local simtime = toticks(entity.get_prop(current_threat, 'm_flSimulationTime'))
        local prev_simtime = toticks(expres.get_prev_simtime(current_threat))
        expres.body_yaw[current_threat][simtime] = entity.get_prop(current_threat, 'm_flPoseParameter', 11) * 120 - 60
        expres.eye_angles[current_threat][simtime] = select(2, entity.get_prop(current_threat, "m_angEyeAngles"))

        if expres.body_yaw[current_threat][prev_simtime] ~= nil then
            local ent = c_entity.new(current_threat)
            local animstate = ent:get_anim_state()
            local max_desync = expres.get_max_desync(animstate)
            local Pitch = entity.get_prop(current_threat, "m_angEyeAngles[0]")
            local pitch_e = Pitch > -30 and Pitch < 49
            local curr_side = globals.tickcount() % 4 > 1 and 1 or - 1

            if lua_menu.misc.resolver_type:get() == "Default" then
                local should_correct = (simtime - prev_simtime >= 1) and math.abs(max_desync) < 60 and expres.body_yaw[current_threat][prev_simtime] ~= 0
                if should_correct then
                    local value = math.random(0, expres.body_yaw[current_threat][prev_simtime] * math.random(-1, 1)) * .25
                    plist.set(current_threat, 'Force body yaw', true)  
                    plist.set(current_threat, 'Force body yaw value', value) 
                else
                    plist.set(current_threat, 'Force body yaw', false)  
                end
            elseif lua_menu.misc.resolver_type:get() == "Defensive" then
                if pitch_e then
                    value_body = 0
                else
                    value_body = curr_side * (max_desync * math.random(-60, 60) % 2)
                end
                plist.set(current_threat, 'Force body yaw', true)  
                plist.set(current_threat, 'Force body yaw value', value_body) 
            end
        end
        plist.set(current_threat, 'Correction active', true)
    end

    local function resolver_update()
        local lp = entity.get_local_player()
        if not lp then return end
        local entities = entity.get_players(true)
        if not entities then return end

        for i = 1, #entities do
            local target = entities[i]
            if not target then return end
            if not entity.is_alive(target) then return end
            expres.handle(target)
        end
    end

    local phrases = {
        "жопу тебе свой член присанем",
        "я тебе щас двину тут с ноги прям в еблище сын шлюхи",
        "у тебя мамаша шлюха та ещё шлюха ебучая не более",
        "ты хуепутало ебучие не расслабляйся тут",
        "да закрой еблище сын шлюхи ушастый",
        "ты хули тут развыёбывался сын шлюхи",
        "t.me/blassedresolver",
        "t.me/blassedresolver",
        "t.me/blassedresolver",
        "t.me/blassedresolver",
        "t.me/blassedresolver",
        "t.me/blassedresolver",
        "t.me/blassedresolver",
        "1, никчемный хуесос убить не можешь",
        "ты ебучий лузер даже с рейджем проигрываешь",
        "закрой рот и играй лучше, сын шлюхи",
        "ты хуесос ебучий даже рейдж не помогает",
        "иди нахуй со своим ебучим рейджем",
        "ты хуепутало ебучее даже стрелять не умеешь",
        "заткнись и играй, ушастый хуесос",
        "ты ебучий нуб даже с рейдж не убиваешь",
        "иди нахуй со своим ебучим рейджом",
        "ты хуесос ебучий даже стоя не попадаешь",
        "закрой еблище и учись играть",
        "ты ебучий лузер даже с рейджем тупой",
        "иди нахуй со своим ебучим рейджем",
        "ты хуепутало ебучее даже бегать не умеешь",
        "заткнись и не позорься, сын шлюхи",
        "ты хуесос ебучий даже стрелять не можешь",
        "закрой рот и играй лучше, ушастый",
        "закрой еблище и учись играть лучше",
        "ты ебучий нуб даже с рейджем проигрываешь",
        "ты ебучий лузер даже с рейджем не убиваешь",
        "заткнись и не позорься, ушастый",
        "заткнись и не позорься, ушастый хуесос",
        "ты хуесос ебучий даже рейдж не помогает",
        "ты ебучий нуб даже с рейджем тупой",
        "ты ебучий нуб даже с рейджем не убиваешь",
        "ты ебучий нуб даже с рейджем проигрываешь",
        "ты ебучий лузер даже с рейджем проигрываешь",
        "ты ебучий лузер даже с рейджем тупой",
        "ты ебучий лузер даже с рейджем не убиваешь",
        "ты хуепутало ебучее даже стоя не попадаешь",
        "ты хуепутало ебучее даже бегать не умеешь",
        "ты хуепутало ебучее даже стрелять не умеешь",
        "иди нахуй со своим ебучим рейджем",
        "иди нахуй со своим ебучим рейджом",
        "иди нахуй со своим ебучим рейджем",
        "закрой рот и играй лучше, сын шлюхи",
        "закрой рот и играй лучше, ушастый",
        "закрой еблище и учись играть",
        "закрой еблище и учись играть лучше",
        "заткнись и играй лучше, сын шлюхи",
        "заткнись и играй, ушастый хуесос",
        "заткнись и не позорься, сын шлюхи",
        "заткнись и не позорься, ушастый",
        "заткнись и не позорься, ушастый хуесос",
        "соси",

    }

    local userid_to_entindex, get_local_player, is_enemy, console_cmd = client.userid_to_entindex, entity.get_local_player, entity.is_enemy, client.exec

    local function on_player_death(e)
        if not lua_menu.misc.spammers:get("TrashTalk") then return end

        local victim_userid, attacker_userid = e.userid, e.attacker
        if victim_userid == nil or attacker_userid == nil then
            return
        end

        local victim_entindex = userid_to_entindex(victim_userid)
        local attacker_entindex = userid_to_entindex(attacker_userid)

        if attacker_entindex == get_local_player() and is_enemy(victim_entindex) then
            local trashtalk_type = lua_menu.misc.spammers2:get()
            local message = ""
            
            if trashtalk_type == "Ragebait (1)" then
                message = "1"
            elseif trashtalk_type == "Russian rage" then
                message = phrases[math.random(1, #phrases)]
            end
            
            if message ~= "" then
                client.delay_call(2, function() console_cmd("say ", message) end)
            end
        end
    end
    client.set_event_callback("player_death", on_player_death)

    predict_items = {
        cl_interp = {
            DEFAULT = 0.015625,
            SCOUT = 0.078125,
            OTHER = 0.031000
        },
        sv_max_allowed_net_graph = {
            DEFAULT = 1,
            CHANGE = 2
        },
        cl_interpolate = {
            DEFAULT = 1,
            CHANGE = 0
        },
        cl_interp_ratio = {
            DEFAULT = 2,
            CHANGE = 1
        }
    }

    local function baim()
        if not lua_menu.misc.aimtools:get() then return end
    
        local local_player = entity.get_local_player()
        local weapon = entity.get_player_weapon(local_player)
        local force_teammates = false or ui.get(ref.mates)
        local players = entity.get_players(not false or ui.get())
    
        if weapon == nil then return end
    
        for i=1, #players do
            local player = players[i]
    
            local target_health = entity.get_prop(player, "m_iHealth") 
    
            
    
            if target_health <= 0 then return end
            if target_health <= lua_menu.misc.aimtools_value_baim:get() then
                plist.set(player, "Override prefer body aim", "Force")
                if lua_menu.misc.aimtools_priority:get() then
                    plist.set(player, "High priority", true)
                end
            else
                plist.set(player, "Override prefer body aim", "-")
                plist.set(player, "High priority", false)
            end
    
            if target_health <= lua_menu.misc.aimtools_value_safe:get() then
                plist.set(player, "Override safe point", "On")
                if lua_menu.misc.aimtools_priority:get() then
                    plist.set(player, "High priority", true)
                end
            else
                plist.set(player, "Override safe point", "-")
                plist.set(player, "High priority", false)
            end
            
        end
    end
    
    
    client.register_esp_flag("BAIM", 255, 100, 100, function(player)
        if not lua_menu.misc.aimtools:get() then return false end
        if not lua_menu.misc.aimtools_esp_flags:get() then return false end
    
        return plist.get(player, "Override prefer body aim") == "Force"
    end)
    
    
    client.register_esp_flag("SAFE", 100, 100, 255, function(player)
        if not lua_menu.misc.aimtools:get() then return false end
        if not lua_menu.misc.aimtools_esp_flags:get() then return false end
    
        return plist.get(player, "Override safe point") == "On"
    end)

    client.register_esp_flag("RESOLVED", 255, 255, 255, function(player)
        if not lua_menu.misc.resolver:get() then return false end
        if not lua_menu.misc.resolver_flag:get() then return false end
    
        return plist.get(player, "Force body yaw", true)
    end)
    

    local function predict()
        if lua_menu.misc.predict:get() and lua_menu.misc.predict_key:get() then
            local local_player = entity.get_local_player()
            local weapon = entity.get_player_weapon(local_player)
            cvar.sv_max_allowed_net_graph:set_int(predict_items.sv_max_allowed_net_graph.CHANGE)
            cvar.cl_interpolate:set_int(predict_items.cl_interpolate.CHANGE)
            cvar.cl_interp_ratio:set_int(predict_items.cl_interp_ratio.CHANGE)
            if entity.get_classname(weapon) == 'CWeaponSSG08' then
                cvar.cl_interp:set_float(predict_items.cl_interp.SCOUT)
            else
                cvar.cl_interp:set_float(predict_items.cl_interp.OTHER)
            end
        else
            cvar.sv_max_allowed_net_graph:set_int(predict_items.sv_max_allowed_net_graph.DEFAULT)
            cvar.cl_interpolate:set_int(predict_items.cl_interpolate.DEFAULT)
            cvar.cl_interp_ratio:set_int(predict_items.cl_interp_ratio.DEFAULT)
            cvar.cl_interp:set_float(predict_items.cl_interp.DEFAULT)
        end
    end

local function jump_stop(cmd)
    local lp = entity.get_local_player()

    if not lp or not entity.is_alive(lp) then
        return
    end

    local target = entity.get_players(true)
    for i = 1, #target do
        if target == nil then
            return
        end 

        lp_orig_x, lp_orig_y, lp_orig_z = entity.get_prop(lp, "m_vecOrigin")
        enemy_orig_x, enemy_orig_y, enemy_orig_z = entity.get_prop(target[i], "m_vecOrigin")
        local distance = anti_knife_dist(lp_orig_x, lp_orig_y, lp_orig_z, enemy_orig_x, enemy_orig_y, enemy_orig_z)

        if distance <= (lua_menu.misc.jump_stop_distance:get() * 3) and lua_menu.misc.jump_stop:get() and lua_menu.misc.jump_stop_hotkey:get() then
            local flags = entity.get_prop(lp, "m_fFlags")
            local FL_ONGROUND = 1

            if bit.band(flags, FL_ONGROUND) == 0 then
                cmd.in_speed = 1
                cmd.in_duck = 1
                cmd.in_walk = 1
                cmd.quick_stop = 1
            end
        end
    end
end

local function fixhideshots()
    if lua_menu.misc.fix_hideshots:get() then
        if ui.get(ref.os[2], true) then
            ui.set(ref.fakelag, 1)
        else
            ui.set(ref.fakelag, 14)
        end
    end
end

local function autobuy(e)
    if not lua_menu.misc.autobuy:get() then return end
    if client.userid_to_entindex(e.userid) ~= entity.get_local_player() then return end

    local primary = lua_menu.misc.autobuy_primary:get()
    local second = lua_menu.misc.autobuy_second:get()
    local nades = lua_menu.misc.autobuy_nades:get()
    local other = lua_menu.misc.autobuy_other:get()
    local buy = ''

    local primary_weapons = {
        Auto = 'buy scar20; buy g3sg1;',
        Scout = 'buy ssg08;',
        AWP = 'buy awp;'
    }

    local secondary_weapons = {
        ["Deagle | R8"] = 'buy deagle;',
        Dualies = 'buy elite;',
        P250 = 'buy p250;',
        ["CZ | FN57 | Tec9"] = 'buy tec9;'
    }

    -- Исправленная таблица для гранат
    local nade_commands = {
        Molotov = 'buy molotov;',
        Hegrenade = 'buy hegrenade;',  -- Исправлено с "Hergrenade"
        Smoke = 'buy smokegrenade;'    -- Добавлено
    }

    for i = 1, #other do
        buy = buy .. 'buy ' .. other[i] .. ';'
    end

    if primary_weapons[primary] then
        buy = buy .. primary_weapons[primary]
    end

    if secondary_weapons[second] then
        buy = buy .. secondary_weapons[second]
    end

    for i = 1, #nades do
        if nade_commands[nades[i]] then
            buy = buy .. nade_commands[nades[i]]
        end
    end

    if buy ~= '' then
        client.exec(buy)
    end
end

aa_package = ui_handler.setup(antiaim_system)
aa_config = aa_package:save()
package = ui_handler.setup(lua_menu)
config = package:save()

local config_system, protected, presets = {}, {}, {}

protected.database = {
    configs = ':illusions::configs:'
}

config_system.get = function(name)
    local database = database.read(protected.database.configs) or {}

    for i, v in pairs(database) do
        if v.name == name then
            return {
                config = v.config,
                config2 = v.config2,
                index = i
            }
        end
    end

    for i, v in pairs(presets) do
        if v.name == name then
            return {
                config = v.config,
                config2 = v.config2,
                index = i
            }
        end
    end

    return false
end

config_system.save = function(name)
    local db = database.read(protected.database.configs) or {}
    local config = {}

    if name:match('[^%w]') ~= nil then
        return
    end

    local config = base64.encode(json.stringify(package:save()))
    local config2 = base64.encode(json.stringify(aa_package:save()))

    local cfg = config_system.get(name)

    if not cfg then
        table.insert(db, { name = name, config = config, config2 = config2 })
    else
        db[cfg.index].config = config
        db[cfg.index].config2 = config2
    end

    database.write(protected.database.configs, db)
end

config_system.delete = function(name)
    local db = database.read(protected.database.configs) or {}

    for i, v in pairs(db) do
        if v.name == name then
            table.remove(db, i)
            break
        end
    end

    for i, v in pairs(presets) do
        if v.name == name then
            return false
        end
    end

    database.write(protected.database.configs, db)
end

config_system.config_list = function()
    local database = database.read(protected.database.configs) or {}
    local config = {}

    for i, v in pairs(presets) do
        table.insert(config, v.name)
    end

    for i, v in pairs(database) do
        table.insert(config, v.name)
    end

    return config
end



config_system.load_settings = function(e, e2)
    --package:load(json.parse(base64.decode(e)))
    --aa_package:load(json.parse(base64.decode(e2)))
    package:load(e)
    aa_package:load(e2)
end

config_system.import_settings = function()
    local frombuffer = clipboard.get()
    local config = json.parse(base64.decode(frombuffer))
    config_system.load_settings(config.config, config.config2)
end

config_system.export_settings = function(name)
    local config = { config = package:save(), config2 = aa_package:save() }
    local toExport = base64.encode(json.stringify(config))
    clipboard.set(toExport)
end

config_system.load = function(name)
    local fromDB = config_system.get(name)
    config_system.load_settings(json.parse(base64.decode(fromDB.config)), json.parse(base64.decode(fromDB.config2)))
end

lua_menu.config.list:set_callback(function(value)
    if value == nil then 
        return 
    end
    local name = ''
    
    local configs = config_system.config_list()
    if configs == nil then 
        return 
    end

    name = configs[value:get() + 1] or '23'
    lua_menu.config.name:set(name)
end)

lua_menu.config.load:set_callback(function()
    local name = lua_menu.config.name:get()
    if name == '' then return end
    client.exec("Play ".. "buttons/button17")
    

    local s, p = pcall(config_system.load, name)

    if s then
        name = name:gsub('*', '')
        print('Successfully loaded ' .. name)
    else
        print('Failed to load ' .. name)
        print('beta: ', p)
    end
    
end)

lua_menu.config.save:set_callback(function()			
    local name = lua_menu.config.name:get()
    if name == '' then return end

    for i, v in pairs(presets) do
        if v.name == name:gsub('*', '') then
            client.exec("You can't save built-in preset")
            return
        end
    end

    if name:match('[^%w]') ~= nil then
        print('Failed to save ' .. name .. ' due to invalid characters')
        return
    end

    local protected = function()
        config_system.save(name)
        lua_menu.config.list:update(config_system.config_list())
    end

    if pcall(protected) then

        print('Configuration ' .. name .. ' has been successfully saved.')
        client.exec("Play ".. "buttons/button17")
    else
        client.exec("Play ".. "buttons/button18")
        print('Failed to save ' .. name)
    end
end)

lua_menu.config.delete:set_callback(function()
    local name = lua_menu.config.name:get()
    if name == '' then return end

    if config_system.delete(name) == false then
        print('Failed to delete ' .. name)
        lua_menu.config.list:update(config_system.config_list())
        return
    end

    for i, v in pairs(presets) do
        if v.name == name:gsub('*', '') then
            print('You can`t delete built-in preset ' .. name:gsub('*', ''))
            return
        end
    end

    config_system.delete(name)

    lua_menu.config.list:update(config_system.config_list())
    lua_menu.config.list:set((#presets) or '')
    lua_menu.config.name:set(#database.read(protected.database.configs) == 0 and "" or config_system.config_list()[#presets])
    print('Configuration ' .. name .. 'has been successfully remove.')
    client.exec("Play ".. "buttons/button17")
end)

lua_menu.config.import:set_callback(function()
    local protected = function()
        config_system.import_settings()
    end

    if pcall(protected) then
        print('Successfully imported settings')
        client.exec("Play ".. "buttons/button17")
    else
        print('Failed to import settings')
    end
end)

lua_menu.config.export:set_callback(function()
    local name = lua_menu.config.name:get()
    if name == '' then return end

    local protected = function()
        config_system.export_settings(name)
    end

    if pcall(protected) then
        print('Successfully exported settings')
        client.exec("Play ".. "buttons/button17")
    else
        print('Failed to export settings')
    end
end)

function initDatabase1()
    if database.read(protected.database.configs) == nil then
        database.write(protected.database.configs, {})
    end

    local link = 'eyJjb25maWcyIjpbeyJlbmFibGUiOmZhbHNlLCJ5YXdfdHlwZSI6IkRlZmF1bHQiLCJtb2RfdHlwZSI6Ik9mZiIsInBpdGNoX3ZhbHVlMiI6MCwiZGVmX2JvZHlfc2xpZGVyIjowLCJkZWZlbnNpdmUiOmZhbHNlLCJkZWZfYm9keV95YXdfdHlwZSI6Ik9mZiIsInlhd192YWx1ZSI6MCwieWF3X3JpZ2h0IjowLCJwaXRjaF9yYW5kb21fdmFsdWUxIjowLCJwaXRjaF9zcGluX3NwZWVkIjowLCJkZWZfeWF3X3ZhbHVlIjowLCJkZWZlbnNpdmVfcGl0Y2giOiJPZmYiLCJib2R5X3NsaWRlciI6MCwicGl0Y2hfcmFuZG9tX3ZhbHVlMiI6MCwiZGVmX21vZF9kbSI6MCwieWF3X3ZhbHVlX2ppdHRlcjEiOjAsInBpdGNoX3NwaW5fdmFsdWUiOjAsInlhd19yYW5kb20iOjAsImZvcmNlX2RlZiI6ZmFsc2UsInlhd19kZWxheSI6NCwibW9kX2RtIjowLCJkZWZlbnNpdmVfdHlwZSI6IkRlZmF1bHQiLCJkZWZfbW9kX3R5cGUiOiJPZmYiLCJ5YXdfdmFsdWVfb3Bwb3NpdGUiOjAsImRlZmVuc2l2ZV95YXciOiJPZmYiLCJ5YXdfdmFsdWVfcmFuZG9tMiI6MCwiYm9keV95YXdfdHlwZSI6Ik9mZiIsInlhd192YWx1ZV9qaXR0ZXIyIjowLCJ5YXdfdmFsdWVfcmFuZG9tMSI6MCwieWF3X2xlZnQiOjAsInBpdGNoX3ZhbHVlIjowLCJwaXRjaF92YWx1ZTEiOjB9LHsiZW5hYmxlIjp0cnVlLCJ5YXdfdHlwZSI6IkRlZmF1bHQiLCJtb2RfdHlwZSI6IkNlbnRlciIsInBpdGNoX3ZhbHVlMiI6MCwiZGVmX2JvZHlfc2xpZGVyIjowLCJkZWZlbnNpdmUiOmZhbHNlLCJkZWZfYm9keV95YXdfdHlwZSI6Ik9mZiIsInlhd192YWx1ZSI6MCwieWF3X3JpZ2h0Ijo0MCwicGl0Y2hfcmFuZG9tX3ZhbHVlMSI6MCwicGl0Y2hfc3Bpbl9zcGVlZCI6MCwiZGVmX3lhd192YWx1ZSI6MCwiZGVmZW5zaXZlX3BpdGNoIjoiT2ZmIiwiYm9keV9zbGlkZXIiOjI4LCJwaXRjaF9yYW5kb21fdmFsdWUyIjowLCJkZWZfbW9kX2RtIjowLCJ5YXdfdmFsdWVfaml0dGVyMSI6MCwicGl0Y2hfc3Bpbl92YWx1ZSI6MCwieWF3X3JhbmRvbSI6MTcsImZvcmNlX2RlZiI6ZmFsc2UsInlhd19kZWxheSI6NCwibW9kX2RtIjo2MSwiZGVmZW5zaXZlX3R5cGUiOiJEZWZhdWx0IiwiZGVmX21vZF90eXBlIjoiT2ZmIiwieWF3X3ZhbHVlX29wcG9zaXRlIjowLCJkZWZlbnNpdmVfeWF3IjoiT2ZmIiwieWF3X3ZhbHVlX3JhbmRvbTIiOjAsImJvZHlfeWF3X3R5cGUiOiJKaXR0ZXIiLCJ5YXdfdmFsdWVfaml0dGVyMiI6MCwieWF3X3ZhbHVlX3JhbmRvbTEiOjAsInlhd19sZWZ0IjotMjIsInBpdGNoX3ZhbHVlIjowLCJwaXRjaF92YWx1ZTEiOjB9LHsiZW5hYmxlIjp0cnVlLCJ5YXdfdHlwZSI6IkRlZmF1bHQiLCJtb2RfdHlwZSI6IkNlbnRlciIsInBpdGNoX3ZhbHVlMiI6MCwiZGVmX2JvZHlfc2xpZGVyIjowLCJkZWZlbnNpdmUiOmZhbHNlLCJkZWZfYm9keV95YXdfdHlwZSI6Ik9mZiIsInlhd192YWx1ZSI6MCwieWF3X3JpZ2h0IjoxMCwicGl0Y2hfcmFuZG9tX3ZhbHVlMSI6MCwicGl0Y2hfc3Bpbl9zcGVlZCI6MCwiZGVmX3lhd192YWx1ZSI6MCwiZGVmZW5zaXZlX3BpdGNoIjoiT2ZmIiwiYm9keV9zbGlkZXIiOjEsInBpdGNoX3JhbmRvbV92YWx1ZTIiOjAsImRlZl9tb2RfZG0iOjAsInlhd192YWx1ZV9qaXR0ZXIxIjowLCJwaXRjaF9zcGluX3ZhbHVlIjowLCJ5YXdfcmFuZG9tIjo0MSwiZm9yY2VfZGVmIjp0cnVlLCJ5YXdfZGVsYXkiOjQsIm1vZF9kbSI6OTUsImRlZmVuc2l2ZV90eXBlIjoiRGVmYXVsdCIsImRlZl9tb2RfdHlwZSI6Ik9mZiIsInlhd192YWx1ZV9vcHBvc2l0ZSI6MCwiZGVmZW5zaXZlX3lhdyI6Ik9mZiIsInlhd192YWx1ZV9yYW5kb20yIjowLCJib2R5X3lhd190eXBlIjoiSml0dGVyIiwieWF3X3ZhbHVlX2ppdHRlcjIiOjAsInlhd192YWx1ZV9yYW5kb20xIjowLCJ5YXdfbGVmdCI6LTEwLCJwaXRjaF92YWx1ZSI6MCwicGl0Y2hfdmFsdWUxIjowfSx7ImVuYWJsZSI6dHJ1ZSwieWF3X3R5cGUiOiJEZWZhdWx0IiwibW9kX3R5cGUiOiJDZW50ZXIiLCJwaXRjaF92YWx1ZTIiOjAsImRlZl9ib2R5X3NsaWRlciI6MCwiZGVmZW5zaXZlIjpmYWxzZSwiZGVmX2JvZHlfeWF3X3R5cGUiOiJPZmYiLCJ5YXdfdmFsdWUiOjAsInlhd19yaWdodCI6NDIsInBpdGNoX3JhbmRvbV92YWx1ZTEiOjAsInBpdGNoX3NwaW5fc3BlZWQiOjAsImRlZl95YXdfdmFsdWUiOjAsImRlZmVuc2l2ZV9waXRjaCI6Ik9mZiIsImJvZHlfc2xpZGVyIjoxNiwicGl0Y2hfcmFuZG9tX3ZhbHVlMiI6MCwiZGVmX21vZF9kbSI6MCwieWF3X3ZhbHVlX2ppdHRlcjEiOjAsInBpdGNoX3NwaW5fdmFsdWUiOjAsInlhd19yYW5kb20iOjAsImZvcmNlX2RlZiI6ZmFsc2UsInlhd19kZWxheSI6NCwibW9kX2RtIjo1MCwiZGVmZW5zaXZlX3R5cGUiOiJEZWZhdWx0IiwiZGVmX21vZF90eXBlIjoiT2ZmIiwieWF3X3ZhbHVlX29wcG9zaXRlIjowLCJkZWZlbnNpdmVfeWF3IjoiT2ZmIiwieWF3X3ZhbHVlX3JhbmRvbTIiOjAsImJvZHlfeWF3X3R5cGUiOiJKaXR0ZXIiLCJ5YXdfdmFsdWVfaml0dGVyMiI6MCwieWF3X3ZhbHVlX3JhbmRvbTEiOjAsInlhd19sZWZ0IjotMjQsInBpdGNoX3ZhbHVlIjowLCJwaXRjaF92YWx1ZTEiOjB9LHsiZW5hYmxlIjp0cnVlLCJ5YXdfdHlwZSI6IkRlZmF1bHQiLCJtb2RfdHlwZSI6IlNraXR0ZXIiLCJwaXRjaF92YWx1ZTIiOjAsImRlZl9ib2R5X3NsaWRlciI6MCwiZGVmZW5zaXZlIjpmYWxzZSwiZGVmX2JvZHlfeWF3X3R5cGUiOiJPZmYiLCJ5YXdfdmFsdWUiOjAsInlhd19yaWdodCI6MzksInBpdGNoX3JhbmRvbV92YWx1ZTEiOjAsInBpdGNoX3NwaW5fc3BlZWQiOjAsImRlZl95YXdfdmFsdWUiOjAsImRlZmVuc2l2ZV9waXRjaCI6Ik9mZiIsImJvZHlfc2xpZGVyIjotMTIsInBpdGNoX3JhbmRvbV92YWx1ZTIiOjAsImRlZl9tb2RfZG0iOjAsInlhd192YWx1ZV9qaXR0ZXIxIjowLCJwaXRjaF9zcGluX3ZhbHVlIjowLCJ5YXdfcmFuZG9tIjo1LCJmb3JjZV9kZWYiOmZhbHNlLCJ5YXdfZGVsYXkiOjQsIm1vZF9kbSI6MCwiZGVmZW5zaXZlX3R5cGUiOiJEZWZhdWx0IiwiZGVmX21vZF90eXBlIjoiT2ZmIiwieWF3X3ZhbHVlX29wcG9zaXRlIjowLCJkZWZlbnNpdmVfeWF3IjoiT2ZmIiwieWF3X3ZhbHVlX3JhbmRvbTIiOjAsImJvZHlfeWF3X3R5cGUiOiJKaXR0ZXIiLCJ5YXdfdmFsdWVfaml0dGVyMiI6MCwieWF3X3ZhbHVlX3JhbmRvbTEiOjAsInlhd19sZWZ0IjotMjIsInBpdGNoX3ZhbHVlIjowLCJwaXRjaF92YWx1ZTEiOjB9LHsiZW5hYmxlIjp0cnVlLCJ5YXdfdHlwZSI6IkRlZmF1bHQiLCJtb2RfdHlwZSI6IkNlbnRlciIsInBpdGNoX3ZhbHVlMiI6MCwiZGVmX2JvZHlfc2xpZGVyIjowLCJkZWZlbnNpdmUiOmZhbHNlLCJkZWZfYm9keV95YXdfdHlwZSI6Ik9mZiIsInlhd192YWx1ZSI6MCwieWF3X3JpZ2h0IjozOSwicGl0Y2hfcmFuZG9tX3ZhbHVlMSI6MCwicGl0Y2hfc3Bpbl9zcGVlZCI6MCwiZGVmX3lhd192YWx1ZSI6MCwiZGVmZW5zaXZlX3BpdGNoIjoiT2ZmIiwiYm9keV9zbGlkZXIiOjEwLCJwaXRjaF9yYW5kb21fdmFsdWUyIjowLCJkZWZfbW9kX2RtIjowLCJ5YXdfdmFsdWVfaml0dGVyMSI6MCwicGl0Y2hfc3Bpbl92YWx1ZSI6MCwieWF3X3JhbmRvbSI6MjUsImZvcmNlX2RlZiI6ZmFsc2UsInlhd19kZWxheSI6NCwibW9kX2RtIjoxMiwiZGVmZW5zaXZlX3R5cGUiOiJEZWZhdWx0IiwiZGVmX21vZF90eXBlIjoiT2ZmIiwieWF3X3ZhbHVlX29wcG9zaXRlIjowLCJkZWZlbnNpdmVfeWF3IjoiT2ZmIiwieWF3X3ZhbHVlX3JhbmRvbTIiOjAsImJvZHlfeWF3X3R5cGUiOiJKaXR0ZXIiLCJ5YXdfdmFsdWVfaml0dGVyMiI6MCwieWF3X3ZhbHVlX3JhbmRvbTEiOjAsInlhd19sZWZ0IjotMjIsInBpdGNoX3ZhbHVlIjowLCJwaXRjaF92YWx1ZTEiOjB9LHsiZW5hYmxlIjp0cnVlLCJ5YXdfdHlwZSI6IkRlZmF1bHQiLCJtb2RfdHlwZSI6IkNlbnRlciIsInBpdGNoX3ZhbHVlMiI6MCwiZGVmX2JvZHlfc2xpZGVyIjowLCJkZWZlbnNpdmUiOmZhbHNlLCJkZWZfYm9keV95YXdfdHlwZSI6Ik9mZiIsInlhd192YWx1ZSI6MjIsInlhd19yaWdodCI6MzgsInBpdGNoX3JhbmRvbV92YWx1ZTEiOjAsInBpdGNoX3NwaW5fc3BlZWQiOjUsImRlZl95YXdfdmFsdWUiOjAsImRlZmVuc2l2ZV9waXRjaCI6IlNwaW4iLCJib2R5X3NsaWRlciI6MSwicGl0Y2hfcmFuZG9tX3ZhbHVlMiI6MCwiZGVmX21vZF9kbSI6MCwieWF3X3ZhbHVlX2ppdHRlcjEiOjAsInBpdGNoX3NwaW5fdmFsdWUiOjAsInlhd19yYW5kb20iOjYsImZvcmNlX2RlZiI6dHJ1ZSwieWF3X2RlbGF5Ijo0LCJtb2RfZG0iOjUwLCJkZWZlbnNpdmVfdHlwZSI6IkRlZmF1bHQiLCJkZWZfbW9kX3R5cGUiOiJPZmYiLCJ5YXdfdmFsdWVfb3Bwb3NpdGUiOjIyLCJkZWZlbnNpdmVfeWF3IjoiU3BpbiIsInlhd192YWx1ZV9yYW5kb20yIjowLCJib2R5X3lhd190eXBlIjoiSml0dGVyIiwieWF3X3ZhbHVlX2ppdHRlcjIiOjAsInlhd192YWx1ZV9yYW5kb20xIjowLCJ5YXdfbGVmdCI6LTI0LCJwaXRjaF92YWx1ZSI6MCwicGl0Y2hfdmFsdWUxIjowfSx7ImVuYWJsZSI6dHJ1ZSwieWF3X3R5cGUiOiJEZWZhdWx0IiwibW9kX3R5cGUiOiJDZW50ZXIiLCJwaXRjaF92YWx1ZTIiOjAsImRlZl9ib2R5X3NsaWRlciI6MCwiZGVmZW5zaXZlIjpmYWxzZSwiZGVmX2JvZHlfeWF3X3R5cGUiOiJPZmYiLCJ5YXdfdmFsdWUiOjAsInlhd19yaWdodCI6MzksInBpdGNoX3JhbmRvbV92YWx1ZTEiOjAsInBpdGNoX3NwaW5fc3BlZWQiOjAsImRlZl95YXdfdmFsdWUiOjAsImRlZmVuc2l2ZV9waXRjaCI6Ik9mZiIsImJvZHlfc2xpZGVyIjotMTI2LCJwaXRjaF9yYW5kb21fdmFsdWUyIjowLCJkZWZfbW9kX2RtIjowLCJ5YXdfdmFsdWVfaml0dGVyMSI6MCwicGl0Y2hfc3Bpbl92YWx1ZSI6MCwieWF3X3JhbmRvbSI6MCwiZm9yY2VfZGVmIjpmYWxzZSwieWF3X2RlbGF5Ijo0LCJtb2RfZG0iOjQxLCJkZWZlbnNpdmVfdHlwZSI6IkRlZmF1bHQiLCJkZWZfbW9kX3R5cGUiOiJPZmYiLCJ5YXdfdmFsdWVfb3Bwb3NpdGUiOjAsImRlZmVuc2l2ZV95YXciOiJPZmYiLCJ5YXdfdmFsdWVfcmFuZG9tMiI6MCwiYm9keV95YXdfdHlwZSI6IkppdHRlciIsInlhd192YWx1ZV9qaXR0ZXIyIjowLCJ5YXdfdmFsdWVfcmFuZG9tMSI6MCwieWF3X2xlZnQiOi0yNiwicGl0Y2hfdmFsdWUiOjAsInBpdGNoX3ZhbHVlMSI6MH1dLCJjb25maWciOnsibWFpbiI6eyJ0YWIiOiLuh4EgQ29uZmlncyBTeXN0ZW0ifSwiY29uZmlnIjp7Imxpc3QiOjN9LCJhbnRpYWltIjp7Inlhd19iYXNlIjoiQXQgdGFyZ2V0cyIsImFkZG9ucyI6WyJBbnRpLUJydXRlZm9yY2UiLCJBbnRpIEJhY2tzdGFiIiwiU2FmZSBIZWFkIiwifiJdLCJ5YXdfZGlyZWN0aW9uIjpbIkZyZWVzdGFuZGluZyIsIk1hbnVhbCIsIkVkZ2UgWWF3IiwifiJdLCJrZXlfZm9yd2FyZCI6WzEsMCwifiJdLCJrZXlfbGVmdCI6WzEsOTAsIn4iXSwiY29uZGl0aW9uIjoiXHUwMDBiRHVjay1Nb3ZlXHIiLCJzYWZlX2hlYWQiOlsiQWlyK0MgS25pZmUiLCJBaXIrQyBaZXVzIiwifiJdLCJhbnRpX2JydXRlZm9yY2VfbW9kZSI6Ik1pbmltYWwiLCJ0YWIiOiJCdWlsZGVyIiwia2V5X2ZyZWVzdGFuZCI6WzEsMTgsIn4iXSwia2V5X2VkZ2VfeWF3IjpbMSw1LCJ+Il0sImtleV9yaWdodCI6WzEsNjcsIn4iXX0sIm1pc2MiOnsicGVyZm9tYW5jZV9ib29zdCI6dHJ1ZSwibWFudWFsX2Fycm93c19jIjoiI0M1RDBGRkZGIiwiZGFtYWdlX2luZGljYXRvciI6dHJ1ZSwibW9kZWxfbGFiZWxfc2VwIjp0cnVlLCJhbmltYXRpb25fYm9keV9sZWFuIjoxMDAsInRoaXJkX3BlcnNvbl92YWx1ZSI6NDAsImFuaW1hdGlvbl9hZGRvbnMiOlsiQWRqdXN0IEJvZHkgTGVhbiIsIkVhcnRocXVha2UiLCJTbW9vdGhpbmciLCJ+Il0sImFpbXRvb2xzIjp0cnVlLCJhaW10b29sc192YWx1ZV9zYWZlIjoyNSwiZGVmZW5zaXZlX3N0eWxlIjoiTW9kZXJuIiwiYWltdG9vbHNfZXNwX2ZsYWdzIjp0cnVlLCJ3YXRlcm1hcmtfY29sb3IiOnRydWUsImZhc3RfbGFkZGVyIjp0cnVlLCJhc3BlY3RyYXRpbyI6dHJ1ZSwicHJlZGljdCI6dHJ1ZSwiZGFtYWdlX2luZGljYXRvcl9zdHlsZSI6IlBpeGVsIiwiYWltdG9vbHNfdmFsdWVfYmFpbSI6NzAsInRoaXJkX3BlcnNvbiI6dHJ1ZSwianVtcF9zdG9wX2hvdGtleSI6WzEsMzIsIn4iXSwid2F0ZXJtYXJrX3N0eWxlIjoiRGVmYXVsdCIsImxvZyI6dHJ1ZSwiY3Jvc3NfaW5kX2MiOiIjQzVEMEZGRkYiLCJpbmZvX3BhbmVsIjp0cnVlLCJrZXlfY29sb3JfYyI6IiNGRkZGRkZGRiIsInRlbGVwb3J0X2tleSI6WzIsMTE1LCJ+Il0sImZpeF9oaWRlc2hvdHMiOnRydWUsImNsYW50YWcyIjpmYWxzZSwid2F0ZXJtYXJrX2NvbG9yX2MiOiIjQzVEMEZGRkYiLCJ2ZWxvY2l0eV93aW5kb3dfYyI6IiNDNUQwRkZGRiIsInByZWRpY3Rfa2V5IjpbMiw4OCwifiJdLCJkZWZlbnNpdmVfd2luZG93Ijp0cnVlLCJjcm9zc19jb2xvciI6dHJ1ZSwiYXV0b2J1eV9zZWNvbmQiOiJEZWFnbGUgfCBSOCIsImNyb3NzX2NvbG9yX2MiOiIjRkZGRkZGRkYiLCJhdXRvYnV5X3ByaW1hcnkiOiJTY291dCIsImxvZ19oaXRfY29sb3JfYyI6IiNDNUQwRkZGRiIsIm1vZGVsX2NoZWNrIjpbIkNUIiwiVCIsIn4iXSwibG9jYWxwbGF5ZXJfbW9kZWxfY3QiOiJ3dXppbXUiLCJhbmltYXRpb25fZ3JvdW5kIjoiU3RhdGljIiwibG9nX21pc3NfY29sb3JfYyI6IiM1RDVENURGRiIsImFuaW1hdGlvbl9haXIiOiJTdGF0aWMiLCJhaW10b29sc19wcmlvcml0eSI6dHJ1ZSwiZGVsYXlfc2hvdCI6ZmFsc2UsInJlc29sdmVyIjp0cnVlLCJyZXNvbHZlcl9mbGFnIjp0cnVlLCJjcm9zc19pbmQiOmZhbHNlLCJsb2dfdHlwZSI6WyJDb25zb2xlIiwiU2NyZWVuIiwifiJdLCJzcGFtbWVyczIiOiJSYWdlYmFpdCAoMSkiLCJqdW1wX3N0b3BfZGlzdGFuY2UiOjIwMCwiYW5pbWF0aW9uIjp0cnVlLCJhdXRvYnV5X290aGVyIjpbIlZlc3RoZWxtIiwiVmVzdCIsIlRhc2VyIiwiRGVmdXNlciIsIn4iXSwiZGFtYWdlX2luZGljYXRvcl9tb2RlIjoiT24gQmluZCIsInZlbG9jaXR5X3dpbmRvdyI6dHJ1ZSwibG9nX2dsb3dfY29sb3JfYyI6IiNDNUQwRkZGRiIsImRlZmVuc2l2ZV93aW5kb3dfYyI6IiNDNUQwRkZGRiIsIndhdGVybWFya19wb3NpdGlvbiI6IkJvdHRvbSBDZW50ZXIiLCJpbmZvX3BhbmVsX2MiOiIjQzVEMEZGRkYiLCJhdXRvYnV5Ijp0cnVlLCJ0ZWxlcG9ydCI6dHJ1ZSwicmVzb2x2ZXJfdHlwZSI6IkRlZmVuc2l2ZSIsImp1bXBfc3RvcCI6dHJ1ZSwic3BhbW1lcnMiOnRydWUsImtleV9jb2xvciI6dHJ1ZSwibG9jYWxwbGF5ZXJfbW9kZWxfdCI6Ind1emltdSIsImFzcGVjdHJhdGlvX3ZhbHVlIjoxMzMsImF1dG9idXlfbmFkZXMiOlsiTW9sb3RvdiIsIkhlZ3JlbmFkZSIsIlNtb2tlIiwifiJdLCJtYW51YWxfYXJyb3dzIjp0cnVlLCJ2ZWxvY2l0eV9zdHlsZSI6Ik1vZGVybiIsImFpbXRvb2xzX2JhaW1fc2FmZSI6dHJ1ZSwid2F0ZXJtYXJrIjp0cnVlfX19'

    
    local decode = base64.decode(link, 'base64')
    local toTable = json.parse(decode)

    table.insert(presets, { name = '*Default', config = base64.encode(json.stringify(toTable.config)), config2 = base64.encode(json.stringify(toTable.config2))})
    lua_menu.config.name:set('*Default')

    lua_menu.config.list:update(config_system.config_list())


    lua_menu.config.list:update(config_system.config_list())
end

function initDatabase2()
    if database.read(protected.database.configs) == nil then
        database.write(protected.database.configs, {})
    end

    local link = 'eyJjb25maWcyIjpbeyJlbmFibGUiOmZhbHNlLCJ5YXdfdHlwZSI6IkRlZmF1bHQiLCJtb2RfdHlwZSI6Ik9mZiIsInBpdGNoX3ZhbHVlMiI6MCwiZGVmX2JvZHlfc2xpZGVyIjowLCJkZWZlbnNpdmUiOmZhbHNlLCJkZWZfYm9keV95YXdfdHlwZSI6Ik9mZiIsInlhd192YWx1ZSI6MCwieWF3X3JpZ2h0IjowLCJwaXRjaF9yYW5kb21fdmFsdWUxIjowLCJwaXRjaF9zcGluX3NwZWVkIjowLCJkZWZfeWF3X3ZhbHVlIjowLCJkZWZlbnNpdmVfcGl0Y2giOiJPZmYiLCJib2R5X3NsaWRlciI6MCwicGl0Y2hfcmFuZG9tX3ZhbHVlMiI6MCwiZGVmX21vZF9kbSI6MCwieWF3X3ZhbHVlX2ppdHRlcjEiOjAsInBpdGNoX3NwaW5fdmFsdWUiOjAsInlhd19yYW5kb20iOjAsImZvcmNlX2RlZiI6ZmFsc2UsInlhd19kZWxheSI6NCwibW9kX2RtIjowLCJkZWZlbnNpdmVfdHlwZSI6IkRlZmF1bHQiLCJkZWZfbW9kX3R5cGUiOiJPZmYiLCJ5YXdfdmFsdWVfb3Bwb3NpdGUiOjAsImRlZmVuc2l2ZV95YXciOiJPZmYiLCJ5YXdfdmFsdWVfcmFuZG9tMiI6MCwiYm9keV95YXdfdHlwZSI6Ik9mZiIsInlhd192YWx1ZV9qaXR0ZXIyIjowLCJ5YXdfdmFsdWVfcmFuZG9tMSI6MCwieWF3X2xlZnQiOjAsInBpdGNoX3ZhbHVlIjowLCJwaXRjaF92YWx1ZTEiOjB9LHsiZW5hYmxlIjp0cnVlLCJ5YXdfdHlwZSI6IkRlZmF1bHQiLCJtb2RfdHlwZSI6Ik9mZnNldCIsInBpdGNoX3ZhbHVlMiI6MCwiZGVmX2JvZHlfc2xpZGVyIjowLCJkZWZlbnNpdmUiOmZhbHNlLCJkZWZfYm9keV95YXdfdHlwZSI6Ik9mZiIsInlhd192YWx1ZSI6MCwieWF3X3JpZ2h0Ijo0MCwicGl0Y2hfcmFuZG9tX3ZhbHVlMSI6MCwicGl0Y2hfc3Bpbl9zcGVlZCI6MCwiZGVmX3lhd192YWx1ZSI6MCwiZGVmZW5zaXZlX3BpdGNoIjoiT2ZmIiwiYm9keV9zbGlkZXIiOjMsInBpdGNoX3JhbmRvbV92YWx1ZTIiOjAsImRlZl9tb2RfZG0iOjAsInlhd192YWx1ZV9qaXR0ZXIxIjowLCJwaXRjaF9zcGluX3ZhbHVlIjowLCJ5YXdfcmFuZG9tIjoxNCwiZm9yY2VfZGVmIjp0cnVlLCJ5YXdfZGVsYXkiOjMsIm1vZF9kbSI6NDEsImRlZmVuc2l2ZV90eXBlIjoiRGVmYXVsdCIsImRlZl9tb2RfdHlwZSI6Ik9mZiIsInlhd192YWx1ZV9vcHBvc2l0ZSI6MCwiZGVmZW5zaXZlX3lhdyI6Ik9mZiIsInlhd192YWx1ZV9yYW5kb20yIjowLCJib2R5X3lhd190eXBlIjoiSml0dGVyIiwieWF3X3ZhbHVlX2ppdHRlcjIiOjAsInlhd192YWx1ZV9yYW5kb20xIjowLCJ5YXdfbGVmdCI6LTMwLCJwaXRjaF92YWx1ZSI6MCwicGl0Y2hfdmFsdWUxIjowfSx7ImVuYWJsZSI6dHJ1ZSwieWF3X3R5cGUiOiJEZWxheSIsIm1vZF90eXBlIjoiU2tpdHRlciIsInBpdGNoX3ZhbHVlMiI6MCwiZGVmX2JvZHlfc2xpZGVyIjoxMDQsImRlZmVuc2l2ZSI6dHJ1ZSwiZGVmX2JvZHlfeWF3X3R5cGUiOiJPcHBvc2l0ZSIsInlhd192YWx1ZSI6MCwieWF3X3JpZ2h0IjozNywicGl0Y2hfcmFuZG9tX3ZhbHVlMSI6MjAsInBpdGNoX3NwaW5fc3BlZWQiOjAsImRlZl95YXdfdmFsdWUiOjAsImRlZmVuc2l2ZV9waXRjaCI6IlJhbmRvbSIsImJvZHlfc2xpZGVyIjoxMCwicGl0Y2hfcmFuZG9tX3ZhbHVlMiI6ODksImRlZl9tb2RfZG0iOjI3LCJ5YXdfdmFsdWVfaml0dGVyMSI6MCwicGl0Y2hfc3Bpbl92YWx1ZSI6MCwieWF3X3JhbmRvbSI6MTAwLCJmb3JjZV9kZWYiOnRydWUsInlhd19kZWxheSI6MTEsIm1vZF9kbSI6MjEsImRlZmVuc2l2ZV90eXBlIjoiQnVpbGRlciIsImRlZl9tb2RfdHlwZSI6Ik9mZnNldCIsInlhd192YWx1ZV9vcHBvc2l0ZSI6MCwiZGVmZW5zaXZlX3lhdyI6Ik9mZiIsInlhd192YWx1ZV9yYW5kb20yIjowLCJib2R5X3lhd190eXBlIjoiT3Bwb3NpdGUiLCJ5YXdfdmFsdWVfaml0dGVyMiI6MCwieWF3X3ZhbHVlX3JhbmRvbTEiOjAsInlhd19sZWZ0IjotNSwicGl0Y2hfdmFsdWUiOjAsInBpdGNoX3ZhbHVlMSI6MH0seyJlbmFibGUiOnRydWUsInlhd190eXBlIjoiRGVmYXVsdCIsIm1vZF90eXBlIjoiQ2VudGVyIiwicGl0Y2hfdmFsdWUyIjowLCJkZWZfYm9keV9zbGlkZXIiOjAsImRlZmVuc2l2ZSI6ZmFsc2UsImRlZl9ib2R5X3lhd190eXBlIjoiT2ZmIiwieWF3X3ZhbHVlIjowLCJ5YXdfcmlnaHQiOjQyLCJwaXRjaF9yYW5kb21fdmFsdWUxIjowLCJwaXRjaF9zcGluX3NwZWVkIjowLCJkZWZfeWF3X3ZhbHVlIjowLCJkZWZlbnNpdmVfcGl0Y2giOiJPZmYiLCJib2R5X3NsaWRlciI6MSwicGl0Y2hfcmFuZG9tX3ZhbHVlMiI6MCwiZGVmX21vZF9kbSI6MCwieWF3X3ZhbHVlX2ppdHRlcjEiOjAsInBpdGNoX3NwaW5fdmFsdWUiOjAsInlhd19yYW5kb20iOjAsImZvcmNlX2RlZiI6ZmFsc2UsInlhd19kZWxheSI6NCwibW9kX2RtIjozNSwiZGVmZW5zaXZlX3R5cGUiOiJEZWZhdWx0IiwiZGVmX21vZF90eXBlIjoiT2ZmIiwieWF3X3ZhbHVlX29wcG9zaXRlIjowLCJkZWZlbnNpdmVfeWF3IjoiT2ZmIiwieWF3X3ZhbHVlX3JhbmRvbTIiOjAsImJvZHlfeWF3X3R5cGUiOiJKaXR0ZXIiLCJ5YXdfdmFsdWVfaml0dGVyMiI6MCwieWF3X3ZhbHVlX3JhbmRvbTEiOjAsInlhd19sZWZ0IjotMjQsInBpdGNoX3ZhbHVlIjowLCJwaXRjaF92YWx1ZTEiOjB9LHsiZW5hYmxlIjp0cnVlLCJ5YXdfdHlwZSI6IkRlZmF1bHQiLCJtb2RfdHlwZSI6IkNlbnRlciIsInBpdGNoX3ZhbHVlMiI6LTM3LCJkZWZfYm9keV9zbGlkZXIiOjAsImRlZmVuc2l2ZSI6dHJ1ZSwiZGVmX2JvZHlfeWF3X3R5cGUiOiJPZmYiLCJ5YXdfdmFsdWUiOjMzLCJ5YXdfcmlnaHQiOjM5LCJwaXRjaF9yYW5kb21fdmFsdWUxIjo0OSwicGl0Y2hfc3Bpbl9zcGVlZCI6MCwiZGVmX3lhd192YWx1ZSI6MCwiZGVmZW5zaXZlX3BpdGNoIjoiUmFuZG9tIiwiYm9keV9zbGlkZXIiOjE2LCJwaXRjaF9yYW5kb21fdmFsdWUyIjotMzcsImRlZl9tb2RfZG0iOjAsInlhd192YWx1ZV9qaXR0ZXIxIjowLCJwaXRjaF9zcGluX3ZhbHVlIjotMzQsInlhd19yYW5kb20iOjUsImZvcmNlX2RlZiI6dHJ1ZSwieWF3X2RlbGF5Ijo0LCJtb2RfZG0iOi0xOCwiZGVmZW5zaXZlX3R5cGUiOiJEZWZhdWx0IiwiZGVmX21vZF90eXBlIjoiT2ZmIiwieWF3X3ZhbHVlX29wcG9zaXRlIjozMywiZGVmZW5zaXZlX3lhdyI6Ik9wcG9zaXRlIiwieWF3X3ZhbHVlX3JhbmRvbTIiOjAsImJvZHlfeWF3X3R5cGUiOiJKaXR0ZXIiLCJ5YXdfdmFsdWVfaml0dGVyMiI6MCwieWF3X3ZhbHVlX3JhbmRvbTEiOjAsInlhd19sZWZ0IjotMjIsInBpdGNoX3ZhbHVlIjotMzQsInBpdGNoX3ZhbHVlMSI6NDl9LHsiZW5hYmxlIjp0cnVlLCJ5YXdfdHlwZSI6IkRlbGF5IiwibW9kX3R5cGUiOiJTa2l0dGVyIiwicGl0Y2hfdmFsdWUyIjowLCJkZWZfYm9keV9zbGlkZXIiOjAsImRlZmVuc2l2ZSI6ZmFsc2UsImRlZl9ib2R5X3lhd190eXBlIjoiT2ZmIiwieWF3X3ZhbHVlIjo1MCwieWF3X3JpZ2h0IjozOSwicGl0Y2hfcmFuZG9tX3ZhbHVlMSI6MCwicGl0Y2hfc3Bpbl9zcGVlZCI6MCwiZGVmX3lhd192YWx1ZSI6MCwiZGVmZW5zaXZlX3BpdGNoIjoiQ3VzdG9tIiwiYm9keV9zbGlkZXIiOi0yMywicGl0Y2hfcmFuZG9tX3ZhbHVlMiI6MCwiZGVmX21vZF9kbSI6MCwieWF3X3ZhbHVlX2ppdHRlcjEiOjAsInBpdGNoX3NwaW5fdmFsdWUiOjg5LCJ5YXdfcmFuZG9tIjowLCJmb3JjZV9kZWYiOmZhbHNlLCJ5YXdfZGVsYXkiOjcsIm1vZF9kbSI6MCwiZGVmZW5zaXZlX3R5cGUiOiJEZWZhdWx0IiwiZGVmX21vZF90eXBlIjoiT2ZmIiwieWF3X3ZhbHVlX29wcG9zaXRlIjo1MCwiZGVmZW5zaXZlX3lhdyI6IlNwaW4iLCJ5YXdfdmFsdWVfcmFuZG9tMiI6MCwiYm9keV95YXdfdHlwZSI6IkppdHRlciIsInlhd192YWx1ZV9qaXR0ZXIyIjowLCJ5YXdfdmFsdWVfcmFuZG9tMSI6MCwieWF3X2xlZnQiOi0yMiwicGl0Y2hfdmFsdWUiOjg5LCJwaXRjaF92YWx1ZTEiOjB9LHsiZW5hYmxlIjp0cnVlLCJ5YXdfdHlwZSI6IkRlbGF5IiwibW9kX3R5cGUiOiJDZW50ZXIiLCJwaXRjaF92YWx1ZTIiOjAsImRlZl9ib2R5X3NsaWRlciI6MCwiZGVmZW5zaXZlIjp0cnVlLCJkZWZfYm9keV95YXdfdHlwZSI6Ik9mZiIsInlhd192YWx1ZSI6MjIsInlhd19yaWdodCI6MzgsInBpdGNoX3JhbmRvbV92YWx1ZTEiOjAsInBpdGNoX3NwaW5fc3BlZWQiOjUsImRlZl95YXdfdmFsdWUiOjAsImRlZmVuc2l2ZV9waXRjaCI6IlNwaW4iLCJib2R5X3NsaWRlciI6MSwicGl0Y2hfcmFuZG9tX3ZhbHVlMiI6MCwiZGVmX21vZF9kbSI6MCwieWF3X3ZhbHVlX2ppdHRlcjEiOjAsInBpdGNoX3NwaW5fdmFsdWUiOjAsInlhd19yYW5kb20iOjYsImZvcmNlX2RlZiI6dHJ1ZSwieWF3X2RlbGF5Ijo2LCJtb2RfZG0iOi0zLCJkZWZlbnNpdmVfdHlwZSI6IkRlZmF1bHQiLCJkZWZfbW9kX3R5cGUiOiJPZmYiLCJ5YXdfdmFsdWVfb3Bwb3NpdGUiOjIyLCJkZWZlbnNpdmVfeWF3IjoiU3BpbiIsInlhd192YWx1ZV9yYW5kb20yIjowLCJib2R5X3lhd190eXBlIjoiSml0dGVyIiwieWF3X3ZhbHVlX2ppdHRlcjIiOjAsInlhd192YWx1ZV9yYW5kb20xIjowLCJ5YXdfbGVmdCI6LTI0LCJwaXRjaF92YWx1ZSI6MCwicGl0Y2hfdmFsdWUxIjowfSx7ImVuYWJsZSI6dHJ1ZSwieWF3X3R5cGUiOiJEZWZhdWx0IiwibW9kX3R5cGUiOiJDZW50ZXIiLCJwaXRjaF92YWx1ZTIiOi02OSwiZGVmX2JvZHlfc2xpZGVyIjowLCJkZWZlbnNpdmUiOnRydWUsImRlZl9ib2R5X3lhd190eXBlIjoiT2ZmIiwieWF3X3ZhbHVlIjowLCJ5YXdfcmlnaHQiOjM5LCJwaXRjaF9yYW5kb21fdmFsdWUxIjotODksInBpdGNoX3NwaW5fc3BlZWQiOjQsImRlZl95YXdfdmFsdWUiOjAsImRlZmVuc2l2ZV9waXRjaCI6IlNwaW4iLCJib2R5X3NsaWRlciI6MSwicGl0Y2hfcmFuZG9tX3ZhbHVlMiI6LTY5LCJkZWZfbW9kX2RtIjo1MCwieWF3X3ZhbHVlX2ppdHRlcjEiOjAsInBpdGNoX3NwaW5fdmFsdWUiOjAsInlhd19yYW5kb20iOjAsImZvcmNlX2RlZiI6dHJ1ZSwieWF3X2RlbGF5Ijo0LCJtb2RfZG0iOi00LCJkZWZlbnNpdmVfdHlwZSI6IkJ1aWxkZXIiLCJkZWZfbW9kX3R5cGUiOiJTa2l0dGVyIiwieWF3X3ZhbHVlX29wcG9zaXRlIjowLCJkZWZlbnNpdmVfeWF3IjoiUmFuZG9tIiwieWF3X3ZhbHVlX3JhbmRvbTIiOjAsImJvZHlfeWF3X3R5cGUiOiJKaXR0ZXIiLCJ5YXdfdmFsdWVfaml0dGVyMiI6MCwieWF3X3ZhbHVlX3JhbmRvbTEiOjAsInlhd19sZWZ0IjotMjYsInBpdGNoX3ZhbHVlIjowLCJwaXRjaF92YWx1ZTEiOi04OX1dLCJjb25maWciOnsibWFpbiI6eyJ0YWIiOiLuh4EgQ29uZmlncyBTeXN0ZW0ifSwiY29uZmlnIjp7Imxpc3QiOjJ9LCJhbnRpYWltIjp7Inlhd19iYXNlIjoiTG9jYWwgdmlldyIsImFkZG9ucyI6WyJBbnRpLUJydXRlZm9yY2UiLCJTcGluIEFBIE9uIFdhcm11cCIsIkFudGkgQmFja3N0YWIiLCJTYWZlIEhlYWQiLCJ+Il0sInlhd19kaXJlY3Rpb24iOlsiRnJlZXN0YW5kaW5nIiwiTWFudWFsIiwiRWRnZSBZYXciLCJ+Il0sImtleV9mb3J3YXJkIjpbMSwwLCJ+Il0sImtleV9sZWZ0IjpbMSw5MCwifiJdLCJjb25kaXRpb24iOiJcdTAwMGJHbG9iYWxcciIsInNhZmVfaGVhZCI6WyJBaXIrQyBLbmlmZSIsIkFpcitDIFpldXMiLCJ+Il0sImFudGlfYnJ1dGVmb3JjZV9tb2RlIjoiU3VwZXIiLCJ0YWIiOiJCdWlsZGVyIiwia2V5X2ZyZWVzdGFuZCI6WzEsODYsIn4iXSwia2V5X2VkZ2VfeWF3IjpbMSw1LCJ+Il0sImtleV9yaWdodCI6WzEsNjcsIn4iXX0sIm1pc2MiOnsicGVyZm9tYW5jZV9ib29zdCI6dHJ1ZSwibWFudWFsX2Fycm93c19jIjoiI0M1RDBGRkZGIiwiZGFtYWdlX2luZGljYXRvciI6dHJ1ZSwibW9kZWxfbGFiZWxfc2VwIjp0cnVlLCJhbmltYXRpb25fYm9keV9sZWFuIjoxMDAsInRoaXJkX3BlcnNvbl92YWx1ZSI6MzAsImFuaW1hdGlvbl9hZGRvbnMiOlsiQWRqdXN0IEJvZHkgTGVhbiIsIkVhcnRocXVha2UiLCJTbW9vdGhpbmciLCJ+Il0sImFpbXRvb2xzIjp0cnVlLCJhaW10b29sc192YWx1ZV9zYWZlIjozMCwiZGVmZW5zaXZlX3N0eWxlIjoiTW9kZXJuIiwiYWltdG9vbHNfZXNwX2ZsYWdzIjp0cnVlLCJ3YXRlcm1hcmtfY29sb3IiOnRydWUsImZhc3RfbGFkZGVyIjp0cnVlLCJhc3BlY3RyYXRpbyI6dHJ1ZSwicHJlZGljdCI6dHJ1ZSwiZGFtYWdlX2luZGljYXRvcl9zdHlsZSI6IlBpeGVsIiwiYWltdG9vbHNfdmFsdWVfYmFpbSI6NzAsInRoaXJkX3BlcnNvbiI6dHJ1ZSwianVtcF9zdG9wX2hvdGtleSI6WzEsMzIsIn4iXSwid2F0ZXJtYXJrX3N0eWxlIjoiQnJhbmRlZCIsImxvZyI6dHJ1ZSwiY3Jvc3NfaW5kX2MiOiIjQzVEMEZGRkYiLCJpbmZvX3BhbmVsIjp0cnVlLCJrZXlfY29sb3JfYyI6IiNGRkZGRkZGRiIsInRlbGVwb3J0X2tleSI6WzIsMTE1LCJ+Il0sImZpeF9oaWRlc2hvdHMiOnRydWUsImNsYW50YWcyIjp0cnVlLCJ3YXRlcm1hcmtfY29sb3JfYyI6IiNDNUQwRkZGRiIsInZlbG9jaXR5X3dpbmRvd19jIjoiI0M1RDBGRkZGIiwicHJlZGljdF9rZXkiOlsyLDg4LCJ+Il0sImRlZmVuc2l2ZV93aW5kb3ciOnRydWUsImNyb3NzX2NvbG9yIjp0cnVlLCJhdXRvYnV5X3NlY29uZCI6IkRlYWdsZSB8IFI4IiwiY3Jvc3NfY29sb3JfYyI6IiNGRkZGRkZGRiIsImF1dG9idXlfcHJpbWFyeSI6IlNjb3V0IiwibG9nX2hpdF9jb2xvcl9jIjoiI0M1RDBGRkZGIiwibW9kZWxfY2hlY2siOlsiQ1QiLCJUIiwifiJdLCJsb2NhbHBsYXllcl9tb2RlbF9jdCI6Ind1emltdSIsImFuaW1hdGlvbl9ncm91bmQiOiJTdGF0aWMiLCJsb2dfbWlzc19jb2xvcl9jIjoiI0ZGMDAwMEZGIiwiYW5pbWF0aW9uX2FpciI6IlN0YXRpYyIsImFpbXRvb2xzX3ByaW9yaXR5Ijp0cnVlLCJkZWxheV9zaG90IjpmYWxzZSwicmVzb2x2ZXIiOnRydWUsInJlc29sdmVyX2ZsYWciOnRydWUsImNyb3NzX2luZCI6ZmFsc2UsImxvZ190eXBlIjpbIkNvbnNvbGUiLCJTY3JlZW4iLCJ+Il0sInNwYW1tZXJzMiI6IlJhZ2ViYWl0ICgxKSIsImp1bXBfc3RvcF9kaXN0YW5jZSI6MjAwLCJhbmltYXRpb24iOnRydWUsImF1dG9idXlfb3RoZXIiOlsiVmVzdGhlbG0iLCJWZXN0IiwiVGFzZXIiLCJEZWZ1c2VyIiwifiJdLCJkYW1hZ2VfaW5kaWNhdG9yX21vZGUiOiJBbHdheXMiLCJ2ZWxvY2l0eV93aW5kb3ciOnRydWUsImxvZ19nbG93X2NvbG9yX2MiOiIjQzVEMEZGRkYiLCJkZWZlbnNpdmVfd2luZG93X2MiOiIjQzVEMEZGRkYiLCJ3YXRlcm1hcmtfcG9zaXRpb24iOiJSaWdodCBDZW50ZXIiLCJpbmZvX3BhbmVsX2MiOiIjQzVEMEZGRkYiLCJhdXRvYnV5Ijp0cnVlLCJ0ZWxlcG9ydCI6dHJ1ZSwicmVzb2x2ZXJfdHlwZSI6IkRlZmVuc2l2ZSIsImp1bXBfc3RvcCI6dHJ1ZSwic3BhbW1lcnMiOnRydWUsImtleV9jb2xvciI6dHJ1ZSwibG9jYWxwbGF5ZXJfbW9kZWxfdCI6Ind1emltdSIsImFzcGVjdHJhdGlvX3ZhbHVlIjoxMzMsImF1dG9idXlfbmFkZXMiOlsiTW9sb3RvdiIsIkhlZ3JlbmFkZSIsIlNtb2tlIiwifiJdLCJtYW51YWxfYXJyb3dzIjpmYWxzZSwidmVsb2NpdHlfc3R5bGUiOiJNb2Rlcm4iLCJhaW10b29sc19iYWltX3NhZmUiOnRydWUsIndhdGVybWFyayI6dHJ1ZX19fQ=='

    
    local decode = base64.decode(link, 'base64')
    local toTable = json.parse(decode)

    table.insert(presets, { name = '*Default defensive', config = base64.encode(json.stringify(toTable.config)), config2 = base64.encode(json.stringify(toTable.config2))})

    lua_menu.config.list:update(config_system.config_list())


    lua_menu.config.list:update(config_system.config_list())
end



initDatabase1()
initDatabase2()



    local function update_menu()
        local aA = {
            {200,200,200, 255 * math.abs(1 * math.cos(2 * math.pi * globals.curtime()/4 + 80 / 30))},
            {200,200,200, 255 * math.abs(1 * math.cos(2 * math.pi * globals.curtime()/4 + 75 / 30))},
            {200,200,200, 255 * math.abs(1 * math.cos(2 * math.pi * globals.curtime()/4 + 70 / 30))},
            {200,200,200, 255 * math.abs(1 * math.cos(2 * math.pi * globals.curtime()/4 + 65 / 30))},
            {200,200,200, 255 * math.abs(1 * math.cos(2 * math.pi * globals.curtime()/4 + 60 / 30))},
            {200,200,200, 255 * math.abs(1 * math.cos(2 * math.pi * globals.curtime()/4 + 55 / 30))},
            {200,200,200, 255 * math.abs(1 * math.cos(2 * math.pi * globals.curtime()/4 + 50 / 30))},
        }
    end

    client.set_event_callback("setup_command", function(cmd)
        aa_setup(cmd)
        if lua_menu.misc.fast_ladder:get() then
            fastladder(cmd)
        end
        if lua_menu.misc.teleport:get() and lua_menu.misc.teleport_key:get() then
            auto_tp(cmd)
        end
        if lua_menu.misc.resolver:get() then
            resolver_update()
        end
        jump_stop(cmd)
        
        -- Model changer
        local lp = entity.get_local_player()
        if lp and entity.is_alive(lp) then
            if lua_menu.misc.model_label_sep:get() then
                local team = entity.get_prop(lp, "m_iTeamNum")
                if team == 2 then -- T
                    if contains(lua_menu.misc.model_check:get(), 'T') then
                        local model_name = lua_menu.misc.localplayer_model_t:get()
                        if t_player_models[model_name] then
                            change_model(lp, t_player_models[model_name])
                        end
                    end
                elseif team == 3 then -- CT
                    if contains(lua_menu.misc.model_check:get(), 'CT') then
                        local model_name = lua_menu.misc.localplayer_model_ct:get()
                        if ct_player_models[model_name] then
                            change_model(lp, ct_player_models[model_name])
                        end
                    end
                end
            else
                -- Отключаем model changer
                cl_fullupdate:set_int(1)
            end
        end
    end)

    client.set_event_callback("run_command", function(e)
        baim()
        predict()
    end)

    client.set_event_callback('pre_render', function()
        if lua_menu.misc.animation:get() then
            anim_breaker()
        end
        if lua_menu.misc.animation_addons:get("Adjust Body Lean") then
            local lp = entity.get_local_player()
            if not lp then return end
            if not entity.is_alive(lp) then return end

            local self_index = c_entity.new(lp)
            local self_anim_state = self_index:get_anim_state()
            local body_lean_value = lua_menu.misc.animation_body_lean:get()

            local self_anim_overlay = self_index:get_anim_overlay(12)

            local x_velocity = entity.get_prop(lp, 'm_vecVelocity[0]')
            if math.abs(x_velocity) >= 3 then
            self_anim_overlay.weight = body_lean_value / 100
        elseif lua_menu.misc.animation_addons:get("Earthquake") then
            local lp = entity.get_local_player()
            if not lp then return end
            if not entity.is_alive(lp) then return end

            local self_index = c_entity.new(lp)
            local self_anim_state = self_index:get_anim_state()
            local body_lean_value = lua_menu.misc.animation_body_lean:get()

            local self_anim_overlay = self_index:get_anim_overlay(12)

            self_anim_overlay.weight = client.random_float(0, 1)
        elseif lua_menu.misc.animation_addons:get("Smoothing") then
        local lp = entity.get_local_player()
        if not lp then return end
        if not entity.is_alive(lp) then return end

            local self_index = c_entity.new(lp)
        local self_anim_state = self_index:get_anim_state()
        local body_lean_value = lua_menu.misc.animation_body_lean:get()

        local self_anim_overlay = self_index:get_anim_overlay(2)

        self_anim_overlay.weight = 0
end
end
end)

    client.set_event_callback('paint_ui', function()
        hide_original_menu(false)
        update_menu()
    end)

    client.set_event_callback('paint', function()
        if lua_menu.misc.clantag2:get() then
            clantag_cleared = false
            clantag_en()
        else
            if not clantag_cleared then
                client.set_clan_tag("")
                clantag_cleared = true
            end
        end
        if not entity.is_alive(entity.get_local_player()) then return end
        
        -- Обработка перетаскивания окон мышкой
        handle_window_dragging()
        
        if lua_menu.misc.cross_ind:get() then
            screen_indicator()
        end
        thirdperson(lua_menu.misc.third_person:get() and lua_menu.misc.third_person_value:get() or nil)
        aspectratio(lua_menu.misc.aspectratio:get() and lua_menu.misc.aspectratio_value:get()/100 or nil)
        if lua_menu.misc.velocity_window:get() then
            velocity_ind()
        end
        if lua_menu.misc.defensive_window:get() then
            defensive_ind()
        end

        ragebot_logs()
        if lua_menu.misc.info_panel:get() then
            info_panel()
        end
        manual_arrows()
        fixhideshots()
        damage_indicator()
        watermark()

        if lua_menu.misc.perfomance_boost:get() then
            cvar.cl_disablefreezecam:set_float(1)
            cvar.cl_disablehtmlmotd:set_float(1)
            cvar.r_dynamic:set_float(0)
            cvar.r_3dsky:set_float(0)
            cvar.r_shadows:set_float(0)
            cvar.cl_csm_static_prop_shadows:set_float(0)
            cvar.cl_csm_world_shadows:set_float(0)
            cvar.cl_foot_contact_shadows:set_float(0)
            cvar.cl_csm_viewmodel_shadows:set_float(0)
            cvar.cl_csm_rope_shadows:set_float(0)
            cvar.cl_csm_sprite_shadows:set_float(0)
            cvar.cl_freezecampanel_position_dynamic:set_float(0)
            cvar.cl_freezecameffects_showholiday:set_float(0)
            cvar.cl_showhelp:set_float(0)
            cvar.cl_autohelp:set_float(0)
            cvar.mat_postprocess_enable:set_float(0)
            cvar.fog_enable_water_fog:set_float(0)
            cvar.gameinstructor_enable:set_float(0)
            cvar.cl_csm_world_shadows_in_viewmodelcascade:set_float(0)
            cvar.cl_disable_ragdolls:set_float(0)
        else
            cvar.cl_disablefreezecam:set_float(0)
            cvar.cl_disablehtmlmotd:set_float(0)
            cvar.r_dynamic:set_float(1)
            cvar.r_3dsky:set_float(1)
            cvar.r_shadows:set_float(1)
            cvar.cl_csm_static_prop_shadows:set_float(1)
            cvar.cl_csm_world_shadows:set_float(1)
            cvar.cl_foot_contact_shadows:set_float(1)
            cvar.cl_csm_viewmodel_shadows:set_float(1)
            cvar.cl_csm_rope_shadows:set_float(1)
            cvar.cl_csm_sprite_shadows:set_float(1)
            cvar.cl_freezecampanel_position_dynamic:set_float(1)
            cvar.cl_freezecameffects_showholiday:set_float(1)
            cvar.mat_postprocess_enable:set_float(1)
            cvar.fog_enable_water_fog:set_float(1)
            cvar.gameinstructor_enable:set_float(0)
            cvar.cl_autohelp:set_float(0)
            cvar.cl_csm_world_shadows_in_viewmodelcascade:set_float(1)
            cvar.cl_disable_ragdolls:set_float(1)
    end

    if lua_menu.misc.teleport_key:get() then
        renderer.indicator(255, 255, 255, 200, "LAG COM EXPLOIT")
    end

    if lua_menu.misc.predict_key:get() then
        renderer.indicator(255, 255, 255, 200, "\aFF3B3BAA⛧ PREDICT")
    end

    end)

    lua_menu.misc.resolver:set_callback(function(self)
        if not self:get() then
            expres.restore()
        end
    end, true)

    client.set_event_callback('shutdown', function()
        hide_original_menu(true)
        thirdperson(150)
        aspectratio(0)
        expres.restore()
    end)

    client.set_event_callback('round_prestart', function()
        logs = {}
        if lua_menu.misc.log_type:get("Screen") then
            renderer.log("Anti-Aim Data Resetted")
        end
    end)

    client.set_event_callback("player_connect_full", function(e)
    local ent = client.userid_to_entindex(e.userid)
    if ent == entity.get_local_player() then
        breaker.cmd = 0
        breaker.defensive = 0
        breaker.defensive_check = 0
    end
end)

client.set_event_callback("net_update_end", function()
if lua_menu.misc.spammers:get("ClanTag") then
        clantag_en()
    end
end)

client.set_event_callback("player_spawn", function(e)
    autobuy(e)
end)

local r, g, b = lua_menu.misc.log_glow_color:get_color()local notify=(function()local b=vector;local c=function(d,b,c)return d+(b-d)*c end;local e=function()return b(client.screen_size())end;local f=function(d,...)local c={...}local c=table.concat(c,"")return b(renderer.measure_text(d,c))end;local g={notifications={bottom={}},max={bottom=6}}g.__index=g;g.new_bottom=function(h,i,j,...)table.insert(g.notifications.bottom,{started=false,instance=setmetatable({active=false,timeout=5,color={["r"]=h,["g"]=i,["b"]=j,a=0},x=e().x/2,y=e().y,text=...},g)})end;function g:handler()local d=0;local b=0;for d,b in pairs(g.notifications.bottom)do if not b.instance.active and b.started then table.remove(g.notifications.bottom,d)end end;for d=1,#g.notifications.bottom do if g.notifications.bottom[d].instance.active then b=b+1 end end;for c,e in pairs(g.notifications.bottom)do if c>g.max.bottom then return end;if e.instance.active then e.instance:render_bottom(d,b)d=d+1 end;if not e.started then e.instance:start()e.started=true end end end;function g:start()self.active=true;self.delay=globals.realtime()+self.timeout end;function g:get_text()local d=""for b,b in pairs(self.text)do local c=f("",b[1])local c,e,f=255,255,255;if b[2]then c,e,f=255, 255, 255 end;d=d..("\a%02x%02x%02x%02x%s"):format(c,e,f,self.color.a,b[1])end;return d end;local k=(function()local d={}d.rec=function(d,b,c,e,f,g,k,l,m)m=math.min(d/2,b/2,m)renderer.rectangle(d,b+m,c,e-m*2,f,g,k,l)renderer.rectangle(d+m,b,c-m*2,m,f,g,k,l)renderer.rectangle(d+m,b+e-m,c-m*2,m,f,g,k,l)renderer.circle(d+m,b+m,f,g,k,l,m,180,.25)renderer.circle(d-m+c,b+m,f,g,k,l,m,90,.25)renderer.circle(d-m+c,b-m+e,f,g,k,l,m,0,.25)renderer.circle(d+m,b-m+e,f,g,k,l,m,-90,.25)end;d.rec_outline=function(d,b,c,e,f,g,k,l,m,n)m=math.min(c/2,e/2,m)if m==1 then renderer.rectangle(d,b,c,n,f,g,k,l)renderer.rectangle(d,b+e-n,c,n,f,g,k,l)else renderer.rectangle(d+m,b,c-m*2,n,f,g,k,l)renderer.rectangle(d+m,b+e-n,c-m*2,n,f,g,k,l)renderer.rectangle(d,b+m,n,e-m*2,f,g,k,l)renderer.rectangle(d+c-n,b+m,n,e-m*2,f,g,k,l)renderer.circle_outline(d+m,b+m,f,g,k,l,m,180,.25,n)renderer.circle_outline(d+m,b+e-m,f,g,k,l,m,90,.25,n)renderer.circle_outline(d+c-m,b+m,f,g,k,l,m,-90,.25,n)renderer.circle_outline(d+c-m,b+e-m,f,g,k,l,m,0,.25,n)end end;d.glow_module_notify=function(b,c,e,f,g,k,l,m,n,o,p,q,r,s,s)local t=1;local u=1;if s then d.rec(b,c,e,f,l,m,n,o,k)end;for l=0,g do local m=o/2*(l/g)^3;d.rec_outline(b+(l-g-u)*t,c+(l-g-u)*t,e-(l-g-u)*t*2,f-(l-g-u)*t*2,p,q,r,m/1.5,k+t*(g-l+u),t)end end;return d end)()function g:render_bottom(g,l)local e=e()local m=6;local n="     "..self:get_text()local f=f("",n)local o=8;local p=5;local q=0+m+f.x;local q,r=q+p*2,12+10+1;local s,t=self.x-q/2,math.ceil(self.y-40+.4)local u=globals.frametime()if globals.realtime()<self.delay then self.y=c(self.y,e.y-45-(l-g)*r*1.4,u*7)self.color.a=c(self.color.a,255,u*2)else self.y=c(self.y,self.y-10,u*15)self.color.a=c(self.color.a,0,u*20)if self.color.a<=1 then self.active=false end end;local c,e,g,l=self.color.r,self.color.g,self.color.b,self.color.a;k.glow_module_notify(s,t,q,r,15,o,25,25,25,l,255, 255, 255,l,true)local k=p+2;k=k+0+m;--
renderer.text(s+k/4,t+r/2-f.y/2,255,255,255,255,"M",nil,n)end;client.set_event_callback("paint_ui",function()g:handler()end)return g end)()

client.delay_call(0.2, function()
        notify.new_bottom(255, 255, 255, { { 'Blassed - Downloading ' }, })
        

        client.delay_call(1.2, function()
         notify.new_bottom(255, 255, 255, { { '" Successfully! Enjoy the game '}, })
end)



client.delay_call(2.2, function()
        notify.new_bottom(255, 255, 255, { { '" Please read the text from the console!  '}, })
end)
   end)

local function auto_change_aa_icon()
    local tabs = {"RAGE", "AA", "LEGIT", "VISUALS", "MISC", "SKINS", "PLIST", "Tab"}
    local tabsptr = ffi.cast("intptr_t*", 0x434799AC + 0x54)
    local tabsinfo = {}
    
    for i = 0, #tabs do
        local tab = ffi.cast("int*", tabsptr[0])[i]
        tabsinfo[i] = { id = ffi.cast("int*", tab + 0x80), offset = ffi.cast("int*", tab + 0x84), width = ffi.cast("int*", tab + 0x8C), height = ffi.cast("int*", tab + 0x90)}
    end
    
    local icon_url = "https://raw.githubusercontent.com/kubiszxc/logos/refs/heads/main/download-WeResize.com%20(4).png"
    
    http.get(icon_url, function(status, response)
        if status and response.body then
            local texture_id = renderer.load_png(response.body, 48, 48)
            if texture_id and texture_id > 0 then
                for i = 0, #tabs do
                    if tabs[i + 1] == "AA" then
                        tabsinfo[i].id[0] = texture_id
                        break
                    end
                end
            end
        end
    end)
end
client.delay_call(0.001, auto_change_aa_icon)


            label555 = ui.new_label("aa", "Other", "Developer: \a9FCA2BFF kubisshvh")
                        label252 = ui.new_label("AA", "Anti-aimbot angles", "\a9ECA2AFF~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
        