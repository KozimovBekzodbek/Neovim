require('lualine').setup {
  options = {
    icons_enabled = true,              -- Ikonlar yoqilgan
    theme = 'onedark',                 -- Yana zamonaviy tema tanlash mumkin: 'tokyonight', 'gruvbox', 'dracula'
    section_separators = { '', '' },   -- Satr ajratgichlar
    component_separators = { '|', '|' }, -- Komponent ajratgichlar
    globalstatus = true,               -- Bitta status liniya (global) ishlatiladi
    disabled_filetypes = {}            -- Har qanday fayl turi uchun yoqilgan
  },
  sections = {
    lualine_a = { { 'mode', upper = true } }, -- Modeni katta harflarda yozadi
    lualine_b = { 'branch', 'diff', 'diagnostics' }, -- Branch, diff va diagnosticlar ko'rsatadi
    lualine_c = { { 'filename', path = 1 } }, -- Fayl nomi bilan to'liq yo'lni ko'rsatadi
    lualine_x = { 'encoding', 'fileformat', 'filetype' }, -- Fayl formati, kodlash va fayl turi
    lualine_y = { 'progress' },            -- Foydalanuvchi satri progressi
    lualine_z = { 'location' }             -- Kursor joylashuvi (qator, ustun)
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},                           -- Tabline ishlatilmaydi, bo'sh qoldiriladi
  extensions = { 'fugitive', 'nvim-tree' } -- Zamonaviy texnologiyalar bilan integratsiya (fugitive va nvim-tree)
}
