
vim.keymap.set('n', '<space>z', function()
  if _G.laststatus == 0 then
    _G.laststatus = 2
  else
    _G.laststatus = 0
  end
  vim.opt.laststatus = _G.laststatus
end)
