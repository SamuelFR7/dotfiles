return {
    "mhartington/formatter.nvim",
    config = function()
        local util = require("formatter.util")

        local function get_php_cs_fixer_config_path()
            local current_file_path = util.get_current_buffer_file_path()
            local project_root = "/opt/sources/"

            -- Extract the project name directly from the current file path
            local project_name = current_file_path:match("^" .. project_root .. "([^/]+)/")
            if project_name then
                return project_root .. project_name .. "/.php-cs-fixer.php"
            end
            return nil -- No config found
        end

        require("formatter").setup({
            logging = true,
            log_level = vim.log.levels.WARN,
            filetype = {
                php = {
                    function()
                        local config_path = get_php_cs_fixer_config_path()
                        if not config_path then
                            print(".php-cs-fixer.php not found, using default configuration")
                        end

            return {
              exe = "~/.local/share/nvim/mason/bin/php-cs-fixer",
              args = {
                "fix",
                config_path and "--config=" .. util.escape_path(config_path) or nil,
                util.escape_path(util.get_current_buffer_file_path()),
              },
              stdin = false,
            }
          end
        },
        javascript = {
          function()
            return {
              exe = "~/.local/share/nvim/mason/bin/prettier",
              args = { "--stdin-filepath", util.escape_path(util.get_current_buffer_file_path()) },
              stdin = true,
            }
          end
        },
        typescript = {
          function()
            return {
              exe = "~/.local/share/nvim/mason/bin/prettier",
              args = { "--stdin-filepath", util.escape_path(util.get_current_buffer_file_path()) },
              stdin = true,
            }
          end
        }
      }
    })
  end
}
