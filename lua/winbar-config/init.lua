local M = {}

function M.eval()
  return 'test'
end

-- function M.eval()
  -- local file_path = vim.api.nvim_eval_statusline('%f', {}).str
  -- local modified = vim.api.nvim_eval_statusline('%M', {}).str == '+' and '●' or ''

  --[[ file_path = file_path:gsub('', '') ]]

  -- return string.format('%s %s', file_path, modified)
  -- return test

-- return M
