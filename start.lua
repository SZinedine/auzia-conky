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

settings.cpu.x                = 200
settings.cpu.y                = 200
settings.cpu.radius_temp      = 183
settings.cpu.temp_begin_angle = 45
settings.cpu.temp_end_angle   = -300
settings.cpu.c1_radius        = 160
settings.cpu.c2_radius        = 139
settings.cpu.c3_radius        = 120
settings.cpu.c4_radius        = 103
settings.cpu.begin_angle      = 0
settings.cpu.end_angle        = -260
settings.mem.x                = 1020
settings.mem.y                = settings.cpu.y
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


function draw_cpu()
    local tmp = cpu_temperature()
    local cpu = cpu_percent("")
    local cpu1 = cpu_percent(1)
    local cpu2 = cpu_percent(2)
    local cpu3 = cpu_percent(3)
    local cpu4 = cpu_percent(4)
    ring_anticlockwise(settings.cpu.x, settings.cpu.y, settings.cpu.radius_temp, 3, settings.cpu.temp_begin_angle, settings.cpu.temp_end_angle, tmp, 95, color_frompercent(tonumber(tmp)))
    ring_anticlockwise(settings.cpu.x, settings.cpu.y, settings.cpu.c1_radius+15, 5, settings.cpu.begin_angle, settings.cpu.end_angle, cpu, 100, color_frompercent(tonumber(cpu)))    -- total CPU
    ring_anticlockwise(settings.cpu.x, settings.cpu.y, settings.cpu.c1_radius, 20, settings.cpu.begin_angle, settings.cpu.end_angle, cpu1, 100, color_frompercent(tonumber(cpu1)))
    ring_anticlockwise(settings.cpu.x, settings.cpu.y, settings.cpu.c2_radius, 18, settings.cpu.begin_angle, settings.cpu.end_angle, cpu2, 100, color_frompercent(tonumber(cpu2)))
    ring_anticlockwise(settings.cpu.x, settings.cpu.y, settings.cpu.c3_radius, 16, settings.cpu.begin_angle, settings.cpu.end_angle, cpu3, 100, color_frompercent(tonumber(cpu3)))
    ring_anticlockwise(settings.cpu.x, settings.cpu.y, settings.cpu.c4_radius, 15, settings.cpu.begin_angle, settings.cpu.end_angle, cpu4, 100, color_frompercent(tonumber(cpu4)))

    write(330, 90, tmp .. "°C", 12, main_text_color)
    write(205, 45, cpu1 .. "%", 12, main_text_color)
    write(205, 68, cpu2 .. "%", 12, main_text_color)
    write(205, 85, cpu3 .. "%", 12, main_text_color)
    write(205, 100, cpu4 .. "%", 12, main_text_color)
    write_list_proccesses_cpu(160, 140, 20, 4, 12, main_text_color)
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
    -- local bat1 = battery1_percent()
    -- local bat2 = battery2_percent()
    ring_anticlockwise(settings.battery.x, settings.battery.y, settings.battery.radius, settings.battery.width , settings.battery.begin, settings.battery.end_, bat, 100, color_frompercent_reverse(tonumber(bat)))
    write(settings.battery.x_perc-30, settings.battery.y_perc+3, bat .. "%", 15, main_text_color)
    write(settings.battery.x_title, settings.battery.y_title, "Battery", 15, main_text_color)

    -- if has_second_battery then
        -- ring_anticlockwise(settings.battery.x, settings.battery.y, settings.battery.radius-7, 1 , settings.battery.begin-2, settings.battery.end_+2, bat1, 100, color_frompercent_reverse(tonumber(bat1)))
        -- ring_anticlockwise(settings.battery.x, settings.battery.y, settings.battery.radius+7, 1 , settings.battery.begin-2, settings.battery.end_+2, bat2, 100, color_frompercent_reverse(tonumber(bat2)))
    -- end
end


function draw_titles()
    write(settings.cpu.x-20, settings.cpu.y+80, "CPU", 18, main_text_color)
    write(settings.net.x-35, settings.net.y+80, "Internet", 15, main_text_color)
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

    if tonumber(updates()) > time_before_start then
        start()
    end

    cairo_destroy(cr)
    cairo_surface_destroy(cs)
    cr = nil
end
