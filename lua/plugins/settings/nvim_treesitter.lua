local ok, treesitter = pcall(require, 'nvim-treesitter.configs')

if not ok then return end

treesitter.setup {
  ensure_installed = {
    'lua',
    'ruby',
    'javascript',
    'typescript',
    'dart',
    'elixir',
    'python'
  },
  auto_install = true,
  highlight = true
}
