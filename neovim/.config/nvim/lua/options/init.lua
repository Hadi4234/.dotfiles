vim.cmd('filetype plugin indent on')
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.hidden = true
vim.o.whichwrap = 'b,s,<,>,[,],h,l'
vim.o.pumheight = 10
vim.o.fileencoding = 'utf-8'
vim.o.cmdheight = 2
vim.o.splitbelow = true
vim.o.splitright = true
vim.opt.termguicolors = true
vim.o.conceallevel = 0
vim.o.showtabline = 2
vim.o.showmode = false
vim.o.backup = false
vim.o.writebackup = false
-- Mapping waiting time
-- vim.o.timeout = false
-- vim.o.ttimeout = true
-- vim.o.ttimeoutlen = 100
-- vim.o.updatetime = 100

vim.o.clipboard = "unnamedplus"
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.scrolloff = 3
vim.o.sidescrolloff = 5
vim.o.mouse = "a"
vim.wo.wrap = false
vim.wo.number = true
vim.o.cursorline = true
vim.wo.signcolumn = "yes"
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.expandtab = true
vim.bo.expandtab = true
--vim.wo.foldmethod=indent
--vim.cmp('setlocal foldmethod=indent')
--vim.o.nofoldenable=true
--vim.o.foldlevel=99
vim.cmd([[
    setlocal foldmethod=indent
    set nofoldenable
    set foldlevel=99
    set fillchars=fold:\ "The backslash escapes a space
    set foldtext=CustomFoldText()
    function! CustomFoldText()
      let indentation = indent(v:foldstart - 1)
      let foldSize = 1 + v:foldend - v:foldstart
      let foldSizeStr = " " . foldSize . " lines "
      let foldLevelStr = repeat("+--", v:foldlevel)
      let expansionString = repeat(" ", indentation)
      return expansionString . foldLevelStr . foldSizeStr
    endfunction
]])

