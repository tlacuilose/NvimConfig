function ColorMyPencils(color)
	color = color or 'rose-pine'
	vim.opt.termguicolors = true
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
