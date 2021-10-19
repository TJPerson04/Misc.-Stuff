--Required components: Wireless Network Card, Inventory Upgrade, Inventory Controller Upgrade
local drone = component.proxy(component.list("drone")())
local modem = component.proxy(component.list("modem")())
local inv = component.proxy(component.list("inventory_controller")())

local xTraveled, yTraveled, zTraveled = 0, 0, 0

local network = 1915 --SO converted to numbers


--Item Locations
chests = {}

chests["minecraft:gold_ore"] = {0, 0, -3}
chests["minecraft:stone"] = {0, -1, -3}


local function sleep(timeout)
    checkArg(1, timeout, "number", "nil")
    local deadline = computer.uptime() + (timeout or 0)
    repeat
        computer.pullSignal(deadline - computer.uptime())
    until computer.uptime() >= deadline
end

local function move(x, y, z)
  drone.move(x, y, z)
  xTraveled = xTraveled + x
  yTraveled = yTraveled+ y
  zTraveled = zTraveled + z
end

local function waitForSignal()
  local _, _, _, _, _, message = computer.pullSignal("modem_message")
  return message
end

local function storeItems()
  for i = 1, 4 do
    drone.select(i)
    for j = 1, 27 do
      if (inv.suckFromSlot(0, j)) then --Might need to change depending on build
        goto recieved
      end
    end
    --goto no_more_items
    ::recieved::
  end

  for i = 1, 4 do
    local item = inv.getStackInInternalSlot(i)
    if (item) then
      move(chests[item.name][1] - xTraveled, chests[item.name][2] - yTraveled, chests[item.name][3] - zTraveled)
      
      while (drone.getVelocity() ~= 0.0) do 
        drone.setStatusText(tostring(drone.getVelocity()))
      end
      
      drone.select(i)
      drone.drop(2) --Might need to change depending on build
    end
  end

  move(-xTraveled, -yTraveled, -zTraveled)
end

local function fetchItems()

end

local function checkE()
  return computer.energy()
end


--Start
modem.open(network)


--Main
while true do
  local message = waitForSignal()
  
  if (message == "store") then
    storeItems()
  end
  --else if (message == "fetch") then
    --fetchItems()
end
