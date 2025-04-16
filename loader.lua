local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Stuff Hub [Rewrite]",
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
    Settings = Window:AddTab({ Title = "Tab Theme/Config", Icon = "" })
}

local Options = Fluent.Options

do
    Fluent:Notify({
        Title = "Paid Script",
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


    local Keybind = Tabs.Main:AddKeybind("Keybind", {
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
