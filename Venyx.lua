-- Made by: https://v3rmillion.net/member.php?action=profile&uid=244024

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/TNightmareHA/Backup/main/Venyx"))()
local window = library.new("Example", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local p = venyx:addPage("Test", 5012544693)
local s1 = page:addSection("Section 1")
local s2 = page:addSection("Section 2")

s1:addToggle("Test Toggle", nil, function(value)
    print("On Test")
end)
s1:addButton("Test Button", function()
    print("Click Test")
end)
s1:addTextbox("Notification", "Default", function(value, focusLost)
    print("Input Test", value)

if focusLost then
window:Notify("Example", value)
end
end)

s2:addKeybind("Toggle Keybind Test", Enum.KeyCode.One, function()
    print("Activated Keybind")
window:toggle()
end, function()
    print("Changed Keybind Test")
end)
s2:addColorPicker("ColorPicker Test", Color3.fromRGB(50, 50, 50))
s2:addColorPicker("ColorPicker2 Test")
s2:addSlider("Slider Test", 0, -100, 100, function(value)
    print("Dragged", value)
end)
s2:addDropdown("Dropdown", {"Hello", "World", "Hello World", "Word", 1, 2, 3})
s2:addDropdown("Dropdown", {"Hello", "World", "Hello World", "Word", 1, 2, 3}, function(text)
    print("Selected", text)
end)
s2:addButton("Button Output")

-- second page
local theme = window:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end

-- load
window:SelectPage(venyx.pages[1], true)
