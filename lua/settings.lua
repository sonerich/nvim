local o = vim.o
local wo= vim.wo
local bo= vim.bo

o.swapfile = false
o.smartcase = true
o.laststatus = 2

-- realtime substitution
o.inccommand = 'split'

-- line numbering
wo.number = true
wo.relativenumber = true

-- line wrapping
wo.wrap = false

bo.iskeyword = bo.iskeyword .. ',-'
o.whichwrap = o.whichwrap .. ',h,l'
o.title = false
o.cmdheight = 1
o.mouse = "a"
o.splitbelow = true
o.splitright = true
o.termguicolors = false
o.pumheight = 10
o.fileencoding = "utf-8"
o.guifont = "FiraCode Nerd Font:h17"
o.timeoutlen = 500
o.confirm = true
o.lazyredraw = false
