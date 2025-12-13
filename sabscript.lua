local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Scripts(Steal a Brainrot)",
    SubTitle = "",
    TabWidth = 120,
    Size = UDim2.fromOffset(480, 360),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Script", Icon = "" })
}

local Options = Fluent.Options

do
    Fluent:Notify({
        Title = "script",
        Content = "Loaded",
        SubContent = "", -- Optional
        Duration = 0 -- Set to nil to make the notification not disappear
    })
    Tabs.Main:AddButton({
        Title = "Chilli Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()
        end
    })
    Tabs.Main:AddButton({
        Title = "Lemon Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/c4281c3937ebd537cb9e860182e41141.lua"))()
        end
    })
    Tabs.Main:AddButton({
         Title = "Lum0ra Hub",
         Description = "",
         Callback = function()
                loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3e7e5539bf07cd98f855ebb0c29c8081.lua"))()
        end
    })
    Tabs.Main:AddButton({
        Title = "Desync (Lum0ra)",
        Description = "",
        Callback = function()
         loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/e95ace8e779a63f98cadd9b51c6f2581.lua"))()
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
