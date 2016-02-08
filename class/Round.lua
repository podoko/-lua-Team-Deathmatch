-- Class Round

--[[
require Team

]]



Round = {}
meta = meta or {}
assert(meta.Round==nil, "Error, class 'Round' already exists.")
meta.Round = {__index = Round}



new = new or {}
new.Round = function(...) -- teams as args
	local alive, teams = {}, {}
	for team in ipairs({...}) do
		local tm = {}
		for player in ipairs(team) do
			tm[player] = true
			alive[player] = team
		end
		teams[team] = tm
	end
	
	local round = {team = teams, eliminated = {}, alive = alive, dead = {}}
	
	return setmetatable(round, meta.Round)
end
