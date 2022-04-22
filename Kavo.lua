local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/TNightmareHA/Backup/main/Kavo"))()

local window = library.CreateLib("Example", "Ocean")
local tab = window:NewTab("Test")
local section = tab:NewSection("Section Example")
section:NewLabel("Example - Doing good!")
section:NewButton("ButtonTest", "Example XXX", function()
    print("Clicked")
end)
section:NewToggle("ToggleTest", "Example BRUH", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)
section:NewSlider("SliderTest", "Example KEKW", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    print(s)
end)
section:NewTextBox("TextboxTest", "Example Doodoo Doll", function(txt)
    print(txt)
end)
section:NewKeybind("KeybindText - Test", "BRUH KEYBIND", Enum.KeyCode.F, function()
    print("You just clicked the bind")
 end)
section:NewKeybind("KeybindText - ToggleUI", "CEFI", Enum.KeyCode.F, function()
    Library:ToggleUI()
end)
section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
    print(currentOption)
end)

local tab1 = window:NewTab("Color")
local section1 = tab1:NewSection("Pick Some")
section1:NewColorPicker("Color Text - Test", "Color Example", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)
--[[local colors = {
    SchemeColor = Color3.fromRGB(0,255,255),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}]]
