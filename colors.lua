local dark_text_color = 0xD1CDD5
local light_text_color = 0x1D1D1D

local dark_or_light = "dark" -- dark / light

function build_color(bg, fg, text, warn, critic, bg_alpha, fg_alpha)
    return {
        bg       = bg,
        fg       = fg,
        text     = text,
        warn     = warn or 0xFF9000,
        critic   = critic or 0xFF0000,
        bg_alpha = bg_alpha or 0.2,
        fg_alpha = fg_alpha or 0.8,
    }
end

C = {
    blue = {
        dark  = build_color(0xA6A6A6, 0x5594FF, dark_text_color),
        light = build_color(0x252525, 0x151515, light_text_color),
    },
    deepblue = {
        dark  = build_color(0xA6A6A6, 0x0000a8, 0x55ffff, nil, nil, 0.1),
        light = build_color(0x180047, 0x00008B, 0x180047, nil, nil, 0.1),
    },
    green = {
        dark  = build_color(0xA6A6A6, 0x00ff00, dark_text_color),
        light = build_color(0x252525, 0x00ff00, light_text_color),
    },
    emerald = {
        dark  = build_color(0xD3FACD, 0x539950, 0xD3FACD, nil, nil, 0.1),
        light = build_color(0x8bff85, 0x3f753d, 0x1a3019, nil, nil, 0.1),
    },
    yellow = {
        dark  = build_color(0xA6A6A6, 0xfafa37, dark_text_color),
        light = build_color(0x252525, 0xfdff00, light_text_color),
    },
    purple = {
        dark  = build_color(0xA6A6A6, 0xbc00bc, dark_text_color),
        light = build_color(0x252525, 0x800080, light_text_color),
    },
    violet = {
        dark  = build_color(0xA6A6A6, 0x7028E5, dark_text_color),
        light = build_color(0x252525, 0x5329AE, light_text_color),
    },
    crimson = {
        dark  = build_color(0xA6A6A6, 0xdc143c, dark_text_color),
        light = build_color(0x252525, 0xd11339, light_text_color),
    },
    orange = {
        dark  = build_color(0xA6A6A6, 0xffa500, dark_text_color, 0xff4f00),
        light = build_color(0x252525, 0xffa500, light_text_color, 0xff4f00),
    },
    maroon = {
        dark  = build_color(0xA6A6A6, 0xae0000, dark_text_color),
        light = build_color(0x252525, 0x940000, light_text_color),
    },
    pink = {
        dark  = build_color(0xffccdd, 0xff3377, 0xffccdd),
        light = build_color(0xffccdd, 0xff3377, 0xff0055),
    },
    cyan = {
        dark  = build_color(0xA6A6A6, 0x48FFE7, dark_text_color),
        light = build_color(0x252525, 0x00C9AF, light_text_color),
    },
    aquamarine = {
        dark  = build_color(0xA6A6A6, 0x76EDC3, dark_text_color),
        light = build_color(0x252525, 0x64C8A5, light_text_color),
    },
    monochrome = {
        dark  = build_color(0x484848, 0xDEDEDE, 0xDEDEDE, 0xFF0000, 0xDEDEDE),
        light = build_color(0x252525, 0x151515, 0x151515, 0xFF0000, 0x1D1D1D)
    },
    gruvbox = {
        dark  = build_color(0x282828, 0xEBDBB2, 0xFBF1C7, 0xFE8019, 0xCC241D),
        light = build_color(0xFBF1C7, 0x3C3836, 0x282828, 0xD65D0E, 0xCC241D),
    },
    contrast = {
        dark  = build_color(0x000000, 0xffffff, 0xffffff, 0xf36910, 0xFF0000, 0.5, 1),
        light = build_color(0xffffff, 0x000000, 0x000000, 0xf36910, 0xFF0000, 0.3, 1)
    },
}



function choose_random_theme()
    dark_themes = dark_themes or {}
    light_themes = dark_themes or {}

    if #dark_themes == 0 and #light_themes == 0 then
        for _, v in pairs(C) do
            for kk, vv in pairs(v) do
                if kk == "dark" then
                    dark_themes[#dark_themes + 1] = vv
                elseif kk == "light" then
                    light_themes[#dark_themes + 1] = vv
                end
            end
        end
    end

    if dark_or_light == "dark" then
        return dark_themes[math.random(#dark_themes)]
    end

    return light_themes[math.random(#light_themes)]
end


function get_color_table(theme)
    if type(theme) ~= "string" then
        io.stderr:write("No theme provided. Defaulting to blue dark")
        return C.blue.dark
    end

    theme = string.lower(theme)

    if string.find(theme, "light") then
        dark_or_light = "light"
    else
        dark_or_light = "dark"
    end

    if theme == "monochrome dark" then
        return C.monochrome.dark
    elseif theme == "monochrome light" then
        return C.monochrome.light
    elseif theme == "blue dark" then
        return C.blue.dark
    elseif theme == "blue light" then
        return C.blue.light
    elseif theme == "deepblue dark" then
        return C.deepblue.dark
    elseif theme == "deepblue light" then
        return C.deepblue.light
    elseif theme == "green dark" then
        return C.green.dark
    elseif theme == "green light" then
        return C.green.light
    elseif theme == "emerald dark" then
        return C.emerald.dark
    elseif theme == "emerald light" then
        return C.emerald.light
    elseif theme == "yellow dark" then
        return C.yellow.dark
    elseif theme == "yellow light" then
        return C.yellow.light
    elseif theme == "purple dark" then
        return C.purple.dark
    elseif theme == "purple light" then
        return C.purple.light
    elseif theme == "violet dark" then
        return C.violet.dark
    elseif theme == "violet light" then
        return C.violet.light
    elseif theme == "crimson dark" then
        return C.crimson.dark
    elseif theme == "crimson light" then
        return C.crimson.light
    elseif theme == "orange dark" then
        return C.orange.dark
    elseif theme == "orange light" then
        return C.orange.light
    elseif theme == "maroon dark" then
        return C.maroon.dark
    elseif theme == "maroon light" then
        return C.maroon.light
    elseif theme == "pink dark" then
        return C.pink.dark
    elseif theme == "pink light" then
        return C.pink.light
    elseif theme == "cyan dark" then
        return C.cyan.dark
    elseif theme == "cyan light" then
        return C.cyan.light
    elseif theme == "aquamarine dark" then
        return C.aquamarine.dark
    elseif theme == "aquamarine light" then
        return C.aquamarine.light
    elseif theme == "gruvbox dark" then
        return C.gruvbox.dark
    elseif theme == "gruvbox light" then
        return C.gruvbox.light
    elseif theme == "contrast dark" then
        return C.contrast.dark
    elseif theme == "contrast light" then
        return C.contrast.light
    else
        io.stderr:write("ERROR. the provided theme does not exist. Defaulting to 'blue dark")
        return C.blue.dark
    end
end
