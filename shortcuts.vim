nmap <C-p> :Telescope find_files<CR>

nmap <Space>b :Telescope buffers<CR>
nmap <Space>ff :Telescope find_files<CR>
nmap <Space>fs :Telescope live_grep<CR>
nmap <Space>ft :NERDTreeFind<CR>
nmap <Space>t :TestLast<CR>
nmap <Space>tf :TestFile<CR>
nmap <Space>tl :TestNearest<CR>
nmap <Space>ts :TestSuite<CR>
nmap <Space>tt :TestLast<CR>
nmap <Space>/ :nohlsearch<CR>

:command A :call OpenAlternate(expand('%'), ':e')
