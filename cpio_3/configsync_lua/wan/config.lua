local utils = require('utils')
local objdomin = "InternetGatewayDevice.X_Config.WanSync."

function SetObjParamInputs(domain, data, maps)
    local inputs = {}
    for	k, v in	pairs(maps) do
	local param = {}
		if nil ~= data and nil ~= data[k] then
			param["key"] = v      
			param["value"] = data[k]
			table.insert(inputs, param)
		end
    end
    return inputs
end

if nil ~= data then

    local maps = {
	                wansynuserpwd_enable = "WanSynUserPwdEnable",
                 }
				 
    local para = SetObjParamInputs(objdomin,data,maps)	
	local errcode, paramErrs = dm.SetObjToDB(objdomin,para)
	if 0 ~= errcode then  
	    print("errcode_wansynuserpwd_enable = ", errcode)
	end
end
