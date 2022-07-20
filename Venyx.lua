--Made by : https://v3rmillion.net/member.php?action=profile&uid=244024

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/TNightmareHA/Backup/main/Venyx"))()
local window = library.new("Title", 5013109572)

local themes = {
    Background = Color3.fromRGB(24, 24, 24),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),  
    TextColor = Color3.fromRGB(255, 255, 255)
}

local page = venyx:addPage("Example", 5012544693)
local section1 = page:addSection("Section 1")
local section2 = page:addSection("Section 2")

section1:addToggle("Example Toggle", nil, function(value)
    print("Toggled", value)
end)
section1:addButton("Button", function()
    print("Clicked")
end)
section1:addTextbox("Notification", "Default", function(value, focusLost)
    print("Input", value)
    if focusLost then
        venyx:Notify("Title", value)
    end
end)

section2:addKeybind("TestToggle Keybind", Enum.KeyCode.One, function()
    print("Activated Keybind")
    venyx:toggle()
end, function()
    print("Changed Keybind")
end)
section2:addColorPicker("ColorPicker", Color3.fromRGB(50, 50, 50))
section2:addColorPicker("ColorPicker2")
section2:addSlider("Slider", 0, -100, 100, function(value)
    print("Dragged", value)
end)
section2:addDropdown("Dropdown", {"1", "2", "3", "4", 1, 2, 3})
section2:addDropdown("Dropdown", {"5", "6", "7", "8", 1, 2, 3}, function(text)
    print("Selected", text)
end)
section2:addButton("Button")



local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
    colors:addColorPicker(theme, color, function(color3)
        venyx:setTheme(theme, color3)
    end)
end



window:SelectPage(venyx.pages[1], true) -- no default for more freedom
