-- colorscheme.lua
local colors = {
	gray_10 = "#E5D1B2",
	gray_20 = "#D9BDA5",
	gray_30 = "#CCA797",
	gray_40 = "#B78C8C",
	gray_50 = "#856464",
	gray_60 = "#615053",
	gray_70 = "#504141",
	gray_80 = "#3A2F2D",
	gray_90 = "#2A2322",
	gray_100 = "#211E1D",
	gray_110 = "#1E1A1A",
	gray_120 = "#1C1817",
	gray_130 = "#191211",
	gray_140 = "#120E0C",

	red_10 = "#E6554B",
	red_20 = "#D84843",
	red_30 = "#CB3D3B",
	red_40 = "#B83C35",

	orange_10 = "#D68843",
	orange_20 = "#D07636",
	orange_30 = "#CB6E30",
	orange_40 = "#B8622A",

	yellow_10 = "#DBA14E",
	yellow_20 = "#D99F34",
	yellow_30 = "#D6922E",
	yellow_40 = "#B87529",

	green_10 = "#49B686",
	green_20 = "#47A36B",
	green_30 = "#4B931C",
	green_40 = "#3E8A1A",

	blue_10 = "#6A95A7",
	blue_20 = "#678799",
	blue_30 = "#647D85",
	blue_40 = "#576E68",

	violet_10 = "#837AC3",
	violet_20 = "#7669A1",
	violet_30 = "#6E5898",
	violet_40 = "#6B528A",

	base_00 = "#120E0C",
	base_05 = "#1C1817",
	base_10 = "#211E1D",
	base_20 = "#2A2322",
	base_25 = "#3A2F2D",
	base_30 = "#504141",
	base_35 = "#615053",
	base_40 = "#856464",
	base_50 = "#B78C8C",
	base_60 = "#CCA797",
	base_70 = "#D9BDA5",
	base_100 = "#E5D1B2",

	accent_h = 31,
	accent_s = "27",
	accent_l = "24",
	-- colors.accent_h, colors.accent_s, colors.accent_l
	accent = "#4e3e2d",
	-- colors.accent_h -3, colors.accent_s * 1.02, colors.accent_l * 1.15
	accent_1 = "#5a4533",
	--colors.accent_h -5, colors.accent_s * 1.16, colors.accent_l * 1.34
	accent_2 = "#6b4e38",
}

vim.cmd("highlight clear")
vim.cmd("syntax reset")
vim.o.background = "dark"
vim.g.colors_name = "custom"

-- Define highlight groups
local hl = function(group, opts)
	local cmd = "highlight " .. group
	for k, v in pairs(opts) do
		cmd = cmd .. " " .. k .. "=" .. v
	end
	vim.cmd(cmd)
end

-- Base groups
hl("Normal", { guifg = colors.base_100, guibg = colors.base_20 })
hl("Comment", { guifg = colors.gray_60, gui = "italic" })
hl("Constant", { guifg = colors.red_10 })
hl("String", { guifg = colors.green_10 })
hl("Identifier", { guifg = colors.blue_10 })
hl("Statement", { guifg = colors.violet_10 })
hl("PreProc", { guifg = colors.yellow_10 })
hl("Type", { guifg = colors.orange_10 })
hl("Special", { guifg = colors.yellow_30 })
hl("Underlined", { guifg = colors.accent_1, gui = "underline" })
hl("Ignore", { guifg = colors.base_10 })
hl("Error", { guifg = colors.red_40, guibg = colors.base_10 })
hl("Todo", { guifg = colors.yellow_40, guibg = colors.base_10, gui = "bold" })

-- Additional groups
hl("CursorLine", { guibg = colors.base_20 })
hl("CursorColumn", { guibg = colors.base_20 })
hl("ColorColumn", { guibg = colors.base_20 })
hl("Visual", { guibg = colors.base_25 })
hl("LineNr", { guifg = colors.gray_70 })
hl("CursorLineNr", { guifg = colors.yellow_30, gui = "bold" })
hl("Pmenu", { guifg = colors.base_100, guibg = colors.base_25 })
hl("PmenuSel", { guifg = colors.base_10, guibg = colors.accent })
hl("StatusLine", { guifg = colors.base_100, guibg = colors.base_25 })
hl("StatusLineNC", { guifg = colors.gray_70, guibg = colors.base_20 })
hl("VertSplit", { guifg = colors.gray_60 })
hl("TabLine", { guifg = colors.base_100, guibg = colors.base_20 })
hl("TabLineSel", { guifg = colors.base_10, guibg = colors.accent })
hl("TabLineFill", { guifg = colors.base_20, guibg = colors.base_20 })
hl("Search", { guifg = colors.base_10, guibg = colors.yellow_30 })
hl("IncSearch", { guifg = colors.base_10, guibg = colors.yellow_40 })
hl("MatchParen", { guifg = colors.accent_2, gui = "bold" })
hl("WildMenu", { guifg = colors.base_10, guibg = colors.accent_1 })

return colors
