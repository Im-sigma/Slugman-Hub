local vynixuModulesURL = "https://raw.githubusercontent.com/Im-sigma/Slugman-Hub/refs/heads/main/vynixuModules.lua"
local filePath = "vynixuModules.lua"
local function saveUrlToFile(url, fileName)
    local fileContent = game:HttpGet(url)
    writefile(fileName, fileContent)
end
local function executeFile(fileName)
    local fileContent = readfile(fileName)
    loadstring(fileContent)()
end
if not isfile(filePath) then
    saveUrlToFile(vynixuModulesURL, filePath)
end
executeFile(filePath)
local imageURL = "https://yt3.ggpht.com/QF5B2maCw8-Nxv_XHmYl_V1zxt7MwD-29Mlo3zObY-RWmwRjn4sjfY3iCYMHUbMqS8xO47MAWdvrLw=s640-c-fcrop64=1,00000000ffffffff-rw-nd-v1"
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game:GetService("CoreGui")
local imageLabel = Instance.new("ImageLabel")
imageLabel.Size = UDim2.new(0, 640, 0, 640)
imageLabel.Position = UDim2.new(0.5, -320, 0.5, -320)
imageLabel.Image = LoadCustomAsset(imageURL)
imageLabel.BackgroundTransparency = 1
imageLabel.Parent = screenGui
local tweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
local goal = { ImageTransparency = 1 }
local tween = tweenService:Create(imageLabel, tweenInfo, goal)
tween:Play()
tween.Completed:Connect(function()
    screenGui:Destroy()
end)
