local folderName = "Slugman Hub"
local fileName = "Intro.jpeg"
local filePath = folderName .. "/" .. fileName
local imageURL = "https://drive.google.com/uc?export=download&id=1JCVez25HOwdtOreh5Tu0efrRZeDkh4aF"
if not isfolder(folderName) then
    makefolder(folderName)
end
if not isfile(filePath) then
    local imageData = game:HttpGet(imageURL, true)
    writefile(filePath, imageData)
end
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game:GetService("CoreGui")
local imageLabel = Instance.new("ImageLabel")
imageLabel.Size = UDim2.new(0, 640, 0, 640)
imageLabel.Position = UDim2.new(0.5, -320, 0.5, -320)
imageLabel.Image = getsynasset(filePath) -- Load from local storage
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
