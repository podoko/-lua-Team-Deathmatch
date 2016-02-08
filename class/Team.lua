-- Class Team

--[[
require utils
require Player

]]



Team = {}
meta = meta or {}
assert(meta.Team==nil, "Error, class 'Team' already exists.")
meta.Team = {__index = Team}


new = new or {}
function new.Team(name)
	local team = {name = name, players = {}, replacers = {}, nbPlayers = 0, nbReplacers =0}
	
	return setmetatable(team, meta.Team)
end



Team.addPlayer = function(this, player)
	if this.players[player] or this.replacers[player] then 
		return false
	else
		this.nbPlayers = this.nbPlayers+1
		this.players[player] = true
		return true
	end
end

Team.addReplacer = function(this, player)
	if this.replacers[player] or this.players[player] then 
		return false
	else
		this.nbPlayers = this.nbReplacers+1
		this.replacers[player] = true
		return true
	end
end

Team.removePlayer = function(this, player)
	if this.players[player] then
		this.players[player] = nil
		this.nbPlayers = this.nbPlayers-1
		return true
	end
	return false
end

Team.removeReplacer = function(this, player)
	if this.replacers[player] then
		this.replacers[player] = nil
		this.nbReplacers = this.nbReplacers-1
		return true
	end
	return false
end



Team.getPlayer = function(this)
	return table.keys(this.players)
end

Team.getReplacers = function(this)
	return table.keys(this.replacers)
end

Team.getMembers = function(this)
	return table.fusion(table.keys(this.players), table.keys(this.replacers))
end

Team.getNbPlayers = function(this)
	return #this.players
end

Team.getNbReplacers = function(this)
	return #this.replacers
end

Team.getNbMembers = function(this)
	return #this.players + #this.replacers
end


