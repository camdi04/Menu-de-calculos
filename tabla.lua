-- local t = {}
-- local s = "from=world, to=Lua"
-- for k, v in string.gmatch(s, "(%w+)=(%w+)") do
--   t[k] = v
-- end


local s = "hello world from Lua"
local t = {}
for w in string.gmatch(s, "%a+") do
    --t[s] = v
    print(w)
end