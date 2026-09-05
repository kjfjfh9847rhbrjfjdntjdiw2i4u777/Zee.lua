(function()
    local _s, _err = pcall(function()
        -- [ZEE HUB] Protected Build: ZEE-HUB-261
        -- Level: ADVANCED
        local HttpService = game:GetService(string.char(72,116,116,112,83,101,114,118,105,99,101))
        local TeleportService = game:GetService(string.char(84,101,108,101,112,111,114,116,83,101,114,118,105,99,101))
        local Players = game:GetService(string.char(80,108,97,121,101,114,115))
        local Lighting = game:GetService(string.char(76,105,103,104,116,105,110,103))
        local LocalPlayer = Players.LocalPlayer
        local PlaceId = game.PlaceId
        local blur = Instance.new(string.char(66,108,117,114,69,102,102,101,99,116))
        blur.Size = 24
        blur.Name = string.char(83,101,114,118,101,114,83,99,97,110,110,101,114,66,108,117,114)
        blur.Parent = Lighting
        local screenGui = Instance.new(string.char(83,99,114,101,101,110,71,117,105))
        screenGui.Name = string.char(49,80,108,97,121,101,114,83,99,97,110,110,101,114,71,85,73)
        screenGui.ResetOnSpawn = false
        screenGui.Parent = LocalPlayer:WaitForChild(string.char(80,108,97,121,101,114,71,117,105))
        local mainFrame = Instance.new(string.char(70,114,97,109,101))
        mainFrame.Size = UDim2.new(0, 360, 0, 420)
        mainFrame.Position = UDim2.new(0.5, -180, 0.5, -210)
        mainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        mainFrame.Active = true
        mainFrame.Draggable = false 
        mainFrame.Parent = screenGui
        local mainCorner = Instance.new(string.char(85,73,67,111,114,110,101,114))
        mainCorner.CornerRadius = UDim.new(0, 16)
        mainCorner.Parent = mainFrame
        local stroke = Instance.new(string.char(85,73,83,116,114,111,107,101))
        stroke.Thickness = 2.5
        stroke.Color = Color3.fromRGB(0, 255, 200)
        stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        stroke.Parent = mainFrame
        task.spawn(function()
            local hue = 0
            while stroke and stroke.Parent do
                hue = (hue + 0.004) % 1
                stroke.Color = Color3.fromHSV(hue, 0.85, 1)
                task.wait(0.03)
            end
        end)
        local closeBtn = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
        closeBtn.Size = UDim2.new(0, 30, 0, 30)
        closeBtn.Position = UDim2.new(1, -35, 0, 5)
        closeBtn.BackgroundTransparency = 1
        closeBtn.Text = string.char(10005)
        closeBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
        closeBtn.TextSize = 18
        closeBtn.Parent = mainFrame
        closeBtn.MouseButton1Click:Connect(function()
            blur:Destroy()
            screenGui:Destroy()
        end)
        local mapImage = Instance.new(string.char(73,109,97,103,101,76,97,98,101,108))
        mapImage.Size = UDim2.new(0, 90, 0, 90)
        mapImage.Position = UDim2.new(0.5, -45, 0, 20)
        mapImage.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        mapImage.Image = string.char(114,98,120,116,104,117,109,98,58,47,47,116,121,112,101,61,65,115,115,101,116,38,105,100,61) .. PlaceId .. string.char(38,119,61,52,50,48,38,104,61,52,50,48)
        mapImage.Parent = mainFrame
        local imgCorner = Instance.new(string.char(85,73,67,111,114,110,101,114))
        imgCorner.CornerRadius = UDim.new(0, 12)
        imgCorner.Parent = mapImage
        local statusLabel = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
        statusLabel.Size = UDim2.new(1, -20, 0, 30)
        statusLabel.Position = UDim2.new(0, 10, 0, 120)
        statusLabel.BackgroundTransparency = 1
        statusLabel.Text = string.char(55356,32,3585,3635,3621,3633,3591,3588,3657,3609,3627,3634,32,83,101,114,118,101,114,32,3607,3637,3656,3617,3637,32,49,32,3588,3609,46,46,46)
        statusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        statusLabel.TextSize = 15
        statusLabel.Font = Enum.Font.SourceSansBold
        statusLabel.Parent = mainFrame
        task.spawn(function()
            local spinners = {string.char(55356), string.char(55357), string.char(9203), string.char(10024)}
            local idx = 1
            while statusLabel and statusLabel.Parent and statusLabel.Text:find(string.char(3585,3635,3621,3633,3591,3588,3657,3609,3627,3634)) do
                statusLabel.Text = spinners[idx] .. string.char(32,3585,3635,3621,3633,3591,3626,3649,3585,3609,3627,3634,3648,3595,3636,3619,3660,3615,3648,3623,3629,3619,3660,3607,3637,3656,3617,3637,32,49,32,3588,3609,46,46,46)
                idx = (idx % #spinners) + 1
                task.wait(0.25)
            end
        end)
        local scrollList = Instance.new(string.char(83,99,114,111,108,108,105,110,103,70,114,97,109,101))
        scrollList.Size = UDim2.new(1, -40, 0, 230)
        scrollList.Position = UDim2.new(0, 20, 0, 160)
        scrollList.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
        scrollList.BorderSizePixel = 0
        scrollList.ScrollBarThickness = 5
        scrollList.Visible = false
        scrollList.Parent = mainFrame
        local listLayout = Instance.new(string.char(85,73,76,105,115,116,76,97,121,111,117,116))
        listLayout.Padding = UDim.new(0, 6)
        listLayout.Parent = scrollList
        local scrollCorner = Instance.new(string.char(85,73,67,111,114,110,101,114))
        scrollCorner.CornerRadius = UDim.new(0, 8)
        scrollCorner.Parent = scrollList
        local function search1PlayerServers()
            local foundServers = {}
            local cursor = string.char()
            local attempts = 0
            repeat
                attempts = attempts + 1
                local url = string.char(104,116,116,112,115,58,47,47,103,97,109,101,115,46,114,111,98,108,111,120,46,99,111,109,47,118,49,47,103,97,109,101,115,47) .. PlaceId .. string.char(47,115,101,114,118,101,114,115,47,48,63,115,111,114,116,79,114,100,101,114,61,65,115,99,38,108,105,109,105,116,61,49,48,48) .. (cursor ~= string.char() and string.char(38,99,117,114,115,111,114,61) .. cursor or string.char())
                local success, response = pcall(function()
                    return game:HttpGet(url)
                end)
                if success then
                    local data = HttpService:JSONDecode(response)
                    if data and data.data then
                        for _, server in ipairs(data.data) do
                            if server.playing == 1 and server.id ~= game.JobId then
                                table.insert(foundServers, server)
                            end
                        end
                        cursor = data.nextPageCursor or string.char()
                    end
                end
                task.wait(0.2)
            until cursor == string.char() or #foundServers >= 15 or attempts >= 6
            statusLabel.Text = string.char(9989,32,3614,3610,3648,3595,3636,3619,3660,3615,3648,3623,3629,3619,3660,3607,3637,3656,3617,3637,32,49,32,3588,3609,3607,3633,3657,3591,3627,3617,3604,32) .. #foundServers .. string.char(32,3648,3595,3636,3619,3660,3615)
            scrollList.Visible = true
            if #foundServers == 0 then
                local emptyLabel = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
                emptyLabel.Size = UDim2.new(1, 0, 0, 40)
                emptyLabel.BackgroundTransparency = 1
                emptyLabel.Text = string.char(3652,3617,3656,3614,3610,3648,3595,3636,3619,3660,3615,3648,3623,3629,3619,3660,3607,3637,3656,3617,3637,32,49,32,3588,3609,3651,3609,3586,3603,3632,3609,3637,3657)
                emptyLabel.TextColor3 = Color3.fromRGB(220, 100, 100)
                emptyLabel.Font = Enum.Font.SourceSansBold
                emptyLabel.TextSize = 14
                emptyLabel.Parent = scrollList
                return
            end
            for i, server in ipairs(foundServers) do
                local btn = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
                btn.Size = UDim2.new(1, -10, 0, 38)
                btn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                btn.Text = string.char(55356,32,83,101,114,118,101,114,32,35) .. i .. string.char(32,91,3612,3641,3657,3648,3621,3656,3609,3651,3609,3648,3595,3636,3619,3660,3615,58,32,49,32,3588,3609,93)
                btn.TextColor3 = Color3.fromRGB(0, 255, 180)
                btn.Font = Enum.Font.SourceSansBold
                btn.TextSize = 14
                btn.Parent = scrollList
                local btnCorner = Instance.new(string.char(85,73,67,111,114,110,101,114))
                btnCorner.CornerRadius = UDim.new(0, 6)
                btnCorner.Parent = btn
                btn.MouseButton1Click:Connect(function()
                    statusLabel.Text = string.char(55357,32,3585,3635,3621,3633,3591,3618,3657,3634,3618,3652,3611,3618,3633,3591,32,83,101,114,118,101,114,32,35) .. i .. string.char(46,46,46)
                    TeleportService:TeleportToPlaceInstance(PlaceId, server.id, LocalPlayer)
                end)
            end
        end
        task.spawn(search1PlayerServers)
    end)
    if not _s then warn("[ZeeHub] Error:", _err) end
end)();
