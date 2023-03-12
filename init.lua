require 'basic'
if vim.g.vscode then

else
  require 'maps'
  require 'plugins'
  require 'keys'
  require 'edit.text'
  require 'edit.snip'
  require 'ui.explorer'
  require 'ui.thems'
  require 'lsp.mason'
  require 'lsp.lsp'
  require 'lsp.cmp'
end
