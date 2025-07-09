local M = {}

-- Load the colorscheme
function M.load()
  -- Clear any existing highlights
  vim.cmd('highlight clear')
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end

  -- Set background and colorscheme name
  vim.o.background = 'dark'
  vim.g.colors_name = 'cursor-dark-midnight'

  -- Load the theme
  vim.cmd('colorscheme cursor-dark-midnight')
end

-- Setup function for plugin managers
function M.setup(opts)
  opts = opts or {}
  
  -- Apply the colorscheme immediately if requested
  if opts.load_on_setup ~= false then
    M.load()
  end
end

return M