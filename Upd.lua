local UpdateManager = {}

UpdateManager.BuildCode = 100 
UpdateManager.BuildName = "1.0"
UpdateManager.BuildVersion = "beta"

function UpdateManager.checkForUpdate(currentVersionCode: number)
	if type(currentVersionCode) ~= "number" then
		warn("Ошибка: Переданный аргумент должен быть числом!")
		return nil
	end
	
	if currentVersionCode < UpdateManager.BuildCode then 
		return string.format(
			"New build %s (%s) available! | Доступно новое обновление %s (%s)!",
			UpdateManager.BuildName, UpdateManager.BuildVersion,
			UpdateManager.BuildName, UpdateManager.BuildVersion
		)
	end
	
	return "Latest version | Установлена актуальная версия"
end

return UpdateManager