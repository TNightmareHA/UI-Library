-- Made by: https://v3rmillion.net/member.php?action=profile&uid=1055020

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/TNightmareHA/Backup/main/Azure", true))()
local t = lib:CreateTab("Example", "Example Sentence", true) 
--true means darkmode is enabled and false means its disabled
--if you leave it empty you have a custom theme.
t:CreateToggle("Test Toggle", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        print("Test Enabled")
    else
        print("Test Disabled")
    end
end)
t:CreateSlider("Test - Fov Radius", 0, 600, function(arg) --the (arg) is the sliders value
    print("Fov Radius is set to:", arg)
end)
t:CreateDropDown("Example Drop", {"Head", "Torso"}, function(arg) --the (arg) is the option you choose 
    if arg == "Head" then
        print("HEahshoot")
    elseif arg == "Torso" then
        print("trrrrso")
    end
end)
t:CreateButton("Test - Inf Jump", function() --you dont need "arg" for a button
    print("Inf Jump is now permanently on.")
end)
