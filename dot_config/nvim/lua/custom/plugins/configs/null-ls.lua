local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

local b = null_ls.builtins

local sources = {

   -- webdev stuff
   b.formatting.deno_fmt,
   b.formatting.prettierd,
   b.diagnostics.eslint_d,
   b.diagnostics.tsc,

   -- Lua
   b.formatting.stylua,

   -- Shell
   b.formatting.shfmt,
   b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

   b.formatting.black,

   b.formatting.rustfmt,
}

null_ls.setup {
   debug = true,
   sources = sources,
}
