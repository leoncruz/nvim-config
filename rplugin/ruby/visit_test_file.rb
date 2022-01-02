# Neovim script to navigate to test file
# only works for Rails projects with Rspec
require 'neovim'

Neovim.plugin do |plug|
  plug.command(:VisitTestFile) do |nvim|
    filetype = nvim.command_output('echo &filetype')

    if filetype == 'ruby'
      file_path = nvim.command_output('echo expand("%")').split('/')
      file_name, extension = file_path[-1].split '.'

      new_name = "#{file_name}_spec.#{extension}"
      new_path = "spec/#{file_path[1..(file_path.size - 2)].join('/')}/#{new_name}"

      if File.exist? new_path
        nvim.command "edit #{new_path}"
      else
        nvim.command 'echohl ErrorMsg'
        nvim.command "echomsg 'Arquivo não encontrado'"
        nvim.command 'echohl None'
      end
    else
      nvim.command 'echohl ErrorMsg'
      nvim.command 'echomsg "Tipo de arquivo não suportado"'
      nvim.command 'echohl None'
    end
  end
end
