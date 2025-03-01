local vynixuModulesURL = "https://raw.githubusercontent.com/Nobodylmao-sigma-is-me/Script-Configs/refs/heads/main/aa66285b-9df6-4514-a92e-3cbf52bdc737"
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
local imageURL = "https://cdn.jsdelivr.net/gh/Im-sigma/tmp@refs/heads/main/proof2.jpeg"
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
