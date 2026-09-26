local _0xDF8F = game:GetService("Players")
local _0x568B = game:GetService("TweenService")
local _0xBBAF = game:GetService("UserInputService")
local _0x78FE = _0xDF8F.LocalPlayer
local _0xA427 = _0x78FE:WaitForChild("PlayerGui")
local _0x10C9 ="TEST"local _0xC60F = Enum.Font.Cartoon
local _0xCD9B = {
ESP = {
Enabled = false,
HealthBar = true,
Chams = false,
VisibleOnly = true,
Names = true,
Distance = true,
Style ="Full",
Color = Color3.fromRGB(255,255,255)
},
Aimbot = {
Enabled = false,
Bone ="Head",
Smoothness = 40,
DrawFOV = false,
FOV = 200,
TeamCheck = false,
VisibleCheck = true
},
SilentAim = {
Enabled = false,
Bone ="Head",
HitboxExpander = false,
HitboxSize = 5
}
}
local _0x99FC = {
White = Color3.fromRGB(255,255,255),
Black = Color3.fromRGB(0,0,0),
Gray = Color3.fromRGB(150,150,150),
Red = Color3.fromRGB(255,70,70),
Green = Color3.fromRGB(70,255,100),
Blue = Color3.fromRGB(85,150,255),
Purple = Color3.fromRGB(190,100,255),
Cyan = Color3.fromRGB(70,235,255),
Yellow = Color3.fromRGB(255,215,70)
}
local _0x58E7 = Instance.new("ScreenGui")
_0x58E7.Name ="SniperDules"_0x58E7.ResetOnSpawn = false
_0x58E7.IgnoreGuiInset = true
_0x58E7.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_0x58E7.Parent = _0xA427
local function _0xDFC6(className,_0x3108,properties)
local _0x5D21 = Instance.new(className)
for property,value in pairs(properties or {}) do
_0x5D21[property] = value
end
_0x5D21.Parent = _0x3108
return _0x5D21
end
local function _0x5E58(_0x5D21,_0xC142)
local _0x245D = Instance.new("UICorner")
_0x245D.CornerRadius = UDim.new(0,_0xC142)
_0x245D.Parent = _0x5D21
return _0x245D
end
local function _0x2473(_0x5D21,_0xE5BD,thickness)
local _0x9956 = Instance.new("UIStroke")
_0x9956.Color = _0xE5BD
_0x9956.Thickness = thickness or 1
_0x9956.Parent = _0x5D21
return _0x9956
end
local function _0x8263(_0x5D21,duration,properties)
local _0x1587 = _0x568B:Create(
_0x5D21,
TweenInfo.new(duration,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
properties
)
_0x1587:Play()
return _0x1587
end
local function _0x67EA(_0xCADF,normalColor,hoverColor)
local _0x640E = _0xCADF:FindFirstChild("HoverScale")
if not _0x640E then
_0x640E = Instance.new("UIScale")
_0x640E.Name ="HoverScale"_0x640E.Scale = 1
_0x640E.Parent = _0xCADF
end
_0xCADF.MouseEnter:Connect(function()
_0x8263(_0xCADF,0.12,{
BackgroundColor3 = hoverColor
})
_0x8263(_0x640E,0.12,{
Scale = 1.02
})
end)
_0xCADF.MouseLeave:Connect(function()
_0x8263(_0xCADF,0.12,{
BackgroundColor3 = normalColor
})
_0x8263(_0x640E,0.12,{
Scale = 1
})
end)
_0xCADF.MouseButton1Down:Connect(function()
_0x8263(_0x640E,0.07,{
Scale = 0.985
})
end)
_0xCADF.MouseButton1Up:Connect(function()
_0x8263(_0x640E,0.08,{
Scale = 1.02
})
end)
end
local function _0x2D22(handle,_0x5D21)
local _0x951A = false
local _0x6882
local _0x895C
handle.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
_0x951A = true
_0x6882 = input.Position
_0x895C = _0x5D21.Position
end
end)
_0xBBAF.InputChanged:Connect(function(input)
if _0x951A and input.UserInputType == Enum.UserInputType.MouseMovement then
local _0x34AF = input.Position - _0x6882
_0x5D21.Position = UDim2.new(
_0x895C.X.Scale,
_0x895C.X.Offset + _0x34AF.X,
_0x895C.Y.Scale,
_0x895C.Y.Offset + _0x34AF.Y
)
end
end)
_0xBBAF.InputEnded:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
_0x951A = false
end
end)
end
local function _0x64F6(_0x85EF)
local _0x9A93 = {}
for _,_0x5D21 in ipairs(_0x85EF:GetDescendants()) do
if _0x5D21:IsA("Frame") then
_0x9A93[#_0x9A93 + 1] = {
Object = _0x5D21,
Property ="BackgroundTransparency",
Original = _0x5D21.BackgroundTransparency
}
elseif _0x5D21:IsA("TextLabel")
or _0x5D21:IsA("TextButton")
or _0x5D21:IsA("TextBox") then
_0x9A93[#_0x9A93 + 1] = {
Object = _0x5D21,
Property ="TextTransparency",
Original = _0x5D21.TextTransparency
}
elseif _0x5D21:IsA("UIStroke") then
_0x9A93[#_0x9A93 + 1] = {
Object = _0x5D21,
Property ="Transparency",
Original = _0x5D21.Transparency
}
end
end
return _0x9A93
end
local function _0xDDCE(_0x85EF,duration)
local _0x9A93 = _0x64F6(_0x85EF)
for _,_0xE5B9 in ipairs(_0x9A93) do
if _0xE5B9.Object.Parent then
_0xE5B9.Object[_0xE5B9.Property] = 1
end
end
_0x85EF.Visible = true
for _,_0xE5B9 in ipairs(_0x9A93) do
if _0xE5B9.Object.Parent then
_0x8263(_0xE5B9.Object,duration,{
[_0xE5B9.Property] = _0xE5B9.Original
})
end
end
task.wait(duration)
end
local function _0x421F(_0x85EF,duration)
local _0x9A93 = _0x64F6(_0x85EF)
for _,_0xE5B9 in ipairs(_0x9A93) do
if _0xE5B9.Object.Parent then
_0x8263(_0xE5B9.Object,duration,{
[_0xE5B9.Property] = 1
})
end
end
task.wait(duration)
_0x85EF.Visible = false
for _,_0xE5B9 in ipairs(_0x9A93) do
if _0xE5B9.Object.Parent then
_0xE5B9.Object[_0xE5B9.Property] = _0xE5B9.Original
end
end
end
local _0x4BA9 = _0xDFC6("Frame",_0x58E7,{
Size = UDim2.fromScale(1,1),
BackgroundTransparency = 1,
ZIndex = 50
})
local _0x4133 = _0xDFC6("Frame",_0x4BA9,{
Size = UDim2.fromOffset(400,250),
Position = UDim2.new(0.5,-200,0.5,-125),
BackgroundColor3 = Color3.fromRGB(10,10,10),
BorderSizePixel = 0,
Active = true,
ZIndex = 51
})
_0x5E58(_0x4133,12)
_0x2473(_0x4133,Color3.fromRGB(45,45,45),1)
local _0x3B34 = _0xDFC6("Frame",_0x4133,{
Size = UDim2.new(1,0,0,54),
BackgroundColor3 = Color3.fromRGB(15,15,15),
BorderSizePixel = 0,
Active = true,
ZIndex = 52
})
_0x5E58(_0x3B34,12)
_0xDFC6("Frame",_0x3B34,{
Size = UDim2.new(1,0,0,12),
Position = UDim2.fromOffset(0,42),
BackgroundColor3 = Color3.fromRGB(15,15,15),
BorderSizePixel = 0,
ZIndex = 52
})
_0xDFC6("TextLabel",_0x3B34,{
Size = UDim2.fromOffset(300,54),
Position = UDim2.fromOffset(20,0),
BackgroundTransparency = 1,
Font = _0xC60F,
Text ="SniperDules",
TextSize = 21,
TextColor3 = Color3.fromRGB(255,255,255),
TextXAlignment = Enum.TextXAlignment.Left,
ZIndex = 53
})
_0xDFC6("TextLabel",_0x3B34,{
Size = UDim2.fromOffset(70,54),
Position = UDim2.new(1,-90,0,0),
BackgroundTransparency = 1,
Font = _0xC60F,
Text ="ACCESS",
TextSize = 10,
TextColor3 = Color3.fromRGB(85,85,85),
TextXAlignment = Enum.TextXAlignment.Right,
ZIndex = 53
})
local _0xB914 = _0xDFC6("TextBox",_0x4133,{
Size = UDim2.new(1,-48,0,43),
Position = UDim2.fromOffset(24,75),
BackgroundColor3 = Color3.fromRGB(19,19,19),
BorderSizePixel = 0,
ClearTextOnFocus = false,
PlaceholderText ="Enter access key",
PlaceholderColor3 = Color3.fromRGB(75,75,75),
Text ="",
Font = _0xC60F,
TextSize = 14,
TextColor3 = Color3.fromRGB(235,235,235),
ZIndex = 53
})
_0x5E58(_0xB914,7)
_0x2473(_0xB914,Color3.fromRGB(40,40,40),1)
local _0x2B9A = _0xDFC6("TextButton",_0x4133,{
Size = UDim2.new(1,-48,0,42),
Position = UDim2.fromOffset(24,130),
BackgroundColor3 = Color3.fromRGB(255,255,255),
BorderSizePixel = 0,
AutoButtonColor = false,
Text ="Continue",
Font = _0xC60F,
TextSize = 14,
TextColor3 = Color3.fromRGB(10,10,10),
ZIndex = 53
})
_0x5E58(_0x2B9A,7)
_0x67EA(
_0x2B9A,
Color3.fromRGB(255,255,255),
Color3.fromRGB(220,220,220)
)
local _0x048B = _0xDFC6("TextLabel",_0x4133,{
Size = UDim2.new(1,-48,0,22),
Position = UDim2.fromOffset(24,184),
BackgroundTransparency = 1,
Font = _0xC60F,
Text ="",
TextSize = 12,
TextColor3 = Color3.fromRGB(130,130,130),
TextXAlignment = Enum.TextXAlignment.Left,
ZIndex = 53
})
_0x2D22(_0x3B34,_0x4133)
local function _0x9863()
local _0x4C52 = _0x4133.Position
_0x8263(_0x4133,0.05,{
Position = _0x4C52 + UDim2.fromOffset(8,0)
}).Completed:Wait()
_0x8263(_0x4133,0.05,{
Position = _0x4C52 - UDim2.fromOffset(8,0)
}).Completed:Wait()
_0x8263(_0x4133,0.05,{
Position = _0x4C52
})
end
local function _0xCB8D()
local _0x5207 = _0xDFC6("Frame",_0x58E7,{
Size = UDim2.fromOffset(760,500),
Position = UDim2.new(0.5,-380,0.5,-250),
BackgroundColor3 = Color3.fromRGB(8,8,8),
BorderSizePixel = 0,
Visible = false,
Active = true,
ZIndex = 5
})
_0x5E58(_0x5207,12)
_0x2473(_0x5207,Color3.fromRGB(42,42,42),1)
local _0x250A = _0xDFC6("Frame",_0x5207,{
Size = UDim2.new(1,0,0,58),
BackgroundColor3 = Color3.fromRGB(14,14,14),
BorderSizePixel = 0,
Active = true,
ZIndex = 6
})
_0x5E58(_0x250A,12)
_0xDFC6("Frame",_0x250A,{
Size = UDim2.new(1,0,0,12),
Position = UDim2.fromOffset(0,46),
BackgroundColor3 = Color3.fromRGB(14,14,14),
BorderSizePixel = 0,
ZIndex = 6
})
_0xDFC6("TextLabel",_0x250A,{
Size = UDim2.fromOffset(300,58),
Position = UDim2.fromOffset(20,0),
BackgroundTransparency = 1,
Font = _0xC60F,
Text ="SniperDules",
TextSize = 22,
TextColor3 = Color3.fromRGB(255,255,255),
TextXAlignment = Enum.TextXAlignment.Left,
ZIndex = 7
})
local _0x09DE = _0xDFC6("TextLabel",_0x250A,{
Size = UDim2.fromOffset(34,24),
Position = UDim2.new(1,-52,0,17),
BackgroundColor3 = Color3.fromRGB(27,27,27),
BorderSizePixel = 0,
Font = _0xC60F,
Text ="INS",
TextSize = 10,
TextColor3 = Color3.fromRGB(155,155,155),
TextXAlignment = Enum.TextXAlignment.Center,
ZIndex = 8
})
_0x5E58(_0x09DE,6)
_0x2473(_0x09DE,Color3.fromRGB(45,45,45),1)
_0x2D22(_0x250A,_0x5207)
local _0x8EFB = _0xDFC6("Frame",_0x5207,{
Position = UDim2.fromOffset(0,58),
Size = UDim2.new(0,190,1,-58),
BackgroundColor3 = Color3.fromRGB(10,10,10),
BorderSizePixel = 0,
ZIndex = 6
})
_0xDFC6("UIPadding",_0x8EFB,{
PaddingTop = UDim.new(0,18),
PaddingLeft = UDim.new(0,13),
PaddingRight = UDim.new(0,13)
})
_0xDFC6("UIListLayout",_0x8EFB,{
Padding = UDim.new(0,8),
SortOrder = Enum.SortOrder.LayoutOrder
})
local _0xA5A2 = _0xDFC6("Frame",_0x5207,{
Position = UDim2.fromOffset(190,58),
Size = UDim2.new(1,-190,1,-58),
BackgroundTransparency = 1,
ZIndex = 6
})
local _0x8612 = _0xDFC6("Frame",_0x58E7,{
Size = UDim2.fromScale(1,1),
BackgroundTransparency = 1,
BorderSizePixel = 0,
ZIndex = 200,
Visible = true
})
local _0x6845 = {}
local _0xFAE9 = nil
local function _0x1452()
local _0x2CC7 = _0xDFC6("ScrollingFrame",_0xA5A2,{
Position = UDim2.fromOffset(16,15),
Size = UDim2.new(1,-32,1,-30),
BackgroundTransparency = 1,
BorderSizePixel = 0,
ScrollBarThickness = 3,
ScrollBarImageColor3 = Color3.fromRGB(90,90,90),
CanvasSize = UDim2.fromOffset(0,0),
ClipsDescendants = true,
ScrollingDirection = Enum.ScrollingDirection.Y,
Active = true,
ZIndex = 7
})
local _0xB32C = _0xDFC6("UIPadding",_0x2CC7,{
PaddingBottom = UDim.new(0,24)
})
local _0xD4ED = _0xDFC6("UIListLayout",_0x2CC7,{
Padding = UDim.new(0,9),
HorizontalAlignment = Enum.HorizontalAlignment.Center,
SortOrder = Enum.SortOrder.LayoutOrder
})
local function _0x3E08()
_0x2CC7.CanvasSize = UDim2.fromOffset(
0,
_0xD4ED.AbsoluteContentSize.Y + _0xB32C.PaddingBottom.Offset + 12
)
end
_0xD4ED:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(_0x3E08)
_0x2CC7:GetPropertyChangedSignal("AbsoluteSize"):Connect(_0x3E08)
task.defer(_0x3E08)
return _0x2CC7
end
local function _0xCCB4(_0x0AB8)
if _0xFAE9 then
_0xFAE9()
end
for _,_0xE5B9 in pairs(_0x6845) do
_0xE5B9.Page.Visible = false
_0xE5B9.Button.BackgroundColor3 = Color3.fromRGB(15,15,15)
_0xE5B9.Icon.TextColor3 = Color3.fromRGB(165,165,165)
_0xE5B9.Text.TextColor3 = Color3.fromRGB(165,165,165)
end
local _0xE5B9 = _0x6845[_0x0AB8]
if _0xE5B9 then
_0xE5B9.Page.Visible = true
_0xE5B9.Button.BackgroundColor3 = Color3.fromRGB(255,255,255)
_0xE5B9.Icon.TextColor3 = Color3.fromRGB(10,10,10)
_0xE5B9.Text.TextColor3 = Color3.fromRGB(10,10,10)
end
end
local function _0x7744(_0x0AB8,icon)
local _0xCADF = _0xDFC6("TextButton",_0x8EFB,{
Size = UDim2.new(1,0,0,44),
BackgroundColor3 = Color3.fromRGB(15,15,15),
BorderSizePixel = 0,
AutoButtonColor = false,
Text ="",
ZIndex = 8
})
_0x5E58(_0xCADF,8)
_0x2473(_0xCADF,Color3.fromRGB(32,32,32),1)
local _0x2A94 = _0xDFC6("TextLabel",_0xCADF,{
Size = UDim2.fromOffset(30,44),
Position = UDim2.fromOffset(12,0),
BackgroundTransparency = 1,
Font = _0xC60F,
Text = icon,
TextSize = 18,
TextColor3 = Color3.fromRGB(165,165,165),
ZIndex = 9
})
local _0x29CF = _0xDFC6("TextLabel",_0xCADF,{
Size = UDim2.new(1,-55,1,0),
Position = UDim2.fromOffset(45,0),
BackgroundTransparency = 1,
Font = _0xC60F,
Text = _0x0AB8,
TextSize = 14,
TextColor3 = Color3.fromRGB(165,165,165),
TextXAlignment = Enum.TextXAlignment.Left,
ZIndex = 9
})
local _0x2CC7 = _0x1452()
_0x6845[_0x0AB8] = {
Button = _0xCADF,
Page = _0x2CC7,
Icon = _0x2A94,
Text = _0x29CF
}
_0xCADF.Activated:Connect(function()
_0xCCB4(_0x0AB8)
end)
_0x67EA(
_0xCADF,
Color3.fromRGB(15,15,15),
Color3.fromRGB(24,24,24)
)
return _0x2CC7
end
local function _0xB25C(_0x2CC7,text)
_0xDFC6("TextLabel",_0x2CC7,{
Size = UDim2.new(1,0,0,27),
BackgroundTransparency = 1,
Font = _0xC60F,
Text = text,
TextSize = 11,
TextColor3 = Color3.fromRGB(100,100,100),
TextXAlignment = Enum.TextXAlignment.Left,
ZIndex = 8
})
end
local function _0x330D(_0x2CC7,text,default,callback)
local _0xCADF = _0xDFC6("TextButton",_0x2CC7,{
Size = UDim2.new(1,0,0,48),
BackgroundColor3 = Color3.fromRGB(17,17,17),
BorderSizePixel = 0,
AutoButtonColor = false,
Text ="",
ZIndex = 8
})
_0x5E58(_0xCADF,8)
_0x2473(_0xCADF,Color3.fromRGB(31,31,31),1)
_0xDFC6("TextLabel",_0xCADF,{
Size = UDim2.new(1,-85,1,0),
Position = UDim2.fromOffset(15,0),
BackgroundTransparency = 1,
Font = _0xC60F,
Text = text,
TextSize = 13,
TextColor3 = Color3.fromRGB(220,220,220),
TextXAlignment = Enum.TextXAlignment.Left,
ZIndex = 9
})
local _0x008C = _0xDFC6("Frame",_0xCADF,{
Size = UDim2.fromOffset(38,20),
Position = UDim2.new(1,-53,0.5,-10),
BackgroundColor3 = default and Color3.fromRGB(255,255,255) or Color3.fromRGB(45,45,45),
BorderSizePixel = 0,
ZIndex = 9
})
_0x5E58(_0x008C,20)
local _0x3C85 = _0xDFC6("Frame",_0x008C,{
Size = UDim2.fromOffset(16,16),
Position = default and UDim2.new(1,-18,0.5,-8) or UDim2.fromOffset(2,2),
BackgroundColor3 = default and Color3.fromRGB(10,10,10) or Color3.fromRGB(150,150,150),
BorderSizePixel = 0,
ZIndex = 10
})
_0x5E58(_0x3C85,20)
local _0x3AC7 = default
local function _0x41C1()
_0x8263(_0x008C,0.12,{
BackgroundColor3 = _0x3AC7 and Color3.fromRGB(255,255,255) or Color3.fromRGB(45,45,45)
})
_0x8263(_0x3C85,0.12,{
Position = _0x3AC7 and UDim2.new(1,-18,0.5,-8) or UDim2.fromOffset(2,2),
BackgroundColor3 = _0x3AC7 and Color3.fromRGB(10,10,10) or Color3.fromRGB(150,150,150)
})
end
_0xCADF.Activated:Connect(function()
_0x3AC7 = not _0x3AC7
_0x41C1()
callback(_0x3AC7)
end)
_0xCADF.MouseEnter:Connect(function()
_0x8263(_0xCADF,0.1,{
BackgroundColor3 = Color3.fromRGB(23,23,23)
})
end)
_0xCADF.MouseLeave:Connect(function()
_0x8263(_0xCADF,0.1,{
BackgroundColor3 = Color3.fromRGB(17,17,17)
})
end)
_0x41C1()
callback(_0x3AC7)
end
local function _0xCE19(_0x2CC7,text,options,default,callback)
local _0x5168 = _0xDFC6("Frame",_0x2CC7,{
Size = UDim2.new(1,0,0,56),
BackgroundColor3 = Color3.fromRGB(17,17,17),
BorderSizePixel = 0,
ZIndex = 20
})
_0x5E58(_0x5168,8)
_0x2473(_0x5168,Color3.fromRGB(31,31,31),1)
_0xDFC6("TextLabel",_0x5168,{
Size = UDim2.new(0.4,0,1,0),
Position = UDim2.fromOffset(15,0),
BackgroundTransparency = 1,
Font = _0xC60F,
Text = text,
TextSize = 13,
TextColor3 = Color3.fromRGB(220,220,220),
TextXAlignment = Enum.TextXAlignment.Left,
ZIndex = 21
})
local _0xCADF = _0xDFC6("TextButton",_0x5168,{
Size = UDim2.fromOffset(190,34),
Position = UDim2.new(1,-203,0.5,-17),
BackgroundColor3 = Color3.fromRGB(27,27,27),
BorderSizePixel = 0,
AutoButtonColor = false,
Text = default,
Font = _0xC60F,
TextSize = 12,
TextColor3 = Color3.fromRGB(205,205,205),
ZIndex = 22
})
_0x5E58(_0xCADF,7)
_0x2473(_0xCADF,Color3.fromRGB(38,38,38),1)
_0x67EA(
_0xCADF,
Color3.fromRGB(27,27,27),
Color3.fromRGB(38,38,38)
)
local _0x4183 = _0xDFC6("Frame",_0x8612,{
Size = UDim2.fromOffset(190,#options * 29 + 8),
BackgroundColor3 = Color3.fromRGB(14,14,14),
BorderSizePixel = 0,
Visible = false,
ZIndex = 250
})
_0x5E58(_0x4183,7)
_0x2473(_0x4183,Color3.fromRGB(45,45,45),1)
_0xDFC6("UIPadding",_0x4183,{
PaddingTop = UDim.new(0,4),
PaddingBottom = UDim.new(0,4),
PaddingLeft = UDim.new(0,4),
PaddingRight = UDim.new(0,4)
})
_0xDFC6("UIListLayout",_0x4183,{
Padding = UDim.new(0,2)
})
local _0x0ACE = false
local function _0x9954()
if not _0xCADF.Parent or not _0x5168.Parent then
return
end
local _0xE25E = _0xCADF.AbsolutePosition
local _0x66DC = _0xCADF.AbsoluteSize
local _0x3FE5 = 190
local _0x3C7E = _0x4183.AbsoluteSize.Y
local _0x5AE9 = _0x58E7.AbsoluteSize.X
local _0x5E43 = _0x58E7.AbsoluteSize.Y
local _0xC2DF = _0xE25E.X
local _0x109E = _0xE25E.Y + _0x66DC.Y + 5
if _0xC2DF + _0x3FE5 > _0x5AE9 - 8 then
_0xC2DF = _0x5AE9 - _0x3FE5 - 8
end
if _0xC2DF < 8 then
_0xC2DF = 8
end
if _0x109E + _0x3C7E > _0x5E43 - 8 then
_0x109E = _0xE25E.Y - _0x3C7E - 5
end
if _0x109E < 8 then
_0x109E = 8
end
_0x4183.Position = UDim2.fromOffset(_0xC2DF,_0x109E)
end
local function _0x46BE()
_0x0ACE = false
_0x4183.Visible = false
if _0xFAE9 == _0x46BE then
_0xFAE9 = nil
end
end
_0xCADF.Activated:Connect(function()
if _0x0ACE then
_0x46BE()
return
end
if _0xFAE9 then
_0xFAE9()
end
_0x0ACE = true
_0x4183.Visible = true
_0x9954()
_0xFAE9 = _0x46BE
end)
_0x2CC7:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
if _0x0ACE then
_0x46BE()
end
end)
for index,option in ipairs(options) do
local _0xB539 = _0xDFC6("TextButton",_0x4183,{
Size = UDim2.new(1,0,0,26),
BackgroundColor3 = Color3.fromRGB(17,17,17),
BorderSizePixel = 0,
AutoButtonColor = false,
Text = option,
Font = _0xC60F,
TextSize = 12,
TextColor3 = Color3.fromRGB(190,190,190),
LayoutOrder = index,
ZIndex = 251
})
_0x5E58(_0xB539,5)
_0xB539.MouseEnter:Connect(function()
_0x8263(_0xB539,0.1,{
BackgroundColor3 = Color3.fromRGB(30,30,30)
})
end)
_0xB539.MouseLeave:Connect(function()
_0x8263(_0xB539,0.1,{
BackgroundColor3 = Color3.fromRGB(17,17,17)
})
end)
_0xB539.Activated:Connect(function()
_0xCADF.Text = option
callback(option)
_0x46BE()
end)
end
callback(default)
end
local function _0xC315(_0x2CC7,text,min,max,default,callback)
local _0x5168 = _0xDFC6("Frame",_0x2CC7,{
Size = UDim2.new(1,0,0,64),
BackgroundColor3 = Color3.fromRGB(17,17,17),
BorderSizePixel = 0,
ZIndex = 8
})
_0x5E58(_0x5168,8)
_0x2473(_0x5168,Color3.fromRGB(31,31,31),1)
_0xDFC6("TextLabel",_0x5168,{
Size = UDim2.new(0.7,0,0,22),
Position = UDim2.fromOffset(15,5),
BackgroundTransparency = 1,
Font = _0xC60F,
Text = text,
TextSize = 13,
TextColor3 = Color3.fromRGB(220,220,220),
TextXAlignment = Enum.TextXAlignment.Left
})
local _0x476D = _0xDFC6("TextLabel",_0x5168,{
Size = UDim2.fromOffset(60,22),
Position = UDim2.new(1,-75,0,5),
BackgroundTransparency = 1,
Font = _0xC60F,
Text = tostring(default),
TextSize = 12,
TextColor3 = Color3.fromRGB(145,145,145),
TextXAlignment = Enum.TextXAlignment.Right
})
local _0x7204 = _0xDFC6("Frame",_0x5168,{
Size = UDim2.new(1,-30,0,6),
Position = UDim2.fromOffset(15,43),
BackgroundColor3 = Color3.fromRGB(40,40,40),
BorderSizePixel = 0,
Active = true
})
_0x5E58(_0x7204,5)
local _0x4B63 = _0xDFC6("Frame",_0x7204,{
Size = UDim2.new((default-min)/(max-min),0,1,0),
BackgroundColor3 = Color3.fromRGB(255,255,255),
BorderSizePixel = 0
})
_0x5E58(_0x4B63,5)
local _0x951A = false
local function _0xE207(value)
value = math.clamp(value,min,max)
value = math.floor(value)
_0x4B63.Size = UDim2.new(
(value-min)/(max-min),
0,
1,
0
)
_0x476D.Text = tostring(value)
callback(value)
end
_0x7204.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
_0x951A = true
_0xE207(
min +
((input.Position.X-_0x7204.AbsolutePosition.X)/_0x7204.AbsoluteSize.X)
* (max-min)
)
end
end)
_0xBBAF.InputChanged:Connect(function(input)
if _0x951A and input.UserInputType == Enum.UserInputType.MouseMovement then
_0xE207(
min +
((input.Position.X-_0x7204.AbsolutePosition.X)/_0x7204.AbsoluteSize.X)
* (max-min)
)
end
end)
_0xBBAF.InputEnded:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
_0x951A = false
end
end)
callback(default)
end
local _0xE8C3 = _0x7744("ESP","◉")
local _0x6121 = _0x7744("Aimbot","⌖")
local _0x8BF5 = _0x7744("Silent Aim","◈")
_0xB25C(_0xE8C3,"VISUALS")
_0x330D(_0xE8C3,"Enable ESP",_0xCD9B.ESP.Enabled,function(v)
_0xCD9B.ESP.Enabled = v
end)
_0x330D(_0xE8C3,"Health Bar",_0xCD9B.ESP.HealthBar,function(v)
_0xCD9B.ESP.HealthBar = v
end)
_0x330D(_0xE8C3,"Chams",_0xCD9B.ESP.Chams,function(v)
_0xCD9B.ESP.Chams = v
end)
_0x330D(_0xE8C3,"Visible Only",_0xCD9B.ESP.VisibleOnly,function(v)
_0xCD9B.ESP.VisibleOnly = v
end)
_0x330D(_0xE8C3,"Names",_0xCD9B.ESP.Names,function(v)
_0xCD9B.ESP.Names = v
end)
_0x330D(_0xE8C3,"Distance",_0xCD9B.ESP.Distance,function(v)
_0xCD9B.ESP.Distance = v
end)
_0xCE19(
_0xE8C3,"ESP Style",
{"Full","Corner"},"Full",
function(v)
_0xCD9B.ESP.Style = v
end
)
_0xCE19(
_0xE8C3,"ESP Color",
{"White","Black","Gray","Red","Green","Blue","Purple","Cyan","Yellow"},"White",
function(v)
_0xCD9B.ESP.Color = _0x99FC[v]
end
)
_0xB25C(_0x6121,"TARGETING")
_0x330D(
_0x6121,"Enable Aimbot",
_0xCD9B.Aimbot.Enabled,
function(v)
_0xCD9B.Aimbot.Enabled = v
end
)
_0xCE19(
_0x6121,"Target Bone",
{"Head","Torso","HumanoidRootPart","Left Arm","Right Arm","Left Leg","Right Leg","Random"},"Head",
function(v)
_0xCD9B.Aimbot.Bone = v
end
)
_0xC315(
_0x6121,"Smoothness",
0,
100,
_0xCD9B.Aimbot.Smoothness,
function(v)
_0xCD9B.Aimbot.Smoothness = v
end
)
_0x330D(_0x6121,"Draw FOV",_0xCD9B.Aimbot.DrawFOV,function(v)
_0xCD9B.Aimbot.DrawFOV = v
end)
_0xC315(
_0x6121,"FOV Size",
25,
600,
_0xCD9B.Aimbot.FOV,
function(v)
_0xCD9B.Aimbot.FOV = v
end
)
_0x330D(_0x6121,"Team Check",_0xCD9B.Aimbot.TeamCheck,function(v)
_0xCD9B.Aimbot.TeamCheck = v
end)
_0x330D(_0x6121,"Visible Check",_0xCD9B.Aimbot.VisibleCheck,function(v)
_0xCD9B.Aimbot.VisibleCheck = v
end)
_0xB25C(_0x8BF5,"SILENT AIM")
_0x330D(
_0x8BF5,"Enable Silent Aim",
_0xCD9B.SilentAim.Enabled,
function(v)
_0xCD9B.SilentAim.Enabled = v
end
)
_0xCE19(
_0x8BF5,"Target Bone",
{"Head","Torso","HumanoidRootPart","Left Arm","Right Arm","Left Leg","Right Leg","Random"},"Head",
function(v)
_0xCD9B.SilentAim.Bone = v
end
)
_0x330D(
_0x8BF5,"Hitbox Expander",
_0xCD9B.SilentAim.HitboxExpander,
function(v)
_0xCD9B.SilentAim.HitboxExpander = v
end
)
_0xC315(
_0x8BF5,"Hitbox Size",
1,
25,
_0xCD9B.SilentAim.HitboxSize,
function(v)
_0xCD9B.SilentAim.HitboxSize = v
end
)
_0xCCB4("ESP")
local _0xE4FF = _0x5207.Position
local _0x9D0A = _0xDFC6("TextButton",_0x58E7,{
Size = UDim2.fromOffset(160,44),
Position = _0xE4FF,
BackgroundColor3 = Color3.fromRGB(10,10,10),
BorderSizePixel = 0,
AutoButtonColor = false,
Text ="SniperDules",
Font = _0xC60F,
TextSize = 14,
TextColor3 = Color3.fromRGB(255,255,255),
Visible = false,
Active = true,
ZIndex = 30
})
_0x5E58(_0x9D0A,9)
_0x2473(_0x9D0A,Color3.fromRGB(45,45,45),1)
_0x67EA(
_0x9D0A,
Color3.fromRGB(10,10,10),
Color3.fromRGB(24,24,24)
)
local _0x13DC = false
local _0x548C = false
local _0xCF87
local _0x0C30
_0x9D0A.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
_0x13DC = true
_0x548C = false
_0xCF87 = input.Position
_0x0C30 = _0x9D0A.Position
end
end)
_0xBBAF.InputChanged:Connect(function(input)
if _0x13DC and input.UserInputType == Enum.UserInputType.MouseMovement then
local _0x34AF = input.Position - _0xCF87
if math.abs(_0x34AF.X) > 3 or math.abs(_0x34AF.Y) > 3 then
_0x548C = true
end
_0x9D0A.Position = UDim2.new(
_0x0C30.X.Scale,
_0x0C30.X.Offset + _0x34AF.X,
_0x0C30.Y.Scale,
_0x0C30.Y.Offset + _0x34AF.Y
)
end
end)
_0xBBAF.InputEnded:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
if _0x13DC and not _0x548C then
if not _0x44F8 then
_0x44F8 = true
_0x9D0A.Visible = false
_0x5207.Position = _0x9D0A.Position
_0x676D = true
_0x5207.Visible = true
_0xDDCE(_0x5207,0.2)
_0x44F8 = false
end
end
_0x13DC = false
end
end)
local _0x676D = true
local _0x44F8 = false
_0xDDCE(_0x5207,0.24)
local function _0xB99A()
if _0x44F8 or _0x676D then
return
end
_0x44F8 = true
_0x676D = true
_0x5207.Position = _0x9D0A.Position
_0x9D0A.Visible = false
_0x5207.Visible = true
_0xDDCE(_0x5207,0.2)
_0x44F8 = false
end
local function _0x0CBC()
if _0x44F8 or not _0x676D then
return
end
if _0xFAE9 then
_0xFAE9()
end
_0x44F8 = true
_0x676D = false
_0x9D0A.Position = _0x5207.Position
_0x421F(_0x5207,0.18)
_0x9D0A.Visible = true
_0x44F8 = false
end
_0xBBAF.InputBegan:Connect(function(input,gameProcessed)
if gameProcessed then
return
end
if input.KeyCode == Enum.KeyCode.Insert then
if _0x676D then
_0x0CBC()
else
_0xB99A()
end
end
end)
end
local function _0xEC92()
local _0x6C7B = tostring(_0xB914.Text or"")
_0x6C7B = _0x6C7B:gsub("^%s+","")
_0x6C7B = _0x6C7B:gsub("%s+$","")
if _0x6C7B == _0x10C9 then
_0x048B.Text ="Success!"_0x048B.TextColor3 = Color3.fromRGB(70,255,100)
_0x2B9A.Text ="Success"task.wait(0.8)
_0x4BA9.Visible = false
_0x4BA9:Destroy()
_0xCB8D()
else
_0x048B.Text ="Incorrect key"_0x048B.TextColor3 = Color3.fromRGB(255,65,65)
_0xB914.Text =""_0x9863()
task.wait(0.05)
if _0xB914.Parent then
_0xB914:CaptureFocus()
end
end
end
_0x2B9A.MouseButton1Click:Connect(_0xEC92)
_0xB914.FocusLost:Connect(function(enterPressed)
if enterPressed then
_0xEC92()
end
end)
_0xB914.Focused:Connect(function()
_0x8263(_0xB914,0.12,{
BackgroundColor3 = Color3.fromRGB(23,23,23)
})
end)
_0xB914.FocusLost:Connect(function()
_0x8263(_0xB914,0.12,{
BackgroundColor3 = Color3.fromRGB(19,19,19)
})
end)
_0xB914:CaptureFocus()
local _0xD6D7 = {
Hook = type(hookmetamethod) =="function"and type(newcclosure) =="function"and type(getnamecallmethod) =="function",
Gen = type(getgenv) =="function",
CheckCaller = type(checkcaller) =="function",
NewCClosure = type(newcclosure) =="function",
GetNamecallMethod = type(getnamecallmethod) =="function",
GetMouse = type(mousemoverel) =="function",
CloneRef = type(cloneref) =="function"}
local _0xF170 = _0xD6D7.Gen and getgenv() or _G
_0xF170.SniperDules = _0xF170.SniperDules or {}
local _0xEE7D = _0xF170.SniperDules
_0xEE7D.Config = _0xCD9B
local _0xDAD2 = game:GetService("RunService")
local _0xF88E = workspace.CurrentCamera
local _0xC332 = {}
local _0x13AE = {}
local _0x3927 = false
local _0x8A52
local _0x69E1
local _0xA6E9
local _0xF2B1 = nil
local _0xD793 = nil
local _0x7DB5 = nil
local function _0x5EAB(_0x58BF)
if not _0x58BF then
return false
end
local _0x6179 = _0x58BF:FindFirstChildOfClass("Humanoid")
local _0x85EF = _0x58BF:FindFirstChild("HumanoidRootPart")
return _0x6179 and _0x6179.Health > 0 and _0x85EF ~= nil
end
local function _0xB0A8(player)
if not player or player == _0x78FE then
return nil
end
local _0x58BF = player.Character
if not _0x5EAB(_0x58BF) then
return nil
end
return _0x58BF
end
local function _0x0783(_0x58BF,requested)
if not _0x58BF then
return nil
end
local _0x7CE7 = {
Head = {"Head"},
Torso = {"UpperTorso","Torso","LowerTorso"},
HumanoidRootPart = {"HumanoidRootPart"},
["Left Arm"] = {"LeftUpperArm","Left Arm","LeftLowerArm","LeftHand"},
["Right Arm"] = {"RightUpperArm","Right Arm","RightLowerArm","RightHand"},
["Left Leg"] = {"LeftUpperLeg","Left Leg","LeftLowerLeg","LeftFoot"},
["Right Leg"] = {"RightUpperLeg","Right Leg","RightLowerLeg","RightFoot"}
}
if requested =="Random"then
local _0x3243 = {"Head","Torso","HumanoidRootPart","Left Arm","Right Arm","Left Leg","Right Leg"}
requested = _0x3243[math.random(1,#_0x3243)]
end
local _0xB97B = _0x7CE7[requested] or {requested}
for _,_0x0AB8 in ipairs(_0xB97B) do
local _0xE47C = _0x58BF:FindFirstChild(_0x0AB8)
if _0xE47C and _0xE47C:IsA("BasePart") then
return _0xE47C
end
end
return _0x58BF:FindFirstChild("HumanoidRootPart") or _0x58BF:FindFirstChild("Head")
end
local function _0x6394(_0x58BF,_0xE47C)
if not _0xF88E or not _0xE47C then
return false
end
local _0x186D = _0xF88E.CFrame.Position
local _0xC6C5 = _0xE47C.Position-_0x186D
if _0xC6C5.Magnitude <= 0 then
return true
end
local _0x5224 = RaycastParams.new()
_0x5224.FilterType = Enum.RaycastFilterType.Exclude
_0x5224.FilterDescendantsInstances = {_0x78FE.Character,_0xF88E}
_0x5224.IgnoreWater = true
local _0x30A4 = workspace:Raycast(_0x186D,_0xC6C5,_0x5224)
return _0x30A4 == nil or _0x30A4.Instance:IsDescendantOf(_0x58BF)
end
local function _0x914A(_0x58BF,_0xE47C)
if not _0xCD9B.ESP.VisibleOnly then
return true
end
return _0x6394(_0x58BF,_0xE47C)
end
local function _0x0E73(_0x58BF,_0xE47C)
if not _0xCD9B.Aimbot.VisibleCheck then
return true
end
return _0x6394(_0x58BF,_0xE47C)
end
local function _0xDEA3(player)
return _0xCD9B.Aimbot.TeamCheck and _0x78FE.Team ~= nil and player.Team == _0x78FE.Team
end
local function _0x7C2D(className,_0x3108,properties)
local _0x5D21 = Instance.new(className)
for property,value in pairs(properties or {}) do
_0x5D21[property] = value
end
_0x5D21.Parent = _0x3108
return _0x5D21
end
local function _0x0C3B()
if _0x7DB5 and _0x7DB5.Parent then
return _0x7DB5
end
_0x7DB5 = Instance.new("ScreenGui")
_0x7DB5.Name ="SniperDulesNativeESP"_0x7DB5.ResetOnSpawn = false
_0x7DB5.IgnoreGuiInset = true
_0x7DB5.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_0x7DB5.DisplayOrder = 2147483647
local _0x3108 = _0xA427
if _0xD6D7.CloneRef then
local _0x8C0D,_0x5967 = pcall(function()
return cloneref(_0xA427)
end)
if _0x8C0D and _0x5967 then
_0x3108 = _0x5967
end
end
local _0x8C0D = pcall(function()
_0x7DB5.Parent = _0x3108
end)
if not _0x8C0D or not _0x7DB5.Parent then
pcall(function()
_0x7DB5.Parent = _0xA427
end)
end
return _0x7DB5
end
local function _0x36B5(_0x3108)
return _0x7C2D("Frame",_0x3108,{
BackgroundColor3 = _0xCD9B.ESP.Color or _0x99FC.White,
BorderSizePixel = 0,
Size = UDim2.fromOffset(2,2),
Visible = false,
ZIndex = 3
})
end
local function _0xF9F9(player)
if _0xC332[player] then
return _0xC332[player]
end
local _0x85EF = _0x0C3B()
local _0x3D9F = _0x7C2D("BillboardGui",_0x85EF,{
Name ="ESP_"..tostring(player.UserId),
AlwaysOnTop = true,
LightInfluence = 0,
Size = UDim2.fromOffset(90,150),
StudsOffset = Vector3.new(0,1.15,0),
Enabled = false,
MaxDistance = 100000,
ZIndexBehavior = Enum.ZIndexBehavior.Sibling
})
local _0x80F7 = _0x7C2D("Frame",_0x3D9F,{
BackgroundTransparency = 1,
BorderSizePixel = 1,
BorderColor3 = _0x99FC.White,
Position = UDim2.fromOffset(6,6),
Size = UDim2.new(1,-12,1,-12),
Visible = false,
ZIndex = 2
})
local _0x0BB9 = {}
for i=1,8 do
_0x0BB9[i] = _0x36B5(_0x3D9F)
end
local _0x0AB8 = _0x7C2D("TextLabel",_0x3D9F,{
BackgroundTransparency = 1,
BorderSizePixel = 0,
Font = _0xC60F,
TextSize = 13,
TextStrokeTransparency = 0,
Text ="",
TextColor3 = _0x99FC.White,
AnchorPoint = Vector2.new(0.5,1),
Position = UDim2.new(0.5,0,0,4),
Size = UDim2.fromOffset(180,18),
ZIndex = 4
})
local _0x7ECB = _0x7C2D("TextLabel",_0x3D9F,{
BackgroundTransparency = 1,
BorderSizePixel = 0,
Font = _0xC60F,
TextSize = 12,
TextStrokeTransparency = 0,
Text ="",
TextColor3 = _0x99FC.White,
AnchorPoint = Vector2.new(0.5,0),
Position = UDim2.new(0.5,0,1,-2),
Size = UDim2.fromOffset(120,18),
ZIndex = 4
})
local _0xB106 = _0x7C2D("Frame",_0x3D9F,{
BackgroundColor3 = Color3.fromRGB(0,0,0),
BorderSizePixel = 0,
Position = UDim2.new(0,0,0,6),
Size = UDim2.new(0,4,1,-12),
Visible = false,
ZIndex = 3
})
local _0x992A = _0x7C2D("Frame",_0xB106,{
BackgroundColor3 = Color3.fromRGB(70,255,100),
BorderSizePixel = 0,
AnchorPoint = Vector2.new(0,1),
Position = UDim2.new(0,0,1,0),
Size = UDim2.new(1,0,1,0),
ZIndex = 4
})
local _0xE5B9 = {
Billboard = _0x3D9F,
Box = _0x80F7,
Corners = _0x0BB9,
Name = _0x0AB8,
Distance = _0x7ECB,
HealthBack = _0xB106,
HealthFill = _0x992A,
Highlight = nil
}
_0xC332[player] = _0xE5B9
return _0xE5B9
end
local function _0x4DC2(_0xE5B9)
if not _0xE5B9 then
return
end
pcall(function() _0xE5B9.Billboard.Enabled = false end)
pcall(function() _0xE5B9.Box.Visible = false end)
pcall(function() _0xE5B9.Name.Visible = false end)
pcall(function() _0xE5B9.Distance.Visible = false end)
pcall(function() _0xE5B9.HealthBack.Visible = false end)
for _,line in ipairs(_0xE5B9.Corners) do
pcall(function() line.Visible = false end)
end
if _0xE5B9.Highlight then
pcall(function() _0xE5B9.Highlight.Enabled = false end)
end
end
local function _0xD8A7(line,_0xC2DF,_0x109E,w,h,_0xE5BD)
line.BackgroundColor3 = _0xE5BD
line.Position = UDim2.fromOffset(_0xC2DF,_0x109E)
line.Size = UDim2.fromOffset(math.max(1,w),math.max(1,h))
line.Visible = true
end
local function _0x8882(_0xE5B9,width,height,_0xE5BD)
local _0x3D0F = _0xE5B9.Corners
local _0xDA4B,_0xCE23 = 6,6
local _0x1734,_0x5FA7 = width-6,height-6
local _0x13E6 = math.max(10,math.floor(math.min(width,height)*0.22))
for i,line in ipairs(_0x3D0F) do
line.Visible = _0xCD9B.ESP.Style =="Corner"end
_0xD8A7(_0x3D0F[1],_0xDA4B,_0xCE23,_0x13E6,2,_0xE5BD)
_0xD8A7(_0x3D0F[2],_0xDA4B,_0xCE23,2,_0x13E6,_0xE5BD)
_0xD8A7(_0x3D0F[3],_0x1734-_0x13E6,_0xCE23,_0x13E6,2,_0xE5BD)
_0xD8A7(_0x3D0F[4],_0x1734-2,_0xCE23,2,_0x13E6,_0xE5BD)
_0xD8A7(_0x3D0F[5],_0xDA4B,_0x5FA7-2,_0x13E6,2,_0xE5BD)
_0xD8A7(_0x3D0F[6],_0xDA4B,_0x5FA7-_0x13E6,2,_0x13E6,_0xE5BD)
_0xD8A7(_0x3D0F[7],_0x1734-_0x13E6,_0x5FA7-2,_0x13E6,2,_0xE5BD)
_0xD8A7(_0x3D0F[8],_0x1734-2,_0x5FA7-_0x13E6,2,_0x13E6,_0xE5BD)
end
local function _0xA929(player)
local _0xE5B9 = _0xC332[player]
if not _0xE5B9 then
return
end
if _0xE5B9.Highlight then
pcall(function() _0xE5B9.Highlight:Destroy() end)
end
if _0xE5B9.Billboard then
pcall(function() _0xE5B9.Billboard:Destroy() end)
end
_0xC332[player] = nil
end
local function _0x4153(player)
local _0xE5B9 = _0xF9F9(player)
local _0x58BF = _0xB0A8(player)
if not _0x58BF or not _0xCD9B.ESP.Enabled then
_0x4DC2(_0xE5B9)
return
end
local _0x85EF = _0x58BF:FindFirstChild("HumanoidRootPart")
local _0x6179 = _0x58BF:FindFirstChildOfClass("Humanoid")
if not _0x85EF or not _0x6179 then
_0x4DC2(_0xE5B9)
return
end
local _0x8B0D = _0x914A(_0x58BF,_0x85EF)
if not _0x8B0D then
_0x4DC2(_0xE5B9)
return
end
local _0xE5BD = _0xCD9B.ESP.Color or _0x99FC.White
local _0xF0E1 = _0x58BF:GetExtentsSize()
local _0xAB96 = math.clamp(math.floor(_0xF0E1.Y*25),100,220)
local _0x7EA7 = math.clamp(math.floor(_0xAB96*0.58),58,135)
_0xE5B9.Billboard.Adornee = _0x85EF
_0xE5B9.Billboard.Size = UDim2.fromOffset(_0x7EA7,_0xAB96)
_0xE5B9.Billboard.StudsOffset = Vector3.new(0,math.clamp(_0xF0E1.Y*0.08,0.6,1.5),0)
_0xE5B9.Billboard.Enabled = true
_0xE5B9.Box.BorderColor3 = _0xE5BD
_0xE5B9.Box.Visible = _0xCD9B.ESP.Style =="Full"_0xE5B9.Box.Position = UDim2.fromOffset(6,6)
_0xE5B9.Box.Size = UDim2.new(1,-12,1,-12)
_0x8882(_0xE5B9,_0x7EA7,_0xAB96,_0xE5BD)
_0xE5B9.Name.Text = player.Name
_0xE5B9.Name.TextColor3 = _0xE5BD
_0xE5B9.Name.Visible = _0xCD9B.ESP.Names
local _0x5AA7 = (_0xF88E.CFrame.Position-_0x85EF.Position).Magnitude
_0xE5B9.Distance.Text = string.format("%dm",math.floor(_0x5AA7+0.5))
_0xE5B9.Distance.TextColor3 = _0xE5BD
_0xE5B9.Distance.Visible = _0xCD9B.ESP.Distance
local _0x4AB8 = math.clamp(_0x6179.Health/math.max(1,_0x6179.MaxHealth),0,1)
_0xE5B9.HealthBack.Visible = _0xCD9B.ESP.HealthBar
_0xE5B9.HealthFill.Size = UDim2.new(1,0,_0x4AB8,0)
_0xE5B9.HealthFill.BackgroundColor3 = Color3.fromRGB(math.floor(255*(1-_0x4AB8)),math.floor(255*_0x4AB8),65)
if _0xCD9B.ESP.Chams then
if not _0xE5B9.Highlight or _0xE5B9.Highlight.Parent ~= _0x58BF then
if _0xE5B9.Highlight then
pcall(function() _0xE5B9.Highlight:Destroy() end)
end
_0xE5B9.Highlight = Instance.new("Highlight")
_0xE5B9.Highlight.Name ="SniperDulesChams"_0xE5B9.Highlight.Adornee = _0x58BF
_0xE5B9.Highlight.FillTransparency = 0.72
_0xE5B9.Highlight.OutlineTransparency = 0
_0xE5B9.Highlight.Parent = _0x58BF
end
_0xE5B9.Highlight.FillColor = _0xE5BD
_0xE5B9.Highlight.OutlineColor = _0xE5BD
_0xE5B9.Highlight.DepthMode = _0xCD9B.ESP.VisibleOnly and Enum.HighlightDepthMode.Occluded or Enum.HighlightDepthMode.AlwaysOnTop
_0xE5B9.Highlight.Enabled = true
elseif _0xE5B9.Highlight then
_0xE5B9.Highlight.Enabled = false
end
end
local function _0xA030()
_0xF88E = workspace.CurrentCamera or _0xF88E
if not _0xF88E then
return
end
for _,player in ipairs(_0xDF8F:GetPlayers()) do
if player ~= _0x78FE then
_0x4153(player)
end
end
end
local function _0xC41D()
if not _0xCD9B.SilentAim.HitboxExpander then
for _0xE47C,_0x4C52 in pairs(_0x13AE) do
if _0xE47C and _0xE47C.Parent then
pcall(function() _0xE47C.Size = _0x4C52 end)
end
_0x13AE[_0xE47C] = nil
end
return
end
for _,player in ipairs(_0xDF8F:GetPlayers()) do
if player ~= _0x78FE then
local _0x58BF = _0xB0A8(player)
local _0x1C78 = _0xCD9B.SilentAim.Bone =="Random"and"HumanoidRootPart"or _0xCD9B.SilentAim.Bone
local _0xE47C = _0x58BF and _0x0783(_0x58BF,_0x1C78)
if _0xE47C and _0xE47C:IsA("BasePart") then
if not _0x13AE[_0xE47C] then
_0x13AE[_0xE47C] = _0xE47C.Size
end
local _0xC771 = math.clamp(_0xCD9B.SilentAim.HitboxSize,1,25)
pcall(function() _0xE47C.Size = Vector3.new(_0xC771,_0xC771,_0xC771) end)
end
end
end
for _0xE47C in pairs(_0x13AE) do
if not _0xE47C or not _0xE47C.Parent then
_0x13AE[_0xE47C] = nil
end
end
end
local function _0xC6A3()
_0xF88E = workspace.CurrentCamera or _0xF88E
if not _0xF88E then
return nil
end
local _0xD6D2 = _0xBBAF:GetMouseLocation()
local _0x94B6
local _0xD990 = math.huge
local _0x7FB8 = math.max(1,tonumber(_0xCD9B.Aimbot.FOV) or 200)
for _,player in ipairs(_0xDF8F:GetPlayers()) do
if player ~= _0x78FE and not _0xDEA3(player) then
local _0x58BF = _0xB0A8(player)
if _0x58BF then
local _0xE47C = _0x0783(_0x58BF,_0xCD9B.Aimbot.Bone)
if _0xE47C and _0x0E73(_0x58BF,_0xE47C) then
local _0x2FC2,_0x7142 = _0xF88E:WorldToViewportPoint(_0xE47C.Position)
if _0x7142 and _0x2FC2.Z > 0 then
local _0x34AF = Vector2.new(_0x2FC2.X,_0x2FC2.Y)-_0xD6D2
local _0x7ECB = _0x34AF.Magnitude
if _0x7ECB <= _0x7FB8 and _0x7ECB < _0xD990 then
_0xD990 = _0x7ECB
_0x94B6 = _0xE47C
end
end
end
end
end
end
return _0x94B6
end
local function _0x9B12()
_0xF88E = workspace.CurrentCamera or _0xF88E
if not _0xF88E then
return nil
end
local _0xD6D2 = _0xBBAF:GetMouseLocation()
local _0x94B6
local _0xD990 = math.huge
for _,player in ipairs(_0xDF8F:GetPlayers()) do
if player ~= _0x78FE then
local _0x58BF = _0xB0A8(player)
if _0x58BF then
local _0xE47C = _0x0783(_0x58BF,_0xCD9B.SilentAim.Bone)
if _0xE47C then
local _0x2FC2,_0x7142 = _0xF88E:WorldToViewportPoint(_0xE47C.Position)
if _0x7142 and _0x2FC2.Z > 0 then
local _0x34AF = Vector2.new(_0x2FC2.X,_0x2FC2.Y)-_0xD6D2
local _0x7ECB = _0x34AF.Magnitude
if _0x7ECB < _0xD990 then
_0xD990 = _0x7ECB
_0x94B6 = _0xE47C
end
end
end
end
end
end
return _0x94B6
end
local function _0xD665()
if not _0xCD9B.Aimbot.Enabled then
return
end
local _0xAE24 = _0xC6A3()
if not _0xAE24 then
return
end
_0xF88E = workspace.CurrentCamera or _0xF88E
local _0x0095 = _0xF88E.CFrame.Position
local _0x0BCA = CFrame.lookAt(_0x0095,_0xAE24.Position)
local _0x836A = math.clamp(_0xCD9B.Aimbot.Smoothness,0,100)
local _0x865E = _0x836A <= 0 and 1 or math.clamp(1-_0x836A/100,0.02,1)
_0xF88E.CFrame = _0xF88E.CFrame:Lerp(_0x0BCA,_0x865E)
end
local function _0x5986(ray)
if typeof(ray) ~="Ray"then
return ray
end
local _0xAE24 = _0x9B12()
if not _0xAE24 or not _0xAE24.Parent then
return ray
end
local _0x186D = ray.Origin
local _0xC6C5 = ray.Direction
if _0xC6C5.Magnitude <= 0 then
return ray
end
local _0x9FD1 = _0xAE24.Position-_0x186D
if _0x9FD1.Magnitude <= 0 then
return ray
end
return Ray.new(_0x186D,_0x9FD1.Unit*_0xC6C5.Magnitude)
end
local function _0xDBC1()
if _0xF2B1 and _0xF2B1.Parent then
return _0xF2B1
end
local _0x2394 = _0x7C2D("ScreenGui",_0xA427,{
Name ="SniperDulesNativeFOV",
ResetOnSpawn = false,
IgnoreGuiInset = true,
ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
DisplayOrder = 2147483646
})
local _0x563F = _0x7C2D("Frame",_0x2394,{
BackgroundTransparency = 1,
BorderSizePixel = 0,
AnchorPoint = Vector2.new(0.5,0.5),
Size = UDim2.fromOffset(400,400),
Visible = false,
ZIndex = 100
})
_0x7C2D("UICorner",_0x563F,{
CornerRadius = UDim.new(1,0)
})
_0xD793 = _0x7C2D("UIStroke",_0x563F,{
Thickness = 1,
Color = _0x99FC.White,
Transparency = 0
})
_0xF2B1 = _0x563F
return _0xF2B1
end
local function _0x71B1()
local _0x563F = _0xDBC1()
if not _0x563F then
return
end
local _0xD6D2 = _0xBBAF:GetMouseLocation()
local _0xC142 = math.max(1,tonumber(_0xCD9B.Aimbot.FOV) or 200)
_0x563F.Position = UDim2.fromOffset(_0xD6D2.X,_0xD6D2.Y)
_0x563F.Size = UDim2.fromOffset(_0xC142*2,_0xC142*2)
_0xD793.Color = _0xCD9B.ESP.Color or _0x99FC.White
_0x563F.Visible = _0xCD9B.Aimbot.DrawFOV and _0xCD9B.Aimbot.Enabled
end
local function _0x7B06()
if _0x3927 or not _0xD6D7.Hook then
return
end
local _0x11CF
_0x11CF = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
local _0xA220 = getnamecallmethod()
if not (_0xD6D7.CheckCaller and checkcaller()) and _0xCD9B.SilentAim.Enabled then
local _0x85CA = {...}
if self == workspace and _0xA220 =="Raycast"then
if typeof(_0x85CA[1]) =="Vector3"and typeof(_0x85CA[2]) =="Vector3"then
local _0xAE24 = _0x9B12()
if _0xAE24 then
local _0x186D = _0x85CA[1]
local _0xC6C5 = _0x85CA[2]
local _0x9FD1 = _0xAE24.Position-_0x186D
if _0x9FD1.Magnitude > 0 then
_0x85CA[2] = _0x9FD1.Unit*_0xC6C5.Magnitude
return _0x11CF(self,table.unpack(_0x85CA))
end
end
end
elseif self == workspace and (_0xA220 =="FindPartOnRay"or _0xA220 =="FindPartOnRayWithIgnoreList"or _0xA220 =="FindPartOnRayWithWhitelist") then
if typeof(_0x85CA[1]) =="Ray"then
_0x85CA[1] = _0x5986(_0x85CA[1])
return _0x11CF(self,table.unpack(_0x85CA))
end
end
end
return _0x11CF(self,...)
end))
_0xF170.SniperDulesOldNamecall = _0x11CF
_0x3927 = true
end
local function _0x60DE()
if _0x69E1 then
_0x69E1:Disconnect()
_0x69E1 = nil
end
if _0x8A52 then
_0x8A52:Disconnect()
_0x8A52 = nil
end
if _0xA6E9 then
_0xA6E9:Disconnect()
_0xA6E9 = nil
end
for player in pairs(_0xC332) do
_0xA929(player)
end
for _0xE47C,_0x4C52 in pairs(_0x13AE) do
if _0xE47C and _0xE47C.Parent then
pcall(function() _0xE47C.Size = _0x4C52 end)
end
end
table.clear(_0x13AE)
if _0x7DB5 then
pcall(function() _0x7DB5:Destroy() end)
_0x7DB5 = nil
end
if _0xF2B1 then
local _0x3108 = _0xF2B1.Parent
if _0x3108 then
pcall(function() _0x3108:Destroy() end)
else
pcall(function() _0xF2B1:Destroy() end)
end
_0xF2B1 = nil
_0xD793 = nil
end
end
_0x60DE()
_0xDF8F.PlayerRemoving:Connect(function(player)
_0xA929(player)
end)
_0x69E1 = _0xDAD2.RenderStepped:Connect(function()
_0xA030()
end)
_0x8A52 = _0xDAD2.RenderStepped:Connect(function()
_0x71B1()
_0xD665()
end)
_0xA6E9 = _0xDAD2.Heartbeat:Connect(function()
_0xC41D()
end)
_0x7B06()
_0xF170.SniperDulesRuntime = _0xEE7D
