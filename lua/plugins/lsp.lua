return {
    "neovim/nvim-lspconfig",
    config = function()
        require("lspconfig").lua_ls.setup({
            on_init = function(client)
                if client.workspace_folders then
                    local path = client.workspace_folders[1].name
                    if vim.uv.fs_stat(path .. "/.luarc.json") or
                        vim.uv.fs_stat(path .. "/.luarc.jsonc")
                    then
                        return
                    end
                end

                client.config.settings.Lua = vim.tbl_deep_extend(
                    "force",
                    client.config.settings.Lua,
                    {
                        runtime = { version = "LuaJIT" },
                        workspace = {
                            checkThirdParty = false,
                            library = {
                                vim.env.VIMRUNTIME,
                            },
                        },
                    }
                )
            end,
            settings = {
                Lua = {},
            },
        })

        vim.api.nvim_create_autocmd("LspAttach", {
            desc = "LSP Actions",
            callback = function(event)
                local function opts_with(opts)
                    local result = { buffer = event.buf }
                    for key, value in pairs(opts) do
                        result[key] = value
                    end
                    return result
                end

                vim.keymap.set(
                    "n", "<leader>k",
                    "<cmd>lua vim.lsp.buf.hover()<cr>",
                    opts_with({ desc = "Hover" })
                )
                vim.keymap.set(
                    "n", "gd",
                    "<cmd>lua vim.lsp.buf.definition()<cr>",
                    opts_with({ desc = "Goto definition" })
                )
                vim.keymap.set(
                    "n", "gD",
                    "<cmd>lua vim.lsp.buf.declaration()<cr>",
                    opts_with({ desc = "Goto declaration" })
                )
                vim.keymap.set(
                    "n", "go",
                    "<cmd>lua vim.lsp.buf.type_definition()<cr>",
                    opts_with({ desc = "Goto type definition" })
                )
                vim.keymap.set(
                    "n", "gr",
                    "<cmd>lua vim.lsp.buf.references()<cr>",
                    opts_with({ desc = "Goto references" })
                )
                vim.keymap.set(
                    "n", "gs",
                    "<cmd>lua vim.lsp.buf.signature_help()<cr>",
                    opts_with({ desc = "Show signature help" })
                )
                vim.keymap.set(
                    "n", "<leader>r",
                    "<cmd>lua vim.lsp.buf.rename()<cr>",
                    opts_with({ desc = "Rename" })
                )
                vim.keymap.set(
                    { "n", "x" }, "<F3>",
                    "<cmd>lua vim.lsp.buf.format({ async = true })<cr>",
                    opts_with({ desc = "Format" })
                )
                vim.keymap.set(
                    { "n", "x" }, "<leader>a",
                    "<cmd>lua vim.lsp.buf.code_action()<cr>",
                    opts_with({ desc = "Show actions" })
                )
            end
        })
    end,
}
