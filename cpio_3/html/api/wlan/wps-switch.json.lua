local dm = require('dm')require('json')local response = {}--获取DB中的参数local wps_instance = "InternetGatewayDevice.X_Config.Wifi.Radio.1.Ssid.1.WPS."local errcode,wps = dm.GetParameterValues(wps_instance,    {		"Enable",		"ApPinEnable"	})local feature_domain = "InternetGatewayDevice.X_Config.Wifi."local errcode, feature = dm.GetParameterValues(feature_domain,    {		"ApPinEnableDisplay"	})local wps_obj = wps[wps_instance]local feature_obj = feature[feature_domain]response.wpsenable = wps_obj["Enable"]	response.appinenable =  wps_obj["ApPinEnable"]	response.appinEnableDisplay =  feature_obj["ApPinEnableDisplay"]	sys.print(json.xmlencode(response))