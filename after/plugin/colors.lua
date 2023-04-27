function ColorMyPencils(color)
	color = color or "melange"
	vim.opt.termguicolors = true
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
