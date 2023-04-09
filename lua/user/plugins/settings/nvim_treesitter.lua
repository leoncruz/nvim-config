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
    'python',
    'html',
    'css',
    'eex',
    'heex',
  },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  }
}