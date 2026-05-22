local UpdateManager = {}


UpdateManager.LatestBuildCode = 518
UpdateManager.BuildName = "5.1"
UpdateManager.BuildVersion = "release"

function UpdateManager.runSystemCheck(currentVersionCode: number)
	if type(currentVersionCode) ~= "number" then
		return "Error: Local build version code must be a number."
	end
	
	if currentVersionCode < UpdateManager.LatestBuildCode then 
		-- Local version is outdated
		return string.format(
			"Update available! Your build: %s. Latest official stable build: %s (%s). Please update.",
			tostring(currentVersionCode),
			UpdateManager.BuildName, 
			UpdateManager.BuildVersion
		)
	elseif currentVersionCode > UpdateManager.LatestBuildCode then
	
		return string.format(
			"Warning: You are running an unreleased preview/test build (%s). Stable version is %s.",
			tostring(currentVersionCode),
			tostring(UpdateManager.LatestBuildCode)
		)
	else

		return "Success: Admin panel is perfectly up to date."
	end
end

return UpdateManager
