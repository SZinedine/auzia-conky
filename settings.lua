require("colors")

--[[
possible values of THEME
    blue dark         blue light
    deepblue dark     deepblue light
    green dark        green light
    emerald dark      emerald light
    yellow  dark      yellow light
    purple dark       purple light
    violet dark       violet light
    crimson dark      crimson light
    maroon dark       maroon light
    pink dark         pink light
    cyan  dark        cyan light
    aquamarine dark   aquamarine light
    monochrome dark   monochrome light
    gruvbox  dark     gruvbox light
    contrast dark     contrast light
]]
THEME = "blue dark"     -- choose one of the above

--[[
waiting time before starting conky
this prevents issues when conky is launched at startup
]]
startup_delay = 5           -- secondes

--[[
change colors when a value exceeds defined thresholds
]]
change_color_on_threshold = true

--[[
CPU Cores (threads really)
valid values are: 0, 2, 4, 6, 8, 10, 12
]]
cpu_cores = 4

--[[
EDIT THIS to match your network interface.
You can find out by executing `ifconfig` or `ip link`.
It might be "wlan0", "eth0", "wlp3s0" or something else
]]
net_interface = "wlan0"

--[[
this depends on your own internet speed
]]
download_rate_maximum = 1000     -- kb
upload_rate_maximum   = 1000     -- kb

--[[
This is the default font used in write() if no other is provided
]]
main_font = "Mono"

--[[
the public ip is fetched from the internet.
There is no need to refresh it every second like the other values

WARNING: this feature exploits third party services,
therefore we cannot garantee your privacy if you turn it on
]]
use_public_ip = false
public_ip_refresh_rate = 60     -- secondes

----------------------------------------------

colors = get_color_table(THEME)

if change_color_on_threshold == false then
    colors.warn  = colors.fg
    colors.critic = colors.fg
end

-- threshold variables are used to change the colors of the indicators
-- by using the functions color_frompercent(perc) and color_frompercent_reverse(perc)
threshold_warning          = 60
threshold_critical         = 80
battery_threshold_warning  = 30
battery_threshold_critical = 18

