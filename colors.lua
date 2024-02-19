local dark_text_color  = 0xD1CDD5
local light_text_color = 0x1D1D1D


-- convenience function to create a color obect
---@param bg        number          background color
---@param fg        number          foreground color
---@param text      number          text color
---@param warn      number?         foreground warning threashold color. default to orange
---@param critic    number?         foreground critical threashold color. default to red
---@param bg_alpha  number?         background alpha. defaults to 0.2
---@param fg_alpha  number?         foreground alpha. defaults to 0.8
---@return table
local function build_color(bg, fg, text, warn, critic, bg_alpha, fg_alpha)
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


--- @type table
local C = {
    blue_dark        = build_color(0xA6A6A6, 0x5594FF, dark_text_color),
    blue_light       = build_color(0x252525, 0x151515, light_text_color),
    deepblue_dark    = build_color(0xA6A6A6, 0x0000a8, 0x55ffff, nil, nil, 0.1),
    deepblue_light   = build_color(0x180047, 0x00008B, 0x180047, nil, nil, 0.1),
    green_dark       = build_color(0xA6A6A6, 0x00ff00, dark_text_color),
    green_light      = build_color(0x252525, 0x00ff00, light_text_color),
    emerald_dark     = build_color(0xD3FACD, 0x539950, 0xD3FACD, nil, nil, 0.1),
    emerald_light    = build_color(0x8bff85, 0x3f753d, 0x1a3019, nil, nil, 0.1),
    yellow_dark      = build_color(0xA6A6A6, 0xfafa37, dark_text_color),
    yellow_light     = build_color(0x252525, 0xfdff00, light_text_color),
    purple_dark      = build_color(0xA6A6A6, 0xbc00bc, dark_text_color),
    purple_light     = build_color(0x252525, 0x800080, light_text_color),
    violet_dark      = build_color(0xA6A6A6, 0x7028E5, dark_text_color),
    violet_light     = build_color(0x252525, 0x5329AE, light_text_color),
    crimson_dark     = build_color(0xA6A6A6, 0xdc143c, dark_text_color),
    crimson_light    = build_color(0x252525, 0xd11339, light_text_color),
    orange_dark      = build_color(0xA6A6A6, 0xffa500, dark_text_color, 0xff4f00),
    orange_light     = build_color(0x252525, 0xffa500, light_text_color, 0xff4f00),
    maroon_dark      = build_color(0xA6A6A6, 0xae0000, dark_text_color),
    maroon_light     = build_color(0x252525, 0x940000, light_text_color),
    pink_dark        = build_color(0xffccdd, 0xff3377, 0xffccdd),
    pink_light       = build_color(0xffccdd, 0xff3377, 0xff0055),
    cyan_dark        = build_color(0xA6A6A6, 0x48FFE7, dark_text_color),
    cyan_light       = build_color(0x252525, 0x00C9AF, light_text_color),
    aquamarine_dark  = build_color(0xA6A6A6, 0x76EDC3, dark_text_color),
    aquamarine_light = build_color(0x252525, 0x64C8A5, light_text_color),
    monochrome_dark  = build_color(0x484848, 0xDEDEDE, 0xDEDEDE, 0xFF0000, 0xDEDEDE),
    monochrome_light = build_color(0x252525, 0x151515, 0x151515, 0xFF0000, 0x1D1D1D),
    gruvbox_dark     = build_color(0x282828, 0xEBDBB2, 0xFBF1C7, 0xFE8019, 0xCC241D),
    gruvbox_light    = build_color(0xFBF1C7, 0x3C3836, 0x282828, 0xD65D0E, 0xCC241D),
    contrast_dark    = build_color(0x000000, 0xffffff, 0xffffff, 0xf36910, 0xFF0000, 0.5, 1),
    contrast_light   = build_color(0xffffff, 0x000000, 0x000000, 0xf36910, 0xFF0000, 0.3, 1)
}


---@param theme string
---@return table<string>
function get_color_table(theme)
    if type(theme) ~= "string" then
        io.stderr:write("No theme provided. Defaulting to blue dark")
        return C.blue.dark
    end

    local theme_ = string.gsub(string.lower(theme), " ", "_")
    theme_obj = C[theme_]
    print("current theme: " .. theme_)

    if theme_obj == nil then
        io.stderr:write("ERROR.'" .. theme_ .. "' the provided theme does not exist. Defaulting to 'blue dark'")
        return C["blue_dark"]
    else
        return theme_obj
    end
end

