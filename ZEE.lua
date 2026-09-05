(function()
    local _s, _err = pcall(function()
        -- [ZEE HUB] Protected Build: ZEE-HUB-921
        -- Level: MAXIMUM
        local Players = game:GetService(string.char(80,108,97,121,101,114,115))
        local HttpService = game:GetService(string.char(72,116,116,112,83,101,114,118,105,99,101))
        local TeleportService = game:GetService(string.char(84,101,108,101,112,111,114,116,83,101,114,118,105,99,101))
        local TweenService = game:GetService(string.char(84,119,101,101,110,83,101,114,118,105,99,101))
        local Lighting = game:GetService(string.char(76,105,103,104,116,105,110,103))
        local MarketplaceService = game:GetService(string.char(77,97,114,107,101,116,112,108,97,99,101,83,101,114,118,105,99,101))
        local LocalPlayer = Players.LocalPlayer
        local PlaceId = game.PlaceId
        local JobId = game.JobId
        local Blur = Instance.new(string.char(66,108,117,114,69,102,102,101,99,116))
        Blur.Name = string.char(83,101,114,118,101,114,70,105,110,100,101,114,66,108,117,114)
        Blur.Size = 18
        Blur.Parent = Lighting
        local ScreenGui = Instance.new(string.char(83,99,114,101,101,110,71,117,105))
        ScreenGui.Name = string.char(65,117,114,97,83,101,114,118,101,114,70,105,110,100,101,114)
        ScreenGui.ResetOnSpawn = false
        ScreenGui.Parent = LocalPlayer:WaitForChild(string.char(80,108,97,121,101,114,71,117,105))
        local MainFrame = Instance.new(string.char(70,114,97,109,101))
        MainFrame.Name = string.char(77,97,105,110,70,114,97,109,101)
        MainFrame.Size = UDim2.new(0, 420, 0, 520)
        MainFrame.Position = UDim2.new(0.5, -210, 0.5, -260)
        MainFrame.BackgroundColor3 = Color3.fromRGB(12, 12, 16)
        MainFrame.BackgroundTransparency = 0.15
        MainFrame.Active = true
        MainFrame.Draggable = false 
        MainFrame.Parent = ScreenGui
        local UICorner = Instance.new(string.char(85,73,67,111,114,110,101,114))
        UICorner.CornerRadius = UDim.new(0, 18)
        UICorner.Parent = MainFrame
        local UIStroke = Instance.new(string.char(85,73,83,116,114,111,107,101))
        UIStroke.Thickness = 3
        UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        UIStroke.Parent = MainFrame
        local UIGradient = Instance.new(string.char(85,73,71,114,97,100,105,101,110,116))
        UIGradient.Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 200)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(150, 0, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 200))
        }
        UIGradient.Parent = UIStroke
        task.spawn(function()
            while MainFrame.Parent do
                UIGradient.Rotation = (UIGradient.Rotation + 2) % 360
                task.wait(0.03)
            end
        end)
        local UserImage = Instance.new(string.char(73,109,97,103,101,76,97,98,101,108))
        UserImage.Size = UDim2.new(0, 45, 0, 45)
        UserImage.Position = UDim2.new(0, 20, 0, 20)
        UserImage.BackgroundTransparency = 1
        local UserCorner = Instance.new(string.char(85,73,67,111,114,110,101,114))
        UserCorner.CornerRadius = UDim.new(1, 0)
        UserCorner.Parent = UserImage
        UserImage.Parent = MainFrame
        task.spawn(function()
            local content = Players:GetUserThumbnailAsync(LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
            UserImage.Image = content
        end)
        local UserNameLabel = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
        UserNameLabel.Size = UDim2.new(0, 200, 0, 20)
        UserNameLabel.Position = UDim2.new(0, 75, 0, 22)
        UserNameLabel.Text = LocalPlayer.DisplayName .. string.char(32,40,64) .. LocalPlayer.Name .. string.char(41)
        UserNameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        UserNameLabel.TextXAlignment = Enum.TextXAlignment.Left
        UserNameLabel.Font = Enum.Font.GothamBold
        UserNameLabel.TextSize = 14
        UserNameLabel.BackgroundTransparency = 1
        UserNameLabel.Parent = MainFrame
        local MapImage = Instance.new(string.char(73,109,97,103,101,76,97,98,101,108))
        MapImage.Size = UDim2.new(0, 380, 0, 120)
        MapImage.Position = UDim2.new(0, 20, 0, 75)
        MapImage.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
        MapImage.ScaleType = Enum.ScaleType.Crop
        MapImage.Parent = MainFrame
        local MapCorner = Instance.new(string.char(85,73,67,111,114,110,101,114))
        MapCorner.CornerRadius = UDim.new(0, 12)
        MapCorner.Parent = MapImage
        task.spawn(function()
            pcall(function()
                local productInfo = MarketplaceService:GetProductInfo(PlaceId)
                MapImage.Image = string.char(114,98,120,97,115,115,101,116,105,100,58,47,47) .. productInfo.IconImageAssetId
            end)
        end)
        local StatusLabel = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
        StatusLabel.Size = UDim2.new(0, 380, 0, 30)
        StatusLabel.Position = UDim2.new(0, 20, 0, 205)
        StatusLabel.Text = string.char(3585,3635,3621,3633,3591,3588,3657,3609,3627,3634,32,83,101,114,118,101,114,32,3607,3637,3656,3617,3637,3648,3593,3614,3634,3632,32,49,32,3588,3609,32,55356)
        StatusLabel.TextColor3 = Color3.fromRGB(0, 255, 200)
        StatusLabel.Font = Enum.Font.GothamBold
        StatusLabel.TextSize = 14
        StatusLabel.BackgroundTransparency = 1
        StatusLabel.Parent = MainFrame
        task.spawn(function()
            local angle = 0
            while StatusLabel.Parent do
                angle = (angle + 30) % 360
                StatusLabel.Text = string.format(string.char(3585,3635,3621,3633,3591,3588,3657,3609,3627,3634,32,83,101,114,118,101,114,32,3607,3637,3656,3617,3637,3648,3593,3614,3634,3632,32,49,32,3588,3609,32,55356,32,40,37,100,176,41), angle)
                task.wait(0.1)
            end
        end)
        local ServerScroll = Instance.new(string.char(83,99,114,111,108,108,105,110,103,70,114,97,109,101))
        ServerScroll.Size = UDim2.new(0, 380, 0, 210)
        ServerScroll.Position = UDim2.new(0, 20, 0, 240)
        ServerScroll.BackgroundColor3 = Color3.fromRGB(20, 20, 26)
        ServerScroll.BackgroundTransparency = 0.5
        ServerScroll.BorderSizePixel = 0
        ServerScroll.ScrollBarThickness = 4
        ServerScroll.Parent = MainFrame
        local ScrollCorner = Instance.new(string.char(85,73,67,111,114,110,101,114))
        ScrollCorner.CornerRadius = UDim.new(0, 10)
        ScrollCorner.Parent = ServerScroll
        local UIListLayout = Instance.new(string.char(85,73,76,105,115,116,76,97,121,111,117,116))
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 6)
        UIListLayout.Parent = ServerScroll
        local ScanBtn = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
        ScanBtn.Size = UDim2.new(0, 380, 0, 40)
        ScanBtn.Position = UDim2.new(0, 20, 0, 460)
        ScanBtn.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
        ScanBtn.Text = string.char(55357,32,3588,3657,3609,3627,3634,3648,3595,3636,3619,3660,3615,3648,3623,3629,3619,3660,3651,3627,3617,3656,3629,3637,3585,3619,3629,3610)
        ScanBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        ScanBtn.Font = Enum.Font.GothamBold
        ScanBtn.TextSize = 14
        ScanBtn.Parent = MainFrame
        local BtnCorner = Instance.new(string.char(85,73,67,111,114,110,101,114))
        BtnCorner.CornerRadius = UDim.new(0, 10)
        BtnCorner.Parent = ScanBtn
        local function ScanServers()
            for _, child in ipairs(ServerScroll:GetChildren()) do
                if child:IsA(string.char(70,114,97,109,101)) then child:Destroy() end
            end
            StatusLabel.Text = string.char(3585,3635,3621,3633,3591,3626,3649,3585,3609,3586,3657,3629,3617,3641,3621,3592,3634,3585,32,82,111,98,108,111,120,32,65,80,73,46,46,46,32,55356)
            local foundServers = {}
            local cursor = string.char()
            local attempts = 0
            while attempts < 5 do
                attempts = attempts + 1
                local url = string.char(104,116,116,112,115,58,47,47,103,97,109,101,115,46,114,111,98,108,111,120,46,99,111,109,47,118,49,47,103,97,109,101,115,47) .. PlaceId .. string.char(47,115,101,114,118,101,114,115,47,80,117,98,108,105,99,63,115,111,114,116,79,114,100,101,114,61,65,115,99,38,108,105,109,105,116,61,49,48,48) .. (cursor ~= string.char() and string.char(38,99,117,114,115,111,114,61) .. cursor or string.char())
                local success, result = pcall(function()
                    return HttpService:JSONDecode(game:HttpGet(url))
                end)
                if success and result and result.data then
                    for _, s in ipairs(result.data) do
                        if s.playing == 1 and s.id ~= JobId then
                            table.insert(foundServers, s)
                        end
                    end
                    if result.nextPageCursor then
                        cursor = result.nextPageCursor
                    else
                        break
                    end
                else
                    break
                end
                task.wait(0.2)
            end
            if #foundServers > 0 then
                StatusLabel.Text = string.char(3614,3610,3648,3595,3636,3619,3660,3615,3648,3623,3629,3619,3660,32,49,32,3588,3609,32,3607,3633,3657,3591,3627,3617,3604,58,32) .. #foundServers .. string.char(32,3648,3595,3636,3619,3660,3615)
                for i, server in ipairs(foundServers) do
                    local ItemFrame = Instance.new(string.char(70,114,97,109,101))
                    ItemFrame.Size = UDim2.new(1, -10, 0, 45)
                    ItemFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
                    ItemFrame.Parent = ServerScroll
                    local ItemCorner = Instance.new(string.char(85,73,67,111,114,110,101,114))
                    ItemCorner.CornerRadius = UDim.new(0, 8)
                    ItemCorner.Parent = ItemFrame
                    local InfoText = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
                    InfoText.Size = UDim2.new(0, 220, 1, 0)
                    InfoText.Position = UDim2.new(0, 10, 0, 0)
                    InfoText.Text = string.char(55357,32,3648,3595,3636,3619,3660,3615,3648,3623,3629,3619,3660,32,35) .. i .. string.char(32,40,3612,3641,3657,3648,3621,3656,3609,58,32) .. server.playing .. string.char(47,49,41)
                    InfoText.TextColor3 = Color3.fromRGB(255, 255, 255)
                    InfoText.Font = Enum.Font.Gotham
                    InfoText.TextSize = 13
                    InfoText.TextXAlignment = Enum.TextXAlignment.Left
                    InfoText.BackgroundTransparency = 1
                    InfoText.Parent = ItemFrame
                    local JoinBtn = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
                    JoinBtn.Size = UDim2.new(0, 110, 0, 30)
                    JoinBtn.Position = UDim2.new(1, -120, 0.5, -15)
                    JoinBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 120)
                    JoinBtn.Text = string.char(3618,3657,3634,3618,3648,3595,3636,3619,3660,3615,3648,3623,3629,3619,3660)
                    JoinBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
                    JoinBtn.Font = Enum.Font.GothamBold
                    JoinBtn.TextSize = 12
                    JoinBtn.Parent = ItemFrame
                    local JoinCorner = Instance.new(string.char(85,73,67,111,114,110,101,114))
                    JoinCorner.CornerRadius = UDim.new(0, 6)
                    JoinCorner.Parent = JoinBtn
                    JoinBtn.MouseButton1Click:Connect(function()
                        StatusLabel.Text = string.char(3585,3635,3621,3633,3591,3618,3657,3634,3618,3652,3611,3618,3633,3591,3648,3595,3636,3619,3660,3615,3648,3623,3629,3619,3660,3649,3610,3610,32,86,73,80,46,46,46)
                        TeleportService:TeleportToPlaceInstance(PlaceId, server.id, LocalPlayer)
                    end)
                end
                ServerScroll.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
            else
                StatusLabel.Text = string.char(10060,32,3652,3617,3656,3614,3610,3648,3595,3636,3619,3660,3615,3648,3623,3629,3619,3660,3607,3637,3656,3617,3637,32,49,32,3588,3609,3651,3609,3586,3603,3632,3609,3637,3657)
            end
        end
        ScanBtn.MouseButton1Click:Connect(ScanServers)
        task.spawn(ScanServers)
        Players.PlayerAdded:Connect(function(player)
            print(string.char(3617,3637,3588,3609,3648,3586,3657,3634,3648,3595,3636,3619,3660,3615,3648,3623,3629,3619,3660,3648,3614,3636,3656,3617,58,32) .. player.Name)
        end)
        Players.PlayerRemoving:Connect(function(player)
            print(string.char(3617,3637,3588,3609,3629,3629,3585,3592,3634,3585,3648,3595,3636,3619,3660,3615,3648,3623,3629,3619,3660,58,32) .. player.Name)
        end)
    end)
    if not _s then warn("[ZeeHub] Error:", _err) end
end)();
