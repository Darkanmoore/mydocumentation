-- fhuizing, awesome3 theme, by fhuizing

--{{{ Main
local awful = require("awful")
awful.util = require("awful.util")

theme = {}

home          = os.getenv("HOME")
config        = awful.util.getdir("config")
shared        = "/usr/share/awesome"
if not awful.util.file_readable(shared .. "/icons/awesome16.png") then
    shared    = "/usr/share/local/awesome"
end
sharedicons   = shared .. "/icons"
sharedthemes  = shared .. "/themes"
themes        = config .. "/themes"
themename     = "/fhuizing"
if not awful.util.file_readable(themes .. themename .. "/theme.lua") then
       themes = sharedthemes
end
themedir      = themes .. themename

wallpaper1    = themedir .. "/background.jpg"
wallpaper2    = themedir .. "/background.png"
wallpaper3    = sharedthemes .. "/zenburn/zenburn-background.png"
wallpaper4    = sharedthemes .. "/default/background.png"
wpscript      = home .. "/.wallpaper"

if awful.util.file_readable(wallpaper1) then
  theme.wallpaper = wallpaper1
elseif awful.util.file_readable(wallpaper2) then
  theme.wallpaper = wallpaper2
elseif awful.util.file_readable(wpscript) then
  theme.wallpaper_cmd = { "sh " .. wpscript }
elseif awful.util.file_readable(wallpaper3) then
  theme.wallpaper = wallpaper3
else
  theme.wallpaper = wallpaper4
end
--}}}

theme.font          = "terminus 8"

theme.bg_normal     = "#222222"
theme.bg_focus      = "#ffa000"
theme.bg_urgent     = "#ff0000"

theme.fg_normal     = "#cacaca"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"

theme.border_width  = 2
theme.border_normal = "#553600"
theme.border_focus  = "#ca8e00"
theme.border_marked = "#91231c"

theme.taglist_squares = true

theme.menu_submenu_icon             = theme.confdir .. "/icons/submenu.png"
theme.widget_temp                   = theme.confdir .. "/icons/temp.png"
theme.widget_uptime                 = theme.confdir .. "/icons/ac.png"
theme.widget_cpu                    = theme.confdir .. "/icons/cpu.png"
theme.widget_mem                    = theme.confdir .. "/icons/mem.png"
theme.widget_netdown                = theme.confdir .. "/icons/net_down.png"
theme.widget_netup                  = theme.confdir .. "/icons/net_up.png"
theme.widget_ac                     = theme.confdir .. "/icons/ac.png"
theme.widget_bat_charge             = theme.confdir .. "/icons/bat_charge.png"
theme.widget_bat                    = theme.confdir .. "/icons/bat.png"
theme.widget_bat_med                = theme.confdir .. "/icons/bat_med.png"
theme.widget_bat_half               = theme.confdir .. "/icons/bat_half.png"
theme.widget_bat_low                = theme.confdir .. "/icons/bat_low.png"
theme.widget_bat_empty              = theme.confdir .. "/icons/battery_empty.png"
theme.widget_clock                  = theme.confdir .. "/icons/clock.png"
theme.widget_vol                    = theme.confdir .. "/icons/vol.png"
theme.widget_vol_med                = theme.confdir .. "/icons/vol-med.png"
theme.widget_vol_low                = theme.confdir .. "/icons/vol-low.png"
theme.widget_vol_no                 = theme.confdir .. "/icons/vol-no.png"
theme.widget_vol_mute               = theme.confdir .. "/icons/vol-mute.png"

return theme
