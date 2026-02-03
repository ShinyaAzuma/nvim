vim.o.encoding = 'utf-8'
vim.o.number = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.clipboard = "unnamedplus"
vim.o.list = true
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.wrap = false
vim.o.termguicolors = true
vim.o.wildmenu = true
vim.o.ruler = true
vim.o.smartcase = true
vim.o.showmatch = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.g.mapleader = ' '
vim.g.maplocalleader = "\\"
vim.o.softtabstop = 2
vim.o.backspace = "indent,eol,start"
vim.o.cursorline = true
vim.o.laststatus = 3
vim.cmd [[filetype plugin indent on]]

-- テーマ読み込み後にハイライト設定
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    -- 非アクティブウィンドウを暗く
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "#111111" })
    -- ウィンドウ境界線を目立たせる
    vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#ff9e64", bg = "NONE" })
    -- カーソル行
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "#2a3a4a" })
  end,
})

-- 現在のセッションにも適用
vim.api.nvim_set_hl(0, "NormalNC", { bg = "#111111" })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#ff9e64", bg = "NONE" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#2a3a4a" })
