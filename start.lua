----------------------------------
-- Author:      Zineddine SAIBI
-- Software:    Auzia Conky
-- Type:        Conky Theme
-- Version:     0.4
-- License:     GPL-3.0
-- repository:  https://www.github.com/SZinedine/auzia-conky
----------------------------------
require("abstract")

local S = require("rc/gauge")
local to_draw_titles = true

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
    else val = cpu_temperature_sensors()
    end

    ring_anticlockwise(S.cpu.x, S.cpu.y, coreN.radius, coreN.thickness, coreN.begin_angle, coreN.end_angle, val, coreN.max_value, color_frompercent(tonumber(val)))

    if coreN.text ~= nil then
        write(coreN.text.x, coreN.text.y, val .. coreN.text.post_particle, 12, colors.text)
    end
end


function draw_cpu()
    for i in pairs(ncores) do
        draw_single_cpu_core(ncores[i])
    end

    write_list_proccesses_cpu(160, 147, 20, 4, 12, colors.text)
end


function draw_memory()
    local memperc = memory_percent()
    local swpperc = swap_percent()
    local usedmem = string.format("Usage: %s / %s (%s%s)", memory(), memory_max(), memperc, "%")

    ring_clockwise(S.mem.x, S.mem.y, S.mem.radius, 18, 0, 320, memperc, 100, color_frompercent(tonumber(memperc)))
    ring_clockwise(S.mem.x, S.mem.y, S.mem.radius-18, 14, 0, 320, swpperc, 100, color_frompercent(tonumber(swpperc)))
    write(S.mem.text.indicators.x, S.mem.text.indicators.y, "ram: " ..memperc .. "%", 12, colors.text)
    write(S.mem.text.indicators.x, S.mem.text.indicators.y+22, "swap: " ..swpperc .. "%", 12, colors.text)

    write(S.mem.text.process_title.x, S.mem.text.process_title.y, usedmem, 12, colors.text)
    write_list_proccesses_mem(S.mem.text.processes.x, S.mem.text.processes.y, 20, 5, 12, colors.text)
end


function draw_clock()
    local s = time_second()
    local m = time_minute()
    local h = time_hour24()
    local date = string.format("%s, %s %s, %s", time_day_short(), time_month_short(), time_day_number(), time_year())

    ring_clockwise(S.clock.x, S.clock.y, S.clock.radius, S.clock.width/4, 60, 420, s, 59, colors.fg)
    ring_clockwise(S.clock.x, S.clock.y, S.clock.radius+7, S.clock.width/2, -60, 300, m, 59, colors.fg)
    ring_clockwise(S.clock.x, S.clock.y, S.clock.radius+18, S.clock.width, 0, 360, h, 23, colors.fg)

    write_bold(S.clock.hr.x, S.clock.hr.y, h, S.clock.font_height, colors.text)
    write(S.clock.mn.x, S.clock.mn.y, m, S.clock.font_m, colors.text)
    write(S.clock.dt.x, S.clock.dt.y, date, 12, colors.text)
    write(S.clock.ut.x, S.clock.ut.y, "Uptime: " .. uptime_short(), 11, colors.text)
end


function draw_disks()
    local rt = fs_used_perc("/")
    local hm = fs_used_perc("/home")
    local rt_text = string.format("Root: %s / %s (%s)", fs_used("/"), fs_size("/"), fs_free("/"))
    local hm_text = string.format("Home: %s / %s (%s)", fs_used("/home"), fs_size("/home"), fs_free("/home"))

    ring_anticlockwise(S.disk.x, S.disk.y, S.disk.radius, S.disk.thickness, S.disk.begin_angle, S.disk.end_angle, rt, 100, color_frompercent(tonumber(rt)))
    ring_anticlockwise(S.disk.x, S.disk.y, S.disk.radius-22, S.disk.thickness, S.disk.begin_angle, S.disk.end_angle, hm, 100, color_frompercent(tonumber(hm)))

    write(S.disk.x+45, S.disk.y-S.disk.radius+10, rt_text, 11, colors.text)
    write(S.disk.x+40, S.disk.y-S.disk.radius+35, hm_text, 11, colors.text)

    local dsk_info = {
        "Read:  " .. diskio_read(""),
        "Write: " .. diskio_write(""),
    }
    write_line_by_line(S.disk.x-40, S.disk.y-10, 20, dsk_info, colors.text, 12)

end


function draw_net()
    ring_clockwise(S.net.x, S.net.y, S.net.radius, 15, S.net.begin_angle, S.net.end_angle, download_speed_kb(), download_rate_maximum, colors.fg)
    ring_clockwise(S.net.x, S.net.y, S.net.radius-18, 15, S.net.begin_angle, S.net.end_angle, upload_speed_kb(), upload_rate_maximum, colors.fg)

    write(S.net.indicators.down.x, S.net.indicators.down.y, "▼ ".. download_speed(), 12, colors.text)
    write(S.net.indicators.up.x, S.net.indicators.up.y, "▲ "..upload_speed(), 12, colors.text)

    write(S.net.total.down.x-50, S.net.y, "Total ", 12, colors.text)
    write(S.net.total.down.x, S.net.total.down.y, "▼".. download_total(), 12, colors.text)
    write(S.net.total.up.x, S.net.total.up.y, "▲"..upload_total(), 12, colors.text)

    local inf = {}
    table.insert(inf, "SSID: " .. string.sub(ssid(), 0, 15))
    table.insert(inf, "Wifi Signal:    " .. wifi_signal() .. "%")
    table.insert(inf, "Local IP:       " .. local_ip())
    if use_public_ip then
        if get_public_ip == nil or (updates()%public_ip_refresh_rate) == 0 then
            update_public_ip()
        end
        table.insert(inf, "Public IP:      " .. get_public_ip())
    end
    write_line_by_line(S.net.list.x, S.net.list.y, 20, inf, colors.text, 12)
end


function draw_battery()
    if not has_battery then return end
    if not initialized_battery and tonumber(updates()) > startup_delay + 6  then
        init_battery()
    end
    local bat = battery_percent()
    ring_anticlockwise(S.battery.x, S.battery.y, S.battery.radius, S.battery.width , S.battery.begin, S.battery.end_, bat, 100, color_frompercent_reverse(tonumber(bat)))
    write(S.battery.text.perc.x, S.battery.text.perc.y, bat .. "%", 15, colors.text)
    write(S.battery.text.title.x, S.battery.text.title.y, "Battery", 15, colors.text)
end


function draw_titles()
    if not to_draw_titles then return end
    write(180, 270, "CPU", 18, colors.text)
    write(325, S.net.y+80, "Internet", 15, colors.text)
    write(S.mem.text.ring_title.x, S.mem.text.ring_title.y, "Memory", 18, colors.text)
    write(S.disk.x+100, S.disk.y-S.disk.radius+130, "Hard Disk", 15, colors.text)
end


function conky_main()
    if conky_window == nil then
        return
    elseif colors == nil then
        io.stderr:write("Fatal Error. Please define a theme")
    end

    local updates_ = tonumber(updates())
    if initialized_battery == false and updates_ > startup_delay  then
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

