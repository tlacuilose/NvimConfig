function ColorMyPencils(color)
	color = color or "everforest"
	vim.opt.termguicolors = true
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
