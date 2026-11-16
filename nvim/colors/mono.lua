-- ~/.config/nvim/colors/mono-maroon.lua
-- Black on white, maroon accent.

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end
vim.o.background = "light"
vim.o.termguicolors = true
vim.g.colors_name = "mono-maroon"

local c = {
  bg = "#ffffff",
  fg = "#000000",
  dim = "#808080", -- comments, line numbers
  faint = "#d0d0d0", -- borders, indent guides
  subtle = "#f2f2f2", -- cursor line, floats, popups
  accent = "#800000", -- maroon: change this one value to retint everything
  on_accent = "#ffffff", -- text drawn on top of maroon
}

local hl = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- editor ui
hl("Normal", { fg = c.fg, bg = c.bg })
hl("NormalNC", { fg = c.fg, bg = c.bg })
hl("NormalFloat", { fg = c.fg, bg = c.subtle })
hl("FloatBorder", { fg = c.dim, bg = c.subtle })
hl("FloatTitle", { fg = c.fg, bg = c.subtle, bold = true })
hl("Cursor", { fg = c.on_accent, bg = c.accent })
hl("lCursor", { link = "Cursor" })
hl("TermCursor", { link = "Cursor" })
hl("CursorLine", { bg = c.subtle })
hl("CursorColumn", { bg = c.subtle })
hl("ColorColumn", { bg = c.subtle })
hl("LineNr", { fg = c.dim })
hl("CursorLineNr", { fg = c.accent, bold = true })
hl("SignColumn", { bg = c.bg })
hl("FoldColumn", { fg = c.dim, bg = c.bg })
hl("Folded", { fg = c.dim, bg = c.subtle })
hl("Visual", { fg = c.on_accent, bg = c.accent })
hl("VisualNOS", { link = "Visual" })
hl("Search", { fg = c.on_accent, bg = c.accent })
hl("IncSearch", { fg = c.bg, bg = c.fg })
hl("CurSearch", { link = "IncSearch" })
hl("Substitute", { link = "Search" })
hl("MatchParen", { fg = c.on_accent, bg = c.accent, bold = true })
hl("NonText", { fg = c.faint })
hl("EndOfBuffer", { fg = c.bg })
hl("Whitespace", { fg = c.faint })
hl("SpecialKey", { fg = c.faint })
hl("WinSeparator", { fg = c.faint })
hl("VertSplit", { link = "WinSeparator" })
hl("StatusLine", { fg = c.fg, bg = c.subtle })
hl("StatusLineNC", { fg = c.dim, bg = c.subtle })
hl("TabLine", { fg = c.dim, bg = c.subtle })
hl("TabLineSel", { fg = c.fg, bg = c.bg, bold = true })
hl("TabLineFill", { bg = c.subtle })
hl("WinBar", { fg = c.fg, bg = c.bg })
hl("WinBarNC", { fg = c.dim, bg = c.bg })
hl("Pmenu", { fg = c.fg, bg = c.subtle })
hl("PmenuSel", { fg = c.on_accent, bg = c.accent })
hl("PmenuSbar", { bg = c.subtle })
hl("PmenuThumb", { bg = c.dim })
hl("WildMenu", { link = "PmenuSel" })
hl("Directory", { fg = c.fg, bold = true })
hl("Title", { fg = c.fg, bold = true })
hl("Question", { fg = c.fg })
hl("MoreMsg", { fg = c.fg })
hl("ModeMsg", { fg = c.fg, bold = true })
hl("ErrorMsg", { fg = c.on_accent, bg = c.accent })
hl("WarningMsg", { fg = c.fg, bold = true })
hl("QuickFixLine", { bg = c.subtle })

-- syntax (treesitter and lsp groups link to these by default)
hl("Comment", { fg = c.dim, italic = true })
hl("Constant", { fg = c.fg })
hl("String", { fg = c.fg })
hl("Character", { fg = c.fg })
hl("Number", { fg = c.fg })
hl("Boolean", { fg = c.fg })
hl("Float", { fg = c.fg })
hl("Identifier", { fg = c.fg })
hl("Function", { fg = c.fg, bold = true })
hl("Statement", { fg = c.fg, bold = true })
hl("Conditional", { fg = c.fg, bold = true })
hl("Repeat", { fg = c.fg, bold = true })
hl("Label", { fg = c.fg, bold = true })
hl("Operator", { fg = c.fg })
hl("Keyword", { fg = c.fg, bold = true })
hl("Exception", { fg = c.fg, bold = true })
hl("PreProc", { fg = c.fg })
hl("Include", { fg = c.fg, bold = true })
hl("Type", { fg = c.fg })
hl("StorageClass", { fg = c.fg, bold = true })
hl("Special", { fg = c.fg })
hl("Delimiter", { fg = c.fg })
hl("Underlined", { fg = c.fg, underline = true })
hl("Todo", { fg = c.on_accent, bg = c.accent, bold = true })
hl("Error", { fg = c.on_accent, bg = c.accent })
hl("@variable", { fg = c.fg })
hl("@comment.todo", { link = "Todo" })

-- diagnostics: errors in maroon, everything else greyscale
hl("DiagnosticError", { fg = c.accent })
hl("DiagnosticWarn", { fg = c.fg })
hl("DiagnosticInfo", { fg = c.dim })
hl("DiagnosticHint", { fg = c.dim })
hl("DiagnosticOk", { fg = c.dim })
hl("DiagnosticUnderlineError", { undercurl = true, sp = c.accent })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.fg })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.dim })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.dim })

-- diffs and git signs
hl("DiffAdd", { fg = c.fg, bg = c.subtle })
hl("DiffChange", { fg = c.fg, bg = c.subtle })
hl("DiffDelete", { fg = c.accent })
hl("DiffText", { fg = c.fg, bg = c.faint, bold = true })
hl("Added", { fg = c.fg })
hl("Changed", { fg = c.dim })
hl("Removed", { fg = c.accent })

-- indent guides (indent-blankline / mini.indentscope), harmless if not installed
hl("IblIndent", { fg = c.faint })
hl("IblScope", { fg = c.accent })
hl("MiniIndentscopeSymbol", { fg = c.accent })

-- maroon block cursor in normal mode, thin bar in insert
vim.o.guicursor = "n-v-c-sm:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor"
