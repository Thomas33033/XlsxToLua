-- heroId                           int                              英雄ID
-- name                             lang                             英雄名称（仅客户端用）
-- rare                             int                              稀有度（11-13）
-- type                             int                              英雄职业（1：法师，2：战士，3：牧师，4：勇士）
-- defaultStar                      int                              英雄初始星数
-- isOpen                           bool                             当前是否在游戏中开放（即可在英雄图鉴看到，可以被抽卡抽到）
-- attributes                       json                             战斗属性

local list = {
	[1] = {heroId = 1,name = "英雄法师",rare = 11,type = 1,defaultStar = 1,isOpen = true,attributes = {},},
	[2] = {heroId = 2,name = "英雄战士",rare = 11,type = 2,defaultStar = 1,isOpen = true,attributes = nil,},
	[3] = {heroId = 3,name = "英雄牧师",rare = 11,type = 3,defaultStar = 1,isOpen = false,attributes = nil,},
	[4] = {heroId = 4,name = "英雄勇士",rare = 11,type = 4,defaultStar = 1,isOpen = false,attributes = {},},
}

function newindex_Update = function()
{
	print("can't modiy config")
}
local t_temp = { }
for k, v in pairs(list) do
	local temp_v = { }
	setmetatable(temp_v)
	{
		__index = v,
		__newindex = newindex_Update,
	}
	temp[k] = temp_v
end
g_Hero=temp
