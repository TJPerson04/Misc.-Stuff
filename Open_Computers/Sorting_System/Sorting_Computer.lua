--Old resolution: 160, 50

local computer = require("computer")
local component = require("component")
local event = require("event")
local gpu = component.gpu
local transposerSide = 

--Letters
local alphabet = {}

alphabet["A"] = 
{
  0, 1, 1, 0, 2, 
  1, 0, 0, 1, 2, 
  1, 1, 1, 1, 2, 
  1, 0, 0, 1, 2, 
  1, 0, 0, 1
}

alphabet["B"] = 
{
  1, 1, 1, 0, 2, 
  1, 0, 0, 1, 2, 
  1, 1, 1, 0, 2, 
  1, 0, 0, 1, 2, 
  1, 1, 1, 0
}

alphabet["C"] =
{
  0, 1, 1, 1, 2, 
  1, 0, 0, 0, 2, 
  1, 0, 0, 0, 2, 
  1, 0, 0, 0, 2, 
  0, 1, 1, 1
}

alphabet["D"] = 
{
  1, 1, 1, 0, 2, 
  1, 0, 0, 1, 2, 
  1, 0, 0, 1, 2, 
  1, 0, 0, 1, 2, 
  1, 1, 1, 0
}

alphabet["E"] =
{
  1, 1, 1, 1, 2, 
  1, 0, 0, 0, 2, 
  1, 1, 1, 1, 2, 
  1, 0, 0, 0, 2, 
  1, 1, 1, 1
}

alphabet["F"] =
{
  1, 1, 1, 1, 2, 
  1, 0, 0, 0, 2, 
  1, 1, 1, 0, 2, 
  1, 0, 0, 0, 2, 
  1, 0, 0, 0
}

alphabet["G"] = 
{
  1, 1, 1, 1, 2, 
  1, 0, 0, 0, 2, 
  1, 0, 1, 1, 2, 
  1, 0, 0, 1, 2, 
  1, 1, 1, 1
}

alphabet["H"] =
{
  1, 0, 0, 1, 2, 
  1, 0, 0, 1, 2, 
  1, 1, 1, 1, 2, 
  1, 0, 0, 1, 2, 
  1, 0, 0, 1
}

alphabet["I"] =
{
  1, 1, 1, 2, 
  0, 1, 0, 2, 
  0, 1, 0, 2, 
  0, 1, 0, 2, 
  1, 1, 1
}

alphabet["J"] =
{
  0, 1, 1, 1, 2, 
  0, 0, 1, 0, 2, 
  0, 0, 1, 0, 2, 
  1, 0, 1, 0, 2, 
  0, 1, 0, 0
}

alphabet["K"] =
{
  1, 0, 0, 1, 2, 
  1, 0, 1, 0, 2, 
  1, 1, 0, 0, 2, 
  1, 0, 1, 0, 2, 
  1, 0, 0, 1
}

alphabet["L"] = 
{
  1, 0, 0, 0, 2, 
  1, 0, 0, 0, 2, 
  1, 0, 0, 0, 2, 
  1, 0, 0, 0, 2, 
  1, 1, 1, 1
}

alphabet["M"] =
{
  1, 0, 0, 0, 1, 2, 
  1, 1, 0, 1, 1, 2, 
  1, 0, 1, 0, 1, 2, 
  1, 0, 0, 0, 1, 2, 
  1, 0, 0, 0, 1
}

alphabet["N"] =
{
  1, 0, 0, 0, 1, 2, 
  1, 1, 0, 0, 1, 2, 
  1, 0, 1, 0, 1, 2, 
  1, 0, 0, 1, 1, 2, 
  1, 0, 0, 0, 1
}

alphabet["O"] =
{
  0, 1, 1, 0, 2, 
  1, 0, 0, 1, 2, 
  1, 0, 0, 1, 2, 
  1, 0, 0, 1, 2, 
  0, 1, 1, 0
}

alphabet["P"] =
{
  1, 1, 0, 2, 
  1, 0, 1, 2, 
  1, 1, 0, 2, 
  1, 0, 0, 2, 
  1, 0, 0
}

alphabet["Q"] =
{
  1, 1, 1, 0, 2, 
  1, 0, 1, 0, 2, 
  1, 0, 1, 0, 2, 
  1, 1, 1, 0, 2, 
  0, 0, 1, 1
}

alphabet["R"] =
{
  1, 1, 0, 2, 
  1, 0, 1, 2, 
  1, 1, 0, 2, 
  1, 0, 1, 2, 
  1, 0, 1
}

alphabet["S"] = 
{
  1, 1, 1, 2, 
  1, 0, 0, 2, 
  1, 1, 1, 2, 
  0, 0, 1, 2, 
  1, 1, 1
}

alphabet["T"] =
{
  1, 1, 1, 1, 1, 2, 
  0, 0, 1, 0, 0, 2, 
  0, 0, 1, 0, 0, 2, 
  0, 0, 1, 0, 0, 2, 
  0, 0, 1, 0, 0
}

alphabet["U"] =
{
  1, 0, 0, 1, 2, 
  1, 0, 0, 1, 2, 
  1, 0, 0, 1, 2, 
  1, 0, 0, 1, 2, 
  0, 1, 1, 0
}

alphabet["V"] =
{
  1, 0, 0, 0, 1, 2, 
  1, 0, 0, 0, 1, 2, 
  0, 1, 0, 1, 0, 2, 
  0, 1, 0, 1, 0, 2, 
  0, 0, 1, 0, 0
}

alphabet["W"] =
{
  1, 0, 0, 1, 0, 0, 1, 2, 
  1, 0, 0, 1, 0, 0, 1, 2, 
  1, 0, 0, 1, 0, 0, 1, 2, 
  1, 0, 0, 1, 0, 0, 1, 2, 
  0, 1, 1, 0, 1, 1, 0
}

alphabet["X"] =
{
  1, 0, 1, 2, 
  1, 0, 1, 2, 
  0, 1, 0, 2, 
  1, 0, 1, 2, 
  1, 0, 1
}

alphabet["Y"] =
{
  1, 0, 1, 2, 
  1, 0, 1, 2, 
  0, 1, 0, 2, 
  0, 1, 0, 2, 
  0, 1, 0
}

alphabet["Z"] =
{
  1, 1, 1, 2, 
  0, 0, 1, 2, 
  0, 1, 0, 2, 
  1, 0, 0, 2, 
  1, 1, 1
}



--Items
local items = {}
items[0] = {"Gold Ingot", "gold_ingot"}
items[1] = {"Gold Ore", "gold_ore"}
items[2] = {"Stone", "stone"}
items[3] = {"Dirt", "dirt"}
items[4] = {"Iron Ingot", "iron_ingot"}
items[5] = {"Iron Ore", "iron_ore"}
items[6] = {"Diamond", "diamond"}
items[7] = {"Diamond Ore", "diamond_ore"}



--Interface Functions
local function decode(letter, x, y)
  local left = x
  gpu.setBackground(0xFFFFFF)
  for i, v in ipairs(aplhabet[letter]) do
    if (v == 1) then
      gpu.set(x, y, " ")
      x = x + 1
    else if (v == 0) then
      x = x + 1
    else if (v == 2) then
      y = y + 1
      x = left
    end
  end
end
end    
end

local function decodeSentence(str, x, y)
  for i = 1, #str do
    local c = str:sub(i,i)
    decode(c, x, y)
    if (c == "I" or c == "P" or c == "R" or c == "S" or c == "X" or c == "Y" or c == "Z") then
      x = x + 5
    else if (c == "M" or c == "N" or c == "T" or c == "V") then
        x = x + 7
    else if (c == "W") then
        x = x + 9
    end
    end
    end    
  end
end

local function createRow(index, fromTop) --fromTop is the row number, with the top being 1 and the bottom being 4
  gpu.setResolution(160, 50)
  local w, h = gpu.getResolution()
  
  gpu.setBackground(0x146a80)
  gpu.fill(1, ((fromTop * h / 4) + 1), w, (((fromTop * h / 4) + 1) + h/8), " ") --Probably won't work atm
  gpu.set(w/8, h/8, "Gold Ore")

  gpu.setBackground(0xFFFFFF)
  gpu.fill(1, 1, w, 1, " ")
  gpu.fill(1, 1, 2, h/4, " ")
  gpu.fill(w-1, 1, 2, h/4, " ")
  gpu.fill(1, h/4, w, 1, " ")
end

local function displayScreen(topItemIndex)
  createRow(topItemIndex, 1)
  createRow(topItemIndex + 1, 2)
  createRow(topItemIndex + 2, 3)
  createRow(topItemIndex + 3, 4)
end



--Sorting Functions



--Start
gpu.setResolution(160, 50)
local w, h = gpu.getResolution()
local topItemIndex = 0

local chests = {}
for address, name in component.list("transposer", false) do
  component.proxy(address).store(transposerSide, 
  chests

displayScreen(topItemIndex)



--Main
while true do
  local _, _, _, scrollDir, _ = event.pull("scroll") --Note to self: test best way to check for either scroll, key press, or mouse click
  if (scrollDir < 0 and topItemIndex < 10) then
    topItemIndex = topItemIndex + 1
    displayScreen(topItemIndex)
  end
  if (scrollDir > 0 and topItemIndex > 0) then
    topItemIndex = topItemIndex + 1
    displayScreen(topItemIndex)
  end
  
end  
--gpu.setBackground(0x146a80)
--gpu.fill(1, 1, w, h/8, " ")
--gpu.set(w/8, h/8, "Gold Ore")

--gpu.setBackground(0xFFFFFF)
--gpu.fill(1, 1, w, 1, " ")
--gpu.fill(1, 1, 2, h/4, " ")
--gpu.fill(w-1, 1, 2, h/4, " ")
--gpu.fill(1, h/4, w, 1, " ")

--decode("G", w/8, (h/8)-1)
--decode("O", (w/8)+6, (h/8)-1)
--decode("L", (w/8)+12, (h/8)-1)
--decode("D", (w/8)+18, (h/8)-1)

--decode("O", (w/8)+27, (h/8)-1)
--decode("R", (w/8)+33, (h/8)-1)
--decode("E", (w/8)+38, (h/8)-1)


print(event.pull("key_down"))
