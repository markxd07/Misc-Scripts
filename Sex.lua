(function(...)
	local UserInputService = game:GetService("UserInputService")
	local args = {...}
	if UserInputService.TouchEnabled or _G.Close_Ui then
		spawn(function()
			local AyakaLib = args[1]
	
			if not AyakaLib then return end
			if game:GetService("CoreGui"):FindFirstChild("CloseUI") then
				game:GetService("CoreGui"):FindFirstChild("CloseUI"):Destroy()
			end
		
			local ScreenGui = Instance.new("ScreenGui")
			local Frame = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local TextLabel = Instance.new("TextLabel")
			local TextButton = Instance.new("TextButton")
				
			ScreenGui.Name = "CloseUI"
			ScreenGui.Parent = game:GetService("CoreGui")
			ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		
			Frame.Parent = ScreenGui
			Frame.Active = true
			Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
			Frame.BorderSizePixel = 0
			Frame.Position = UDim2.new(0.081166774, 0, 0.0841463208, 0)
			Frame.Size = UDim2.new(0, 47, 0, 47)
		
			UICorner.Parent = Frame
		
			TextLabel.Parent = Frame
			TextLabel.Active = true
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.Position = UDim2.new(0, 0, 0.0212765951, 0)
			TextLabel.Size = UDim2.new(0, 47, 0, 47)
			TextLabel.Font = Enum.Font.GothamBold
			TextLabel.Text = "OFF"
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 14.000
		
			TextButton.Parent = Frame
			TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextButton.BackgroundTransparency = 1.000
			TextButton.Size = UDim2.new(0, 47, 0, 47)
			TextButton.Font = Enum.Font.SourceSans
			TextButton.Text = ""
			TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton.TextSize = 14.000
		
			local focus = false
		
			TextButton.MouseButton1Down:Connect(function()
				if not focus then
					TextLabel.Text = "ON"
					AyakaLib.Enabled = false
				else
					TextLabel.Text = "OFF"
					AyakaLib.Enabled = true
				end
				focus = not focus
			end)
		end)
	end
end)(...)
