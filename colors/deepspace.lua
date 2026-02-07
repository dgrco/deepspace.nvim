-- colors/deepspace.lua

-- 1. Reset
vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.o.termguicolors = true
vim.g.colors_name = 'deepspace'

-- 2. The Deepspace Palette
local c = {
  bg          = '#111215', -- Near Black
  fg          = '#ffffff', -- White text

  -- UI
  cursor      = '#ffffff',
  line_nr     = '#3b4261',
  visual      = '#28344a',
  search_bg   = '#3d59a1',
  search_fg   = '#ffffff',
  match_paren = '#f6c177',

  -- Syntax
  comment     = '#89fa9c',
  string      = '#f6c177',
  keyword     = '#7aa0de',
  constant    = '#f6c177',
  func        = '#ffffff',
  type        = '#7dcfff',

  -- Diagnostics/Debugging
  error       = '#f7768e',
  warning     = '#fabd2f',
  todo        = '#e0af68',
}

-- 3. Mapping Helper
local function set_hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- 4. Assign Groups

-- ======================
-- Editor UI
-- ======================
set_hl('Normal',        { fg = c.fg, bg = c.bg })
set_hl('SignColumn',    { bg = c.bg })
set_hl('Cursor',        { fg = c.bg, bg = c.cursor })
set_hl('CursorLine',    { bg = '#17181c' })
set_hl('LineNr',        { fg = c.line_nr })
set_hl('CursorLineNr',  { fg = c.keyword })
set_hl('VertSplit',     { fg = c.line_nr, bg = c.bg })

set_hl('Visual',        { bg = c.visual })
set_hl('Search',        { fg = c.search_fg, bg = c.search_bg })
set_hl('IncSearch',     { fg = c.search_fg, bg = c.search_bg })
set_hl('MatchParen',    { fg = c.match_paren })

-- ======================
-- Syntax
-- ======================
set_hl('Comment',       { fg = c.comment })

set_hl('String',        { fg = c.string })
set_hl('Character',     { fg = c.string })

set_hl('Delimiter',     { fg = c.fg })

set_hl('Number',        { fg = c.constant })
set_hl('Boolean',       { fg = c.constant })
set_hl('Float',         { fg = c.constant })
set_hl('Constant',      { fg = c.constant })

set_hl('Identifier',    { fg = c.fg })
set_hl('Function',      { fg = c.func })

-- Keywords ONLY
set_hl('Keyword',       { fg = c.keyword })
set_hl('Conditional',   { fg = c.keyword })
set_hl('Repeat',        { fg = c.keyword })
set_hl('Exception',     { fg = c.keyword })

-- Statements but not keywords
set_hl('Statement',     { fg = c.fg })
set_hl('Label',         { fg = c.fg })
set_hl('Operator',      { fg = c.fg })

-- Types & structure
set_hl('Type',          { fg = c.type })
set_hl('Structure',     { fg = c.type })
set_hl('Typedef',       { fg = c.type })

set_hl('PreProc',       { fg = c.constant })
set_hl('Special',       { fg = c.fg })

set_hl('Error',         { fg = c.error })
set_hl('Todo',          { fg = c.todo, bg = c.comment })

-- LSP / Neovim diagnostic groups
set_hl('DiagnosticError',   { fg = c.error })
set_hl('DiagnosticWarn',    { fg = c.warning })
set_hl('DiagnosticInfo',    { fg = c.constant })
set_hl('DiagnosticHint',    { fg = c.comment })
set_hl('DiagnosticVirtualTextError', { fg = c.error })
set_hl('DiagnosticVirtualTextWarn',  { fg = c.warning })
set_hl('DiagnosticVirtualTextInfo',  { fg = c.constant })
set_hl('DiagnosticVirtualTextHint',  { fg = c.comment })

-- ======================
-- Completion menu
-- ======================
set_hl('Pmenu',         { fg = c.fg, bg = '#161d29' })
set_hl('PmenuSel',      { fg = c.keyword, bg = c.visual })
set_hl('PmenuSbar',     { bg = '#161d29' })
set_hl('PmenuThumb',    { bg = '#0f3336' })

-- ======================
-- Floating windows (IMPORTANT for cmp docs & which-key)
-- ======================
set_hl('NormalFloat',   { fg = c.fg, bg = '#161d29' })
set_hl('FloatBorder',   { fg = c.line_nr, bg = '#161d29' })
set_hl('FloatTitle',    { fg = c.fg, bg = '#161d29' })

-- ======================
-- Git signs
-- ======================
set_hl('GitSignsAdd',    { fg = c.comment })
set_hl('GitSignsChange', { fg = c.warning })
set_hl('GitSignsDelete', { fg = c.error })

-- ======================
-- Treesitter 
-- ======================
set_hl('@variable',             { fg = c.fg })
set_hl('@variable.builtin',     { fg = c.fg })
set_hl('@function',             { fg = c.func })
set_hl('@constant',             { fg = c.constant })
set_hl('@string',               { fg = c.string })
set_hl('@keyword',              { fg = c.keyword })
set_hl('@type',                 { fg = c.type })
set_hl('@type.builtin',         { fg = c.type })
set_hl('@type.qualifier',       { fg = c.type })
set_hl('@boolean',              { fg = c.constant })
set_hl('@operator',             { fg = c.fg })
set_hl('@comment',              { fg = c.comment })
set_hl('@punctuation.bracket', { fg = c.fg })
set_hl('@punctuation.delimiter', { fg = c.fg })

-- ======================
-- which-key
-- ======================
set_hl('WhichKey',          { fg = c.keyword, bg = '#161d29' })
set_hl('WhichKeyNormal',    { link = 'NormalFloat' })
set_hl('WhichKeyBorder',    { link = 'FloatBorder' })
set_hl('WhichKeyDesc',      { fg = c.comment })
set_hl('WhichKeyGroup',     { fg = c.constant })
set_hl('WhichKeySeparator', { fg = c.line_nr })
set_hl('WhichKeyValue',     { fg = c.comment })
set_hl('WhichKeyTitle',     { fg = c.fg })

-- ======================
-- nvim-cmp
-- ======================
set_hl('CmpItemAbbr',           { fg = c.fg })
set_hl('CmpItemAbbrMatch',      { fg = c.constant })
set_hl('CmpItemAbbrMatchFuzzy', { fg = c.constant })
set_hl('CmpItemKind',           { fg = c.func })
set_hl('CmpItemMenu',           { fg = c.line_nr })

set_hl('CmpDoc',                { fg = c.fg, bg = '#161d29' })
set_hl('CmpDocBorder',          { fg = c.line_nr, bg = '#161d29' })
set_hl('CmpDocTitle',           { fg = c.fg, bg = '#161d29' })

-- ======================
-- Statusline palette
-- ======================
vim.g.deepspace_statusline = {
  bg       = '#161d29',
  fg       = c.fg,
  muted    = c.line_nr,
  accent   = c.keyword,
  insert   = c.string,
  visual   = '#7aa2f7',
  replace  = c.error,
  command  = c.warning,
}

-- ======================
-- mini.statusline
-- ======================
local sl = vim.g.deepspace_statusline

set_hl('MiniStatuslineModeNormal',  { fg = sl.bg, bg = sl.accent, bold = true })
set_hl('MiniStatuslineModeInsert',  { fg = sl.bg, bg = sl.insert, bold = true })
set_hl('MiniStatuslineModeVisual',  { fg = sl.bg, bg = sl.visual, bold = true })
set_hl('MiniStatuslineModeReplace', { fg = sl.bg, bg = sl.replace, bold = true })
set_hl('MiniStatuslineModeCommand', { fg = sl.bg, bg = sl.command, bold = true })

-- Main bar
set_hl('MiniStatuslineNormal',      { fg = sl.fg, bg = sl.bg })
set_hl('MiniStatuslineInactive',    { fg = sl.muted, bg = sl.bg })

-- Sections
set_hl('MiniStatuslineDevinfo',     { fg = sl.accent, bg = sl.bg })
set_hl('MiniStatuslineFilename',    { fg = sl.fg, bg = sl.bg })
set_hl('MiniStatuslineFileinfo',    { fg = sl.muted, bg = sl.bg })
set_hl('MiniStatuslineLocation',    { fg = sl.muted, bg = sl.bg })
