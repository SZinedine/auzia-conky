----------------------------------
-- Author:      Zineddine SAIBI
-- Software:    Auzia Conky
-- Type:        Conky Theme
-- Version:     0.3 (12 Dec 2021)
-- License:     GPL-3.0
-- repository:  https://www.github.com/SZinedine/auzia-conky
----------------------------------

require 'abstract'

to_draw_titles = true

settings    = {
    cpu     = {},
    mem     = {},
    battery = {},
    clock   = {},
    disk    = {},
    net     = {}
}

settings.cpu = {
    x = 200,
    y = 200,
    begin_angle = 0,
    end_angle = -260,

    cores = {
        _0cores = {             -- display only total cpu usage
            total = {
                number = 0,
                radius = 130,
                thickness = 35,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 75,
                    post_particle = "%"
                }
            },
            temperature = {
                number = -1,
                radius = 163,
                thickness = 10,
                max_value = 95,
                begin_angle = 45,
                end_angle = -300,
                text = {
                    x = 315,
                    y = 110,
                    post_particle = "°C"
                }
            },

        },


        _2cores = {
            core1 = {
                number = 1,
                radius = 123,
                thickness = 24,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 80,
                    post_particle = "%"
                }
            },
            core2 = {
                number = 2,
                radius = 150,
                thickness = 26,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 55,
                    post_particle = "%"
                }
            },
            total = {
                number = 0,
                radius = 171,
                thickness = 10,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = nil
            },
            temperature = {     -- what differentiates it from the other ones is number = -1
                number = -1,
                radius = 183,
                thickness = 3,
                max_value = 95,
                begin_angle = 45,
                end_angle = -300,
                text = {
                    x = 330,
                    y = 90,
                    post_particle = "°C"
                }
            },

        },


        _4cores = {
            core1 = {
                number = 1,
                radius = 103,
                thickness = 15,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 100,
                    post_particle = "%"
                }
            },
            core2 = {
                number = 2,
                radius = 120,
                thickness = 16,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 85,
                    post_particle = "%"
                }
            },
            core3 = {
                number = 3,
                radius = 139,
                thickness = 18,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 68,
                    post_particle = "%"
                }
            },
            core4 = {
                number = 4,
                radius = 160,
                thickness = 20,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 45,
                    post_particle = "%"
                }
            },
            total = {
                number = 0,
                radius = 175,
                thickness = 5,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = nil
            },
            temperature = {     -- what differentiates it from the other ones is number = -1
                number = -1,
                radius = 183,
                thickness = 3,
                max_value = 95,
                begin_angle = 45,
                end_angle = -300,
                text = {
                    x = 330,
                    y = 90,
                    post_particle = "°C"
                }
            },
        },


        _6cores = {
            core1 = {
                number = 1,
                radius = 94,
                thickness = 12,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 110,
                    post_particle = "%"
                }
            },
            core2 = {
                number = 2,
                radius = 107,
                thickness = 12,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 95,
                    post_particle = "%"
                }
            },
            core3 = {
                number = 3,
                radius = 121,
                thickness = 14,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 80,
                    post_particle = "%"
                }
            },
            core4 = {
                number = 4,
                radius = 137,
                thickness = 15,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 63,
                    post_particle = "%"
                }
            },
            core5 = {
                number = 5,
                radius = 154,
                thickness = 16,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 45,
                    post_particle = "%"
                }
            },
            core6 = {
                number = 6,
                radius = 172,
                thickness = 17,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 27,
                    post_particle = "%"
                }
            },
            total = {
                number = 0,
                radius = 184,
                thickness = 4,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = nil
            },
            temperature = {     -- what differentiates it from the other ones is number = -1
                number = -1,
                radius = 190,
                thickness = 3,
                max_value = 95,
                begin_angle = 45,
                end_angle = -300,
                text = {
                    x = 337,
                    y = 89,
                    post_particle = "°C"
                }
            },
        },


        _8cores = {
            core1 = {
                number = 1,
                radius = 88,
                thickness = 9,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 119,
                    post_particle = "%"
                }
            },
            core2 = {
                number = 2,
                radius = 99,
                thickness = 9,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 106,
                    post_particle = "%"
                }
            },
            core3 = {
                number = 3,
                radius = 109,
                thickness = 9,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 94,
                    post_particle = "%"
                }
            },
            core4 = {
                number = 4,
                radius = 120,
                thickness = 10,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 82,
                    post_particle = "%"
                }
            },
            core5 = {
                number = 5,
                radius = 132,
                thickness = 11,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 70,
                    post_particle = "%"
                }
            },
            core6 = {
                number = 6,
                radius = 145,
                thickness = 12,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 56,
                    post_particle = "%"
                }
            },
            core7 = {
                number = 7,
                radius = 159,
                thickness = 13,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 40,
                    post_particle = "%"
                }
            },
            core8 = {
                number = 8,
                radius = 174,
                thickness = 14,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 27,
                    post_particle = "%"
                }
            },
            total = {
                number = 0,
                radius = 184,
                thickness = 4,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = nil
            },
            temperature = {     -- what differentiates it from the other ones is number = -1
                number = -1,
                radius = 190,
                thickness = 3,
                max_value = 95,
                begin_angle = 45,
                end_angle = -300,
                text = {
                    x = 337,
                    y = 89,
                    post_particle = "°C"
                }
            },
        },



        _10cores = {
            core1 = {
                number = 1,
                radius = 81,
                thickness = 6,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 125,
                    post_particle = "%"
                }
            },
            core2 = {
                number = 2,
                radius = 88,
                thickness = 6,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = nil
            },
            core3 = {
                number = 3,
                radius = 96,
                thickness = 7,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 110,
                    post_particle = "%"
                }
            },
            core4 = {
                number = 4,
                radius = 105,
                thickness = 8,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 95,
                    post_particle = "%"
                }
            },
            core5 = {
                number = 5,
                radius = 115,
                thickness = 9,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = nil
            },
            core6 = {
                number = 6,
                radius = 126,
                thickness = 10,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 80,
                    post_particle = "%"
                }
            },
            core7 = {
                number = 7,
                radius = 138,
                thickness = 11,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 66,
                    post_particle = "%"
                }
            },
            core8 = {
                number = 8,
                radius = 151,
                thickness = 12,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 52,
                    post_particle = "%"
                }
            },
            core9 = {
                number = 9,
                radius = 165,
                thickness = 13,
                max_value = 98,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 39,
                    post_particle = "%"
                }
            },
            core10 = {
                number = 10,
                radius = 180,
                thickness = 14,
                max_value = 98,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 23,
                    post_particle = "%"
                }
            },
            total = {
                number = 0,
                radius = 192,
                thickness = 5,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = nil
            },
            temperature = {     -- what differentiates it from the other ones is number = -1
                number = -1,
                radius = 199,
                thickness = 3,
                max_value = 95,
                begin_angle = 45,
                end_angle = -300,
                text = {
                    x = 345,
                    y = 85,
                    post_particle = "°C"
                }
            },
        },



        _12cores = {
            core1 = {
                number = 1,
                radius = 82,
                thickness = 5,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 125,
                    post_particle = "%"
                }
            },
            core2 = {
                number = 2,
                radius = 88,
                thickness = 5,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = nil
            },
            core3 = {
                number = 3,
                radius = 94,
                thickness = 6,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 110,
                    post_particle = "%"
                }
            },
            core4 = {
                number = 4,
                radius = 102,
                thickness = 8,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = nil
            },
            core5 = {
                number = 5,
                radius = 111,
                thickness = 8,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 95,
                    post_particle = "%"
                }
            },
            core6 = {
                number = 6,
                radius = 120,
                thickness = 9,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = nil
            },
            core7 = {
                number = 7,
                radius = 130,
                thickness = 9,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 80,
                    post_particle = "%"
                }
            },
            core8 = {
                number = 8,
                radius = 141,
                thickness = 10,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 65,
                    post_particle = "%"
                }
            },
            core9 = {
                number = 9,
                radius = 152,
                thickness = 10,
                max_value = 98,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 52,
                    post_particle = "%"
                }
            },
            core10 = {
                number = 10,
                radius = 163,
                thickness = 10,
                max_value = 98,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 40,
                    post_particle = "%"
                }
            },
            core11 = {
                number = 11,
                radius = 174,
                thickness = 10,
                max_value = 98,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 28,
                    post_particle = "%"
                }
            },
            core12 = {
                number = 12,
                radius = 186,
                thickness = 11,
                max_value = 98,
                begin_angle = 0,
                end_angle = -260,
                text = {
                    x = 205,
                    y = 17,
                    post_particle = "%"
                }
            },
            total = {
                number = 0,
                radius = 195,
                thickness = 2,
                max_value = 100,
                begin_angle = 0,
                end_angle = -260,
                text = nil
            },
            temperature = {     -- what differentiates it from the other ones is number = -1
                number = -1,
                radius = 199,
                thickness = 2,
                max_value = 95,
                begin_angle = 45,
                end_angle = -300,
                text = {
                    x = 345,
                    y = 85,
                    post_particle = "°C"
                }
            },
        },
    }
}


settings.mem.x                = 1020
settings.mem.y                = 200
settings.mem.mem_radius       = 160
settings.mem.swap_radius      = settings.mem.mem_radius - 20
settings.mem.text_x           = settings.mem.x - 90
settings.mem.text_y           = settings.mem.y - 50
settings.battery.x            = 610
settings.battery.y            = -900
settings.battery.radius       = 1600
settings.battery.width        = 3
settings.battery.begin        = -160
settings.battery.end_         = -200
settings.battery.x_perc       = 1190
settings.battery.y_perc       = 605
settings.battery.x_title      = settings.battery.x - 40
settings.battery.y_title      = 720
settings.clock.x              = 600
settings.clock.y              = 300
settings.clock.width          = 10
settings.clock.radius         = 140
settings.clock.font_height    = 110
settings.clock.font_m         = settings.clock.font_height / 1.3
settings.disk.x               = 840
settings.disk.y               = 500
settings.disk.radius          = 120
settings.disk.thickness       = 18
settings.disk.begin_angle     = 20
settings.disk.end_angle       = -260
settings.net.x                = 360
settings.net.y                = 500
settings.net.width            = 10
settings.net.radius           = 120
settings.net.begin_angle      = 0
settings.net.end_angle        = 320


-- set the appropriate cpu object according to the chosen value for `cpu_cores`
local ncores = nil
cpu_cores = 0
if     cpu_cores == 0  then ncores = settings.cpu.cores._0cores
elseif cpu_cores == 2  then ncores = settings.cpu.cores._2cores
elseif cpu_cores == 4  then ncores = settings.cpu.cores._4cores
elseif cpu_cores == 6  then ncores = settings.cpu.cores._6cores
elseif cpu_cores == 8  then ncores = settings.cpu.cores._8cores
elseif cpu_cores == 10 then ncores = settings.cpu.cores._10cores
elseif cpu_cores == 12 then ncores = settings.cpu.cores._12cores
else 
    print("ERROR. the provided value of cpu_cores is not valid. Defaulting to 4 cores")
    ncores = settings.cpu.cores._4cores
end

function start()
    draw_cpu()
    draw_memory()
    draw_net()
    draw_clock()
    draw_disks()
    if has_battery      then draw_battery() end
    if to_draw_titles   then draw_titles()  end
    if use_public_ip then
        -- check the ip adress every x seconds (check the variable public_ip_refresh_rate, default: 60 seconde)
        if public_ip == nil or public_ip == "None" or (updates()%public_ip_refresh_rate) == 0 then
            public_ip = fetch_public_ip()
        end
    end
end


function draw_lines()
    -- repères
    line(610, 0, 610, 1000, 1, 0xffffff, 1)
    line(0, 0, 0, 1000, 2, main_fg, 1)
    line(1250, 0, 1250, 1000, 2, main_fg, 1)
    line(400, 0, 400, 1000, 2, main_fg, 1)
    line(800, 0, 800, 1000, 2, main_fg, 1)
    line(0, 0, 1300, 0, 2, main_fg, 1)
    line(0, 720, 1300, 720, 2, main_fg, 1)
    line(0, 360, 1300, 360, 2, main_fg, 1)
end


function draw_single_cpu_core(coreN)
    local val = nil
    if coreN.number >= 0 then val = cpu_percent(coreN.number)
    else val = cpu_temperature() -- shoul
    end

    ring_anticlockwise(settings.cpu.x, settings.cpu.y, coreN.radius, coreN.thickness, coreN.begin_angle, coreN.end_angle, val, coreN.max_value, color_frompercent(tonumber(val)))

    if coreN.text ~= nil then
        write(coreN.text.x, coreN.text.y, val .. coreN.text.post_particle, 12, main_text_color)
    end
end


function draw_cpu()
    for i in pairs(ncores) do
        draw_single_cpu_core(ncores[i])
    end

    write_list_proccesses_cpu(160, 147, 20, 4, 12, main_text_color)
end


function draw_memory()
    local memperc = memory_percent()
    local swpperc = swap_percent()
    local usedmem = string.format("Usage: %s / %s (%s%s)", memory(), memory_max(), memperc, "%")

    ring_clockwise(settings.mem.x, settings.mem.y, settings.mem.mem_radius, 18, 0, 320, memperc, 100, color_frompercent(tonumber(memperc)))
    ring_clockwise(settings.mem.x, settings.mem.y, settings.mem.mem_radius-18, 14, 0, 320, swpperc, 100, color_frompercent(tonumber(swpperc)))
    write(settings.mem.text_x+20, settings.mem.text_y-110, "ram: " ..memperc .. "%", 12, main_text_color)
    write(settings.mem.text_x+20, settings.mem.text_y-85, "swap: " ..swpperc .. "%", 12, main_text_color)

    write(settings.mem.text_x, settings.mem.text_y, usedmem, 12, main_text_color)
    write_list_proccesses_mem(settings.mem.text_x+15, settings.mem.text_y+20, 20, 5, 12, main_text_color)
end


function draw_clock()
    local s = time_second()
    local m = time_minute()
    local h = time_hour24()
    local date = string.format("%s, %s %s, %s", time_day_short(), time_month_short(), time_day_number(), time_year())

    ring_clockwise(settings.clock.x, settings.clock.y, settings.clock.radius, settings.clock.width/4, 60, 420, s, 59, main_fg)
    ring_clockwise(settings.clock.x, settings.clock.y, settings.clock.radius+7, settings.clock.width/2, -60, 300, m, 59, main_fg)
    ring_clockwise(settings.clock.x, settings.clock.y, settings.clock.radius+18, settings.clock.width, 0, 360, h, 23, main_fg)

    write_bold(settings.clock.x-90, settings.clock.y-10, h, settings.clock.font_height, main_text_color)
    write(settings.clock.x-10, settings.clock.y+80, m, settings.clock.font_m, main_text_color)
    write(settings.clock.x-50, settings.clock.y+10, date, 12, main_text_color)
    write(settings.clock.x-50, settings.clock.y+115, "Uptime: " .. uptime_short(), 11, main_text_color)
end


function draw_disks()
    local rt = fs_used_perc("/")
    local hm = fs_used_perc("/home")
    local rt_text = string.format("Root: %s / %s (%s)", fs_used("/"), fs_size("/"), fs_free("/"))
    local hm_text = string.format("Home: %s / %s (%s)", fs_used("/home"), fs_size("/home"), fs_free("/home"))

    ring_anticlockwise(settings.disk.x, settings.disk.y, settings.disk.radius, settings.disk.thickness, settings.disk.begin_angle, settings.disk.end_angle, rt, 100, color_frompercent(tonumber(rt)))
    ring_anticlockwise(settings.disk.x, settings.disk.y, settings.disk.radius-22, settings.disk.thickness, settings.disk.begin_angle, settings.disk.end_angle, hm, 100, color_frompercent(tonumber(hm)))

    write(settings.disk.x+45, settings.disk.y-settings.disk.radius+10, rt_text, 11, main_text_color)
    write(settings.disk.x+40, settings.disk.y-settings.disk.radius+35, hm_text, 11, main_text_color)

    local dsk_info = {
        "Read:  " .. diskio_read(""),
        "Write: " .. diskio_write(""),
    }
    write_line_by_line(settings.disk.x-40, settings.disk.y-10, 20, dsk_info, main_text_color, 12)

end


function draw_net()
    ring_clockwise(settings.net.x, settings.net.y, settings.net.radius, 15, settings.net.begin_angle, settings.net.end_angle, download_speed_kb(), download_rate_maximum, main_fg)
    ring_clockwise(settings.net.x, settings.net.y, settings.net.radius-18, 15, settings.net.begin_angle, settings.net.end_angle, upload_speed_kb(), upload_rate_maximum, main_fg)

    write(settings.net.x-65, settings.net.y-115, "▼ ".. download_speed(), 12, main_text_color)
    write(settings.net.x-65, settings.net.y-95, "▲ "..upload_speed(), 12, main_text_color)

    write(settings.net.x-50, settings.net.y, "Total ", 12, main_text_color)
    write(settings.net.x, settings.net.y-10, "▼".. download_total(), 12, main_text_color)
    write(settings.net.x, settings.net.y+10, "▲"..upload_total(), 12, main_text_color)

    local inf = {}
    table.insert(inf, "SSID: " .. string.sub(ssid(), 0, 15))
    table.insert(inf, "Wifi Signal:    " .. wifi_signal() .. "%")
    if use_public_ip then
        table.insert(inf, "Public IP:      " .. tostring(public_ip))
    end
    table.insert(inf, "Local IP:       " .. local_ip())
    write_line_by_line(settings.net.x-350, settings.net.y-60, 20, inf, main_text_color, 12)
end


function draw_battery()
    local bat = battery_percent()
    ring_anticlockwise(settings.battery.x, settings.battery.y, settings.battery.radius, settings.battery.width , settings.battery.begin, settings.battery.end_, bat, 100, color_frompercent_reverse(tonumber(bat)))
    write(settings.battery.x_perc-30, settings.battery.y_perc+3, bat .. "%", 15, main_text_color)
    write(settings.battery.x_title, settings.battery.y_title, "Battery", 15, main_text_color)
end


function draw_titles()
    write(180, 270, "CPU", 18, main_text_color)
    write(325, settings.net.y+80, "Internet", 15, main_text_color)
    write(settings.mem.text_x+60, settings.mem.text_y+170, "Memory", 18, main_text_color)
    write(settings.disk.x+100, settings.disk.y-settings.disk.radius+130, "Hard Disk", 15, main_text_color)
end



function conky_main()
    if conky_window == nil then
        return
    elseif colors_defined == false then
        io.stderr:write("Fatal Error. Please define a theme")
    end
    local cs = cairo_xlib_surface_create(conky_window.display, conky_window.drawable,
                                         conky_window.visual, conky_window.width,
                                         conky_window.height)
    cr = cairo_create(cs)

    local updates_ = tonumber(updates())

    if updates_ > time_before_start then
        if updates_ > time_before_start + 3 and initialized_battery == false then
            init_battery()
        end
        start()
    end

    cairo_destroy(cr)
    cairo_surface_destroy(cs)
    cr = nil
end
