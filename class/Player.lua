-- Class Player

--[[


]]



Player = {}
meta = meta or {}
assert(meta.Player==nil, "Error, class 'Player' already exists.")
meta.Player = {__index = Player}


new = new or {}
function Player:new(name)
	local player = {name = name, facingRight = true, timestamp = os.time(), offX = -5, offY = 5}
	
	return setmetatable(player, meta.Player)
end

