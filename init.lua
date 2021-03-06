dofile(minetest.get_modpath("crossfiremob").."/api.lua")

crossfiremob:register_mob("crossfiremob:goodnpc", {
	type = "goodnpc",
	hp_min = 35,		
	hp_max = 65,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"white.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 55,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 2,
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 10,
		max = 28,},
		{name = "default:sword_steel",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 13,
			max=30,
		},
	},
	armor = 55,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	--[[sounds = {
		attack = "crossfiremob_bullet",
	},]]
	on_rightclick = nil,
	attack_type = "dogfight",
	arrow = "crossfiremob:bullet",
	shoot_interval = 2.5,
	--[[sounds = {
		attack = "crossfiremob_bullet",
	},]]
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})



crossfiremob:register_mob("crossfiremob:badnpc", {
	type = "badnpc",
	hp_min = 35,		
	hp_max = 65,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"black.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 55,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 2,
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 10,
		max = 28,},
		{name = "default:sword_steel",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 13,
			max=30,
		},
	},
	armor = 55,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	attack_type = "dogfight",
	arrow = "crossfiremob:bullet",
	shoot_interval = 2.5,
	--[[sounds = {
		attack = "crossfiremob_bullet",
	},]]
	on_rightclick = nil,
	
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})



crossfiremob:register_spawn("crossfiremob:badnpc", {"default:desert_sand","default:sand"}, 18, -1, 7000, 3, 31000)
crossfiremob:register_spawn("crossfiremob:goodnpc", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 3, 31000)

--[[crossfiremob:register_arrow("crossfiremob:bullet", {
	visual = "sprite",
	visual_size = {x = 0.275, y = 0.275},
	textures = {"bullet.png"},
	velocity = 18,
	hit_player = function(self, player)
		local s = self.object:getpos()
		local p = player:getpos()
		local vec = {x =s.x-p.x, y =s.y-p.y, z =s.z-p.z}
		player:punch(self.object, 1.0,  {
			full_punch_interval= 1.0,
			damage_groups = {fleshy = 0.55},
		}, vec)
		local pos = self.object:getpos()
		for dx = -1, 1 do
			for dy = -1, 1 do
				for dz = -1, 1 do
					local p = {x = pos.x + dx, y = pos.y + dy, z = pos.z + dz}
					local n = minetest.get_node(pos).name
				end
			end
		end
	end,
	hit_node = function(self, pos, node)
		for dx = -1, 1 do
			for dy = -2, 1 do
				for dz = -1, 1 do
					local p = {x = pos.x + dx, y = pos.y + dy, z = pos.z + dz}
					local n = minetest.get_node(pos).name
				end
			end
		end
	end
})
]]


if minetest.setting_get("log_mods") then
	minetest.log("action", "crossfiremob loaded")
end
