local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Stuff Hub-Only Hop",
    SubTitle = "by queeni",
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 360),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Hop", Icon = "" }),
    Script = Window:AddTab({ Title = "Script", Icon = "" })
}

local Options = Fluent.Options

do
    Fluent:Notify({
        Title = "Stuff Hub",
        Content = "Loaded",
        SubContent = "", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })
    Tabs.Main:AddParagraph({
        Title = "Version, must below 1247 or 1236 to buy",
        Content = "" .. game.PlaceVersion
    })
    Tabs.Main:AddButton({
        Title = "Old Server Finder",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/M-E-N-A-C-E/Menace-Hub/refs/heads/main/Old%20Server%20Finder%20Grow%20a%20Garden", true))()
        end
    })
    Tabs.Main:AddButton({
        Title = "Hop Server (Normal)",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Morples/Server-hop/refs/heads/main/Script"))()
        end
    })
    Tabs.Script:AddButton({
         Title = "Native Hub(Key)",
         Description = "",
         Callback = function()
                loadstring(game:HttpGet("https://getnative.cc/script/loader"))()
        end
    })
    Tabs.Script:AddButton({
        Title = "NoLag Hub(No Key)",
        Description = "",
        Callback = function()
           --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
repeat wait() until game:IsLoaded() and game.Players.LocalPlayer

local scripts = {
    [126884695634066] = "https://raw.githubusercontent.com/NoLag-id/No-Lag-HUB/refs/heads/main/Garden/Garden-V1.lua",
    [81440632616906] = "https://raw.githubusercontent.com/NoLag-id/No-Lag-HUB/refs/heads/main/DigEarth/V1.lua",
}

local url = scripts[game.PlaceId]
if url then
    loadstring(game:HttpGetAsync(url))()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/NoLag-id/No-Lag-HUB/refs/heads/main/untitled.lua"))()
end
        end
    })
end
   

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)

-- Hand the library over to our managers
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
