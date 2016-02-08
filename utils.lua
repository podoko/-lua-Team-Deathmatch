-- Module utils
-- misc usefull functions


-- Table

function table.copy(tab, rec)
	local res = {}
	if rec then
		for key, val in pairs(tab) do
			res[type(key)=="table" and table.copy(key, rec) or key] = 
				type(val)=="table" and table.copy(kav, rec) or val
		end
	else
		for key, val in pairs(tab) do
			res[key] = val
		end
	end
	return res
end

function table.keys(tab)
	local res = {}
	for key in pairs(tab) do
		table.insert(res, key)
	end
	return res
end

function table.values(tab)
	local res = {}
	for _,val in pairs(tab) do
		table.insert(res, val)
	end
	return res
end

function table.fusion(...)
	local res = {}
	for _, fus in ipairs({...}) do
		for _, val in ipairs(fus) do
			table.insert(res, val)
		end
	end
	return res
end

function table.shuffle(tab)
	local res, rand = {}, math.random
	for _, val in pairs(tab) do
		table.insert(res, rand(#res+1), val)
	end
	return res	
end

function table.random(tab)
	local temp = table.values(tab)
	return temp[math.random(#temp)]
end







