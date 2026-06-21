┌─────────────────────────────────────┐
│            Key System               │
│                                     │
│  Enter Key Here...                  │
│ ┌───────────────────────────────┐   │
│ │                               │   │
│ └───────────────────────────────┘   │
│                                     │
│ ┌──────────────┐  ┌──────────────┐  │
│ │  Check Key   │  │  Copy Link   │  │
│ └──────────────┘  └──────────────┘  │
│                                     │
│ Status: Waiting...                  │
└─────────────────────────────────────┘
local KEY = "MySecretKey123" -- Change this anytime
local LINK = "https://roblox.mq/communities/1184371433/" -- Change this anytime

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local KeyBox = Instance.new("TextBox")
local CheckBtn = Instance.new("TextButton")
local CopyBtn = Instance.new("TextButton")
local Status = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "KeySystem"

Main.Parent = ScreenGui
Main.Size = UDim2.new(0, 400, 0, 250)
Main.Position = UDim2.new(0.5, -200, 0.5, -125)
Main.BackgroundColor3 = Color3.fromRGB(28, 28, 32)
Main.BorderSizePixel = 0

local MainCorner = Instance.new("UICorner", Main)
MainCorner.CornerRadius = UDim.new(0, 12)

Title.Parent = Main
Title.Size = UDim2.new(1, 0, 0, 50)
Title.BackgroundTransparency = 1
Title.Text = "Key System"
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.TextScaled = true
Title.Font = Enum.Font.GothamBold

KeyBox.Parent = Main
KeyBox.Position = UDim2.new(0.1, 0, 0.3, 0)
KeyBox.Size = UDim2.new(0.8, 0, 0, 45)
KeyBox.PlaceholderText = "Enter Key Here..."
KeyBox.Text = ""
KeyBox.BackgroundColor3 = Color3.fromRGB(40,40,45)
KeyBox.TextColor3 = Color3.fromRGB(255,255,255)
KeyBox.Font = Enum.Font.Gotham
KeyBox.TextSize = 18

local KeyCorner = Instance.new("UICorner", KeyBox)
KeyCorner.CornerRadius = UDim.new(0, 8)

CheckBtn.Parent = Main
CheckBtn.Position = UDim2.new(0.1, 0, 0.58, 0)
CheckBtn.Size = UDim2.new(0.35, 0, 0, 45)
CheckBtn.Text = "Check Key"
CheckBtn.BackgroundColor3 = Color3.fromRGB(70,130,255)
CheckBtn.TextColor3 = Color3.fromRGB(255,255,255)
CheckBtn.Font = Enum.Font.GothamBold
CheckBtn.TextSize = 18

local CheckCorner = Instance.new("UICorner", CheckBtn)
CheckCorner.CornerRadius = UDim.new(0, 8)

CopyBtn.Parent = Main
CopyBtn.Position = UDim2.new(0.55, 0, 0.58, 0)
CopyBtn.Size = UDim2.new(0.35, 0, 0, 45)
CopyBtn.Text = "Copy Link"
CopyBtn.BackgroundColor3 = Color3.fromRGB(50,50,55)
CopyBtn.TextColor3 = Color3.fromRGB(255,255,255)
CopyBtn.Font = Enum.Font.GothamBold
CopyBtn.TextSize = 18

local CopyCorner = Instance.new("UICorner", CopyBtn)
CopyCorner.CornerRadius = UDim.new(0, 8)

Status.Parent = Main
Status.Position = UDim2.new(0,0,0.83,0)
Status.Size = UDim2.new(1,0,0,30)
Status.BackgroundTransparency = 1
Status.Text = "Status: Waiting..."
Status.TextColor3 = Color3.fromRGB(200,200,200)
Status.Font = Enum.Font.Gotham
Status.TextSize = 16

CheckBtn.MouseButton1Click:Connect(function()
	if KeyBox.Text == KEY then
		Status.Text = "Status: Correct Key!"
		Status.TextColor3 = Color3.fromRGB(0,255,120)
	else
		Status.Text = "Status: Wrong Key!"
		Status.TextColor3 = Color3.fromRGB(255,70,70)
	end
end)

CopyBtn.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard(LINK)
		Status.Text = "Status: Link copied!"
		Status.TextColor3 = Color3.fromRGB(70,180,255)
	else
		Status.Text = "Clipboard unsupported."
		Status.TextColor3 = Color3.fromRGB(255,70,70)
	end
end)local KEY = "YourNewKey"
local LINK = "https://new-link.com"
   