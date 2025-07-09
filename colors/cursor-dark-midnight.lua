-- Cursor Dark Midnight theme for Neovim
-- Ported from Cursor IDE theme

-- Clear any existing highlights
vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.o.background = 'dark'
vim.g.colors_name = 'cursor-dark-midnight'

-- Color palette extracted from Cursor Dark Midnight theme
local colors = {
  -- Main colors
  bg = '#1e2127',
  fg = '#7b88a1',
  bg_alt = '#191c22',
  fg_alt = '#d8dee9',
  
  -- UI colors
  selection = '#434c5e',
  line_highlight = '#434c5e33',
  cursor = '#d8dee9',
  border = '#272c36',
  
  -- Syntax colors
  red = '#bf616a',
  green = '#a3be8c',
  yellow = '#ebcb8b',
  blue = '#81a1c1',
  magenta = '#b48ead',
  cyan = '#88c0d0',
  orange = '#d08770',
  
  -- Additional colors
  comment = '#8597bca6',
  string = '#a3be8c',
  keyword = '#81a1c1',
  function_name = '#88c0d0',
  class_name = '#8fbcbb',
  constant = '#b48ead',
  operator = '#81a1c1',
  variable = '#d8dee9',
  
  -- Git colors
  git_add = '#a3be8c',
  git_change = '#ebcb8b',
  git_delete = '#bf616a',
  
  -- LSP/Diagnostic colors
  error = '#bf616a',
  warning = '#ebcb8b',
  info = '#88c0d0',
  hint = '#8fbcbb',
  
  -- Special colors
  none = 'NONE',
  terminal_black = '#272c36',
  terminal_bright_black = '#4c566a',
  terminal_white = '#e5e9f0',
  terminal_bright_white = '#eceff4',
}

-- Helper function to set highlights
local function hi(group, opts)
  local cmd = 'highlight ' .. group
  if opts.fg then cmd = cmd .. ' guifg=' .. opts.fg end
  if opts.bg then cmd = cmd .. ' guibg=' .. opts.bg end
  if opts.style then cmd = cmd .. ' gui=' .. opts.style end
  if opts.sp then cmd = cmd .. ' guisp=' .. opts.sp end
  vim.cmd(cmd)
end

-- Editor highlights
hi('Normal', { fg = colors.fg, bg = colors.bg })
hi('NormalFloat', { fg = colors.fg, bg = colors.bg_alt })
hi('NormalNC', { fg = colors.fg, bg = colors.bg })
hi('Cursor', { fg = colors.bg, bg = colors.cursor })
hi('CursorLine', { bg = colors.line_highlight })
hi('CursorColumn', { bg = colors.line_highlight })
hi('LineNr', { fg = '#4c566a' })
hi('CursorLineNr', { fg = '#687692' })
hi('SignColumn', { bg = colors.bg })
hi('ColorColumn', { bg = colors.selection })
hi('Folded', { fg = colors.comment, bg = colors.bg_alt })
hi('FoldColumn', { fg = colors.comment, bg = colors.bg })
hi('VertSplit', { fg = colors.border })
hi('WinSeparator', { fg = colors.border })

-- Visual mode
hi('Visual', { bg = colors.selection })
hi('VisualNOS', { bg = colors.selection })

-- Search
hi('Search', { fg = colors.bg, bg = colors.cyan })
hi('IncSearch', { fg = colors.bg, bg = colors.cyan })
hi('CurSearch', { fg = colors.bg, bg = colors.cyan })

-- Pmenu (completion menu)
hi('Pmenu', { fg = colors.fg_alt, bg = colors.bg_alt })
hi('PmenuSel', { fg = colors.fg_alt, bg = colors.selection })
hi('PmenuSbar', { bg = colors.border })
hi('PmenuThumb', { bg = colors.selection })

-- Statusline
hi('StatusLine', { fg = colors.fg, bg = colors.bg_alt })
hi('StatusLineNC', { fg = colors.comment, bg = colors.bg_alt })

-- Tabline
hi('TabLine', { fg = colors.comment, bg = colors.bg_alt })
hi('TabLineFill', { bg = colors.bg_alt })
hi('TabLineSel', { fg = colors.fg_alt, bg = colors.bg })

-- Messages
hi('ErrorMsg', { fg = colors.error })
hi('WarningMsg', { fg = colors.warning })
hi('ModeMsg', { fg = colors.info })
hi('MoreMsg', { fg = colors.info })
hi('Question', { fg = colors.info })

-- Diff
hi('DiffAdd', { fg = colors.git_add, bg = colors.bg })
hi('DiffChange', { fg = colors.git_change, bg = colors.bg })
hi('DiffDelete', { fg = colors.git_delete, bg = colors.bg })
hi('DiffText', { fg = colors.git_change, bg = colors.bg, style = 'bold' })

-- Spell
hi('SpellBad', { sp = colors.error, style = 'undercurl' })
hi('SpellCap', { sp = colors.warning, style = 'undercurl' })
hi('SpellLocal', { sp = colors.info, style = 'undercurl' })
hi('SpellRare', { sp = colors.hint, style = 'undercurl' })

-- Syntax highlighting
hi('Comment', { fg = colors.comment, style = 'italic' })
hi('Constant', { fg = colors.constant })
hi('String', { fg = colors.string })
hi('Character', { fg = colors.yellow })
hi('Number', { fg = colors.constant })
hi('Boolean', { fg = colors.constant })
hi('Float', { fg = colors.constant })
hi('Identifier', { fg = colors.variable })
hi('Function', { fg = colors.function_name })
hi('Statement', { fg = colors.keyword })
hi('Conditional', { fg = colors.keyword })
hi('Repeat', { fg = colors.keyword })
hi('Label', { fg = colors.keyword })
hi('Operator', { fg = colors.operator })
hi('Keyword', { fg = colors.keyword })
hi('Exception', { fg = colors.keyword })
hi('PreProc', { fg = colors.blue })
hi('Include', { fg = colors.blue })
hi('Define', { fg = colors.blue })
hi('Macro', { fg = colors.blue })
hi('PreCondit', { fg = colors.blue })
hi('Type', { fg = colors.class_name })
hi('StorageClass', { fg = colors.keyword })
hi('Structure', { fg = colors.class_name })
hi('Typedef', { fg = colors.class_name })
hi('Special', { fg = colors.cyan })
hi('SpecialChar', { fg = colors.yellow })
hi('Tag', { fg = colors.blue })
hi('Delimiter', { fg = colors.fg_alt })
hi('SpecialComment', { fg = colors.comment })
hi('Debug', { fg = colors.red })
hi('Underlined', { style = 'underline' })
hi('Ignore', { fg = colors.comment })
hi('Error', { fg = colors.error })
hi('Todo', { fg = colors.yellow, style = 'bold' })

-- TreeSitter highlights
hi('@comment', { fg = colors.comment, style = 'italic' })
hi('@constant', { fg = colors.constant })
hi('@constant.builtin', { fg = colors.blue })
hi('@constant.macro', { fg = colors.blue })
hi('@string', { fg = colors.string })
hi('@string.escape', { fg = colors.yellow })
hi('@string.special', { fg = colors.yellow })
hi('@character', { fg = colors.yellow })
hi('@number', { fg = colors.constant })
hi('@boolean', { fg = colors.constant })
hi('@float', { fg = colors.constant })
hi('@function', { fg = colors.function_name })
hi('@function.builtin', { fg = colors.function_name })
hi('@function.macro', { fg = colors.blue })
hi('@parameter', { fg = colors.variable })
hi('@method', { fg = colors.function_name })
hi('@field', { fg = colors.variable })
hi('@property', { fg = colors.variable })
hi('@constructor', { fg = colors.class_name })
hi('@conditional', { fg = colors.keyword })
hi('@repeat', { fg = colors.keyword })
hi('@label', { fg = colors.keyword })
hi('@operator', { fg = colors.operator })
hi('@keyword', { fg = colors.keyword })
hi('@exception', { fg = colors.keyword })
hi('@variable', { fg = colors.variable })
hi('@type', { fg = colors.class_name })
hi('@type.definition', { fg = colors.class_name })
hi('@storageclass', { fg = colors.keyword })
hi('@namespace', { fg = colors.class_name })
hi('@include', { fg = colors.blue })
hi('@preproc', { fg = colors.blue })
hi('@debug', { fg = colors.red })
hi('@tag', { fg = colors.blue })

-- LSP semantic tokens
hi('@lsp.type.class', { fg = colors.class_name })
hi('@lsp.type.comment', { fg = colors.comment })
hi('@lsp.type.decorator', { fg = colors.orange })
hi('@lsp.type.enum', { fg = colors.class_name })
hi('@lsp.type.enumMember', { fg = colors.constant })
hi('@lsp.type.function', { fg = colors.function_name })
hi('@lsp.type.interface', { fg = colors.class_name })
hi('@lsp.type.keyword', { fg = colors.keyword })
hi('@lsp.type.namespace', { fg = colors.class_name })
hi('@lsp.type.parameter', { fg = colors.variable })
hi('@lsp.type.property', { fg = colors.variable })
hi('@lsp.type.string', { fg = colors.string })
hi('@lsp.type.type', { fg = colors.class_name })
hi('@lsp.type.variable', { fg = colors.variable })

-- Diagnostic highlights
hi('DiagnosticError', { fg = colors.error })
hi('DiagnosticWarn', { fg = colors.warning })
hi('DiagnosticInfo', { fg = colors.info })
hi('DiagnosticHint', { fg = colors.hint })
hi('DiagnosticUnderlineError', { sp = colors.error, style = 'undercurl' })
hi('DiagnosticUnderlineWarn', { sp = colors.warning, style = 'undercurl' })
hi('DiagnosticUnderlineInfo', { sp = colors.info, style = 'undercurl' })
hi('DiagnosticUnderlineHint', { sp = colors.hint, style = 'undercurl' })

-- Git signs
hi('GitSignsAdd', { fg = colors.git_add })
hi('GitSignsChange', { fg = colors.git_change })
hi('GitSignsDelete', { fg = colors.git_delete })

-- Nvim-tree
hi('NvimTreeNormal', { fg = colors.fg, bg = colors.bg_alt })
hi('NvimTreeFolderName', { fg = colors.blue })
hi('NvimTreeFolderIcon', { fg = colors.blue })
hi('NvimTreeOpenedFolderName', { fg = colors.blue })
hi('NvimTreeEmptyFolderName', { fg = colors.blue })
hi('NvimTreeIndentMarker', { fg = colors.comment })
hi('NvimTreeSpecialFile', { fg = colors.yellow })
hi('NvimTreeExecFile', { fg = colors.green })
hi('NvimTreeImageFile', { fg = colors.magenta })
hi('NvimTreeMarkdownFile', { fg = colors.cyan })
hi('NvimTreeGitDirty', { fg = colors.git_change })
hi('NvimTreeGitNew', { fg = colors.git_add })
hi('NvimTreeGitDeleted', { fg = colors.git_delete })

-- Telescope
hi('TelescopeNormal', { fg = colors.fg, bg = colors.bg_alt })
hi('TelescopeBorder', { fg = colors.border, bg = colors.bg_alt })
hi('TelescopeTitle', { fg = colors.cyan })
hi('TelescopeSelection', { fg = colors.fg_alt, bg = colors.selection })
hi('TelescopeMatching', { fg = colors.cyan })
hi('TelescopePromptNormal', { fg = colors.fg, bg = colors.bg_alt })
hi('TelescopePromptBorder', { fg = colors.border, bg = colors.bg_alt })
hi('TelescopePromptTitle', { fg = colors.cyan })
hi('TelescopePreviewNormal', { fg = colors.fg, bg = colors.bg })
hi('TelescopePreviewBorder', { fg = colors.border, bg = colors.bg })
hi('TelescopePreviewTitle', { fg = colors.cyan })
hi('TelescopeResultsNormal', { fg = colors.fg, bg = colors.bg_alt })
hi('TelescopeResultsBorder', { fg = colors.border, bg = colors.bg_alt })
hi('TelescopeResultsTitle', { fg = colors.cyan })

-- Terminal colors
vim.g.terminal_color_0 = colors.terminal_black
vim.g.terminal_color_1 = colors.red
vim.g.terminal_color_2 = colors.green
vim.g.terminal_color_3 = colors.yellow
vim.g.terminal_color_4 = colors.blue
vim.g.terminal_color_5 = colors.magenta
vim.g.terminal_color_6 = colors.cyan
vim.g.terminal_color_7 = colors.terminal_white
vim.g.terminal_color_8 = colors.terminal_bright_black
vim.g.terminal_color_9 = colors.red
vim.g.terminal_color_10 = colors.green
vim.g.terminal_color_11 = colors.yellow
vim.g.terminal_color_12 = colors.blue
vim.g.terminal_color_13 = colors.magenta
vim.g.terminal_color_14 = colors.cyan
vim.g.terminal_color_15 = colors.terminal_bright_white