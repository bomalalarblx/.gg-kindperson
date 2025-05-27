local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Stuff Hub-All In One",
    SubTitle = "by queeni",
    TabWidth = 120,
    Size = UDim2.fromOffset(480, 360),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    A = Window:AddTab({ Title = "- Floor 1 -", Icon = "" }),
    Main = Window:AddTab({ Title = "Tab Main", Icon = "home" }),
    Local = Window:AddTab({ Title = "Tab Local Player", Icon = "user" }),
    Map = Window:AddTab({ Title = "Tab Map", Icon = "map" }),
    Exploit = Window:AddTab({ Title = "Tab Exploit", Icon = "venetian-mask" }),
    B = Window:AddTab({ Title = "- Floor 2 -", Icon = "" }),
    Hop = Window:AddTab({ Title = "Hop", Icon = "" }),
    Script = Window:AddTab({ Title = "Script", Icon = "" }),
    C = Window:AddTab({ Title = "- Floor 3 -", Icon = "" }),
    Blox = Window:AddTab({ Title = "Tab BF Script" }),
    TabNew = Window:AddTab({ Title = "Tab Grow A Garden Script", Icon = "" }),
    TabNew2 = Window:AddTab({ Title = "Tab MM2 Script", Icon = "" }),
    Tab2 = Window:AddTab({ Title = "Tab Dead Rails Script", Icon = "" }),
    Tab3 = Window:AddTab({ Title = "Tab Universal Script", Icon = "" }),
    Tab4 = Window:AddTab({ Title = "Tab Local Player", Icon = "" }),
    Tab5 = Window:AddTab({ Title = "Tab Kaitun BF", Icon = "" }),
    Tab6 = Window:AddTab({ Title = "Tab Hop Server", Icon = "" }),
    Tab7 = Window:AddTab({ Title = "Tab PVP Script", Icon = "" }),
    Tab8 = Window:AddTab({ Title = "Tab BABFT Script", Icon = "" }),
    Tab9 = Window:AddTab({ Title = "Tab Farming", Icon = "" }),
    TabOther = Window:AddTab({ Title = "Tab Other", Icon = "" }),
    TabHUB = Window:AddTab({ Title = "Tab Custom Hub", Icon = "" }),
    TabOther2 = Window:AddTab({ Title = "Tab Pets Go", Icon = "" }),
    Tab123 = Window:AddTab({ Title = "Tab Set", Icon = "" }),
    D = Window:AddTab({ Title = "- Floor 4 -", Icon = "" }),
    anh = Window:AddTab({ Title = "Theme/Config", Icon = "" })
}

local Options = Fluent.Options

do
    Fluent:Notify({
        Title = "Stuff Hub",
        Content = "Loaded",
        SubContent = "", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })
    Tabs.Main:AddButton({
         Title = "Target Strafe",
         Description = "",
         Callback = function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/bomalalarblx/.gg-kindperson/refs/heads/main/saygex"))()
        end
    })
    local Slider = Tabs.Local:AddSlider("Slider", {
        Title = "Walkspeed",
        Description = "Not Working good",
        Default = 16,
        Min = 0,
        Max = 50000,
        Rounding = 1,
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end
    })
    Tabs.Map:AddButton({
         Title = "Middle Map",
         Description = "",
         Callback = function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(152.372971, 429.544525, 26.2189884, 0.382687271, -0, -0.923877954, 0, 1, -0, 0.923877954, 0, 0.382687271)
        end
    })
    Tabs.Map:AddButton({
        Title = "Mountain 1",
        Description = "Teleport 2 Times to work",
        Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14.8649902, 647.484375, -388.229523, -0.309060812, 0, 0.951042235, 0, 1, 0, -0.951042235, 0, -0.309060812)
       end
    })
    Tabs.Map:AddButton({
        Title = "Mountain 2",
        Description = "Teleport 2 Times to work",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(240.477737, 694.066589, 465.30484, -0.997555494, 0, -0.0698780864, 0, 1, 0, 0.0698780864, 0, -0.997555494)
    end
    })
    Tabs.Map:AddButton({
        Title = "Void",
        Description = "",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(161.476639, 328.498627, 16.6304874, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end
    })
    local MapSection = Tabs.Map:AddSection("Trashcan")
    Tabs.Map:AddButton({
        Title = "1",
        Description = "",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(127.467331, 439.194946, -103.56292, 0.923881531, 0, 0.382678568, 0, 1, 0, -0.382678568, 0, 0.923881531)
    end
    })
    Tabs.Map:AddButton({
        Title = "2",
        Description = "",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(72.21521, 439.487885, -81.3819504, 0.923881531, 0, 0.382678568, 0, 1, 0, -0.382678568, 0, 0.923881531)
    end
    })
    Tabs.Map:AddButton({
        Title = "3",
        Description = "",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2.36309814, 439.544098, 55.0225143, 0.923881531, 0, 0.382678568, 0, 1, 0, -0.382678568, 0, 0.923881531)
    end
    })
    Tabs.Map:AddButton({
        Title = "4",
        Description = "",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(43.2542877, 439.631592, 166.788589, 0.923881531, 0, 0.382678568, 0, 1, 0, -0.382678568, 0, 0.923881531)
    end
    })
    Tabs.Map:AddButton({
        Title = "5",
        Description = "",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(126.398529, 439.437866, 182.861176, 0.923881531, 0, 0.382678568, 0, 1, 0, -0.382678568, 0, 0.923881531)
    end
    })
     Tabs.Map:AddButton({
        Title = "6",
        Description = "",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(173.69931, 439.438782, 158.918015, 0.923881531, 0, 0.382678568, 0, 1, 0, -0.382678568, 0, 0.923881531)
    end
    })
    Tabs.Exploit:AddButton({
        Title = "Low Graphics",
        Description = "Not Working good",
        Callback = function()
          
local function boostFPS()
    -- Lower graphic settings
    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01

    -- Remove or minimize particle emitters
    for _, obj in ipairs(workspace:GetDescendants()) do
        if obj:IsA("ParticleEmitter") or obj:IsA("Trail") or obj:IsA("Smoke") then
            obj.Enabled = false
        end
    end

    -- Remove or minimize effects
    for _, v in ipairs(game.Lighting:GetChildren()) do
        if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("BloomEffect") or v:IsA("ColorCorrectionEffect") then
            v.Enabled = false
        end
    end

    -- Set lighting to lowest settings
    local lighting = game:GetService("Lighting")
    lighting.FogEnd = 100000
    lighting.Brightness = 1
    lighting.GlobalShadows = false
    lighting.OutdoorAmbient = Color3.new(1, 1, 1)
end
               
        end
    })
    Tabs.Exploit:AddButton({
        Title = "120 FPS Cap",
        Description = "",
        Callback = function()
           setfpscap(120)
    end
    })
    Tabs.Exploit:AddButton({
        Title = "60 FPS Cap",
        Description = "",
        Callback = function()
          setfpscap(60)
    end
    })
    Tabs.Hop:AddParagraph({
        Title = "Version, must below 1247 or 1236 to buy",
        Content = "" .. game.PlaceVersion
    })
    Tabs.Hop:AddButton({
        Title = "Old Server Finder",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/M-E-N-A-C-E/Menace-Hub/refs/heads/main/Old%20Server%20Finder%20Grow%20a%20Garden", true))()
        end
    })
    Tabs.Hop:AddButton({
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
    Tabs.Blox:AddButton({
        Title = "W-azure True V2(Premium)",
        Description = "",
        Callback = function()
          script_key = "nforlZPARKXHuWFMPQQqkwctQkjMvgzP"
getgenv().Team = "Marines"
getgenv().FixCrash = false -- Turn it On For Hopping Server, Improve Performance But Silent Aim On Mob And Player
getgenv().FixCrash2 = false -- Turn it On For Hopping Server, Improve Performance But Will Remove Speed Changer
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
       end
    })
    Tabs.Blox:AddButton({
        Title = "W-azure True V2(Free)",
        Description = "",
        Callback = function()
          getgenv().Team = "Marines"
getgenv().FixCrash = false -- Turn it On For Hopping Server, Improve Performance But Silent Aim On Mob And Player
getgenv().FixCrash2 = false -- Turn it On For Hopping Server, Improve Performance But Will Remove Speed Changer
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
        end
    })

    Tabs.Blox:AddButton({
        Title = "Banana Cat-Hub",
        Description = "",
        Callback = function()
         repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().Key = "10d136f561ea7b6dd6ec7831"
loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BananaHub.lua"))()
        end
    })
    
    Tabs.Blox:AddButton({
        Title = "Maru Hub(PE)",
        Description = "",
        Callback = function()
         getgenv().Key = "MARU-29LDH-41X5-YOK6M-EY5A-RCEG2"
getgenv().id = "1002555069805383680"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()
        end
    })

    Tabs.Blox:AddButton({
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
    Tabs.Tab2:AddButton({
        Title = "Skull Hub",
        Description = "",
        Callback = function()
         loadstring(game:HttpGet('https://raw.githubusercontent.com/hungquan99/SkullHub/main/loader.lua'))()
        end
    })
  Tabs.Tab2:AddButton({
        Title = "Native Hub",
        Description = "",
        Callback = function()
          loadstring(game:HttpGet("https://getnative.cc/script/loader"))()
        end
    })
  Tabs.Tab2:AddParagraph({
        Title = "Teleport",
        Content = "Teleport Section"
    })
  Tabs.Tab2:AddButton({
     Title = "Teleport Train",
     Description = "",
     Callback = function()
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(59.6720085, 10.2199755, 29817.6973, 1, 0, 0, 0, 1, 0, 0, 0, 1)
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
           loadstring(game:HttpGet('https://raw.githubusercontent.com/hungquan99/SkullHub/main/loader.lua'))()
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
    Tabs.TabOther:AddButton({
        Title = "White Screen + Boost FPS",
        Description = "",
        Callback = function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/bomalalarblx/.gg-kindperson/refs/heads/main/whitescreen"))()
        end
    })
    Tabs.TabOther:AddButton({
        Title = "Stuff Hub-Skid",
        Description = "random skid",
        Callback = function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/bomalalarblx/.gg-kindperson/refs/heads/main/kit"))()
        end
    })
    Tabs.TabOther:AddButton({
        Title = "Blox Fruit Kit",
        Description = "",
        Callback = function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/bomalalarblx/.gg-kindperson/refs/heads/main/bloxfruitkit"))()
        end
    })
    local Toggle = Tabs.TabOther:AddToggle("MyToggle", {Title = "Full Bright", Default = false })

    Toggle:OnChanged(function(Value)
            if Value then
            game:GetService("Lighting").Brightness = 10
            game:GetService("Lighting").ClockTime = 12
            game:GetService("Lighting").FogEnd = 10000
            game:GetService("Lighting").GlobalShadows = true
            game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(127, 127, 127)
        else
            game:GetService("Lighting").Brightness = 2
            game:GetService("Lighting").ClockTime = 14
            game:GetService("Lighting").FogEnd = 100000
            game:GetService("Lighting").GlobalShadows = false
            game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(128, 128, 128)
        end
end,Options.MyToggle.Value)
    Tabs.TabOther2:AddButton({
        Title = "Rinns Hub",
        Description = "",
        Callback = function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiCen/MainMenu/main/Code"))()
        end
    })
    Tabs.TabNew:AddButton({
        Title = "Kiciahook",
        Description = "",
        Callback = function()
           loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/b7d180acad508c48c140afe43d01ea0c.lua"))()
        end
    })
    Tabs.TabNew:AddButton({
        Title = "Best Script",
        Description = "",
        Callback = function()
           --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/tesghg/Grow-a-Garden/main/ameicaa_Grow_A_Garden.lua"))()
        end
    })
    Tabs.TabNew:AddButton({
        Title = "Native Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://getnative.cc/script/loader"))()
        end
    })
    Tabs.TabNew:AddButton({
        Title = "New Script",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/kosowa/asd/refs/heads/main/GaG.lua"))()
	end
    })
    Tabs.TabNew:AddParagraph({
        Title = "Teleport",
        Content = "Teleport Section"
    })
    Tabs.TabNew:AddButton({
        Title = "Teleport Pet Shop",
        Description = "",
        Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-260.41452, 2.76619363, -9.37789536, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    end
    })
    Tabs.TabNew:AddButton({
        Title = "Teleport Gear Shop",
        Description = "",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-260.41452, 2.76619363, -31.3778954, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    end
    })
    Tabs.TabNew:AddButton({
        Title = "Teleport Seed Shop",
        Description = "",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(61.5854721, 2.76619363, -27.0039806, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    end
    })
    Tabs.TabNew:AddButton({
        Title = "Teleport Sell Shop",
        Description = "",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(61.5854721, 2.76619363, 0.426784277, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    end
    })
    Tabs.TabNew:AddButton({
        Title = "Teleport Wise Old Owl",
        Description = "",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-99.5022507, 1.10001338, -11.7994785, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07)
    end
    })
    Tabs.TabNew:AddButton({
        Title = "Teleport Testing Place(Not Working)",
        Description = "",
        Callback = function()
        -- Get TeleportService and Players
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")

-- Get the target player and the destination PlaceId
local targetPlayer = Players:GetPlayerByName("txdtlil") -- Replace with the player's username
local placeId = 91867617264223 -- Replace with the ID of the destination place

-- Check if the player exists
if targetPlayer then
    -- Teleport the player to the specified place instance
    TeleportService:TeleportToPlaceInstance(placeId, targetPlayer)
end
    end
    })
    Tabs.TabNew2:AddButton({
        Title = "Yarhm",
        Description = "",
        Callback = function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua", false))()
        end
    })
    Tabs.TabHUB:AddButton({
        Title = "Custom Hub",
        Description = "",
        Callback = function()
          print("Coming Soon!")
        end
    })
    Tabs.TabHUB:AddButton({
        Title = "Kill Roblox",
        Description = "",
        Callback = function()
          loadstring(game:HttpGet("https://youtube.com"))()
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

InterfaceManager:BuildInterfaceSection(Tabs.anh)
SaveManager:BuildConfigSection(Tabs.anh)


Window:SelectTab(1)


-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
