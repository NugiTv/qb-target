Config, Types, Bones = {}, {}, {}
Types[1], Types[2], Types[3] = {}, {}, {}

-- This is the vehicle bones table, this is needed to verify if the vehicle bone exists when checking them, here is a list of vehicle bones you can use, all of them are included in this table: https://wiki.rage.mp/index.php?title=Vehicle_Bones
Config.VehicleBones = {'chassis', 'chassis_lowlod', 'chassis_dummy', 'seat_dside_f', 'seat_dside_r', 'seat_dside_r1', 'seat_dside_r2', 'seat_dside_r3', 'seat_dside_r4', 'seat_dside_r5', 'seat_dside_r6', 'seat_dside_r7', 'seat_pside_f', 'seat_pside_r', 'seat_pside_r1', 'seat_pside_r2', 'seat_pside_r3', 'seat_pside_r4', 'seat_pside_r5', 'seat_pside_r6', 'seat_pside_r7', 'window_lf1', 'window_lf2', 'window_lf3', 'window_rf1', 'window_rf2', 'window_rf3', 'window_lr1', 'window_lr2', 'window_lr3', 'window_rr1', 'window_rr2', 'window_rr3', 'door_dside_f', 'door_dside_r', 'door_pside_f', 'door_pside_r', 'handle_dside_f', 'handle_dside_r', 'handle_pside_f', 'handle_pside_r', 'wheel_lf', 'wheel_rf', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3', 'wheel_lr', 'wheel_rr', 'suspension_lf', 'suspension_rf', 'suspension_lm', 'suspension_rm', 'suspension_lr', 'suspension_rr', 'spring_rf', 'spring_lf', 'spring_rr', 'spring_lr', 'transmission_f', 'transmission_m', 'transmission_r', 'hub_lf', 'hub_rf', 'hub_lm1', 'hub_rm1', 'hub_lm2', 'hub_rm2', 'hub_lm3', 'hub_rm3', 'hub_lr', 'hub_rr', 'windscreen', 'windscreen_r', 'window_lf', 'window_rf', 'window_lr', 'window_rr', 'window_lm', 'window_rm', 'bodyshell', 'bumper_f', 'bumper_r', 'wing_rf', 'wing_lf', 'bonnet', 'boot', 'exhaust', 'exhaust_2', 'exhaust_3', 'exhaust_4', 'exhaust_5', 'exhaust_6', 'exhaust_7', 'exhaust_8', 'exhaust_9', 'exhaust_10', 'exhaust_11', 'exhaust_12', 'exhaust_13', 'exhaust_14', 'exhaust_15', 'exhaust_16', 'engine', 'overheat', 'overheat_2', 'petrolcap', 'petrolcap', 'petroltank', 'petroltank_l', 'petroltank_r', 'steering', 'hbgrip_l', 'hbgrip_r', 'headlight_l', 'headlight_r', 'taillight_l', 'taillight_r', 'indicator_lf', 'indicator_rf', 'indicator_lr', 'indicator_rr', 'brakelight_l', 'brakelight_r', 'brakelight_m', 'reversinglight_l', 'reversinglight_r', 'extralight_1', 'extralight_2', 'extralight_3', 'extralight_4', 'numberplate', 'interiorlight', 'siren1', 'siren2', 'siren3', 'siren4', 'siren5', 'siren6', 'siren7', 'siren8', 'siren9', 'siren10', 'siren11', 'siren12', 'siren13', 'siren14', 'siren15', 'siren16', 'siren17', 'siren18', 'siren19', 'siren20', 'siren_glass1', 'siren_glass2', 'siren_glass3', 'siren_glass4', 'siren_glass5', 'siren_glass6', 'siren_glass7', 'siren_glass8', 'siren_glass9', 'siren_glass10', 'siren_glass11', 'siren_glass12', 'siren_glass13', 'siren_glass14', 'siren_glass15', 'siren_glass16', 'siren_glass17', 'siren_glass18', 'siren_glass19', 'siren_glass20', 'spoiler', 'struts', 'misc_a', 'misc_b', 'misc_c', 'misc_d', 'misc_e', 'misc_f', 'misc_g', 'misc_h', 'misc_i', 'misc_j', 'misc_k', 'misc_l', 'misc_m', 'misc_n', 'misc_o', 'misc_p', 'misc_q', 'misc_r', 'misc_s', 'misc_t', 'misc_u', 'misc_v', 'misc_w', 'misc_x', 'misc_y', 'misc_z', 'misc_1', 'misc_2', 'weapon_1a', 'weapon_1b', 'weapon_1c', 'weapon_1d', 'weapon_1a_rot', 'weapon_1b_rot', 'weapon_1c_rot', 'weapon_1d_rot', 'weapon_2a', 'weapon_2b', 'weapon_2c', 'weapon_2d', 'weapon_2a_rot', 'weapon_2b_rot', 'weapon_2c_rot', 'weapon_2d_rot', 'weapon_3a', 'weapon_3b', 'weapon_3c', 'weapon_3d', 'weapon_3a_rot', 'weapon_3b_rot', 'weapon_3c_rot', 'weapon_3d_rot', 'weapon_4a', 'weapon_4b', 'weapon_4c', 'weapon_4d', 'weapon_4a_rot', 'weapon_4b_rot', 'weapon_4c_rot', 'weapon_4d_rot', 'turret_1base', 'turret_1barrel', 'turret_2base', 'turret_2barrel', 'turret_3base', 'turret_3barrel', 'ammobelt', 'searchlight_base', 'searchlight_light', 'attach_female', 'roof', 'roof2', 'soft_1', 'soft_2', 'soft_3', 'soft_4', 'soft_5', 'soft_6', 'soft_7', 'soft_8', 'soft_9', 'soft_10', 'soft_11', 'soft_12', 'soft_13', 'forks', 'mast', 'carriage', 'fork_l', 'fork_r', 'forks_attach', 'frame_1', 'frame_2', 'frame_3', 'frame_pickup_1', 'frame_pickup_2', 'frame_pickup_3', 'frame_pickup_4', 'freight_cont', 'freight_bogey', 'freightgrain_slidedoor', 'door_hatch_r', 'door_hatch_l', 'tow_arm', 'tow_mount_a', 'tow_mount_b', 'tipper', 'combine_reel', 'combine_auger', 'slipstream_l', 'slipstream_r', 'arm_1', 'arm_2', 'arm_3', 'arm_4', 'scoop', 'boom', 'stick', 'bucket', 'shovel_2', 'shovel_3', 'Lookat_UpprPiston_head', 'Lookat_LowrPiston_boom', 'Boom_Driver', 'cutter_driver', 'vehicle_blocker', 'extra_1', 'extra_2', 'extra_3', 'extra_4', 'extra_5', 'extra_6', 'extra_7', 'extra_8', 'extra_9', 'extra_ten', 'extra_11', 'extra_12', 'break_extra_1', 'break_extra_2', 'break_extra_3', 'break_extra_4', 'break_extra_5', 'break_extra_6', 'break_extra_7', 'break_extra_8', 'break_extra_9', 'break_extra_10', 'mod_col_1', 'mod_col_2', 'mod_col_3', 'mod_col_4', 'mod_col_5', 'handlebars', 'forks_u', 'forks_l', 'wheel_f', 'swingarm', 'wheel_r', 'crank', 'pedal_r', 'pedal_l', 'static_prop', 'moving_prop', 'static_prop2', 'moving_prop2', 'rudder', 'rudder2', 'wheel_rf1_dummy', 'wheel_rf2_dummy', 'wheel_rf3_dummy', 'wheel_rb1_dummy', 'wheel_rb2_dummy', 'wheel_rb3_dummy', 'wheel_lf1_dummy', 'wheel_lf2_dummy', 'wheel_lf3_dummy', 'wheel_lb1_dummy', 'wheel_lb2_dummy', 'wheel_lb3_dummy', 'bogie_front', 'bogie_rear', 'rotor_main', 'rotor_rear', 'rotor_main_2', 'rotor_rear_2', 'elevators', 'tail', 'outriggers_l', 'outriggers_r', 'rope_attach_a', 'rope_attach_b', 'prop_1', 'prop_2', 'elevator_l', 'elevator_r', 'rudder_l', 'rudder_r', 'prop_3', 'prop_4', 'prop_5', 'prop_6', 'prop_7', 'prop_8', 'rudder_2', 'aileron_l', 'aileron_r', 'airbrake_l', 'airbrake_r', 'wing_l', 'wing_r', 'wing_lr', 'wing_rr', 'engine_l', 'engine_r', 'nozzles_f', 'nozzles_r', 'afterburner', 'wingtip_1', 'wingtip_2', 'gear_door_fl', 'gear_door_fr', 'gear_door_rl1', 'gear_door_rr1', 'gear_door_rl2', 'gear_door_rr2', 'gear_door_rml', 'gear_door_rmr', 'gear_f', 'gear_rl', 'gear_lm1', 'gear_rr', 'gear_rm1', 'gear_rm', 'prop_left', 'prop_right', 'legs', 'attach_male', 'draft_animal_attach_lr', 'draft_animal_attach_rr', 'draft_animal_attach_lm', 'draft_animal_attach_rm', 'draft_animal_attach_lf', 'draft_animal_attach_rf', 'wheelcover_l', 'wheelcover_r', 'barracks', 'pontoon_l', 'pontoon_r', 'no_ped_col_step_l', 'no_ped_col_strut_1_l', 'no_ped_col_strut_2_l', 'no_ped_col_step_r', 'no_ped_col_strut_1_r', 'no_ped_col_strut_2_r', 'light_cover', 'emissives', 'neon_l', 'neon_r', 'neon_f', 'neon_b', 'dashglow', 'doorlight_lf', 'doorlight_rf', 'doorlight_lr', 'doorlight_rr', 'unknown_id', 'dials', 'engineblock', 'bobble_head', 'bobble_base', 'bobble_hand', 'chassis_Control'}

----------------------------------------------------------------------------------------
-- Settings
----------------------------------------------------------------------------------------

-- Set to true to enable standalone functionality
Config.Standalone = false

-- It's possible to interact with entities through walls so this should be low
Config.MaxDistance = 3.0

-- Enable debug options and distance preview
Config.Debug = false

-- Enable outlines around the entity you're looking at
Config.EnableOutline = false

-- Enable default options (Toggling vehicle doors)
Config.EnableDefaultOptions = false

-- Key to open the target
Config.OpenKey = 'LMENU' -- Left Alt
Config.OpenControlKey = 19 -- Control for keypress detection also Left Alt, controls are found here https://docs.fivem.net/docs/game-references/controls/

-- Key to open the menu
Config.MenuControlKey = 238 -- Control for keypress detection, this is the Right Mouse Button, controls are found here https://docs.fivem.net/docs/game-references/controls/

----------------------------------------------------------------------------------------
-- Target Configs
----------------------------------------------------------------------------------------

-- These are all empty for you to fill in, refer to the .md files for help in filling these in

Config.CircleZones = {

}

Config.BoxZones = {

	["BurgershotDuty"] = {
		name = "BurgershotDuty",
		coords = vector3(-1191.48, -900.53, 14.25),
		length = 1.1,
		width = 0.3,
		heading = 212.0,
		debugPoly = false,
		minZ = 14.25,
		maxZ = 15.33,
		options = {
			{
				type = "client",
				targeticon = 'fas fa-eye', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
				event = "qb-burgershotjob:DutyB",
				icon = "far fa-clipboard",
				label = "Clock In/Out",
				job = "burgershot",
			}
		},
		distance = 3.0
	},
	["BurgerShotJob"] = {
		name = "BurgerShotJob",
		coords = vector3(-1196.64, -904.80, 13.04),
		length = 0.8,
		width = 2.5,
		heading = 302,
		debugPoly = false,
		minZ = 13.04,
		maxZ = 14.50,
		options = {
			{
				type = "client",
				targeticon = 'fas fa-eye', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
				event = "qb-burgershotjob:startjob",
				icon = "far fa-clipboard",
				label = "Start Job",
				job = "burgershot",
			}
		},
		distance = 3.0
	},
	["BurgerWarehouse"] = {
		name = "BurgerWarehouse",
		coords = vector3(634.29, 2774.78, 42.010448),
		length = 0.8,
		width = 1.8,
		heading = 275.20,
		debugPoly = false,
		minZ = 41.13,
		maxZ = 43.36,
		options = {
			{
				type = "client",
				targeticon = 'fas fa-eye', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
				event = "qb-burgershotjob:Warehousebuypallet",
				icon = "far fa-clipboard",
				label = "Pick Up Ingredients",
				job = "burgershot",
			}
		},
		distance = 3.0
	},
	["BurgersCounter"] = {
		name = "BurgersCounter",
		coords = vector3(-1198.77, -898.02, 13.00),
		length = 1.8,
		width = 2,
		heading = 125,
		debugPoly = false,
		minZ = 13.00,
		maxZ = 14.91,
		options = {
			{
				type = "client",
				targeticon = 'fas fa-eye', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
				event = "qb-burgershotmenu:burgershotmainmanu",
				icon = "fas fa-hamburger",
				label = "Burgershot Burger Menu",
				job = "burgershot",
			}
			
		},
		distance = 3.0
	},
	["SodaFountain"] = {
		name = "SodaFountain",
		coords = vector3(-1200.03, -895.47, 14.74),
		length = 1.1,
		width = 2.1,
		heading = 125,
		debugPoly = false,
		minZ = 14.00,
		maxZ = 14.73,
		options = {
			{
				type = "client",
				targeticon = 'fas fa-eye', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
				event = "qb-burgershotmenu:DrinkMenu",
				icon = "fas fa-filter",
				label = "Burgershot Drink Menu",
				job = "burgershot",
			}
			
		},
		distance = 3.0
	},
	["Fries"] = {
		name = "Fries",
		coords = vector3(-1202.03, -898.62, 13.03),
		length = 1,
		width = 1.6,
		heading = 302.5,
		debugPoly = false,
		minZ = 13.03,
		maxZ = 14.91,
		options = {
			{
				type = "client",
				targeticon = 'fas fa-eye', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
				event = "qb-burgershotjob:PrepareFries",
				icon = "fas fa-box",
				label = "Make Fries",
				job = "burgershot",
			}
		},
		distance = 3.0
	},
	["MeatGrill"] = {
		name = "MeatGrill",
		coords = vector3(-1202.83, -897.28, 13.98),
		length = 0.8,
		width = 1.45,
		heading = 304.5,
		debugPoly = false,
		minZ = 13.99,
		maxZ = 14.91,
		options = {
			{
				type = "client",
				targeticon = 'fas fa-eye', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
				event = "qb-burgershotjob:BakeMeat",
				icon = "fas fa-box",
				label = "Grill Raw Meat",
				job = "burgershot",
			}
		},
		distance = 3.0
	},
	["DriveThruWindow"] = {
		name = "DriveThruWindow",
		coords = vector3(-1193.82, -906.99, 12.79),
		length = 1,
		width = 2,
		heading = 171.50,
		debugPoly = false,
		minZ = 12.79,
		maxZ =  15.40,
		options = {
			{
				type = "client",
				targeticon = 'fas fa-eye', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
				event = "qb-burgershotjob:DriveThru",
				icon = "fas fa-box",
				label = "Drive Thru",
				job = "burgershot",
			}
		},
		distance = 3.0
	},
	["FrontCounterTray1"] = {
		name = "FrontCounterTray1",
		coords = vector3(-1196.01, -891.45, 14.03),
		length = 0.5,
		width = 0.5,
		heading = 122,
		debugPoly = false,
		minZ = 14.03,
		maxZ = 14.30,
		options = {
			{
				type = "client",
				targeticon = 'fas fa-eye', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
				event = "qb-burgershotjob:Tray1",
				icon = "fas fa-box",
				label = "Tray 1",
			}
		},
		distance = 3.0
	},
	["FrontCounterTray2"] = {
		name = "FrontCounterTray2",
		coords = vector3(-1194.67, -893.23, 14.03),
		length = 0.5,
		width = 0.5,
		heading = 122,
		debugPoly = false,
		minZ = 14.03,
		maxZ = 14.30,
		options = {
			{
				type = "client",
				targeticon = 'fas fa-eye', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
				event = "qb-burgershotjob:Tray2",
				icon = "fas fa-box",
				label = "Tray 2",
			}
		},
		distance = 3.0
	},
	["HotTrayStorage"] = {
		name = "HotTrayStorage",
		coords = vector3(-1197.56, -894.57, 13.00),
		length = 1,
		width = 4.5,
		heading = 304.5,
		debugPoly = false,
		minZ = 13.00,
		maxZ = 14.87,
		options = {
			{
				type = "client",
				targeticon = 'fas fa-eye', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
				event = "qb-burgershotjob:Storage",
				icon = "fas fa-box",
				label = "BurgerShot Storage",
				job = "burgershot",
			}
		},
		distance = 3.0
	},
	["BurgerFridge"] = {
		name = "BurgerFridge",
		coords = vector3(-1196.63, -902.0, 13.05),
		length = 0.8,
		width = 1.55,
		heading = 32.5,
		debugPoly = false,
		minZ = 13.05,
		maxZ = 15.47,
		options = {
			{
				type = "client",
				targeticon = 'fas fa-eye', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
				event = "qb-burgershotjob:FoodStorage",
				icon = "fas fa-box",
				label = "BurgerShot Fridge",
				job = "burgershot",
			}
		},
		distance = 3.0
	},
	["UnloadBurgeshotIngredients"] = {
		name = "UnloadBurgeshotIngredients",
		coords = vector3(-1204.985, -891.8149, 13.984722),
		length = 4,
		width = 4,
		heading = 214,
		debugPoly = false,
		minZ = 13.00,
		maxZ = 15.49,
		options = {
			{
				type = "client",
				targeticon = 'fas fa-eye', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
				event = "qb-burgershotjob:Unloadbox",
				icon = "fas fa-box",
				label = "Unload Ingredients",
				job = "burgershot",
			}
		},
		distance = 3.0
	},
	["BurgershotEmployeePayout"] = {
		name = "BurgershotEmployeePayout",
		coords = vector3(-1178.25, -896.43, 13.19),
		length = 1,
		width = 2.5,
		heading = 125,
		debugPoly = false,
		minZ = 13.09,
		maxZ = 14.48,
		options = {
			{
				type = "client",
				targeticon = 'fas fa-eye', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
				event = "qb-burgershotjob:payout",
				icon = "far fa-clipboard",
				label = "Ticket Payout",
				job = "burgershot",
			},
			{
				type = "client",
				targeticon = 'fas fa-eye', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
				event = "qb-burgershotjob:Callwarehouse",
				icon = "fas fa-mobile-alt",
				label = "Call the warehouse to check pallet stock",
				job = "burgershot",
			},
		},
		distance = 3.0
	},
	["Icecream"] = {
		name = "Ice Cream",
		coords = vector3(-1193.029, -895.7907, 14.0616),
		length = 1,
		width = 1.6,
		heading = 302.5,
		debugPoly = false,
		minZ = 13.03,
		maxZ = 14.91,
		options = {
			{
				type = "client",
				targeticon = 'fas fa-eye', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
				event = "qb-burgershotjob:icecream",
				icon = "fas fa-ice-cream",
				label = "Make Ice Cream",
				job = "burgershot",
			}
		},
		distance = 1.5
	},
	["donut"] = {
		name = "Donut",
		coords = vector3(-1203.854, -895.6851, 14.44202),
		length = 1,
		width = 1.6,
		heading = 302.5,
		debugPoly = false,
		minZ = 13.03,
		maxZ = 14.91,
		options = {
			{
				type = "client",
				targeticon = 'fas fa-eye', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
				event = "qb-burgershotjob:donut",
				icon = "fas fa-box",
				label = "Get a Donut",
				job = "burgershot",
			}
		},
		distance = 1.5
	},
	["BSRegister1"] = {
		name = "BSRegister1",
		coords = vector3(-1195.27, -892.34, 13.98),
		length = 0.7,
		width = 0.7,
		heading = 90.5,
		debugPoly = false,
		minZ = 14.23,
		maxZ = 14.45,
		options = {
			{
				type = "client",
				targeticon = 'fas fa-eye', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
				event = "qb-burgershot:registermenu",
				icon = "fas fa-credit-card",
				label = "Open Register",
				job = "burgershot",
			},
		},
		distance = 3.0
	},
	["BSRegister2"] = {
		name = "BSRegister2",
		coords = vector3(-1194.27, -893.87, 14.06),
		length = 0.7,
		width = 0.7,
		heading = 90.5,
		debugPoly = false,
		minZ = 14.23,
		maxZ = 14.45,
		options = {
			{
				type = "client",
				targeticon = 'fas fa-eye', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
				event = "qb-burgershot:registermenu",
				icon = "fas fa-credit-card",
				label = "Open Register",
				job = "burgershot",
			},
		},
		distance = 4.0
	},

	-- Pillbox Hospital
	["hospitalCheckin"] = {
        name = "hospitalCheckin",
        coords = vector3(307.54, -595.3, 43.28),
        length = 0.5,
        width = 0.35,
        heading = 337,
        debugPoly = true,
        minZ= 43.00,
        maxZ= 43.45,
        options = {
            {
                type = "client",
                event = "ambulance:client:checkin",
                icon = "fas fa-sign-in-alt",
                label = "Check In",
            },
        },
        distance = 2.0
    },

    -- Paleto Hospital
	["hospitalCheckin2"] = {
        name = "hospitalCheckin2",
        coords = vector3(-251.78, 6335.35, 18.43),
        length = 0.5,
        width = 0.35,
        heading = 165,
        debugPoly = true,
        minZ= 43.00,
        maxZ= 43.45,
        options = {
            {
                type = "client",
                event = "ambulance:client:checkin",
                icon = "fas fa-sign-in-alt",
                label = "Check In",
            },
        },
        distance = 2.0
    },
}


Config.PolyZones = {

}

Config.TargetBones = {

	["Trunk"] = {
        bones = {
            'boot',
        },
        options = {
      	    {
                type = "client",
                event = "qb-trunk:client:GetIn",
                icon = "fas fa-user-secret",
                label = "Get In Trunk",
            },
        },
          distance = 1.0
    },
	
	["Refuel"] = {
        bones = {
            'wheel_lr',
        },
        options = {
			{
				type = "client",
				event = "lj-fuel:client:SendMenuToServer",
				icon = "fas fa-gas-pump",
				label = "Refuel Vehicle",
			},
        },
          distance = 1.0
    },

    ["PlayerCar"] = {
        bones = {
            'boot', 
            'rudder', 
            'rudder2', 
            'petrolcap', 
            'petroltank', 
            'petroltank_l', 
            'petroltank_r',
        },
        options = {
			{
                type = "client",
                event = "vehiclekeys:client:GiveKeys",
                icon = "fad fa-key",
                label = "Give Keys",
            },
            {
                type = "client",
                event = "police:client:ImpoundVehicle",
                icon = "fas fa-car",
                label = "Impound Vehicle",
                job = 'police'
            },
        },
          distance = 1.0
	},
}

Config.TargetEntities = {

}

Config.TargetModels = {

    ["Atms"] = {
        models = {
            'prop_atm_01',
	    'prop_atm_02',
	    'prop_atm_03',
	    'prop_fleeca_atm',
        },
        options = {
            {
                type = "command",
                event = "atm",
                icon = "fab fa-credit-card",
                label = "Insert Card",
            },
        },
        distance = 3.0
    },
    
    ["Printer"] = {
        models = {
            'prop_printer_01',
        },
        options = {
            {
                type = "client",
                event = "qb-printer:client:openprinter",
                icon = "fas fa-mouse-pointer",
                label = "Print Documents",
            },
        },
        distance = 3.0
    },

    ["PoliceDealer"] = {
		models = {
		    `csb_trafficwarden`,
		},
		options = {
            {
                type = "client",
            	event = "policedealer:OpenMenuUi",
                icon = "fas fa-car",
		label = "Police Car Dealer",
                job = "police",
            },
		},
		distance = 3.0
	},

     ["CascadeBadges"] = {
        models = {
            `ig_amandatownley`,
        },
        options = {
            {
                type = "client",
                event = "Cards:client:CascadeRequiredBadge",
                icon = "fas fa-clipboard-list",
                label = "List Required Cards",
            },
            {
                type = "client",
                event = "Cards:client:cascadebadge",
                icon = "far fa-certificate",
                label = "Craft Cascade Badge",
            },
        },
        distance = 3.0
    },
    ["BoulderBadges"] = {
        models = {
            `ig_lifeinvad_01`,
        },
        options = {
            {
                type = "client",
                event = "Cards:client:BoulderRequiredBadge",
                icon = "fas fa-clipboard-list",
                label = "List Required Cards",
            },
            {
                type = "client",
                event = "Cards:client:boulderbadge",
                icon = "far fa-certificate",
                label = "Craft Boulder Badge",
            },
        },
        distance = 3.0
    },
    ["ThunderBadges"] = {
        models = {
            `ig_ramp_hipster`,
        },
        options = {
            {
                type = "client",
                event = "Cards:client:ThunderRequiredBadge",
                icon = "fas fa-clipboard-list",
                label = "List Required Cards",
            },
            {
                type = "client",
                event = "Cards:client:thunderbadge",
                icon = "far fa-certificate",
                label = "Craft Thunder Badge",
            },
        },
        distance = 3.0
    },
    ["RainbowBadges"] = {
        models = {
            `ig_avery`,
        },
        options = {
            {
                type = "client",
                event = "Cards:client:RainbowRequiredBadge",
                icon = "fas fa-clipboard-list",
                label = "List Required Cards",
            },
            {
                type = "client",
                event = "Cards:client:rainbowbadge",
                icon = "far fa-certificate",
                label = "Craft Rainbow Badge",
            },
        },
        distance = 3.0
    },
    ["SoulBadges"] = {
        models = {
            `u_m_y_babyd`,
        },
        options = {
            {
                type = "client",
                event = "Cards:client:SoulRequiredBadge",
                icon = "fas fa-clipboard-list",
                label = "List Required Cards",
            },
            {
                type = "client",
                event = "Cards:client:soulbadge",
                icon = "far fa-certificate",
                label = "Craft Soul Badge",
            },
        },
        distance = 3.0
    },
    ["MarshBadges"] = {
        models = {
            `u_m_y_dancelthr_01`,
        },
        options = {
            {
                type = "client",
                event = "Cards:client:MarshRequiredBadge",
                icon = "fas fa-clipboard-list",
                label = "List Required Cards",
            },
            {
                type = "client",
                event = "Cards:client:marshbadge",
                icon = "far fa-certificate",
                label = "Craft Marsh Badge",
            },
        },
        distance = 3.0
    },
    ["VolcanoBadges"] = {
        models = {
            `u_m_m_filmdirector`,
        },
        options = {
            {
                type = "client",
                event = "Cards:client:VolcanoRequiredBadge",
                icon = "fas fa-clipboard-list",
                label = "List Required Cards",
            },
            {
                type = "client",
                event = "Cards:client:volcanobadge",
                icon = "far fa-certificate",
                label = "Craft Volcano Badge",
            },
        },
        distance = 3.0
    },
    ["EarthBadges"] = {
        models = {
            `u_m_m_streetart_01`,
        },
        options = {
            {
                type = "client",
                event = "Cards:client:EarthRequiredBadge",
                icon = "fas fa-clipboard-list",
                label = "List Required Cards",
            },
            {
                type = "client",
                event = "Cards:client:earthbadge",
                icon = "far fa-certificate",
                label = "Craft Earth Badge",
            },
        },
        distance = 3.0
    },
    ["TrophyBadges"] = {
        models = {
            `a_f_y_epsilon_01`,
        },
        options = {
            {
                type = "client",
                event = "Cards:client:TrophyRequiredBadge",
                icon = "fas fa-clipboard-list",
                label = "List Required Badges",
            },
            {
                type = "client",
                event = "Cards:client:trophybadge",
                icon = "far fa-certificate",
                label = "Craft League Trophy",
            },
        },
        distance = 3.0
    },
    ["CardShop"] = {
        models = {
            `a_m_m_genfat_01`,
        },
        options = {
            {
                type = "client",
                event = "Cards:client:openMenu",
                icon = "fas fa-clipboard-list",
                label = "Open Card Shop",
            },
        },
        distance = 3.0
    },
	-- City Hall Menu
	["openhall"] = {
       			 models = {
            			"cs_barry"
        		},
        		options = {
            			{
                			type = "client",
                			event = "QBJobs",
                			icon = "fas fa-city",
                			label = "Open City Hall",
            			}
        		},
        		distance = 3.0,
    		},
			
	-- Dumpster Diving
	["Dumpsters"] = {
        models = {
            "prop_snow_dumpster_01",
            "prop_dumpster_4a",
            "prop_cs_dumpster_01a",
            "p_dumpster_t",
            "prop_dumpster_3a",
            "prop_dumpster_4b",
            "prop_dumpster_01a",
            "prop_dumpster_02b",
            "prop_dumpster_02a",
        },
        options = {
            {
                type = "client",
                event = "qb-dumpsters:client:searchdumpster",
                icon = "fas fa-dumpster",
                label = "SEARCH DUMPSTER",
            },
        },
        distance = 1.5
    },
	
	-- BurgerShot
	["burgershotShop"] = {
        models = {
            "csb_burgerdrug",
        },
        options = {
            {
                type = "client",
                targeticon = "fas fa-eye", -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
                event = "qb-shops:client:Openburgershotshop",
                icon = "far fa-shopping-cart",
                label = "Open Shop",
                
            },
        },
        distance = 3.0
    },
    ["BurgershotGarage"] = {
		models = {
		    "csb_talcc",
		},
		options = {
            {
                type = "client",
                targeticon = "fas fa-eye", -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
            	event = "garage:menu",
                icon = "fas fa-car",
				label = "BurgerShot Garage",
                job = "burgershot",
            },
		},
		distance = 3.0
	},
     -- Pick up Bike
     ["bike"] = {
        models = {
            `bmx`,
            `cruiser`,
            `scorcher`,
            `fixter`,
            `tribike`,
            `tribike2`,
            `tribike3`,
        },
        options = {
            {
                type = "event",
                event = "pickup:bike",
                parameters = {},
                icon = "fas fa-bicycle",
                label = "Pickup Bike",
            },
        },
        distance = 2.0
    },
}

Config.GlobalPedOptions = {

}

Config.GlobalVehicleOptions = {

}

Config.GlobalObjectOptions = {

}

Config.GlobalPlayerOptions = {

}

Config.Peds = {

	-- Deliever Boxes (qb-recycle)
	[1] = { 
		model = 'ig_floyd',
		coords = vector4(1026.24, -3101.54, -39.0, 90.0),
		minusOne = true,
		freeze = true,
		invincible = true,
		blockevents = true,
		target = {
		  options = {
			{ 
				  type = "client", -- This specifies the type of event the target has to trigger on click, this can be "client", "server", "command" or "qbcommand", this is OPTIONAL and will only work if the event is also specified
				  event = "qb-recyclecenter:HandInPackage", -- This is the event it will trigger on click, this can be a client event, server event, command or qbcore registered command, NOTICE: Normal command can't have arguments passed through, QBCore registered ones can have arguments passed through
				  icon = 'fas fa-cookie',
				  label = 'Give Package',
			},
		  },
		  distance = 2.5,
		},
	  },
      -- Trading Centre (qb-recycle)
	  [2] = { 
		model = 's_m_y_pestcont_01', -- This is the ped model that is going to be spawning at the given coords
		coords = vector4(1079.07, -2000.68, 31.22, 54.87), -- This is the coords that the ped is going to spawn at, always has to be a vector4 and the w value is the heading
		minusOne = true, -- Set this to true if your ped is hovering above the ground but you want it on the ground (OPTIONAL)
		freeze = true, -- Set this to true if you want the ped to be frozen at the given coords (OPTIONAL)
		invincible = true, -- Set this to true if you want the ped to not take any damage from any source (OPTIONAL)
		blockevents = true, -- Set this to true if you don't want the ped to react the to the environment (OPTIONAL)
		target = { -- This is the target options table, here you can specify all the options to display when targeting the ped (OPTIONAL)
		  options = {
			{ 
				  type = "client", -- This specifies the type of event the target has to trigger on click, this can be "client", "server", "command" or "qbcommand", this is OPTIONAL and will only work if the event is also specified
				  event = "qb-recycle:tradingmenu", -- This is the event it will trigger on click, this can be a client event, server event, command or qbcore registered command, NOTICE: Normal command can't have arguments passed through, QBCore registered ones can have arguments passed through
				  icon = 'fas fa-cookie', -- This is the icon that will display next to this trigger option
				  label = 'Trade', -- This is the label of this option which you would be able to click on to trigger everything, this has to be a string
			},
		  },
		  distance = 2.5, -- This is the distance for you to be at for the target to turn blue, this is in GTA units and has to be a float value
		},
	  },
	  -- Nathaniel (qb-chopshop)
	  [3] = { 
		model = 'csb_prologuedriver',
		coords = vector4(-552.0936, -1792.5475, 22.3643, 67.7999),
		minusOne = true,
		freeze = true,
		invincible = true,
		blockevents = true,
		scenario = 'WORLD_HUMAN_CLIPBOARD',
		target = {
		  options = {
			{ 
				  type = "client",
				  event = "qb-chopshop:jobaccept",
				  icon = 'fas fa-car',
				  label = 'Locate A Vehicle',
			},
		  },
		  distance = 1.5,
		},
	  },
	  -- Nathaniel (qb-vinscratch)
	  [4] = { 
		model = 'csb_prologuedriver',
		coords = vector4(1915.634, 582.5017, 176.36, 258.3),
		minusOne = true,
		freeze = true,
		invincible = true,
		blockevents = true,
		scenario = 'WORLD_HUMAN_CLIPBOARD',
		target = {
		  options = {
			{ 
				  type = "client",
				  event = "qb-vinscratch:StartMenu",
				  icon = 'fas fa-car',
				  label = 'Talk to Nathaniel',
			},
		  },
		  distance = 1.5,
		},
	  },
	  -- Turn In Location (qb-vinscratch)
	  [5] = { 
		model = 'a_m_m_malibu_01',
		coords = vector4(1694.317, -1596.25, 113.81, 96.07),
		minusOne = true,
		freeze = true,
		invincible = true,
		blockevents = true,
		scenario = 'WORLD_HUMAN_CLIPBOARD',
		target = {
		  options = {
			{ 
				  type = "client",
				  event = "qb-vinscratch:GetMonitaryFromBoost",
				  icon = 'fas fa-cookie',
				  label = '???',
			},
		  },
		  distance = 1.5,
		},
	  },
      -- Casino Wheel Spin
	  [6] = { 
		model = 'u_f_m_casinoshop_01', 
		coords = vector4(1109.7, 229.03, -49.64, 185.62), 
		minusOne = true, 
		freeze = true, 
		invincible = true, 
		blockevents = true, 
		scenario = 'WORLD_HUMAN_STAND_IMPATIENT', 
		target = { 
		  options = { 
			{ 
				type = "client",
				event = "casino:spinwheel",
				icon = "fas fa-coins",
				label = "Spin the wheel $500",
			},
			{ 
				type = "client",
				event = "casino:turbowheel",
				icon = "fas fa-coins",
				label = "Turbo Spin $5000",
			},
			{
				type = "client",
				event = "casino:luckyticket",
				icon = "fas fa-coins",
				label = "Spin the wheel [Ticket]",
			}
		  },
		  distance = 2.5, 
		},
		currentpednumber = 0, 
	  },
      -- Fleeca Bank ()
	  [7] = { 
		model = 's_f_y_cop_01', 
		coords = vector4(-1214.27, -335.9, 37.78, 206.49), 
		minusOne = true, 
		freeze = true, 
		invincible = true, 
		blockevents = true, 
		animDict = 'abigail_mcs_1_concat-0', 
		anim = 'csb_abigail_dual-0',
		flag = 1, 
		scenario = 'WORLD_HUMAN_AA_COFFEE', 
		target = { 
		  options = { 
			{ 
			  type = "client", 
			  event = "qb-bankrobbery:client:OpenFleeca",
			  icon = 'fas fa-university', 
			  label = 'Open Bank',
			  job = "police"
			},
			{ 
				type = "client", 
				event = "qb-bankrobbery:client:CloseFleeca",
				icon = 'fas fa-university', 
				label = 'Close Bank', 
				job = "police"
			  }
		  },
		  distance = 2.5, 
		},
		currentpednumber = 0, 
	  },
      -- Fleeca Bank ()
	  [8] = { 
		model = 's_f_y_cop_01', 
		coords = vector4(-355.89, -52.35, 49.04, 152.87), 
		minusOne = true, 
		freeze = true, 
		invincible = true, 
		blockevents = true, 
		animDict = 'abigail_mcs_1_concat-0', 
		anim = 'csb_abigail_dual-0',
		flag = 1, 
		scenario = 'WORLD_HUMAN_AA_COFFEE', 
		target = { 
		  options = { 
			{ 
			  type = "client", 
			  event = "qb-bankrobbery:client:OpenFleeca",
			  icon = 'fas fa-university', 
			  label = 'Open Bank',
			  job = "police"
			},
			{ 
				type = "client", 
				event = "qb-bankrobbery:client:CloseFleeca",
				icon = 'fas fa-university', 
				label = 'Close Bank', 
				job = "police"
			  }
		  },
		  distance = 2.5, 
		},
		currentpednumber = 0, 
	  },
      -- Fleeca Bank ()
	  [9] = { 
		model = 's_f_y_cop_01', 
		coords = vector4(309.32, -281.41, 54.16, 166.69), 
		minusOne = true, 
		freeze = true, 
		invincible = true, 
		blockevents = true, 
		animDict = 'abigail_mcs_1_concat-0', 
		anim = 'csb_abigail_dual-0',
		flag = 1, 
		scenario = 'WORLD_HUMAN_AA_COFFEE', 
		target = { 
		  options = { 
			{ 
			  type = "client", 
			  event = "qb-bankrobbery:client:OpenFleeca",
			  icon = 'fas fa-university', 
			  label = 'Open Bank',
			  job = "police"
			},
			{ 
				type = "client", 
				event = "qb-bankrobbery:client:CloseFleeca",
				icon = 'fas fa-university', 
				label = 'Close Bank', 
				job = "police"
			  }
		  },
		  distance = 2.5, 
		},
		currentpednumber = 0, 
	  },
      -- Fleeca Bank ()
	  [10] = { 
		model = 's_f_y_cop_01', 
		coords = vector4(144.99, -1043.08, 29.37, 158.62), 
		minusOne = true, 
		freeze = true, 
		invincible = true, 
		blockevents = true, 
		animDict = 'abigail_mcs_1_concat-0', 
		anim = 'csb_abigail_dual-0',
		flag = 1, 
		scenario = 'WORLD_HUMAN_AA_COFFEE', 
		target = { 
		  options = { 
			{ 
			  type = "client", 
			  event = "qb-bankrobbery:client:OpenFleeca",
			  icon = 'fas fa-university', 
			  label = 'Open Bank',
			  job = "police"
			},
			{ 
				type = "client", 
				event = "qb-bankrobbery:client:CloseFleeca",
				icon = 'fas fa-university', 
				label = 'Close Bank', 
				job = "police"
			  }
		  },
		  distance = 2.5, 
		},
		currentpednumber = 0, 
	  },
      -- Fleeca Bank ()
	  [11] = { 
		model = 's_f_y_cop_01', 
		coords = vector4(-2958.85, 478.9, 15.7, 276.72), 
		minusOne = true, 
		freeze = true, 
		invincible = true, 
		blockevents = true, 
		animDict = 'abigail_mcs_1_concat-0', 
		anim = 'csb_abigail_dual-0',
		flag = 1, 
		scenario = 'WORLD_HUMAN_AA_COFFEE', 
		target = { 
		  options = { 
			{ 
			  type = "client", 
			  event = "qb-bankrobbery:client:OpenFleeca",
			  icon = 'fas fa-university', 
			  label = 'Open Bank',
			  job = "police"
			},
			{ 
				type = "client", 
				event = "qb-bankrobbery:client:CloseFleeca",
				icon = 'fas fa-university', 
				label = 'Close Bank', 
				job = "police"
			  }
		  },
		  distance = 2.5, 
		},
		currentpednumber = 0, 
	  },
      -- Fleeca Bank ()
	  [12] = { 
		model = 's_f_y_cop_01', 
		coords = vector4(1178.89, 2710.66, 38.09, 12.87), 
		minusOne = true, 
		freeze = true, 
		invincible = true, 
		blockevents = true, 
		animDict = 'abigail_mcs_1_concat-0', 
		anim = 'csb_abigail_dual-0',
		flag = 1, 
		scenario = 'WORLD_HUMAN_AA_COFFEE', 
		target = { 
		  options = { 
			{ 
			  type = "client", 
			  event = "qb-bankrobbery:client:OpenFleeca",
			  icon = 'fas fa-university', 
			  label = 'Open Bank',
			  job = "police"
			},
			{ 
				type = "client", 
				event = "qb-bankrobbery:client:CloseFleeca",
				icon = 'fas fa-university', 
				label = 'Close Bank', 
				job = "police"
			  }
		  },
		  distance = 2.5, 
		},
		currentpednumber = 0, 
	  },
      -- Paleto Bank
	  [13] = { 
		model = 's_m_m_prisguard_01', 
		coords = vector4(-102.07, 6468.53, 31.63, 39.06), 
		minusOne = true, 
		freeze = true, 
		invincible = true, 
		blockevents = true, 
		animDict = 'abigail_mcs_1_concat-0', 
		anim = 'csb_abigail_dual-0',
		flag = 1, 
		scenario = 'WORLD_HUMAN_AA_COFFEE', 
		target = { 
		  options = { 
			{ 
			  type = "client", 
			  event = "qb-bankrobbery:client:OpenPaleto",
			  icon = 'fas fa-university', 
			  label = 'Open Bank',
			  job = "police"
			},
			{ 
				type = "client", 
				event = "qb-bankrobbery:client:ClosePaleto",
				icon = 'fas fa-university', 
				label = 'Close Bank', 
				job = "police"
			  }
		  },
		  distance = 2.5, 
		},
		currentpednumber = 0, 
	  },
      -- Pacific Standard Bank
      [14] = { 
		model = 'mp_m_securoguard_01', 
		coords = vector4(258.84, 227.8, 101.68, 166.17), 
		minusOne = true, 
		freeze = true, 
		invincible = true, 
		blockevents = true, 
		animDict = 'abigail_mcs_1_concat-0', 
		anim = 'csb_abigail_dual-0',
		flag = 1, 
		scenario = 'WORLD_HUMAN_AA_COFFEE', 
		target = { 
		  options = { 
			{ 
			  type = "client", 
			  event = "qb-bankrobbery:client:OpenPacific",
			  icon = 'fas fa-university', 
			  label = 'Open Bank',
			  job = "police"
			},
			{ 
				type = "client", 
				event = "qb-bankrobbery:client:ClosePacific",
				icon = 'fas fa-university', 
				label = 'Close Bank', 
				job = "police"
			  }
		  },
		  distance = 2.5, 
		},
		currentpednumber = 0, 
	  },
      -- Granny O'neil Farm
      [15] = {
	model = "ig_mrs_thornhill",
	coords = vector4(2436.83, 4958.85, 46.81, 10.2),
	minusOne = true,
	freeze = true,
	invincible = true,
	blockevents = true,
	target = {
		options = {
			{
				type = "client",
				event = "grandma:client:healing",
				icon = "fas fa-band-aid",
				label = "Request Healing",
			},
		},
		distance = 1.5,
	},
	currentpednumber = 0,
},
}


----------------------------------------------------------------------------------------
-- Functions
----------------------------------------------------------------------------------------

if Config.EnableDefaultOptions then
	function Config.ToggleDoor(vehicle, door)
		if GetVehicleDoorLockStatus(vehicle) ~= 2 then
			if GetVehicleDoorAngleRatio(vehicle, door) > 0.0 then
				SetVehicleDoorShut(vehicle, door, false)
			else
				SetVehicleDoorOpen(vehicle, door, false)
			end
		end
	end
end

----------------------------------------------------------------------------------------
-- Default options
----------------------------------------------------------------------------------------

-- These options don't represent the actual way of making TargetBones or filling out Config.TargetBones, refer to the TEMPLATES.md for a template on that, this is only the way to add it without affecting the config table

if Config.EnableDefaultOptions then
	Bones['seat_dside_f'] = {
		["Toggle Front Door"] = {
			icon = "fas fa-door-open",
			label = "Toggle Front Door",
			canInteract = function(entity)
				return GetEntityBoneIndexByName(entity, 'door_dside_f') ~= -1
			end,
			action = function(entity)
				Config.ToggleDoor(entity, 0)
			end,
			distance = 1.2
		}
	}

	Bones['seat_pside_f'] = {
		["Toggle Front Door"] = {
			icon = "fas fa-door-open",
			label = "Toggle Front Door",
			canInteract = function(entity)
				return GetEntityBoneIndexByName(entity, 'door_pside_f') ~= -1
			end,
			action = function(entity)
				Config.ToggleDoor(entity, 1)
			end,
			distance = 1.2
		}
	}

	Bones['seat_dside_r'] = {
		["Toggle Rear Door"] = {
			icon = "fas fa-door-open",
			label = "Toggle Rear Door",
			canInteract = function(entity)
				return GetEntityBoneIndexByName(entity, 'door_dside_r') ~= -1
			end,
			action = function(entity)
				Config.ToggleDoor(entity, 2)
			end,
			distance = 1.2
		}
	}

	Bones['seat_pside_r'] = {
		["Toggle Rear Door"] = {
			icon = "fas fa-door-open",
			label = "Toggle Rear Door",
			canInteract = function(entity)
				return GetEntityBoneIndexByName(entity, 'door_pside_r') ~= -1
			end,
			action = function(entity)
				Config.ToggleDoor(entity, 3)
			end,
			distance = 1.2
		}
	}

	Bones['bonnet'] = {
		["Toggle Hood"] = {
			icon = "fa-duotone fa-engine",
			label = "Toggle Hood",
			action = function(entity)
				Config.ToggleDoor(entity, 4)
			end,
			distance = 0.9
		}
	}
end