local Config, Players, Types, Entities, Models, Zones, Bones, PlayerData = {}, {}, {}, {}, {}, {}, {}, {}
Types[1], Types[2], Types[3] = {}, {}, {}
Config.VehicleBones = {'chassis', 'windscreen', 'seat_pside_r', 'seat_dside_r', 'bodyshell', 'suspension_lm', 'suspension_lr', 'platelight', 'attach_female', 'attach_male', 'bonnet', 'boot', 'chassis_dummy', 'chassis_Control', 'door_dside_f', 'door_dside_r', 'door_pside_f', 'door_pside_r', 'Gun_GripR', 'windscreen_f', 'VFX_Emitter', 'window_lf', 'window_lr', 'window_rf', 'window_rr', 'engine', 'gun_ammo', 'ROPE_ATTATCH', 'wheel_lf', 'wheel_lr', 'wheel_rf', 'wheel_rr', 'exhaust', 'overheat', 'misc_e', 'seat_dside_f', 'seat_pside_f', 'Gun_Nuzzle'}

-------------------------------------------------------------------------------
-- Settings
-------------------------------------------------------------------------------
-- It's possible to interact with entities through walls so this should be low
Config.MaxDistance = 3.0

-- Enable debug options and distance preview
Config.Debug = false

-- Enable outlines around the entity you're looking at
Config.EnableOutline = false

-- Enable default options (Toggling vehicle doors)
Config.EnableDefaultOptions = false

-------------------------------------------------------------------------------
-- Target Configs
-------------------------------------------------------------------------------

-- These are all empty for you to fill in, refer to the wiki and .md files for help in filling these in

Config.CircleZones = {

}

Config.BoxZones = {

	["garbagestart"] = {
				name = "garbagestart",
				coords = vector3(-322.2451, -1546.636, 31.01991),
				length = 2,
				width = 2,
				heading= 307.6468,
				debugPoly = false,
				minZ= 30.00,
				maxZ= 31.80,
				options = {
					{
						event = 'gl-garbage:turnInVoucher',
						icon = "fas fa-clipboard",
						label = "Redeem Voucher",
					},
					{
						event = 'gl-garbage:endJob',
						icon = "fas fa-clipboard",
						label = "End Shift",
					},
					{
						event = 'gl-garbage:joinMultiJob',
						icon = "fas fa-clipboard",
						label = "Join A Shift",
					},
					{
						event = 'gl-garbage:getJob',
						icon = "fas fa-clipboard",
						label = "Start Shift",
					},
				},
					distance = 2.5 
			  },
		
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

    ["bones"] = {
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
            {
                type = "client",
                event = "qb-trunk:client:GetIn",
                icon = "fas fa-user-secret",
                label = "Get In Truck",
            },
      	    {
                type = "client",
                event = "lj-fuel:client:SendMenuToServer",
                icon = "fas fa-gas-pump",
                label = "Refuel Vehicle",
            },
        },
          distance = 1.0
    },
}

Config.TargetEntities = {

}

Config.EntityZones = {

}

Config.TargetModels = {

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
        		distance = 1.5,
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

Config.PedOptions = {

}

Config.VehicleOptions = {

}

Config.ObjectOptions = {

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

-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------

if Config.EnableDefaultOptions then
	Config.ToggleDoor = function(vehicle, door)
		if GetVehicleDoorLockStatus(vehicle) ~= 2 then 
			if GetVehicleDoorAngleRatio(vehicle, door) > 0.0 then
				SetVehicleDoorShut(vehicle, door, false)
			else
				SetVehicleDoorOpen(vehicle, door, false)
			end
		end
	end
end

-------------------------------------------------------------------------------
-- Default options
-------------------------------------------------------------------------------

if Config.EnableDefaultOptions then
     Bones['seat_dside_f'] = {
        options = {
            {
                icon = "fas fa-door-open",
                label = "Toggle front Door",
                canInteract = function(entity)
                    return GetEntityBoneIndexByName(entity, 'door_dside_f') ~= -1
                end,
                action = function(entity)
                    Config.ToggleDoor(entity, 0)
                end
            },
        },
        distance = 1
    }

    Bones['seat_pside_f'] = {
        options = {
            {
                icon = "fas fa-door-open",
                label = "Toggle front Door",
                canInteract = function(entity)
                    return GetEntityBoneIndexByName(entity, 'door_pside_f') ~= -1
                end,
                action = function(entity)
                    Config.ToggleDoor(entity, 1)
                end
            },
        },
        distance = 1
    }

    Bones['seat_dside_r'] = {
        options = {
            {
                icon = "fas fa-door-open",
                label = "Toggle rear Door",
                canInteract = function(entity)
                    return GetEntityBoneIndexByName(entity, 'door_dside_r') ~= -1
                end,
                action = function(entity)
                    Config.ToggleDoor(entity, 2)
                end
            },
        },
        distance = 1
    }

    -- Bones['seat_pside_r'] = {
       -- options = {
           -- {
               -- icon = "fas fa-door-open",
               -- label = "Toggle rear Door",
               -- canInteract = function(entity)
                   -- return GetEntityBoneIndexByName(entity, 'door_pside_r') ~= -1
               -- end,
               -- action = function(entity)
                   -- Config.ToggleDoor(entity, 3)
               -- end
           -- },
       -- },
       -- distance = 1
   -- }

    -- Bones['bonnet'] = {
        -- options = {
            -- {
                -- icon = "fa-duotone fa-engine",
                -- label = "Toggle Hood",
                -- action = function(entity)
                    -- Config.ToggleDoor(entity, 4)
                -- end
            -- },
        -- },
        -- distance = 1
    -- }
end

-------------------------------------------------------------------------------
return Config, Players, Types, Entities, Models, Zones, Bones, PlayerData
-------------------------------------------------------------------------------