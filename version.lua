local UpdateManager = {}

UpdateManager.BuildCode = 518
UpdateManager.BuildName = "5.1"
UpdateManager.BuildVersion = "test"

function UpdateManager.checkForUpdate(currentVersionCode: number)
	if type(currentVersionCode) ~= "number" then
		warn("Error: Argument must be a number!")
		return nil
	end
	
	if currentVersionCode < UpdateManager.BuildCode then 
		return string.format(
			"New build %s (%s) available!",
			UpdateManager.BuildName, UpdateManager.BuildVersion
		)
	end
	
	return "Latest version installed."
end

return UpdateManager
