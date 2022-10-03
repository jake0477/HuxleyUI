local cPanel = script.Parent
local controlsOpen = false
local UIS1 = nil
local UIS2 = nil
local Tabs = script.Parent.Window.Tabs
local Windows = script.Parent.Window.Content

Tabs.Keyboard.MouseButton1Click:Connect(function()
	Tabs.Keyboard:TweenPosition(UDim2.new(0, 5, 0, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,.4,true)
	Tabs.Controller:TweenPosition(UDim2.new(0, 120, 0, -5),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,.4,true)
	Tabs.Info:TweenPosition(UDim2.new(0, 235, 0, -5),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,.4,true)
	tabs.Controller2:TweenPosition(UDin2.new(0, 120, 0, -5),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,.4,true)
	Windows.Contlr.Visible = false
	Windows.Keyboard.Visible = true
	Windows.Info.Visible = false
	Windows.Contlr2.Visible = false
	script.Parent.Swich:Play()
end)

Tabs.Controller.MouseButton1Click:Connect(function()
	Tabs.Keyboard:TweenPosition(UDim2.new(0, 5, 0, -5),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,.4,true)
	Tabs.Controller:TweenPosition(UDim2.new(0, 120, 0, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,.4,true)	
	Tabs.Info:TweenPosition(UDim2.new(0, 235, 0, -5),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,.4,true)
	Tabs.Controller2:TweenPosition(UDim2.new(0, 120, 0, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,.4,true)
	Windows.Contlr.Visible = true
	Windows.Keyboard.Visible = false
	Windows.Info.Visible = false
	Windows.Contlr2 = false
	script.Parent.Swich:Play()
end)

Tabs.Info.MouseButton1Click:connect(function()
	Tabs.Keyboard:TweenPosition(UDim2.new(0, 5, 0, -5),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,.4,true)
	Tabs.Controller:TweenPosition(UDim2.new(0, 120, 0, -5),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,.4,true)
	Tabs.Info:TweenPosition(UDim2.new(0, 235, 0, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,.4,true)
	Tabs.Controller2:TweenPosition(UDim2.new(0, 120, 0, -5),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,.4,true)
	Windows.Contlr.Visible = false
	Windows.Keyboard.Visible = false
	Windows.Info.Visible = true
	Windows.Contlr.Visible = false
	script.Parent.Swich:Play()
end)

cPanel.Toggle.MouseButton1Click:connect(function()
	controlsOpen = not controlsOpen
	if controlsOpen then
		script.Parent.Click:Play()
		cPanel.Toggle.BackgroundColor3 = Color3.new(1,85/255,.5)
		cPanel.Window:TweenPosition(UDim2.new(0.5, -250,0.5, -250),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,.7,true)
	else
		if UIS1 ~= nil then UIS1:disconnect() end
		if UIS2 ~= nil then UIS2:disconnect() end
		cPanel.Toggle.BackgroundColor3 = Color3.new(1,170/255,0)
		cPanel.Window:TweenPosition(UDim2.new(0.5, -250,0, -500),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,.7,true)
	end
end)

wait(.5)
cPanel.Toggle:TweenPosition(UDim2.new(0.5, -50, 1, -25),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,.4,false)	
for i=1,6 do
	cPanel.Toggle.BackgroundColor3 = Color3.new(100/255,100/255,100/255)
	wait(.2)
	if controlsOpen then
		cPanel.Toggle.BackgroundColor3 = Color3.new(1,85/255,.5)
	else
		cPanel.Toggle.BackgroundColor3 = Color3.new(1,170/255,0)
	end
	wait(.2)
end
