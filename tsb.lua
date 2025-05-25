local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Stuff Hub-TSB",
    SubTitle = "by queeni",
    TabWidth = 120,
    Size = UDim2.fromOffset(480, 360),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Tab Main", Icon = "home" }),
    Local = Window:AddTab({ Title = "Tab Local Player", Icon = "user" }),
    Map = Window:AddTab({ Title = "Tab Map", Icon = "map" }),
    Exploit = Window:AddTab({ Title = "Tab Exploit", Icon = "venetian-mask" })
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

Fluent:Notify({
    Title = "Fluent",
    Content = "The script has been loaded.",
    Duration = 8
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
