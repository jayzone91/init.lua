local status, Neoformat = pcall(require, "neoformat")
if (not status) then return end

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END