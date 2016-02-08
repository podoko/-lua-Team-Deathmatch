-- Class Contest

--[[
require utils

require Player
require Team
require Round


]]


Contest = {}
meta = meta or {}
assert(meta.Contest==nil, "Error, class 'Contest' already exists.")
meta.Contest = {__index = Contest}


new = new or {}
function new.Contest(name, nbRounds)
	local team = {teams = {}, nbRounds = nbRounds or 10, running = false}
	
	return setmetatable(team, meta.Team)
end