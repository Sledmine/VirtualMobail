------------------------------------------------------------------------------
-- Color list
-- Author: Sledmine
-- Standard application colors
------------------------------------------------------------------------------
local color = require("lua-color-converter")

local colors = {}

colors.composed = {
    white = {
        default = {color.hex("#FFFFFF")},
        over = {color.hex("#e8e8e8")},
    },
    green = {
        default = {color.hex("#00796B")},
        over = {color.hex("#004D40")},
    },
    orange = {
        default = {color.hex("#cc9600")},
        over = {color.hex("#8f6900")},
    },
    hope = {
        default = {color.hex("#EEEEEE")},
        over = {color.hex("#E0E0E0")},
    },
}

colors.plain = {
    white = "#fafafa",
    gray = "#263238",
}

return colors
