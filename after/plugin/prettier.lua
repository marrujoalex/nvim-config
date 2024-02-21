local prettier = require("prettier")

prettier.setup({
    bin = 'prettier',
    filetypes = {
        "css",
        "graphql",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "less",
        "markdown",
        "rust",
        "scss",
        "typescript",
        "typescriptreact",
        "yaml",
    },
})
