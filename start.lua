----------------------------------
-- Author:      Zineddine SAIBI
-- Software:    Auzia Conky
-- Type:        Conky Theme
-- Version:     0.1 (07 Sep 2021)
-- License:     GPL-3.0
-- repository:  https://www.github.com/SZinedine/auzia-conky
----------------------------------

require 'abstract'

to_draw_titles = true

cpu_x, cpu_y = 200, 200
cputemp_radius = 183
cputemp_angle_begin = 45
cputemp_angle_end = -300
cpu1_radius = 160
cpu2_radius = 139
cpu3_radius = 120
cpu4_radius = 103
cpu_angle_begin = 0
cpu_angle_end = -260

mem_x = 1020
mem_y = cpu_y
mem_r = 160
swp_r = mem_r-20
memtext_x = mem_x - 90
memtext_y = mem_y - 50

bat_x, bat_y = 610, -900
battery_radius = 1600
bat_w = 3
bat_beg, bat_end = -160, -200
batperc_x, batperc_y = 1190, 605
battitle_x, battitle_y = bat_x-40, 720

clock_x, clock_y = 600, 300
clock_w = 10
clock_r = 130
clock_font_h = 110
clock_font_m = clock_font_h/1.3

dsk_x, dsk_y = 840, 500
dsk_r = 120
dsk_thick = 18
dsk_ang_begin, dsk_ang_end = 20, -260

net_x, net_y = 360, 500
net_width = 10
net_radius = 120
net_ang_begin, net_ang_end = 0, 320


function start()
    draw_cpu()
    draw_memory()
    draw_net()
    draw_clock()
    draw_disks()
    if has_battery      then draw_battery() end
    if to_draw_titles   then draw_titles()  end
    if fetch_public_ip then
        -- check the ip adress every x seconds (check the variable public_ip_refresh_rate)
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
    ring_anticlockwise(cpu_x, cpu_y, cputemp_radius, 3, cputemp_angle_begin, cputemp_angle_end, tmp, 95, color_frompercent(tonumber(tmp)))
    ring_anticlockwise(cpu_x, cpu_y, cpu1_radius+15, 5, cpu_angle_begin, cpu_angle_end, cpu, 100, color_frompercent(tonumber(cpu)))    -- total CPU
    ring_anticlockwise(cpu_x, cpu_y, cpu1_radius, 20, cpu_angle_begin, cpu_angle_end, cpu1, 100, color_frompercent(tonumber(cpu1)))
    ring_anticlockwise(cpu_x, cpu_y, cpu2_radius, 18, cpu_angle_begin, cpu_angle_end, cpu2, 100, color_frompercent(tonumber(cpu2)))
    ring_anticlockwise(cpu_x, cpu_y, cpu3_radius, 16, cpu_angle_begin, cpu_angle_end, cpu3, 100, color_frompercent(tonumber(cpu3)))
    ring_anticlockwise(cpu_x, cpu_y, cpu4_radius, 15, cpu_angle_begin, cpu_angle_end, cpu4, 100, color_frompercent(tonumber(cpu4)))

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
    local usedmem = "Usage: " .. memory() .. " / " .. memory_max()
    local usedmem = string.format("Usage: %s / %s (%s%s)", memory(), memory_max(), memperc, "%")

    ring_clockwise(mem_x, mem_y, mem_r, 18, 0, 320, memperc, 100, color_frompercent(tonumber(memperc)))
    ring_clockwise(mem_x, mem_y, mem_r-18, 14, 0, 320, swpperc, 100, color_frompercent(tonumber(swpperc)))
    write(memtext_x+20, memtext_y-110, "ram: " ..memperc .. "%", 12, main_text_color)
    write(memtext_x+20, memtext_y-85, "swap: " ..swpperc .. "%", 12, main_text_color)

    write(memtext_x, memtext_y, usedmem, 12, main_text_color)
    write_list_proccesses_mem(memtext_x+15, memtext_y+20, 20, 5, 12, main_text_color)
end


function draw_clock()
    local s = time_second()
    local m = time_minute()
    local h = time_hour24()
    local date = string.format("%s, %s %s, %s", time_day_short(), time_month_short(), time_day_number(), time_year())

    ring_clockwise(clock_x, clock_y, clock_r, clock_w/4, 60, 420, s, 59, main_fg)
    ring_clockwise(clock_x, clock_y, clock_r+7, clock_w/2, -60, 300, m, 59, main_fg)
    ring_clockwise(clock_x, clock_y, clock_r+18, clock_w, 0, 360, h, 23, main_fg)

    write_bold(clock_x-90, clock_y-10, h, clock_font_h, main_text_color)
    write(clock_x-10, clock_y+80, m, clock_font_m, main_text_color)
    write(clock_x-50, clock_y+10, date, 12, main_text_color)
    write(clock_x-50, clock_y+115, "Uptime: " .. uptime_short(), 11, main_text_color)
end


function draw_disks()
    local rt = fs_used_perc("/")
    local hm = fs_used_perc("/home")
    local rt_text = string.format("Root: %s / %s (%s)", fs_used("/"), fs_size("/"), fs_free("/"))
    local hm_text = string.format("Home: %s / %s (%s)", fs_used("/home"), fs_size("/home"), fs_free("/home"))

    ring_anticlockwise(dsk_x, dsk_y, dsk_r, dsk_thick, dsk_ang_begin, dsk_ang_end, rt, 100, color_frompercent(tonumber(rt)))
    ring_anticlockwise(dsk_x, dsk_y, dsk_r-22, dsk_thick, dsk_ang_begin, dsk_ang_end, hm, 100, color_frompercent(tonumber(hm)))

    write(dsk_x+45, dsk_y-dsk_r+10, rt_text, 11, main_text_color)
    write(dsk_x+40, dsk_y-dsk_r+35, hm_text, 11, main_text_color)

    local dsk_info = {
        "Read:  " .. diskio_read(""),
        "Write: " .. diskio_write(""),
    }
    write_line_by_line(dsk_x-40, dsk_y-10, 20, dsk_info, main_text_color, 12)

end


function draw_net()
    ring_clockwise(net_x, net_y, net_radius, 15, net_ang_begin, net_ang_end, download_speed_kb(), download_rate_maximum, main_fg)
    ring_clockwise(net_x, net_y, net_radius-18, 15, net_ang_begin, net_ang_end, upload_speed_kb(), upload_rate_maximum, main_fg)

    write(net_x-65, net_y-115, "▼ ".. download_speed(), 12, main_text_color)
    write(net_x-65, net_y-95, "▲ "..upload_speed(), 12, main_text_color)

    write(net_x-50, net_y, "Total ", 12, main_text_color)
    write(net_x, net_y-10, "▼".. download_total(), 12, main_text_color)
    write(net_x, net_y+10, "▲"..upload_total(), 12, main_text_color)

    local inf = {
        "SSID:           " .. string.sub(ssid(), 0, 15),
        "Wifi Signal:    " .. wifi_signal() .. "%",
        "Public IP:      " .. tostring(public_ip),
        "Local IP:       " .. local_ip(),
--         "Total Download: " .. download_total(),
--         "Total Upload:   " .. upload_total(),
    }
    write_line_by_line(net_x-350, net_y-60, 20, inf, main_text_color, 12)
end


function draw_battery()
    local bat = battery_percent()
    local bat1 = battery1_percent()
    local bat2 = battery2_percent()
    ring_anticlockwise(bat_x, bat_y, battery_radius, bat_w , bat_beg, bat_end, bat, 100, color_frompercent_reverse(tonumber(bat)))
    write(batperc_x-30, batperc_y+3, bat .. "%", 15, main_text_color)
    write(battitle_x, battitle_y, "Battery", 15, main_text_color)

    -- if has_second_battery then
        -- ring_anticlockwise(bat_x, bat_y, battery_radius-7, 1 , bat_beg-2, bat_end+2, bat1, 100, color_frompercent_reverse(tonumber(bat1)))
        -- ring_anticlockwise(bat_x, bat_y, battery_radius+7, 1 , bat_beg-2, bat_end+2, bat2, 100, color_frompercent_reverse(tonumber(bat2)))
    -- end
end


function draw_titles()
    write(cpu_x-20, cpu_y+80, "CPU", 18, main_text_color)
    write(net_x-35, net_y+80, "Internet", 15, main_text_color)
    write(memtext_x+60, memtext_y+170, "Memory", 18, main_text_color)
    write(dsk_x+100, dsk_y-dsk_r+130, "Hard Disk", 15, main_text_color)
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
