-- Made by: https://v3rmillion.net/member.php?action=profile&uid=803888

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/TNightmareHA/Backup/main/Turtle"))()
local window = lib:Window("Example")
-- Name of button, callback
window:Button("Button Example", function()
    print("Test")
end)
-- Name of the toggle, default state of the toggle, callback
window:Toggle("Example toggle", true, function(bool)
    print(bool) -- bool is true or false depending on the state of the toggle
end)
-- Name, default color (set to true to make the default rainbow), callback
window:ColorPicker("Color Picker Example", Color3.fromRGB(255, 255, 255), function(color)
    print(color)
end)
-- Name of slider, minimum value, maximum value, default value, callback
window:Slider("Example Slider",0,100,20, function(value)
    print(value)
end)
-- Text, color: setting color to true will give it a rainbow effect!
window:Label("Credits to TheNightmareHorrorAttraction#3004", Color3.fromRGB(127, 143, 166))
-- Name, callback
window:Box("Example Walkspeed", function(text, focuslost)
    if focuslost then
      print(text)
    end
end)
-- The callback will be called with two arguments, the text that the player inputted and whether the player has stopped writing
-- Name, table with names of the button that you want, callback that will be called with the name of the button that was pressed
local d = window:Dropdown("Example dropdown", {"Button 1", "Button 2", "Button 3"}, function(name)
    print(name)
end)
-- Name
d:Button("New button")
-- Name
d:Remove("Button")
-- Key
lib:Keybind("Z")
lib:Destroy()
