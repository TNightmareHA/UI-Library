local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/TNightmareHA/Backup/main/Wizard"))()

local w = library:NewWindow("Title")

local p = w:NewSection("Name")

p:CreateButton("Example Button", function()
    print("The Button")
end)

p:CreateTextbox("Example Text Box", function(value)
    print(value)
end)

p:CreateToggle("Example Toggle", function(value)
    print(value)
end)

local newp = w:NewSection("Name 2")

newp:CreateDropdown("Example Dropdown", {"Item 1", "Item 2", "Item 3"}, 2, function(text)
    print(text)
end)

newp:CreateSlider("Example Slider", 0, 100, 50, false, function(value)
    print(value)
end)

newp:CreateColorPicker("Example Color Picker", Color3.new(0, 0, 0), function(value)
    print(value)
end)
