local ok, flutter_tools = pcall(require, 'flutter-tools')

if not ok then return end

flutter_tools.setup {
	dev_log = {
		open_cmd = 'tabedit'
	},
	flutter_lookup_cmd = 'asdf where flutter'
}
