--zy Options are automatically loaded before lazy.nvim  here
-- In Neovim init.lua
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50"
if vim.fn.has("win32") == 1 then
  -- Change 'pwsh.exe' to 'powershell.exe'
  vim.opt.shell = "powershell.exe"

  vim.opt.shellcmdflag =
    "-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
  vim.opt.shellredir = "2>&1 | Out-File -Encoding UTF8 %s; if ($?) { exit $last exitcode }"
  vim.opt.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; if ($?) { exit $last exitcode }"
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""
end
