vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口 
keymap.set("n", "K", "10k") --快速上移
keymap.set("n", "J", "10j") --快速下移
keymap.set("n", "M", "$") --快速下移
--keymap.set("n", "<leader><leader>", "<ESC>/<++><CR>:nohlsearch<CR>c4l") --寻找占位符并修改
keymap.set("n", "<leader>fig", ":r !figlet ") --加入炫酷大字
--keymap.set("n", "\\s", ":%s//g<left><left>") --替换文字

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "R", ":so<CR>")
keymap.set("n", "S", ":w<CR>")
keymap.set("n", "Q", ":q<CR>")
--修改窗口大小
keymap.set("n", "<leader> =", ":vertical resize +5<CR>") 
keymap.set("n", "<leader> -", ":vertical resize -5<CR>")

keymap.set("n", "<leader>tt", ":tabe<CR>") --增加新buffer
-- 切换buffer
keymap.set("n", "L", ":bnext<CR>")
keymap.set("n", "H", ":bprevious<CR>")

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") --打开nvim-tree
--keymap.set("n", "<leader>e", ":NERDTreeToggle<CR>") --打开NERDtree
--打开undotree
keymap.set('n', '<leader>u', require('undotree').toggle, { noremap = true, silent = true })
keymap.set('n', '<leader>uo', require('undotree').open, { noremap = true, silent = true })
keymap.set('n', '<leader>uc', require('undotree').close, { noremap = true, silent = true })

keymap.set('n', 'r',":call CompileRunGcc()<CR>" )
--展开大纲
keymap.set('n', '<F8>',':TagbarToggle<CR>')
keymap.set('n', '<leader><tab>',':Tab /')
keymap.set('v', '<leader><tab>',':Tab /')
vim.cmd([[
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		set splitbelow
		:sp
		:res -5
		:term gcc % -o %< && time ./%<
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:res -15
		:term ./%<
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python %
	endif
endfunc
]])       

