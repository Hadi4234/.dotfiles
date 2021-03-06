---- nvim-cmp setup
local luasnip = require("luasnip")

-- nvim-cmp setup
local cmp = require("cmp")
cmp.setup({
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    mapping = {
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.close(),
        ["<CR>"] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        }),
        ["<Tab>"] = function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end,
        ["<S-Tab>"] = function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end,
    },
    sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "path" },
    },
})




local nvim_lsp = require("lspconfig")
local servers_lsp = { "julials" }
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)
capabilities.textDocument.completion.completionItem.snippetSupport = true
for _, lsp in ipairs(servers_lsp) do
    nvim_lsp[lsp].setup({
        -- on_attach = my_custom_on_attach,
        capabilities = capabilities,
        on_attach = on_attach,
    })
end
--local protocol = require('vim.lsp.protocol')
-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = {
    "sumneko_lua",
    "clangd",
    "rust_analyzer",
    "csharp_ls",
    --"pyright",
    "pylsp",
    "tsserver",
    --"omnisharp",
    "fsautocomplete",
    "hls",
    "texlab",
    "jsonls",
    "dartls",
    "vala_ls",
    --"volar",
    "vuels",
    "kotlin_language_server",
    "gopls",
    "jedi_language_server",
    "jdtls",
    "cmake",
    "bashls",
    "vimls",
    "cssls",
    "lemminx",
    "graphql",
    "html",
    "yamlls",
}

local lsp_installer = require("nvim-lsp-installer")

for _, name in pairs(servers) do
    local ok, server = lsp_installer.get_server(name)
    -- Check that the server is supported in nvim-lsp-installer
    if ok then
        if not server:is_installed() then
            print("Installing " .. name)
            server:install()
        end
    end
end

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
    if server.name == "sumneko_lua" then
        local runtime_path = vim.split(package.path, ";")
        local opts = {
            on_attach = on_attach,
            settings = {
                Lua = {
                    runtime = {
                        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                        version = "LuaJIT",
                        -- Setup your lua path
                        path = runtime_path,
                    },
                    diagnostics = {
                        -- Get the language server to recognize the `vim` global
                        globals = { "vim" },
                    },
                    telemetry = {
                        enable = false,
                    },
                },
            },
        }
        server:setup(opts)
    else
        local opts = {
            on_attach = on_attach,
        }

        -- (optional) Customize the options passed to the server
        -- if server.name == "tsserver" then
        --     opts.root_dir = function() ... end
        -- end

        -- This setup() function is exactly the same as lspconfig's setup function.
        -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
        server:setup(opts)
    end
end)
-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- luasnip setup
--local luasnip = require("luasnip")

