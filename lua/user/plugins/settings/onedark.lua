local ok, onedark = pcall(require, 'onedark')

if not ok then return end

onedark.load()

onedark.setup {
	style = 'darker'
}
