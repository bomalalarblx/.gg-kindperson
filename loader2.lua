local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Stuff Hub-Farming Script",
    SubTitle = "by queeni",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Tab BF Script", Icon = "" }),
    Tab2 = Window:AddTab({ Title = "Tab Dead Rails Script", Icon = "" }),
    Tab3 = Window:AddTab({ Title = "Tab Universal Script", Icon = "" }),
    Tab4 = Window:AddTab({ Title = "Tab Local Player", Icon = "" }),
    Tab5 = Window:AddTab({ Title = "Tab Kaitun BF", Icon = "" }),
    Tab6 = Window:AddTab({ Title = "Tab Hop Server", Icon = "" }),
    Tab7 = Window:AddTab({ Title = "Tab PVP Script", Icon = "" }),
    Tab8 = Window:AddTab({ Title = "Tab BABFT Script", Icon = "" }),
    Tab9 = Window:AddTab({ Title = "Tab Farming", Icon = "" }),
    TabOther = Window:AddTab({ Title = "Tab Other", Icon = "" }),
    TabOther2 = Window:AddTab({ Title = "Tab Pets Go", Icon = "" }),
    Tab123 = Window:AddTab({ Title = "Tab Set", Icon = "" }),
    Settings = Window:AddTab({ Title = "Tab Theme/Config", Icon = "" })
}

local Options = Fluent.Options

do
    Fluent:Notify({
        Title = "Stuff Hub",
        Content = "Loading...",
        SubContent = "", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })



    Tabs.Main:AddParagraph({
        Title = "Supported Script:",
        Content = "Maru,Banana,W-azure"
    })



    Tabs.Main:AddButton({
        Title = "W-azure True V2(Free)",
        Description = "",
        Callback = function()
          getgenv().Team = "Marines"
getgenv().FixCrash = false -- Turn it On For Hopping Server, Improve Performance But Silent Aim On Mob And Player
getgenv().FixCrash2 = false -- Turn it On For Hopping Server, Improve Performance But Will Remove Speed Changer
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
        end
    })

    Tabs.Main:AddButton({
        Title = "Banana Cat-Hub",
        Description = "",
        Callback = function()
         repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().Key = "10d136f561ea7b6dd6ec7831"
loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BananaHub.lua"))()
        end
    })
    
    Tabs.Main:AddButton({
        Title = "Maru Hub(PE)",
        Description = "",
        Callback = function()
         getgenv().Key = "MARU-29LDH-41X5-YOK6M-EY5A-RCEG2"
getgenv().id = "1002555069805383680"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()
        end
    })

    Tabs.Main:AddButton({
        Title = "Join Script",
        Description = "",
        Callback = function()
          --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- Create the GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 150)
frame.Position = UDim2.new(0.5, -150, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Grey background
frame.Active = true
frame.Draggable = true
frame.Parent = screenGui

-- Add rounded corners to the frame
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 8) -- Adjust corner radius as needed
uiCorner.Parent = frame

local title = Instance.new("TextLabel")
title.Text = "Join Server by Job ID"
title.Size = UDim2.new(1, 0, 0, 30)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.fromRGB(40, 40, 40) -- Darker grey
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.FredokaOne -- Set font to Fredoka One
title.Parent = frame

-- Add rounded corners to the title
local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 8)
titleCorner.Parent = title

local textBox = Instance.new("TextBox")
textBox.PlaceholderText = "Enter Job ID"
textBox.Size = UDim2.new(0.8, 0, 0, 30)
textBox.Position = UDim2.new(0.1, 0, 0.4, 0)
textBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textBox.TextColor3 = Color3.fromRGB(0, 0, 0)
textBox.Font = Enum.Font.FredokaOne -- Set font to Fredoka One
textBox.Parent = frame

-- Add rounded corners to the text box
local textBoxCorner = Instance.new("UICorner")
textBoxCorner.CornerRadius = UDim.new(0, 8)
textBoxCorner.Parent = textBox

local joinButton = Instance.new("TextButton")
joinButton.Text = "Join Server"
joinButton.Size = UDim2.new(0.8, 0, 0, 30)
joinButton.Position = UDim2.new(0.1, 0, 0.7, 0)
joinButton.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
joinButton.TextColor3 = Color3.fromRGB(255, 255, 255)
joinButton.Font = Enum.Font.FredokaOne -- Set font to Fredoka One
joinButton.Parent = frame

-- Add rounded corners to the button
local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 8)
buttonCorner.Parent = joinButton

-- Function to join the server by Job ID
joinButton.MouseButton1Click:Connect(function()
    local jobId = textBox.Text
    if jobId and jobId ~= "" then
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, jobId)
    else
        print("Please enter a valid Job ID.")
    end
end)
        end
    })


    local Keybind = Tabs.Settings:AddKeybind("Keybind", {
        Title = "KeyBind",
        Mode = "Toggle", -- Always, Toggle, Hold
        Default = "LeftControl", -- String as the name of the keybind (MB1, MB2 for mouse buttons)

        -- Occurs when the keybind is clicked, Value is `true`/`false`
        Callback = function(Value)
            print("Keybind clicked!", Value)
        end,

        -- Occurs when the keybind itself is changed, `New` is a KeyCode Enum OR a UserInputType Enum
        ChangedCallback = function(New)
            print("Keybind changed!", New)
        end
    })

    -- OnClick is only fired when you press the keybind and the mode is Toggle
    -- Otherwise, you will have to use Keybind:GetState()
    Keybind:OnClick(function()
        print("Keybind clicked:", Keybind:GetState())
    end)

    Keybind:OnChanged(function()
        print("Keybind changed:", Keybind.Value)
    end)

    task.spawn(function()
        while true do
            wait(1)

            -- example for checking if a keybind is being pressed
            local state = Keybind:GetState()
            if state then
                print("Keybind is being held down")
            end

            if Fluent.Unloaded then break end
        end
    end)

    Keybind:SetValue("MB2", "Toggle") -- Sets keybind to MB2, mode to Hold

end
   
  Tabs.Tab2:AddButton({
        Title = "Skull Hub",
        Description = "",
        Callback = function()
         loadstring(game:HttpGet('https://skullhub.xyz/loader.lua'))()
        end
    })
  Tabs.Tab3:AddButton({
        Title = "Infinite Yield",
        Description = "",
        Callback = function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/refs/heads/master/source"))()
        end
  })
  Tabs.Tab3:AddButton({
       Title = "Nameless Admin",
       Description = "",
       Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/Nameless-Admin/refs/heads/main/Source.lua"))()
       end
  })
  Tabs.Tab3:AddButton({
       Title = "Silent Aim",
       Description = "",
       Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/bomalalarblx/blox/refs/heads/main/silentaimuniversal"))()
       end
  })
  Tabs.Tab3:AddButton({
       Title = "Universe Viewer",
       Description = "",
       Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/uuuuuuu/main/Universe%20Viewer"))();
       end
  })
  Tabs.Tab3:AddButton({
       Title = "Yeet Gui(Fling)",
       Description = "",
       Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/Flacherflache/FE-Yeet-Gui/refs/heads/main/Script"))()
    end
  })
  Tabs.Tab3:AddButton({
       Title = "Fly Gui V3",
       Description = "",
       Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
       end
  })
    local Slider = Tabs.Tab4:AddSlider("Slider", {
        Title = "Walkspeed",
        Description = "",
        Default = 16,
        Min = 0,
        Max = 350,
        Rounding = 1,
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end
    })
    local Slider = Tabs.Tab4:AddSlider("Slider", {
        Title = "Jumppower",
        Description = "",
        Default = 50,
        Min = 0,
        Max = 350,
        Rounding = 1,
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end
    })
    local Slider = Tabs.Tab4:AddSlider("Slider", {
        Title = "Gravity",
        Description = "",
        Default = 196,
        Min = 0,
        Max = 350,
        Rounding = 1,
        Callback = function(Value)
            game.Workspace.Gravity = Value
        end
    })
    Tabs.Tab5:AddButton({
        Title = "Banana-Cat Hub",
        Description = "",
        Callback = function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/bomalalarblx/blox/refs/heads/main/kaitunbanananocap"))()
        end
    })
    Tabs.Tab5:AddButton({
        Title = "Kaitun-Leviathan",
        Description = "",
        Callback = function()
          repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().Key = "10d136f561ea7b6dd6ec7831"
loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/refs/heads/main/BananaCat-KaitunLevi.lua"))()
        end
    })
    Tabs.Tab5:AddButton({
        Title = "Maru Hub(PE)",
        Description = "",
        Callback = function()
          getgenv().Key = "MARU-29LDH-41X5-YOK6M-EY5A-RCEG2"
getgenv().id = "1002555069805383680"
getgenv().Script_Mode = "Kaitun_Script"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()
        end
    })
    Tabs.Tab5:AddButton({
        Title = "Quartyz Hub",
        Description = "",
        Callback = function()
         getgenv().Mode = "OneClick"
getgenv().Setting = {
    ["Team"] = "Pirates", -- Options "Pirates", "Marines"
    ["FucusOnLevel"] = true,
    ["Fruits"] = {  -- setting for fruits u want
        ["Primary"] = { -- if current fruit is not in this list, eat/buy
            "Dough-Dough",
            "Dragon-Dragon",
            "Buddha-Buddha",
            -- u can configs add mores/remove and must end with , (comma symbol)
        },
        ["Normal"] = { -- it just a normal fruit list
            "Flame-Flame",
            "Light-Light",
            "Magma-Magma",
            -- u can configs add mores/remove and must end with , (comma symbol)
        }
        -- run this for get all fruit name `local t={};for _,v in pairs(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("GetFruits"))do table.insert(t,`"{v.Name}"`)end;setclipboard(table.concat(t, "\n"))`
    },
    ["IdleCheck"] = 150, -- every (x) seconds if not moving rejoin
};

loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/QuartyzScript/main/Loader.lua"))()
      end
    })
    Tabs.Tab6:AddButton({
        Title = "Hop Server",
        Description = "",
        Callback = function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/Morples/Server-hop/refs/heads/main/Script"))()
        end
    })
    Tabs.Tab7:AddButton({
        Title = "Quartyz Hub",
        Description = "",
        Callback = function()
         getgenv().Mode = "PVP"
getgenv().Team = "Pirates" -- Options "Marines", "Pirates"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/QuartyzScript/main/Loader.lua"))()
        end
    })
    Tabs.Tab8:AddButton({
         Title = "Quartyz Hub",
         Description = "",
         Callback = function()
              loadstring(game:HttpGet"https://raw.githubusercontent.com/xQuartyx/DonateMe/main/BABFT")()
        end
    })
    Tabs.Tab9:AddButton({
         Title = "Auto Bond",
         Description = "",
         Callback = function()
           loadstring(game:HttpGet('https://skullhub.xyz/loader.lua'))()
        end
    })
    Tabs.Tab9:AddButton({
        Title = "Auto Bounty",
        Description = "",
        Callback = function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/bomalalarblx/.gg-kindperson/refs/heads/main/autobounty"))()
        end
    })
    Tabs.TabOther:AddButton({
        Title = "Anti AFK",
        Description = "",
        Callback = function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/evxncodes/mainroblox/main/anti-afk", true))()
        end
    })
    Tabs.TabOther:AddButton({
        Title = "FPS Booster",
        Description = "",
        Callback = function()
         _G.Ignore = {}
_G.Settings = {
    Players = {
        ["Ignore Me"] = true,
        ["Ignore Others"] = true,
        ["Ignore Tools"] = true
    },
    Meshes = {
        NoMesh = false,
        NoTexture = false,
        Destroy = false
    },
    Images = {
        Invisible = true,
        Destroy = false
    },
    Explosions = {
        Smaller = true,
        Invisible = false, -- Not for PVP games
        Destroy = false -- Not for PVP games
    },
    Particles = {
        Invisible = true,
        Destroy = false
    },
    TextLabels = {
        LowerQuality = true,
        Invisible = false,
        Destroy = false
    },
    MeshParts = {
        LowerQuality = true,
        Invisible = true,
        NoTexture = true,
        NoMesh = true,
        Destroy = true
    },
    Other = {
        ["FPS Cap"] = 240, -- true to uncap
        ["No Camera Effects"] = true,
        ["No Clothes"] = true,
        ["Low Water Graphics"] = true,
        ["No Shadows"] = true,
        ["Low Rendering"] = true,    
        ["Low Quality Parts"] = true,
        ["Low Quality Models"] = true,
        ["Reset Materials"] = true,
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
    end
    })
    Tabs.TabOther:AddButton({
        Title = "Keyboard",
        Description = "",
        Callback = function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
        end
    })
    Tabs.TabOther2:AddButton({
        Title = "Rinns Hub",
        Description = "",
        Callback = function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiCen/MainMenu/main/Code"))()
        end
    })
    local Toggle = Tabs.Tab123:AddToggle("MyToggle", {Title = "Set Speed Normal", Default = false })

    Toggle:OnChanged(function()
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16,Options.MyToggle.Value
    end)

    Options.MyToggle:SetValue(false)
    local Toggle = Tabs.Tab123:AddToggle("MyToggle", {Title = "Set Jumppower Normal", Default = false })

    Toggle:OnChanged(function()
         game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50,Options.MyToggle.Value
    end)

    Options.MyToggle:SetValue(false)
    local Toggle = Tabs.Tab123:AddToggle("MyToggle", {Title = "Set Gravity Normal", Default = false })

    Toggle:OnChanged(function()
         game.Players.LocalPlayer.Character.Humanoid.JumpPower = 196,Options.MyToggle.Value
    end)

    Options.MyToggle:SetValue(false)
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
