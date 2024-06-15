local dap = require "dap"

dap.adapters["pwa-node"] = {
  type = "server",
  host = "127.0.0.1",
  port = 8123,
  executable = {
    command = "js-debug-adapter",
  },
}

dap.adapters["node2"] = {
  type = "executable",
  command = "node",
  args = { os.getenv "HOME" .. "/.config/nvim/vscode-js-debug/out/src/chromeDebug.js" },
}

for _, lang in pairs { "javascript", "typescript" } do
  dap.configurations[lang] = {
    {
      type = "pwa-node",
      request = "launch",
      name = "Launch file",
      program = "${file}",
      cwd = "~/zendr/portal",
    },

    {
      type = "pwa-node",
      request = "attach",
      name = "Attach",
      processId = require("dap.utils").pick_process,
      cwd = "${workspaceFolder}",
    },
  }
end
