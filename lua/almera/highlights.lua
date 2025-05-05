local c = require("almera.palette")
local hl = vim.api.nvim_set_hl

local M = {}

function M.setup()
	-- Treesitter
	-- Variables
	hl(0, "@variable", { fg = c.fg })
	hl(0, "@variable.builtin", { fg = c.cyan, italic = true })
	hl(0, "@variable.parameter", { fg = c.fg })
	hl(0, "@variable.parameter.builtin", { fg = c.cyan, italic = true })
	hl(0, "@variable.member", { fg = c.fg })
	hl(0, "@variable.unused", { fg = c.comment })

	-- Constantes
	hl(0, "@constant", { fg = c.magenta })
	hl(0, "@constant.builtin", { fg = c.magenta, italic = true })
	hl(0, "@constant.macro", { fg = c.red, bold = true })

	-- Funciones y métodos
	hl(0, "@function", { fg = c.blue })
	hl(0, "@function.call", { fg = c.blue })
	hl(0, "@function.builtin", { fg = c.blue, italic = true })
	hl(0, "@function.method", { fg = c.blue })
	hl(0, "@function.method.call", { fg = c.blue })
	hl(0, "@function.macro", { fg = c.red, bold = true, italic = false })
	hl(0, "@funcion.unused", { underdashed = true })

	-- Tipos
	hl(0, "@type", { fg = c.yellow })
	hl(0, "@type.builtin", { fg = c.yellow, italic = true })

	-- Strings y literales
	hl(0, "@string", { fg = c.green })
	hl(0, "@string.documentation", { fg = c.green, italic = true })
	hl(0, "@character", { fg = c.green })
	hl(0, "@boolean", { fg = c.orange })
	hl(0, "@number", { fg = c.orange })
	hl(0, "@float", { fg = c.orange })

	-- Keywords
	hl(0, "@keyword", { fg = c.orange, italic = true })
	hl(0, "@keyword.function", { fg = c.magenta, italic = true })
	hl(0, "@keyword.return", { fg = c.magenta })
	hl(0, "@keyword.exception", { fg = c.magenta })
	hl(0, "@keyword.conditional", { fg = c.magenta })
	hl(0, "@keyword.repeat", { fg = c.magenta })

	-- Comentarios
	hl(0, "@comment", { fg = c.comment, italic = true })
	hl(0, "@comment.documentation", { fg = c.comment, italic = true })

	-- Otros
	hl(0, "@operator", { fg = c.fg })
	hl(0, "@punctuation.delimiter", { fg = c.comment })
	hl(0, "@punctuation.bracket", { fg = c.comment })
	hl(0, "@label", { fg = c.yellow })
	-- Adicionales útiles
	hl(0, "@constructor", { fg = c.magenta })
	-- Elementos HTML (nativos como <div>, <span>, etc.)
	hl(0, "@tag", { fg = c.orange })
	hl(0, "@tag.builtin", { fg = c.orange }) -- ← ¡Añade esto!

	-- Componentes de React como <Route>, <App>, etc.
	hl(0, "@constructor", { fg = c.blue, bold = true })

	-- Atributos JSX como `className`, `href`, etc.
	hl(0, "@tag.attribute", { fg = c.cyan })

	-- Delimitadores como <, />, </>
	hl(0, "@tag.delimiter", { fg = c.comment })

	-- Definiciones y namespaces (útil si importas `React.*`)
	hl(0, "@namespace", { fg = c.blue })
	hl(0, "@type.definition", { fg = c.yellow, italic = true })

	-- Anotaciones o decoradores (no tan usados en JSX, pero comunes en TS/Python)
	hl(0, "@attribute", { fg = c.cyan })

	-- URLs y enlaces
	hl(0, "@string.special.url", { fg = c.blue, underline = true })

	-- Básico
	hl(0, "Normal", { fg = c.fg, bg = c.bg })
	hl(0, "NormalNC", { fg = c.fg, bg = c.bg })
	hl(0, "Comment", { fg = c.comment, italic = true })
	hl(0, "Constant", { fg = c.orange })
	hl(0, "String", { fg = c.green })
	hl(0, "Character", { fg = c.green })
	hl(0, "Number", { fg = c.blue })
	hl(0, "Boolean", { fg = c.orange })
	hl(0, "Float", { fg = c.orange })
	hl(0, "Identifier", { fg = c.fg })
	hl(0, "Function", { fg = c.blue })
	hl(0, "Statement", { fg = c.magenta })
	hl(0, "Conditional", { fg = c.magenta })
	hl(0, "Repeat", { fg = c.magenta })
	hl(0, "Label", { fg = c.red })
	hl(0, "Operator", { fg = c.fg })
	hl(0, "Keyword", { fg = c.orange, italic = true })
	hl(0, "Exception", { fg = c.magenta })
	hl(0, "PreProc", { fg = c.cyan })
	hl(0, "Include", { fg = c.cyan })
	hl(0, "Define", { fg = c.cyan })
	hl(0, "Type", { fg = c.red })
	hl(0, "Structure", { fg = c.yellow })
	hl(0, "StorageClass", { fg = c.yellow })
	hl(0, "Typedef", { fg = c.yellow })
	hl(0, "Special", { fg = c.yellow })
	hl(0, "Underlined", { underline = true })
	hl(0, "Error", { fg = c.red })
	hl(0, "Todo", { fg = c.magenta, bold = true })

	-- UI básica
	hl(0, "LineNr", { fg = c.comment })
	hl(0, "CursorLine", { bg = c.bg_highlight })
	hl(0, "CursorLineNr", { fg = c.fg, bold = true })
	-- hl(0, "Visual", { bg = c.selection })
	hl(0, "VertSplit", { fg = c.bg_dark })
	hl(0, "StatusLine", { fg = c.fg, bg = c.bg_highlight })
	hl(0, "StatusLineNC", { fg = c.comment, bg = c.bg_dark })
	hl(0, "TabLine", { fg = c.comment, bg = c.bg })
	hl(0, "TabLineSel", { fg = c.fg, bg = c.accent, bold = true })

	-- Flotantes
	hl(0, "NormalFloat", { fg = c.fg, bg = c.bg_dark })
	hl(0, "FloatBorder", { fg = c.comment, bg = c.bg_dark })

	-- Menús (autocomplete, etc.)
	hl(0, "Pmenu", { fg = c.fg, bg = c.float_bg })
	hl(0, "PmenuSel", { fg = c.bg, bg = c.blue })
	hl(0, "PmenuThumb", { bg = c.scrollbar })

	-- Diagnósticos (LSP)
	hl(0, "DiagnosticError", { fg = c.red })
	hl(0, "DiagnosticWarn", { fg = c.orange })
	hl(0, "DiagnosticInfo", { fg = c.blue })
	hl(0, "DiagnosticHint", { fg = c.cyan })
	-- hl(0, "DiagnosticUnnecessary", { undercurl = true })

	-- Treesitter genérico
end

return M
