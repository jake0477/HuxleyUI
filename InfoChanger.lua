local BusSettings = require(script.Parent.Parent.Parent.Parent.Parent.Parent.Parent.DriveSeat.BusSettings)
local Stuff = script.Parent
local Stuff2 = script.Parent.Parent.Info


-- door Changer
if BusSettings.DoorsAndRedsSameKeybind == true then
	Stuff.Reds.Visible = false
end

if BusSettings.DoorsAndRedsSameKeybind == false then
	Stuff.Reds.Visible = true
	Stuff.Doors.T.Text = "F"
end

-- checks if HighIdle is on and hids if not
if BusSettings.HighIdleEnabled == false then
	Stuff.Highidle.Visible = false
end

-- checks if Dash Key is a thing and hides the part in info if its not a thing
if BusSettings.WorkingKeyIgnition == false then
	Stuff2.Starter.Visible = false
end
