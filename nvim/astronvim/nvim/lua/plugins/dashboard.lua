local function keep_calm_centered()
  -- centers a line
  -- @param to_center {string[]}
  -- @param lines {string[]}
  -- @param max_width {integer}
  -- @return {string[]}
  local function center(to_center, lines, max_width)
    local line_width = #lines[1]
    for _, l in ipairs(lines) do
      local d = max_width - line_width
      table.insert(to_center, l )
    end
    return to_center
  end
  -- new line
  local function newline(to_center, max_width)
    local whitespace = string.rep("░", max_width)
    table.insert(to_center, whitespace)
    return to_center
  end

  local keep_calm = {
    [[░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░]],
    [[░  ░░░░  ░░        ░░        ░░       ░░░░░░░░░░      ░░░░      ░░░  ░░░░░░░░  ░░░░  ░]],
    [[▒  ▒▒▒  ▒▒▒  ▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒  ▒▒▒▒  ▒▒▒▒▒▒▒▒  ▒▒▒▒  ▒▒  ▒▒▒▒  ▒▒  ▒▒▒▒▒▒▒▒   ▒▒   ▒]],
    [[▓     ▓▓▓▓▓      ▓▓▓▓      ▓▓▓▓       ▓▓▓▓▓▓▓▓▓  ▓▓▓▓▓▓▓▓  ▓▓▓▓  ▓▓  ▓▓▓▓▓▓▓▓        ▓]],
    [[█  ███  ███  ████████  ████████  ██████████████  ████  ██        ██  ████████  █  █  █]],
    [[█  ████  ██        ██        ██  ███████████████      ███  ████  ██        ██  ████  █]],
    [[██████████████████████████████████████████████████████████████████████████████████████]],
  }
  local _and =  {
    [[░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░]],
    [[░░      ░░░   ░░░  ░░       ░░]],
    [[▒  ▒▒▒▒  ▒▒    ▒▒  ▒▒  ▒▒▒▒  ▒]],
    [[▓  ▓▓▓▓  ▓▓  ▓  ▓  ▓▓  ▓▓▓▓  ▓]],
    [[█        ██  ██    ██  ████  █]],
    [[█  ████  ██  ███   ██       ██]],
    [[██████████████████████████████]],
  }
  local build_awesome = {
    [[░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░]],
    [[░       ░░░  ░░░░  ░░        ░░  ░░░░░░░░       ░░░░░░░░░░      ░░░  ░░░░  ░░        ░░░      ░░░░      ░░░  ░░░░  ░░        ░]],
    [[▒  ▒▒▒▒  ▒▒  ▒▒▒▒  ▒▒▒▒▒  ▒▒▒▒▒  ▒▒▒▒▒▒▒▒  ▒▒▒▒  ▒▒▒▒▒▒▒▒  ▒▒▒▒  ▒▒  ▒  ▒  ▒▒  ▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒  ▒▒▒▒  ▒▒   ▒▒   ▒▒  ▒▒▒▒▒▒▒]],
    [[▓       ▓▓▓  ▓▓▓▓  ▓▓▓▓▓  ▓▓▓▓▓  ▓▓▓▓▓▓▓▓  ▓▓▓▓  ▓▓▓▓▓▓▓▓  ▓▓▓▓  ▓▓        ▓▓      ▓▓▓▓▓      ▓▓▓  ▓▓▓▓  ▓▓        ▓▓      ▓▓▓]],
    [[█  ████  ██  ████  █████  █████  ████████  ████  ████████        ██   ██   ██  ██████████████  ██  ████  ██  █  █  ██  ███████]],
    [[█       ████      ███        ██        ██       █████████  ████  ██  ████  ██        ███      ████      ███  ████  ██        █]],
    [[██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████]],
  }
  local shit = {
    [[░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░]],
    [[░░      ░░░  ░░░░  ░░        ░░        ░]],
    [[▒  ▒▒▒▒▒▒▒▒  ▒▒▒▒  ▒▒▒▒▒  ▒▒▒▒▒▒▒▒  ▒▒▒▒]],
    [[▓▓      ▓▓▓        ▓▓▓▓▓  ▓▓▓▓▓▓▓▓  ▓▓▓▓]],
    [[███████  ██  ████  █████  ████████  ████]],
    [[██      ███  ████  ██        █████  ████]],
    [[████████████████████████████████████████]],
  }

  local max_width = #build_awesome[1]
  local centered = {}

  vim.notify("max_width: " .. max_width)
  -- centered = newline(centered, max_width)
  centered = center(centered, keep_calm, max_width)
  -- centered = newline(centered, max_width)
  centered = center(centered, _and, max_width)
  -- centered = newline(centered, max_width)
  centered = center(centered, build_awesome, max_width)
  -- centered = newline(centered, max_width)
  centered = center(centered, shit, max_width)
  -- centered = newline(centered, max_width)

  return centered
end

return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        header = table.concat(keep_calm_centered(), "\n"),
      },
    },
  },
}
