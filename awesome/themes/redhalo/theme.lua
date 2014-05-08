-- redhalo, awesome3 theme

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
themename     = "/redhalo"
if not awful.util.file_readable(themes .. themename .. "/theme.lua") then
       themes = sharedthemes
end
themedir      = themes .. themename

wallpaper1    = themedir .. "/background_3.jpg"
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

theme.font = "Lato 9"

--theme.fg_normal = "#bcbcbc"
theme.fg_normal = "#000000"
theme.fg_focus = "#000000"
theme.fg_urgent = "#262729"
--theme.fg_title = "#66d9ef"
theme.fg_title = "#34bdef"
theme.fg_disabled = "#0099CC"
theme.bg_normal = "#00262729"
theme.bg_focus = "#0099CC"
theme.bg_urgent = "#0099CC"
theme.bg_disabled = "#0099CC"
theme.bg_hover = "#0099CC"
theme.widget_fg_normal = "#000000"

theme.border_width = 1
theme.border_normal = "#505050"
theme.border_focus = "#5e7175" --#292929"
theme.border_marked = "#ce5666"

theme.menu_height                   = 20
theme.menu_width                    = 150
theme.menu_border_width             = "0"
theme.menu_fg_normal                = "#C2C2C2"
theme.menu_fg_focus                 = "#FFFFFF"
theme.menu_bg_normal                = "#303030"
theme.menu_bg_focus                 = "#0099CC"


--{{{ Taglist icons
theme.taglist_squares         = true
theme.taglist_squares_sel   = themedir .. "/taglist/squaref_a-red.png"
theme.taglist_squares_unsel = themedir .. "/taglist/squaref_b-green.png"
--}}}
--{{{ F-f-float
theme.tasklist_floating_icon = themedir .. "/layouts-huge/floating-greyish.png"
--}}}
-- {{{ Layout icons
theme.layout_tile           = themedir .. "/layouts-huge/tile-blue.png"
theme.layout_tileleft       = themedir .. "/layouts-huge/tileleft-blue.png"
theme.layout_tilebottom     = themedir .. "/layouts-huge/tilebottom-blue.png"
theme.layout_tiletop        = themedir .. "/layouts-huge/tiletop-blue.png"
theme.layout_fairv          = themedir .. "/layouts-huge/fairv-green.png"
theme.layout_fairh          = themedir .. "/layouts-huge/fairh-green.png"
theme.layout_spiral         = themedir .. "/layouts-huge/spiral-blue.png"
theme.layout_dwindle        = themedir .. "/layouts-huge/dwindle-red.png"
theme.layout_max            = themedir .. "/layouts-huge/max-green.png"
theme.layout_fullscreen     = themedir .. "/layouts-huge/fullscreen-blue.png"
theme.layout_magnifier      = themedir .. "/layouts-huge/magnifier-red.png"
theme.layout_floating       = themedir .. "/layouts-huge/floating-green.png"

theme.layout_uselesstile        = themedir .. "/layouts-huge/tile-blue.png"
theme.layout_uselesstileleft    = themedir .. "/layouts-huge/tileleft-blue.png"
theme.layout_uselesstilebottom  = themedir .. "/layouts-huge/tilebottom-blue.png"
theme.layout_uselesstiletop     = themedir .. "/layouts-huge/tiletop-blue.png"
theme.layout_uselessfairv       = themedir .. "/layouts-huge/fairv-green.png"
theme.layout_uselessfairh       = themedir .. "/layouts-huge/fairh-green.png"
theme.layout_centerwork         = themedir .. "/layouts-huge/centerwork-blue.png"
theme.layout_cascade            = themedir .. "/layouts-huge/cascade.png"
theme.layout_cascadebrowse      = themedir .. "/layouts-huge/cascadebrowse.png"

-- }}}

-- {{{ Titlebar icons
theme.titlebar_close_button_focus     = themedir .. "/titlebar/close_focus-darkbrown.png"
theme.titlebar_ontop_button_focus_active    = themedir .. "/titlebar/ontop_focus_active-darkbrown.png"
theme.titlebar_ontop_button_focus_inactive  = themedir .. "/titlebar/ontop_focus_inactive-darkbrown.png"
theme.titlebar_sticky_button_focus_active    = themedir .. "/titlebar/sticky_focus_active-darkbrown.png"
theme.titlebar_sticky_button_focus_inactive  = themedir .. "/titlebar/sticky_focus_inactive-darkbrown.png"
theme.titlebar_floating_button_focus_active    = themedir .. "/titlebar/floating_focus_active-darkbrown.png"
theme.titlebar_floating_button_focus_inactive  = themedir .. "/titlebar/floating_focus_inactive-darkbrown.png"
theme.titlebar_maximized_button_focus_active    = themedir .. "/titlebar/maximized_focus_active-darkbrown.png"
theme.titlebar_maximized_button_focus_inactive  = themedir .. "/titlebar/maximized_focus_inactive-darkbrown.png"

theme.titlebar_close_button_normal = themedir .. "/titlebar/close_normal-red.png"
theme.titlebar_ontop_button_normal_active   = themedir .. "/titlebar/ontop_normal_active-red.png"
theme.titlebar_ontop_button_normal_inactive = themedir .. "/titlebar/ontop_normal_inactive-green.png"
theme.titlebar_sticky_button_normal_active   = themedir .. "/titlebar/sticky_normal_active-green.png"
theme.titlebar_sticky_button_normal_inactive = themedir .. "/titlebar/sticky_normal_inactive-blue.png"
theme.titlebar_floating_button_normal_active   = themedir .. "/titlebar/floating_normal_active-red.png"
theme.titlebar_floating_button_normal_inactive = themedir .. "/titlebar/floating_normal_inactive-blue.png"
theme.titlebar_maximized_button_normal_active   = themedir .. "/titlebar/maximized_normal_active-red.png"
theme.titlebar_maximized_button_normal_inactive = themedir .. "/titlebar/maximized_normal_inactive-green.png"
-- }}}

theme.awesome_icon                  = themedir .. "/logo/awesome-red.png"

theme.widget_mpd                    = themedir .. "/icons/note.png"
theme.widget_temp                   = themedir .. "/icons/temp.png"
theme.widget_uptime                 = themedir .. "/icons/ac.png"
theme.widget_cpu                    = themedir .. "/icons/cpu.png"
theme.widget_mem                    = themedir .. "/icons/mem.png"
theme.widget_netdown                = themedir .. "/icons/net_down.png"
theme.widget_netup                  = themedir .. "/icons/net_up.png"
theme.widget_ac                     = themedir .. "/icons/ac.png"
theme.widget_bat_charge             = themedir .. "/icons/bat_charge.png"
theme.widget_bat                    = themedir .. "/icons/bat.png"
theme.widget_bat_med                = themedir .. "/icons/bat_med.png"
theme.widget_bat_half               = themedir .. "/icons/bat_half.png"
theme.widget_bat_low                = themedir .. "/icons/bat_low.png"
theme.widget_bat_empty              = themedir .. "/icons/battery_empty.png"
theme.widget_clock                  = themedir .. "/icons/clock.png"
theme.widget_vol                    = themedir .. "/icons/vol.png"
theme.widget_vol_med                = themedir .. "/icons/vol-med.png"
theme.widget_vol_low                = themedir .. "/icons/vol-low.png"
theme.widget_vol_no                 = themedir .. "/icons/vol-no.png"
theme.widget_vol_mute               = themedir .. "/icons/vol-mute.png"

-- lain related
theme.useless_gap_width             = 10

return theme
