require("Pain")


-- It helps for remove Tidle(~) from nvim if you want icon using paste it in to the string
vim.opt.fillchars = {eob = " "}



vim.g.netrw_banner = 0
-- shada faylini muntazam ravishda o'chirib turish uchun
local shada_path = vim.fn.stdpath('data') .. '/shada/main.shada'

if vim.fn.filereadable(shada_path) == 1 then
  vim.fn.delete(shada_path)
end

vim.opt.shada = "" 

































