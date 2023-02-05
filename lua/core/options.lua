
local opt = vim.opt
-- 行号
opt.relativenumber = true
opt.number = true

-- 缩进
opt.tabstop    = 4
opt.shiftwidth = 4
opt.expandtab  = true
opt.autoindent = true
opt.hlsearch   = true
opt.incsearch  = true
-- 防止包裹
opt.wrap       = true
opt.showcmd    = true
opt.wildmenu   = true
opt.scrolloff  = 5
-- 光标行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪贴板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true
-- 搜索
opt.ignorecase = true
opt.smartcase  = true
opt.foldenable = false
opt.foldlevel  = 1

--来自CW的配置
opt.foldmethod = 'indent'
opt.lazyredraw = true
opt.visualbell = true


-- 外观
opt.termguicolors = true
opt.signcolumn  = "yes"
vim.cmd[[colorscheme snazzy]]
vim.cmd([[let g:SnazzyTransparent  = 0.5]])
vim.cmd([[let g:indentLine_enabled = 1]])
vim.cmd([[let g:indentLine_char    = '|']])
vim.cmd[[set tags='E:\DATA\ctags']]

vim.cmd([[]])
vim.cmd([[let g:startify_custom_header = startify#pad(split(system("figlet -w 100 JEAN DIABLE"),'\n'))]])
vim.cmd[[let g:NERDSpaceDelims=1]]
