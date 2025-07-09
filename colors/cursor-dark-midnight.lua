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
  blue = '#5e81ac',
  magenta = '#b48ead',
  cyan = '#88c0d0',
  orange = '#d08770',
  
  -- Semantic colors
  keyword = '#81a1c1',
  string = '#a3be8c',
  number = '#b48ead',
  boolean = '#81a1c1',
  constant = '#8fbcbb',
  function_name = '#8fbcbb',
  class_name = '#81a1c1',
  variable = '#d8dee9',
  comment = '#5e6b7d',
  operator = '#81a1c1',
  
  -- Status colors
  error = '#bf616a',
  warning = '#ebcb8b',
  info = '#88c0d0',
  hint = '#8fbcbb',
  
  -- Git colors
  git_add = '#a3be8c',
  git_change = '#ebcb8b',
  git_delete = '#bf616a',
  
  -- Terminal colors
  terminal_black = '#2e3440',
  terminal_bright_black = '#3b4252',
  terminal_white = '#d8dee9',
  terminal_bright_white = '#eceff4',
}

-- Helper function to set highlight groups
local function hi(group, opts)
  local cmd = 'highlight ' .. group
  if opts.fg then cmd = cmd .. ' guifg=' .. opts.fg end
  if opts.bg then cmd = cmd .. ' guibg=' .. opts.bg end
  if opts.sp then cmd = cmd .. ' guisp=' .. opts.sp end
  if opts.style then cmd = cmd .. ' gui=' .. opts.style end
  vim.cmd(cmd)
end

-- Base highlights
hi('Normal', { fg = colors.fg, bg = colors.bg })
hi('NormalFloat', { fg = colors.fg, bg = colors.bg_alt })
hi('NormalNC', { fg = colors.fg, bg = colors.bg })

-- UI elements
hi('Cursor', { fg = colors.bg, bg = colors.cursor })
hi('CursorLine', { bg = colors.line_highlight })
hi('CursorColumn', { bg = colors.line_highlight })
hi('LineNr', { fg = colors.comment })
hi('CursorLineNr', { fg = colors.fg_alt })
hi('SignColumn', { bg = colors.bg })
hi('ColorColumn', { bg = colors.bg_alt })
hi('Folded', { fg = colors.comment, bg = colors.bg_alt })
hi('FoldColumn', { fg = colors.comment, bg = colors.bg })
hi('VertSplit', { fg = colors.border })
hi('StatusLine', { fg = colors.fg, bg = colors.bg_alt })
hi('StatusLineNC', { fg = colors.comment, bg = colors.bg_alt })
hi('Tabline', { fg = colors.comment, bg = colors.bg_alt })
hi('TablineFill', { bg = colors.bg_alt })
hi('TablineSel', { fg = colors.fg_alt, bg = colors.bg })
hi('WildMenu', { fg = colors.bg, bg = colors.cyan })
hi('EndOfBuffer', { fg = colors.bg })

-- Search and selection
hi('Search', { fg = colors.bg, bg = colors.yellow })
hi('IncSearch', { fg = colors.bg, bg = colors.orange })
hi('Visual', { bg = colors.selection })
hi('VisualNOS', { bg = colors.selection })
hi('MatchParen', { fg = colors.cyan, style = 'bold' })

-- Messages
hi('ErrorMsg', { fg = colors.error })
hi('WarningMsg', { fg = colors.warning })
hi('MoreMsg', { fg = colors.green })
hi('Question', { fg = colors.cyan })

-- Syntax highlighting
hi('Comment', { fg = colors.comment, style = 'italic' })
hi('Constant', { fg = colors.constant })
hi('String', { fg = colors.string })
hi('Character', { fg = colors.string })
hi('Number', { fg = colors.number })
hi('Boolean', { fg = colors.boolean })
hi('Float', { fg = colors.number })
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
hi('Special', { fg = colors.orange })
hi('SpecialChar', { fg = colors.orange })
hi('Tag', { fg = colors.blue })
hi('Delimiter', { fg = colors.fg })
hi('SpecialComment', { fg = colors.comment })
hi('Debug', { fg = colors.red })
hi('Underlined', { fg = colors.cyan, style = 'underline' })
hi('Ignore', { fg = colors.comment })
hi('Error', { fg = colors.error })
hi('Todo', { fg = colors.bg, bg = colors.yellow, style = 'bold' })

-- Treesitter highlights
hi('@annotation', { fg = colors.orange })
hi('@attribute', { fg = colors.orange })
hi('@boolean', { fg = colors.boolean })
hi('@character', { fg = colors.string })
hi('@comment', { fg = colors.comment, style = 'italic' })
hi('@conditional', { fg = colors.keyword })
hi('@constant', { fg = colors.constant })
hi('@constant.builtin', { fg = colors.constant })
hi('@constant.macro', { fg = colors.constant })
hi('@constructor', { fg = colors.function_name })
hi('@error', { fg = colors.error })
hi('@exception', { fg = colors.keyword })
hi('@field', { fg = colors.variable })
hi('@float', { fg = colors.number })
hi('@function', { fg = colors.function_name })
hi('@function.builtin', { fg = colors.function_name })
hi('@function.macro', { fg = colors.function_name })
hi('@include', { fg = colors.blue })
hi('@keyword', { fg = colors.keyword })
hi('@keyword.function', { fg = colors.keyword })
hi('@keyword.operator', { fg = colors.keyword })
hi('@keyword.return', { fg = colors.keyword })
hi('@label', { fg = colors.keyword })
hi('@method', { fg = colors.function_name })
hi('@namespace', { fg = colors.class_name })
hi('@none', { fg = colors.fg })
hi('@number', { fg = colors.number })
hi('@operator', { fg = colors.operator })
hi('@parameter', { fg = colors.variable })
hi('@parameter.reference', { fg = colors.variable })
hi('@property', { fg = colors.variable })
hi('@punctuation.bracket', { fg = colors.fg })
hi('@punctuation.delimiter', { fg = colors.fg })
hi('@punctuation.special', { fg = colors.orange })
hi('@repeat', { fg = colors.keyword })
hi('@string', { fg = colors.string })
hi('@string.escape', { fg = colors.orange })
hi('@string.regex', { fg = colors.string })
hi('@string.special', { fg = colors.orange })
hi('@symbol', { fg = colors.constant })
hi('@tag', { fg = colors.blue })
hi('@tag.attribute', { fg = colors.orange })
hi('@tag.delimiter', { fg = colors.fg })
hi('@text', { fg = colors.fg })
hi('@text.bold', { fg = colors.fg, style = 'bold' })
hi('@text.emphasis', { fg = colors.fg, style = 'italic' })
hi('@text.underline', { fg = colors.fg, style = 'underline' })
hi('@text.strike', { fg = colors.fg, style = 'strikethrough' })
hi('@text.title', { fg = colors.cyan, style = 'bold' })
hi('@text.literal', { fg = colors.string })
hi('@text.uri', { fg = colors.cyan, style = 'underline' })
hi('@text.math', { fg = colors.blue })
hi('@text.reference', { fg = colors.blue })
hi('@text.environment', { fg = colors.blue })
hi('@text.environment.name', { fg = colors.class_name })
hi('@text.note', { fg = colors.info })
hi('@text.warning', { fg = colors.warning })
hi('@text.danger', { fg = colors.error })
hi('@type', { fg = colors.class_name })
hi('@type.builtin', { fg = colors.class_name })
hi('@type.definition', { fg = colors.class_name })
hi('@type.qualifier', { fg = colors.keyword })
hi('@variable', { fg = colors.variable })
hi('@variable.builtin', { fg = colors.variable })

-- Additional treesitter highlights
hi('@conditional.ternary', { fg = colors.keyword })
hi('@constructor.lua', { fg = colors.fg })
hi('@function.call', { fg = colors.function_name })
hi('@keyword.conditional', { fg = colors.keyword })
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

-- Completion menu (nvim-cmp)
hi('Pmenu', { fg = colors.fg, bg = colors.bg_alt })
hi('PmenuSel', { fg = colors.fg_alt, bg = colors.selection })
hi('PmenuSbar', { bg = colors.bg_alt })
hi('PmenuThumb', { bg = colors.border })
hi('CmpItemAbbr', { fg = colors.fg })
hi('CmpItemAbbrDeprecated', { fg = colors.comment, style = 'strikethrough' })
hi('CmpItemAbbrMatch', { fg = colors.cyan, style = 'bold' })
hi('CmpItemAbbrMatchFuzzy', { fg = colors.cyan, style = 'bold' })
hi('CmpItemKind', { fg = colors.blue })
hi('CmpItemKindText', { fg = colors.fg })
hi('CmpItemKindMethod', { fg = colors.function_name })
hi('CmpItemKindFunction', { fg = colors.function_name })
hi('CmpItemKindConstructor', { fg = colors.function_name })
hi('CmpItemKindField', { fg = colors.variable })
hi('CmpItemKindVariable', { fg = colors.variable })
hi('CmpItemKindClass', { fg = colors.class_name })
hi('CmpItemKindInterface', { fg = colors.class_name })
hi('CmpItemKindModule', { fg = colors.class_name })
hi('CmpItemKindProperty', { fg = colors.variable })
hi('CmpItemKindUnit', { fg = colors.constant })
hi('CmpItemKindValue', { fg = colors.constant })
hi('CmpItemKindEnum', { fg = colors.class_name })
hi('CmpItemKindKeyword', { fg = colors.keyword })
hi('CmpItemKindSnippet', { fg = colors.string })
hi('CmpItemKindColor', { fg = colors.red })
hi('CmpItemKindFile', { fg = colors.blue })
hi('CmpItemKindReference', { fg = colors.blue })
hi('CmpItemKindFolder', { fg = colors.blue })
hi('CmpItemKindEnumMember', { fg = colors.constant })
hi('CmpItemKindConstant', { fg = colors.constant })
hi('CmpItemKindStruct', { fg = colors.class_name })
hi('CmpItemKindEvent', { fg = colors.orange })
hi('CmpItemKindOperator', { fg = colors.operator })
hi('CmpItemKindTypeParameter', { fg = colors.class_name })

-- LSP code suggestions/inlay hints
hi('LspInlayHint', { fg = colors.comment, bg = colors.bg_alt, style = 'italic' })
hi('LspCodeLens', { fg = colors.comment, style = 'italic' })
hi('LspSignatureActiveParameter', { fg = colors.cyan, style = 'bold' })

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