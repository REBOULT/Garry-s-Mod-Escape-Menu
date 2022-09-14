ESC = ESC or {}
ESC.cfg = ESC.cfg or {}
ESC.cfg.Themes = ESC.cfg.Themes or {}
ESC.cfg.Servers = {} 
ESC.cfg.Buttons = {}

local inc = SERVER and AddCSLuaFile or include

local function inTable( table, val )
    for _, details in ipairs( table ) do
        if details.name == val then
            return true
        end
    end

    return false
end

function ESC.AddServer( name, ip )
    if inTable( ESC.cfg.Servers, name ) then return end

    table.insert( ESC.cfg.Servers, { name = name, ip = ip } )
end

function ESC.AddButton( name, func )
    if inTable( ESC.cfg.Buttons, name ) then return end

    table.insert( ESC.cfg.Buttons, { name = name, func = func } )
end

ESC.AddButton( "Продолжить", function()
    ESC.Closing = true
    ESC.Menu:AlphaTo( 0, ESC.Colors().FadeTime, 0, function()
        ESC.Menu:Remove()
        ESC.Closing = false
    end )

    if gui.IsGameUIVisible() then
        gui.HideGameUI()
    end
end )

ESC.AddButton( "Настройки", function()
    if !gui.IsGameUIVisible() then
        gui.ActivateGameUI()
    end

    RunConsoleCommand( "gamemenucommand", "openoptionsdialog" )
end )

inc "escape/escape_config.lua"
inc "escape/escape_avatar.lua"
inc "escape/escape_circle.lua"
inc "escape/escape_main.lua"

ESC.AddButton( "Отключиться", function()
    DisconnectDialog()
end )

if SERVER then
	resource.AddFile "resource/fonts/Roboto-Regular.ttf"
end
--- CREDORP
