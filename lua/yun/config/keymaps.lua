local keymap = vim.keymap
local opts = { noremap = true }

-- Allow select all by using cmd + A
keymap.set("n", "<C-a>", "ggVG", opts)

-- Move lines in the visual mode
keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", opts)
keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", opts)

-- Handle tabs by using TAB
vim.keymap.set("n", "<Tab>", function()
  if vim.fn.tabpagenr("$") > 1 then
    vim.cmd("tabnext")
  else
    vim.cmd("bnext")
  end
end, opts)

vim.keymap.set("n", "<S-Tab>", function()
  if vim.fn.tabpagenr("$") > 1 then
    vim.cmd("tabprevious")
  else
    vim.cmd("bprevious")
  end
end, opts)
