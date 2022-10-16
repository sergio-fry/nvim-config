:nmap <C-p> :FZF<CR>
:nmap <Space>ff :FZF<CR>


nmap <Space>t :TestLast<CR>
nmap <Space>tt :TestLast<CR>
nmap <Space>tn :TestNearest<CR>
nmap <Space>tf :TestFile<CR>
nmap <Space>ts :TestSuite<CR>
nmap <Space>b :BufExplorer<CR>
nmap <Space>bb :Buffers<CR>
nmap <Space>ft :NERDTreeFind<CR>

:command A :call OpenAlternate(expand('%'), ':e')
