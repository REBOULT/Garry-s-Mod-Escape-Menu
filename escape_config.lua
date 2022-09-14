-- Community Name
ESC.cfg.Community = "Incredible SandBox (C) 2022"
-- Default Theme
ESC.cfg.DefaultTheme = "clear"

-- Follow player, map position, or none
-- To get the map position, type esc_getpos into console, and paste that over the ESC.cfg.Background
-- Player: ESC.cfg.Background = true
-- Map Position ESC.cfg.Background = { Vector, Angle }
-- None: ESC.cfg.Background = false
ESC.cfg.Background = true

-- Align buttons to the center vertically credorp?
ESC.cfg.CenterButtons = true

-- Add a snow effect to the menu?  Shoutout Moat
-- Clients can disable it by typing enable_snoweffect 0 in their console
ESC.cfg.Snow = true

ESC.cfg.Themes[ "dark" ] = {
    Base = Color( 35, 35, 35,160 ),
    PlayerBox = Color( 45, 45, 45 ),
    Text = Color( 230, 230, 230 ),
    TextSecondary = Color( 120, 120, 120 ),
    Accent = Color( 0, 178, 238 ),
    TabColor = Color( 0, 0, 0, 0 ),
    Background = Color( 0, 0, 0, 0 ),
    Blur = true,
    BlackAndWhite = true,
    FadeTime = .5
}

ESC.cfg.Themes[ "clear" ] = {
    Base = Color( 35, 35, 35, 160 ),
    PlayerBox = Color( 45, 45, 45, 150 ),
    Text = Color( 230, 230, 230 ),
    TextSecondary = Color( 232, 76, 82, 100 ),
    Accent = Color( 232, 76, 82, 100 ),
    TabColor = Color( 0, 0, 0, 0 ),
    Background = Color( 0, 0, 0, 00 ),
    Blur = true,
    BlackAndWhite = false,
    FadeTime = .5
}

---ESC.AddButton( "Наш форум", function()
---    ESC.OpenURL "https://incrediblesbox.noclip.me/"
---end )

--ESC.AddButton( "Site", function()
--    ESC.OpenURL "http://frenchgames.mtxserv.fr/"
--end )

--ESC.AddButton( "Группа стим", function()
--    ESC.OpenURL "https://steamcommunity.com/groups/incsbox"
--end )

--ESC.AddButton( "Workshop", function()
--    ESC.OpenURL "http://steamcommunity.com/sharedfiles/filedetails/?id=948762731"
--end )

--ESC.AddButton( "Boutique", function()
--    ESC.OpenURL "http://frenchgames.mtxserv.fr/boutique/"
--end )
