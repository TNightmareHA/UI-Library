-- Made by: https://v3rmillion.net/member.php?action=profile&uid=1055020

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/AbstractPoo/Main/AbstractUI/AbstractUI"))()
local window = lib:Create("Example UI", UDim2.new(0, 420, 0, 450))
window:Divider("Test - Divider")
window:Button("Test - Button", "Example Description", function()
    print("Button clicked")
end)
window:Toggle("Test - Toggle", "Example Description", false, function(state)
    print(state)
end)
window:Dropdown("Test - Dropdown", "Example Description", {"Option1", "Option2", "Option3"}, function(value)
    print(value)
end)

window:Slider("Test - Slider", "Example Description", 0, 100, 50, function(value)
    print(value)
end)
