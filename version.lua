local UpdateManager = {}

UpdateManager.LatestBuildCode = 501 -- Your actual max version
UpdateManager.BuildName = "5.1"
UpdateManager.BuildVersion = "test"

-- The logic is now safely hidden on GitHub
function UpdateManager.runSystemCheck(currentVersionCode: number)
	if type(currentVersionCode) ~= "number" then
		return "Error: Local build version code must be a number."
	end
	
	if currentVersionCode < UpdateManager.LatestBuildCode then 
		return string.format(
			"Update available! Current: %s. Latest: %s (%s).",
			tostring(currentVersionCode),
			UpdateManager.BuildName, 
			UpdateManager.BuildVersion
		)
	end
	
	return "Success: Admin panel is up to date."
end

return UpdateManager
