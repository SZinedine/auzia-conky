----------------------------------
-- Author:      Zineddine SAIBI
-- Software:    Auzia Conky
-- Type:        Conky Theme
-- Version:     0.1 (07 Sep 2021)
-- License:     GPL-3.0
-- repository:  https://www.github.com/SZinedine/auzia-conky
----------------------------------

require "cairo"
require 'imlib2'
require "settings"        -- variables to use


has_battery = conky_parse("${battery_percent}") ~= nil
has_second_battery = conky_parse("${battery_percent BAT1}") ~= nil


function image(x, y, file)
    if file == nil then return end

    local show = imlib_load_image(file)
    if show == nil then return end

    imlib_context_set_image(show)
    imlib_render_image_on_drawable(x, y)
    imlib_free_image()
    show = nil
end


function line(startx, starty, endx, endy, thick, color, alpha)
    cairo_set_line_width (cr, thick)
    cairo_set_line_cap  (cr, CAIRO_LINE_CAP_BUTT)
    cairo_set_source_rgba (cr, color_convert(color, alpha))
    cairo_move_to (cr, startx, starty)
    cairo_line_to (cr, endx, endy)
    cairo_stroke (cr)
end


function ring_clockwise(x, y, radius, thickness, angle_begin, angle_end, value_str, max_value, fg_color)
    local value = tonumber(value_str)
    if value > max_value then value = max_value end

    angle_begin = angle_begin * (2 * math.pi / 360) - (math.pi / 2)
    angle_end   = angle_end   * (2 * math.pi / 360) - (math.pi / 2)
    local progress = (value / max_value) * (angle_end - angle_begin)

    cairo_set_line_width (cr, thickness)
    cairo_set_source_rgba (cr, color_convert(main_bg, main_bg_alpha))
    cairo_arc (cr, x, y, radius, angle_begin, angle_end)
    cairo_stroke (cr)

    cairo_set_line_width (cr, thickness)
    cairo_set_source_rgba (cr, color_convert(fg_color, main_fg_alpha))
    cairo_arc(cr, x, y, radius, angle_begin, angle_begin + progress)
    cairo_stroke (cr)
end


function ring_anticlockwise(x, y, radius, thickness, angle_begin, angle_end, value_str, max_value, fg_color)
    local value = tonumber(value_str)
    if value > max_value then value = max_value end

    angle_begin = angle_begin * (2 * math.pi / 360) - (math.pi / 2)
    angle_end   = angle_end   * (2 * math.pi / 360) - (math.pi / 2)
    local progress = (value / max_value) * (angle_end - angle_begin)

    cairo_set_line_width (cr, thickness)
    cairo_set_source_rgba (cr, color_convert(main_bg, main_bg_alpha))
    cairo_arc_negative (cr, x, y, radius, angle_begin, angle_end)
    cairo_stroke (cr)

    cairo_set_line_width (cr, thickness)
    cairo_set_source_rgba (cr, color_convert(fg_color, main_fg_alpha))
    cairo_arc_negative (cr, x, y, radius, angle_begin, angle_begin + progress)
    cairo_stroke (cr)
end


function rectangle_leftright(x, y, len, thick, value_str, max_value, color)
    local value = tonumber(value_str)
    if value > max_value then value = max_value end

    cairo_set_source_rgba(cr, color_convert(main_bg, main_bg_alpha))
    cairo_rectangle(cr, x, y, len, thick)
    cairo_fill(cr)

    local progress = (len / max_value) * value
    cairo_set_source_rgba(cr, color_convert(color, main_fg_alpha))
    cairo_rectangle(cr, x, y, progress, thick)
    cairo_fill(cr)
end


function rectangle_rightleft(x, y, len, thick, value_str, max_value, color)
    rectangle_leftright(x, y, -len, thick, value_str, max_value, color)
end


function rectangle_bottomup(x, y, len, thick, value_str, max_value, color)
    local value = tonumber(value_str)
    if value > max_value then value = max_value end

    cairo_set_source_rgba(cr, color_convert(main_bg, main_bg_alpha))
    cairo_rectangle(cr, x, y, thick, -len)
    cairo_fill(cr)
    cairo_set_source_rgba(cr, color_convert(color, main_fg_alpha))

    local progress = (len / max_value) * value
    cairo_rectangle(cr, x, y, thick, -progress)
    cairo_fill(cr)
end


function rectangle_upbottom(x, y, len, thick, value_str, max_value, color)
    rectangle_bottomup(x, y, -len, thick, value_str, max_value, color)
end


function write(x, y, text, font_size, color)
    _write_(x, y, text, main_font, font_size, color, 1, CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_NORMAL)
end


function write_bold(x, y, text, font_size, color)
    -- convinience function to write in bold font
    _write_(x, y, text, main_font, font_size, color, 1, CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_BOLD)
end


function _write_(x, y, text, font_name, font_size, color, alpha, font_slant, font_face)
    cairo_select_font_face (cr, font_name, font_slant, font_face);
    cairo_set_font_size (cr, font_size)
    cairo_set_source_rgba (cr, color_convert(color, alpha))
    cairo_move_to (cr, x, y)
    cairo_show_text (cr, text)
    cairo_stroke (cr)
end

function discharging_battery()
    -- check if the battery is discharging or not
    if has_battery == false then return false end
    local bat0 = parse("battery BAT0")
    local bat1 = parse("battery BAT1")
    if bat0 ~= nil and string.match(bat0, "discharging") then return true end
    if bat1 ~= nil and string.match(bat1, "discharging") then return true end
    return false
end


function getProcessN(n)
    local name = parse("top name " .. n)
    local value = parse("top cpu " .. n)
    return name .. value .. "%"
end


function getMemoryN(n)
    local name = parse("top_mem name " .. n)
    local value = parse("top_mem mem_res " .. n)
    return name .. value
end


function write_list_proccesses_cpu(x, y, interval, nb_todisplay, font_size, color)
    local yy = y
    for i = 1, nb_todisplay do
        write(x, yy, getProcessN(i), font_size, color)
        yy = yy + interval
    end
end


function write_list_proccesses_mem(x, y, interval, nb_todisplay, font_size, color)
    local yy = y
    for i = 1, nb_todisplay do
        write(x, yy, getMemoryN(i), font_size, color)
        yy = yy + interval
    end
end


function write_line_by_line(x, y, interval, content_array, color, font_size, bold)
    if bold == nil then bold = false end
    local yy = y
    for i in pairs(content_array) do
        if bold then write_bold(x, yy, content_array[i], font_size, color)
        else         write(x, yy, content_array[i], font_size, color)
        end
        yy = yy + interval
    end
end


function parse(str)
    -- convinience function
    return conky_parse(string.format("${%s}", str))
end


function color_frompercent(percent)
    -- return a color according to the provided value
    percent = tonumber(percent)
    if     percent > threshold_critical   then return color_critical
    elseif percent > threshold_warning  then return color_warning
    else                                     return color_normal
    end
end


function color_frompercent_reverse(perc)
    -- for the battery
    percent = tonumber(percent)
    if      perc < battery_threshold_critical then return color_critical
    elseif  perc < battery_threshold_warning  then return color_warning
    else                                           return main_fg
    end
end


function color_convert(colour, alpha)
    -- input hexadecimal color code, returns its corresponding RGB+Alpha representation
	return ((colour / 0x10000) % 0x100) / 255., ((colour / 0x100) % 0x100) / 255., (colour % 0x100) / 255., alpha
end


-- Variable definitions to avoir repeating the same string concatenations
local _download_speed    = "downspeed " .. net_interface
local _download_speed_kb = "downspeedf " .. net_interface
local _download_total    = "totaldown " .. net_interface
local _upload_speed      = "upspeed " .. net_interface
local _upload_speed_kb   = "upspeedf " .. net_interface
local _upload_total      = "totalup " .. net_interface
local _ssid              = "wireless_essid " .. net_interface
local _wifi_signal       = "wireless_link_qual_perc " .. net_interface
local _local_ip          = "addr " .. net_interface

-- functions to fetch some important system info
-- for other variables, see: <http://conky.sourceforge.net/variables.html>
function updates()              return parse("updates") end
function kernel()               return parse("kernel") end              -- ex: 5.10.32-1-lts
function system_name()          return parse("sysname") end             -- ex: Linux
function arch()                 return parse("machine") end             -- ex: x86_64
function desktops()             return parse("desktop_number") end      -- total number of desktops
function desktop()              return parse("desktop") end             -- ex: 3 (current desktop)
function desktop_name()         return parse("desktop_name") end        -- ex: Desktop 3
function username()             return parse("user_names") end
function running_threads()      return parse("running_threads") end
function memory()               return parse("mem") end
function memory_percent()       return parse("memperc") end
function memory_max()           return parse("memmax") end
function memory_cached()        return parse("cached") end
function memory_buffers()       return parse("buffers") end
function swap()                 return parse("swap") end
function swap_max()             return parse("swapmax") end
function swap_percent()         return parse("swapperc") end
function download_speed()       return parse(_download_speed) end       -- ex: 930B or 3kb
function download_speed_kb()    return parse(_download_speed_kb) end    -- ex: 0.9  or 3.0
function download_total()       return parse(_download_total) end
function upload_speed()         return parse(_upload_speed) end       -- ex: 930B or 3kb
function upload_speed_kb()      return parse(_upload_speed_kb) end    -- ex: 0.9  or 3.0
function upload_total()         return parse(_upload_total) end
function ssid()                 return parse(_ssid) end
function wifi_signal()          return parse(_wifi_signal) end      -- value in %
function local_ip()             return parse(_local_ip) end
function uptime()               return parse("uptime") end          -- ex: 2d 13h 40m
function uptime_short()         return parse("uptime_short") end    -- ex: 2d 13h
function time_hrmin()           return parse("time %R") end     -- ex: 15:40
function time_hrminsec()        return parse("time %T") end     -- ex: 15:30:25
function time_hr12minsec()      return parse("time %R") end     -- ex: 03:30:25 PM
function time_hour24()          return parse("time %H") end     -- ex: 15
function time_hour12()          return parse("time %I") end     -- ex: 3
function time_minute()          return parse("time %M") end     -- ex: 30
function time_second()          return parse("time %S") end     -- ex: 25
function time_am_pm_upper()     return parse("time %p") end     -- ex: PM
function time_am_pm_lower()     return parse("time %P") end     -- ex: pm
function time_day()             return parse("time %A") end     -- ex: saturday
function time_day_short()       return parse("time %a") end     -- ex: sat
function time_day_number()      return parse("time %d") end     -- ex: 1
function time_month()           return parse("time %H") end     -- ex: january
function time_month_short()     return parse("time %h") end     -- ex: jan
function time_month_number()    return parse("time %m") end     -- ex: 1
function time_year()            return parse("time %Y") end     -- ex: 2021
function time_year_short()      return parse("time %y") end     -- ex: 21
function utime()                return parse("utime") end       -- UCT time -- ex: 2021-05-29 17:31:01
function diskio(device)         return parse("diskio " .. device) end    -- device ex: /dev/sda
function diskio_read(device)    return parse("diskio_read " .. device) end
function diskio_write(device)   return parse("diskio_write " .. device) end
function cpu_temperature()      return parse("acpitemp") end            -- temperature in C°
function battery1_percent()     return parse("battery_percent BAT0") end
function battery2_percent()     return parse("battery_percent BAT1") end
function battery_percent()
    if has_second_battery then
        local b0 = tonumber(battery1_percent())
        local b1 = tonumber(battery2_percent())
        return math.floor((b0 + b1)/2)
    else
        return tonumber(parse("battery_percent"))
    end
end
function cpu_percent(n)
    if n == nil or n == "" then return parse("cpu") end
    if n > 0 and n <= 8    then return parse("cpu cpu" .. n)
    else                        return nil end
end
function fs_used(fs)
    if fs == nil           then return nil
    else                        return parse("fs_used " .. fs)
    end
end
function fs_used_perc(fs)
    if fs == nil           then return nil
    else                        return parse("fs_used_perc " .. fs)
    end
end
function fs_size(fs)
    if fs == nil           then return nil
    else                        return parse("fs_size " .. fs)
    end
end
function fs_free_perc(fs)
    if fs == nil           then return nil
    else                        return parse("fs_free_perc " .. fs)
    end
end
function fs_free(fs)
    if fs == nil           then return nil
    else                        return parse("fs_free " .. fs)
    end
end
function fetch_public_ip()
    local po = io.popen("wget http://ipinfo.io/ip -qO -")
    local content = po:read("*a")
    if content == "" or content == nil then
        return "None"
    else
        return content
    end
end
