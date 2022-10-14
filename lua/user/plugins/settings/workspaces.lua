local ok, workspaces = pcall(require, 'workspaces')

if not ok then return end

workspaces.setup {
  hooks = {
    open = function(name)
      vim.notify('Open workspace: ' .. name)

      vim.cmd([[ NvimTreeOpen ]])
    end
  }
}
