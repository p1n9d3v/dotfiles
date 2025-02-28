local neogenScript = require("neogen.configurations.typescript")
return {
  "danymat/neogen",
  config = true,
  opts = {
    languages = {
      ["javascript.jsdoc"] = require("neogen.configurations.javascript"),
      ["javascriptreact.jsdoc"] = require("neogen.configurations.javascriptreact"),
      ["typescript.tsdoc"] = require("neogen.configurations.typescript"),
      ["typescriptreact.tsdoc"] = require("neogen.configurations.typescriptreact"),
    },
  },
  -- Uncomment next line if you want to follow only stable versions
  -- version = "*"
}
