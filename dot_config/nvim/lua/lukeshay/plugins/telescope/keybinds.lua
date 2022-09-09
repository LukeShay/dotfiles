Keybind.g({
	{
    "n",
    "<Leader>ff",
    [[<Cmd>lua require('telescope.builtin').find_files()<CR>]],
    { noremap = true, silent = true },
  },
	{
    "n",
    "<Leader>fg",
    [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]],
    { noremap = true, silent = true },
  },
	{
    "n",
    "<Leader>fb",
    [[<Cmd>lua require('telescope.builtin').buffers()<CR>]],
    { noremap = true, silent = true },
  },
	{
    "n",
    "<Leader>fh",
    [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]],
    { noremap = true, silent = true },
  },
})
