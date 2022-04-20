-- Made by: https://v3rmillion.net/member.php?action=profile&uid=1055020

-- Library
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/TNightmareHA/Backup/main/Mercury"))()
local gui = lib:Create{
    Name = "Test",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}
local t = gui:Tab{
	Name = "Test",
	Icon = "rbxassetid://8569322835"
}
t:Button{
	Name = "Test Button",
	Description = nil,
	Callback = function()
  
  end
}
t:Toggle{
	Name = "Test Toggle",
	StartingState = false,
	Description = nil,
	Callback = function(state)
  
  end
}
t:Textbox{
	Name = "Test Textbox",
	Callback = function(text)
  
  end
}
local d = t:Dropdown{
	Name = "Test Dropdown",
	StartingText = "Select...",
	Description = nil,
	Items = {
		{"Hello", 1}, 		-- {name, value}
		12,			-- or just value, which is also automatically taken as name
		{"Test", "Thread"}
	},
	Callback = function(item)
    
    return
  end
}
d:AddItems({
	{"Test NewItem", 12},		-- {name, value}
	400				-- or just value, which is also automatically taken as name
})

d:RemoveItems({
	"Test NewItem", "Hello"		-- just the names to get removed (upper/lower case ignored)
})

d:Clear()
t:Slider{
	Name = "Test Slider",
	Default = 50,
	Min = 0,
	Max = 100,
	Callback = function()
  
  end
}
t:Keybind{
	Name = "Test Keybind",
	Keybind = nil,
	Description = nil
}
gui:Prompt{
	Followup = false,
	Title = "Test Prompt",
	Text = "I'm good",
	Buttons = {
		ok = function()
      
			return true
		end
		no = function()
      
			return false
		end
	}
}
gui:Notification{
	Title = "Alert",
	Text = "Subscribe to my YouTube",
	Duration = 3,
	Callback = function()
  
  end
}
t:ColorPicker{
	Style = Mercury.ColorPickerStyles.Legacy,
	Callback = function(color)
  
  end
}
gui:Credit{
	Name = "TNightmareHA / MLBB_0939",
	Description = "Tester of GUI",
	V3rm = "https://v3rmillion.net/member.php?action=profile&uid=2626960",
	Discord = "TheNightmareHorrorAttraction#3004"
}
