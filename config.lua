Config = {}

Config.selfBlip = true -- use classic arrow or job specified blip?
Config.useRflxMulti = false -- server specific init
Config.useBaseEvents = false -- F for optimisation
Config.prints = false -- server side prints (on/off duty)

-- looks
Config.font = {
    useCustom = false, -- use custom font? Has to be specified below, also can be buggy with player tags
    name = 'Russo One', -- > this being inserted into <font face='nameComesHere'> eg. (<font face='Russo One'>) --> Your font has to be streamed and initialized on ur server
}
Config.notifications = {
    enable = false,
    useMythic = false,
    onDutyText = 'Přišel/a jste do služby', -- pretty straight foward
    offDutyText = 'Odešel/a jste ze služby', -- pretty straight foward
}
Config.blipGroup = {
    renameGroup = false,
    groupName = '~w~Ostatní'
}

-- blips
Config.bigmapTags = false -- Playername tags when bigmap enabled?
Config.blipCone = true -- use that wierd FOV indicators thing?

Config.useCharacterName = true -- use IC name or OOC name, chose your warrior
Config.usePrefix = true
Config.namePrefix = { -- global name prefixes by grade_name 
    kadet = 'Cadet |',
}

Config.emergencyJobs = {
    ['police'] = { --> job name in database
        ignoreDuty = true, -- if ignore, you don't need to call onDuty or offDuty by exports or event, player is on map while he has that job
        blip = {
            sprite = 60, -- on foot blip sprite (required)
            color = 29, -- on foot blip color (required)
            scale = 0.8, -- global blip scale 1.0 by default (not required)
            flashColors = { -- blip flash when siren ON! You can define as many colors as you want! //// If you don't want to use flash, then just delete it (not required)
                59,
                29,
            }
        },
        vehBlip = { -- in vehicle blip config, if you don't want to use it, just delete it (not required)
            ['default'] = { -- global in vehicle blip (required if you have "vehBlip" defined)
                sprite = 56,
                color = 29,
            },
            [`ambulance`] = { -- this overrides 'default' blip by vehicle hash, hash has to be between ` eg. `spawnnamehere`
                sprite = 126,
                color = 29,
            },
            [`police2`] = {
                sprite = 56,
                color = 29,
            }
        },
        gradePrefix = { -- global Config.namePrefix override (not required)
            [0] = '', -- 0 = grade number in database | 'CAD. ' is label obv..
        },
        canSee = { -- What job can see this job, when not defined they'll see only self job --> police will see only police blips (not required)
            ['police'] = true,
            ['ambulance'] = true,
        }
    },
    ['ambulance'] = {
        ignoreDuty = true,
        blip = {
            sprite = 61,
            color = 59,
            flashColors = {
                0,
                59,
            }
        },
        vehBlip = {
            ['default'] = {
                sprite = 56,
                color = 59,
            },
            [`supervolito2`] = {
                sprite = 43,
                color = 59,
            },
        },
        canSee = {
            ['police'] = true,
            ['ambulance'] = true,
        }
    }
}