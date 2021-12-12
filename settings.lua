
--[[
possible values of THEME
    monochrome dark   monochrome light
    blue dark         blue light
    green dark        green light
    yellow  dark      yellow light
    purple dark       purple light
    cyan  dark        cyan light
]]
THEME = "blue dark"     -- choose one of the above

--[[
waiting time before starting conky
this prevents issues when conky is launched at startup
]]
time_before_start = 5           -- secondes

--[[
change colors when a value exceeds defined thresholds
]]
use_warning_color  = true
use_critical_color = true

--[[
CPU Cores (threads really)
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
Default font used by the convinient functions like write() and write_bold()
You can use _write() to choose another font
]]
main_font = "Mono"

--[[
the public ip is fetched from the internet.
There is no need to refresh it every second like the other values
advice: use the variable public_ip instead of the function public_ip()
which is called every `public_ip_refresh_rate` secondes
]]
use_public_ip = true
public_ip_refresh_rate = 60     -- secondes
public_ip = nil

----------------------------------------------

if THEME == "monochrome dark" then
    color0 = 0x484848   -- background of widgets
    color1 = 0xDEDEDE   -- foreground of widgets (main color of progression bars)
    color2 = 0x1D1D1D   -- second color
    color3 = color1     -- foreground modifier: warning color
    color4 = 0xFF0000   -- foreground modifier: critical color
    color5 = 0xDEDEDE   -- text color
elseif THEME == "monochrome light" then
    color0 = 0x252525   -- background of widgets
    color1 = 0x151515   -- foreground of widgets (main color of progression bars)
    color2 = 0x1D1D1D   -- second color
    color3 = color1     -- foreground modifier: warning color
    color4 = 0xFF0000   -- foreground modifier: critical color
    color5 = 0x1D1D1D   -- text color

elseif THEME == "blue dark" then
    color0 = 0xA6A6A6   -- background of widgets
    color1 = 0x5594FF   -- foreground of widgets (main color of progression bars)
    color2 = 0x1D1D1D   -- second color
    color3 = 0xFF9000   -- foreground modifier: warning color
    color4 = 0xFF0000   -- foreground modifier: critical color
    color5 = 0xD1CDD5   -- text color
elseif THEME == "blue light" then
    color0 = 0x252525   -- background of widgets
    color1 = 0x3A83FF   -- foreground of widgets (main color of progression bars)
    color2 = 0x1D1D1D   -- second color
    color3 = 0xFF9000   -- foreground modifier: warning color
    color4 = 0xFF0000   -- foreground modifier: critical color
    color5 = 0x1D1D1D   -- text color

elseif THEME == "green dark" then
    color0 = 0xA6A6A6   -- background of widgets
    color1 = 0x35BF5C   -- foreground of widgets (main color of progression bars)
    color2 = 0x1D1D1D   -- second color
    color3 = 0xFF9000   -- foreground modifier: warning color
    color4 = 0xFF0000   -- foreground modifier: critical color
    color5 = 0xD1CDD5   -- text color
elseif THEME == "green light" then
    color0 = 0x252525   -- background of widgets
    color1 = 0x35BF5C   -- foreground of widgets (main color of progression bars)
    color2 = 0x1D1D1D   -- second color
    color3 = 0xFF9000   -- foreground modifier: warning color
    color4 = 0xFF0000   -- foreground modifier: critical color
    color5 = 0x1D1D1D   -- text color

elseif THEME == "yellow dark" then
    color0 = 0xA6A6A6   -- background of widgets
    color1 = 0xFFF84A   -- foreground of widgets (main color of progression bars)
    color2 = 0x1D1D1D   -- second color
    color3 = 0xFF9000   -- foreground modifier: warning color
    color4 = 0xFF0000   -- foreground modifier: critical color
    color5 = 0xD1CDD5   -- text color
elseif THEME == "yellow light" then
    color0 = 0x252525   -- background of widgets
    color1 = 0xCBC200   -- foreground of widgets (main color of progression bars)
    color2 = 0x1D1D1D   -- second color
    color3 = 0xFF9000   -- foreground modifier: warning color
    color4 = 0xFF0000   -- foreground modifier: critical color
    color5 = 0x1D1D1D   -- text color

elseif THEME == "purple dark" then
    color0 = 0xA6A6A6   -- background of widgets
    color1 = 0xFF5FD0   -- foreground of widgets (main color of progression bars)
    color2 = 0x1D1D1D   -- second color
    color3 = 0xFF9000   -- foreground modifier: warning color
    color4 = 0xFF0000   -- foreground modifier: critical color
    color5 = 0xD1CDD5   -- text color
elseif THEME == "purple light" then
    color0 = 0x252525   -- background of widgets
    color1 = 0xD30095   -- foreground of widgets (main color of progression bars)
    color2 = 0x1D1D1D   -- second color
    color3 = 0xFF9000   -- foreground modifier: warning color
    color4 = 0xFF0000   -- foreground modifier: critical color
    color5 = 0x1D1D1D   -- text color

elseif THEME == "cyan dark" then
    color0 = 0xA6A6A6   -- background of widgets
    color1 = 0x48FFE7   -- foreground of widgets (main color of progression bars)
    color2 = 0x1D1D1D   -- second color
    color3 = 0xFF9000   -- foreground modifier: warning color
    color4 = 0xFF0000   -- foreground modifier: critical color
    color5 = 0xD1CDD5   -- text color
elseif THEME == "cyan light" then
    color0 = 0x252525   -- background of widgets
    color1 = 0x00C9AF   -- foreground of widgets (main color of progression bars)
    color2 = 0x1D1D1D   -- second color
    color3 = 0xFF9000   -- foreground modifier: warning color
    color4 = 0xFF0000   -- foreground modifier: critical color
    color5 = 0x1D1D1D   -- text color

elseif THEME == "gruvbox dark" then
    color0 = 0x282828   -- background of widgets
    color1 = 0xebdbb2   -- foreground of widgets (main color of progression bars)
    color2 = 0xebdbb2   -- second color
    color3 = 0xfe8019   -- foreground modifier: warning color
    color4 = 0xcc241d   -- foreground modifier: critical color
    color5 = 0xfbf1c7   -- text color
elseif THEME == "gruvbox light" then
    color0 = 0xfbf1c7   -- background of widgets
    color1 = 0x3c3836   -- foreground of widgets (main color of progression bars)
    color2 = 0x3c3836   -- second color
    color3 = 0xd65D0E   -- foreground modifier: warning color
    color4 = 0xcc241D   -- foreground modifier: critical color
    color5 = 0x282828   -- text color

else
    color0 = nil        -- background of widgets
    color1 = nil        -- foreground of widgets (main color of progression bars)
    color2 = nil        -- second color
    color3 = nil        -- foreground modifier: warning color
    color4 = nil        -- foreground modifier: critical color
    color5 = nil        -- text color
end


-- check if the colors are defined.
colors_defined = color0 ~= nil and color1 ~= nil and color2 ~= nil and color3 ~= nil and color4~= nil and color5 ~= nil

-- unified background (bg) and foreground (fg) transparency (alpha)
main_bg_alpha   = 0.2
main_fg_alpha   = 0.8
main_bg         = color0
main_fg         = color1
main_text_color = color5

-- threshold variables are used to change the colors of the indicators
-- by using the functions color_frompercent(perc) and color_frompercent_reverse(perc)
threshold_warning          = 60
threshold_critical         = 80
battery_threshold_warning  = 30
battery_threshold_critical = 18

color_normal               = main_fg
color_warning              = nil
color_critical             = nil

if use_warning_color then color_warning = color3
else color_warning = color3
end

if use_critical_color then color_critical = color4
else color_critical = color_warning
end

