local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Stuff Hub-Rope Battles",
    SubTitle = "by queeni",
    TabWidth = 120,
    Size = UDim2.fromOffset(480, 360),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Tab PVP", Icon = "home" }),
    Local = Window:AddTab({ Title = "Tab Local Player", Icon = "user" }),
    ESP = Window:AddTab({ Title = "Tab ESP", Icon = "compass" }),
    Teleport = Window:AddTab({ Title = "Tab Teleport", Icon = "map" }),
    Exploit = Window:AddTab({ Title = "Tab Misc", Icon = "code" })
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
        Title = "Aimbot",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/bomalalarblx/.gg-kindperson/refs/heads/main/kit"))()
        end
    })
    
    Tabs.Main:AddButton({
        Title = "Target Strafe",
        Description = "",
        Callback = function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/bomalalarblx/.gg-kindperson/refs/heads/main/saygex"))()
        end
    })
    Tabs.Teleport:AddButton({
        Title = "Train 1",
        Description = "",
        Callback = function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(476.292572, 27.9484253, 321.200439, 1, 0, 0, 0, 1, 0, 0, 0, 11)
        end
    })
    Tabs.Teleport:AddButton({
        Title = "Train 2",
        Description = "",
        Callback = function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(200.380615, 27.9484253, 320.884338, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        end
    })
    Tabs.Teleport:AddButton({
        Title = "Void",
        Description = "",
        Callback = function()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -8, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        end
    })
    Tabs.Teleport:AddButton({
        Title = "Middle Map",
        Description = "",
        Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(360.541046, 27.9484253, 323.837067, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end
    })
    Tabs.Teleport:AddButton({
        Title = "Water",
        Description = "",
        Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(351.240143, -8.24089909, 135.336349, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end
    })
    Tabs.Teleport:AddButton({
        Title = "Safe Zone",
        Description = "",
        Callback = function()
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-607.282043, 31.7314186, 959.764587, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    end
    })
    Tabs.Local:AddButton({
        Title = "Infinite Jump",
        Description = "",
        Callback = function()
          local player = game.Players.LocalPlayer
local userInput = game:GetService("UserInputService")
local humanoid = nil

local function onJumpRequest()
    if humanoid then
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end

local function onCharacterAdded(char)
    humanoid = char:WaitForChild("Humanoid")
end

if player.Character then
    onCharacterAdded(player.Character)
end
player.CharacterAdded:Connect(onCharacterAdded)

userInput.JumpRequest:Connect(onJumpRequest)
    end
    })
    Tabs.ESP:AddButton({
        Title = "ESP Player Name",
        Description = "",
        Callback = function()
         local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

function createESP(player)
    if player == localPlayer then return end

    local character = player.Character or player.CharacterAdded:Wait()
    local head = character:WaitForChild("Head")

    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "ESP"
    billboardGui.Adornee = head
    billboardGui.Size = UDim2.new(0, 100, 0, 40)
    billboardGui.StudsOffset = Vector3.new(0, 2, 0)
    billboardGui.AlwaysOnTop = true

    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(1, 0, 1, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = player.Name
    nameLabel.TextColor3 = Color3.new(1, 0, 0)
    nameLabel.TextStrokeTransparency = 0.5
    nameLabel.TextScaled = true
    nameLabel.Parent = billboardGui

    billboardGui.Parent = head
end

-- Add ESP to all current players
for _, player in ipairs(Players:GetPlayers()) do
    createESP(player)
end

-- Add ESP to new players
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        createESP(player)
    end)
end)
  end
    })
    Tabs.ESP:AddButton({
        Title = "Chams",
        Description = "",
        Callback = function()
         -- LocalScript (place it in StarterPlayer > StarterPlayerScripts)
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

-- Function to apply Chams to a character
local function applyChams(player)
    if player == localPlayer then return end

    local function onCharacterAdded(character)
        for _, part in pairs(character:GetChildren()) do
            if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                local chamsPart = Instance.new("BoxHandleAdornment")
                chamsPart.Name = "Chams"
                chamsPart.Adornee = part
                chamsPart.AlwaysOnTop = true
                chamsPart.ZIndex = 10
                chamsPart.Size = part.Size + Vector3.new(0.1, 0.1, 0.1)
                chamsPart.Transparency = 0.4
                chamsPart.Color3 = Color3.fromRGB(0, 255, 255) -- Cyan glow
                chamsPart.Parent = part
            end
        end
    end

    -- Apply to already loaded character
    if player.Character then
        onCharacterAdded(player.Character)
    end

    -- Apply to future characters
    player.CharacterAdded:Connect(onCharacterAdded)
end

-- Apply chams to all existing players
for _, player in ipairs(Players:GetPlayers()) do
    applyChams(player)
end

-- Apply chams to new players
Players.PlayerAdded:Connect(applyChams)
    end
    })
        Tabs.Exploit:AddButton({
        Title = "Low Graphics",
        Description = "",
        Callback = function()
           local Lighting = game:GetService("Lighting")
local Terrain = workspace:FindFirstChildOfClass("Terrain")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Disable textures and visual effects
local function optimizeDescendants(obj)
	for _, item in pairs(obj:GetDescendants()) do
		-- Remove textures and decals
		if item:IsA("Decal") or item:IsA("Texture") then
			item:Destroy()
		end

		-- Disable particles and trails
		if item:IsA("ParticleEmitter") or item:IsA("Trail") or item:IsA("Smoke") or item:IsA("Fire") then
			item.Enabled = false
		end

		-- Simplify materials
		if item:IsA("BasePart") then
			item.Material = Enum.Material.SmoothPlastic
			item.Reflectance = 0
		end
	end
end

-- Apply to entire workspace
optimizeDescendants(workspace)


-- Lower lighting effects
Lighting.GlobalShadows = false
Lighting.FogEnd = 1e10
Lighting.Brightness = 1
Lighting.OutdoorAmbient = Color3.new(0.5, 0.5, 0.5)

-- Reduce terrain decoration
if Terrain then
	Terrain.WaterWaveSize = 0
	Terrain.WaterWaveSpeed = 0
	Terrain.WaterReflectance = 0
	Terrain.WaterTransparency = 1
end

-- Optionally reduce player details
local function optimizeCharacter(character)
	for _, part in pairs(character:GetDescendants()) do
		if part:IsA("Accessory") or part:IsA("ShirtGraphic") or part:IsA("Clothing") then
			part:Destroy()
		end
	end
end

-- Apply to your character
if player.Character then
	optimizeCharacter(player.Character)
end

-- Apply to future characters
player.CharacterAdded:Connect(optimizeCharacter)       
        end
    })
    Tabs.Exploit:AddButton({
        Title = "60 FPS Cap",
        Description = "",
        Callback = function()
          setfpscap(60)
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
        Title = "144 FPS Cap",
        Description = "",
        Callback = function()
          setfpscap(144)
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
