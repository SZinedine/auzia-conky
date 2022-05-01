----------------------------------
-- Author:      Zineddine SAIBI
-- Software:    Auzia Conky
-- Type:        Conky Theme
-- Version:     0.4
-- License:     GPL-3.0
-- repository:  https://www.github.com/SZinedine/auzia-conky
----------------------------------

local to_draw_titles = true

local S = {
    mem = {
        x                 = 1020,
        y                 = 200,
        radius            = 160,
        text = {
            indicators    = { x = 950, y = 40 },
            process_title = { x = 930, y = 150 },
            processes     = { x = 945, y = 170 },
            ring_title    = { x = 990, y = 320 },
        }
    },


    battery = {
        x              = 610,
        y              = -900,
        radius         = 1600,
        width          = 3,
        begin          = -160,
        end_           = -200,
        text = {
            perc  = { x = 1160, y = 608 }, 
            title = { x = 570, y = 720 }, 
        },
    },


    clock = {
        x              = 600,
        y              = 300,
        width          = 10,
        radius         = 140,
        font_height    = 110,
        font_m         = 84,
        hr             = { x = 510, y = 290 },
        mn             = { x = 590, y = 380 },
        dt             = { x = 550, y = 310 },
        ut             = { x = 550, y = 410 },
    },


    disk = {
        x              = 840,
        y              = 500,
        radius         = 120,
        thickness      = 18,
        begin_angle    = 20,
        end_angle      = -260,
        text = {

        }
    },

    net = {
        x              = 360,
        y              = 500,
        width          = 10,
        radius         = 120,
        begin_angle    = 0,
        end_angle      = 320,
        indicators = {
            down       = {x = 295, y = 385},
            up         = {x = 295, y = 405},
        },
        total = {
            down       = {x = 360, y = 510},
            up         = {x = 360, y = 490},
        },
        list = {x = 10, y = 440},
    },


    cpu = {
        x = 200,
        y = 200,
        begin_angle = 0,
        end_angle = -260,

        cores = {
            _0cores = {     -- display only total cpu usage
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
                temperature = {
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
                temperature = {
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
                temperature = {
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
                temperature = {
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
                temperature = {
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
                temperature = {
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
}



-- set the appropriate cpu object according to the chosen value for `cpu_cores`
local ncores = nil
if     cpu_cores == 0  then ncores = S.cpu.cores._0cores
elseif cpu_cores == 2  then ncores = S.cpu.cores._2cores
elseif cpu_cores == 4  then ncores = S.cpu.cores._4cores
elseif cpu_cores == 6  then ncores = S.cpu.cores._6cores
elseif cpu_cores == 8  then ncores = S.cpu.cores._8cores
elseif cpu_cores == 10 then ncores = S.cpu.cores._10cores
elseif cpu_cores == 12 then ncores = S.cpu.cores._12cores
else 
    print("ERROR. the provided value of cpu_cores is not valid. Defaulting to 4 cores")
    ncores = S.cpu.cores._4cores
end

function start()
    draw_cpu()
    draw_memory()
    draw_clock()
    draw_disks()
    draw_battery()
    draw_titles()
    draw_net()
end


function draw_single_cpu_core(coreN)
    local val = nil
    if coreN.number >= 0 then val = cpu_percent(coreN.number)
    else val = cpu_temperature() -- shoul
    end

    ring_anticlockwise(S.cpu.x, S.cpu.y, coreN.radius, coreN.thickness, coreN.begin_angle, coreN.end_angle, val, coreN.max_value, color_frompercent(tonumber(val)))

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

    ring_clockwise(S.mem.x, S.mem.y, S.mem.radius, 18, 0, 320, memperc, 100, color_frompercent(tonumber(memperc)))
    ring_clockwise(S.mem.x, S.mem.y, S.mem.radius-18, 14, 0, 320, swpperc, 100, color_frompercent(tonumber(swpperc)))
    write(S.mem.text.indicators.x, S.mem.text.indicators.y, "ram: " ..memperc .. "%", 12, main_text_color)
    write(S.mem.text.indicators.x, S.mem.text.indicators.y+22, "swap: " ..swpperc .. "%", 12, main_text_color)

    write(S.mem.text.process_title.x, S.mem.text.process_title.y, usedmem, 12, main_text_color)
    write_list_proccesses_mem(S.mem.text.processes.x, S.mem.text.processes.y, 20, 5, 12, main_text_color)
end


function draw_clock()
    local s = time_second()
    local m = time_minute()
    local h = time_hour24()
    local date = string.format("%s, %s %s, %s", time_day_short(), time_month_short(), time_day_number(), time_year())

    ring_clockwise(S.clock.x, S.clock.y, S.clock.radius, S.clock.width/4, 60, 420, s, 59, main_fg)
    ring_clockwise(S.clock.x, S.clock.y, S.clock.radius+7, S.clock.width/2, -60, 300, m, 59, main_fg)
    ring_clockwise(S.clock.x, S.clock.y, S.clock.radius+18, S.clock.width, 0, 360, h, 23, main_fg)

    write_bold(S.clock.hr.x, S.clock.hr.y, h, S.clock.font_height, main_text_color)
    write(S.clock.mn.x, S.clock.mn.y, m, S.clock.font_m, main_text_color)
    write(S.clock.dt.x, S.clock.dt.y, date, 12, main_text_color)
    write(S.clock.ut.x, S.clock.ut.y, "Uptime: " .. uptime_short(), 11, main_text_color)
end


function draw_disks()
    local rt = fs_used_perc("/")
    local hm = fs_used_perc("/home")
    local rt_text = string.format("Root: %s / %s (%s)", fs_used("/"), fs_size("/"), fs_free("/"))
    local hm_text = string.format("Home: %s / %s (%s)", fs_used("/home"), fs_size("/home"), fs_free("/home"))

    ring_anticlockwise(S.disk.x, S.disk.y, S.disk.radius, S.disk.thickness, S.disk.begin_angle, S.disk.end_angle, rt, 100, color_frompercent(tonumber(rt)))
    ring_anticlockwise(S.disk.x, S.disk.y, S.disk.radius-22, S.disk.thickness, S.disk.begin_angle, S.disk.end_angle, hm, 100, color_frompercent(tonumber(hm)))

    write(S.disk.x+45, S.disk.y-S.disk.radius+10, rt_text, 11, main_text_color)
    write(S.disk.x+40, S.disk.y-S.disk.radius+35, hm_text, 11, main_text_color)

    local dsk_info = {
        "Read:  " .. diskio_read(""),
        "Write: " .. diskio_write(""),
    }
    write_line_by_line(S.disk.x-40, S.disk.y-10, 20, dsk_info, main_text_color, 12)

end


function draw_net()
    ring_clockwise(S.net.x, S.net.y, S.net.radius, 15, S.net.begin_angle, S.net.end_angle, download_speed_kb(), download_rate_maximum, main_fg)
    ring_clockwise(S.net.x, S.net.y, S.net.radius-18, 15, S.net.begin_angle, S.net.end_angle, upload_speed_kb(), upload_rate_maximum, main_fg)

    write(S.net.indicators.down.x, S.net.indicators.down.y, "▼ ".. download_speed(), 12, main_text_color)
    write(S.net.indicators.up.x, S.net.indicators.up.y, "▲ "..upload_speed(), 12, main_text_color)

    write(S.net.total.down.x-50, S.net.y, "Total ", 12, main_text_color)
    write(S.net.total.down.x, S.net.total.down.y, "▼".. download_total(), 12, main_text_color)
    write(S.net.total.up.x, S.net.total.up.y, "▲"..upload_total(), 12, main_text_color)

    local inf = {}
    table.insert(inf, "SSID: " .. string.sub(ssid(), 0, 15))
    table.insert(inf, "Wifi Signal:    " .. wifi_signal() .. "%")
    table.insert(inf, "Local IP:       " .. local_ip())
    if use_public_ip then
        if public_ip == nil or (updates()%public_ip_refresh_rate) == 0 then
            update_public_ip()
        end
        table.insert(inf, "Public IP:      " .. get_public_ip())
    end
    write_line_by_line(S.net.list.x, S.net.list.y, 20, inf, main_text_color, 12)
end


function draw_battery()
    if not has_battery then return end
    if not initialized_battery and tonumber(updates()) > startup_delay + 6  then
        init_battery()
    end
    local bat = battery_percent()
    ring_anticlockwise(S.battery.x, S.battery.y, S.battery.radius, S.battery.width , S.battery.begin, S.battery.end_, bat, 100, color_frompercent_reverse(tonumber(bat)))
    write(S.battery.text.perc.x, S.battery.text.perc.y, bat .. "%", 15, main_text_color)
    write(S.battery.text.title.x, S.battery.text.title.y, "Battery", 15, main_text_color)
end


function draw_titles()
    if not to_draw_titles then return end
    write(180, 270, "CPU", 18, main_text_color)
    write(325, S.net.y+80, "Internet", 15, main_text_color)
    write(S.mem.text.ring_title.x, S.mem.text.ring_title.y, "Memory", 18, main_text_color)
    write(S.disk.x+100, S.disk.y-S.disk.radius+130, "Hard Disk", 15, main_text_color)
end



function conky_main()
    if conky_window == nil then
        return
    elseif colors_defined == false then
        io.stderr:write("Fatal Error. Please define a theme")
    end

    local updates_ = tonumber(updates())
    if updates_ <= startup_delay then return end
    if initialized_battery == false and updates_ > startup_delay + 6  then
        init_battery()
    end

    local cs = cairo_xlib_surface_create(conky_window.display, conky_window.drawable,
                                         conky_window.visual, conky_window.width,
                                         conky_window.height)
    cr = cairo_create(cs)

    start()

    cairo_destroy(cr)
    cairo_surface_destroy(cs)
    cr = nil
end

