local ok, notify = pcall(require, 'notify')

if not ok then return end

vim.notify = notify

vim.notify.setup {
  timeout = 1000
}
