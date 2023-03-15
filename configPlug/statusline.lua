local gl = require('galaxyline')
local colors = require('galaxyline.theme').default
local condition = require('galaxyline.condition')
local gls = gl.section
local bg_color = vim.fn.synIDattr(vim.fn.hlID('Statusline'),'bg')
local mode_map = {
  ['n'] = {'NORMAL', "#B8CC52"},
  ['i'] = {'INSERT', '#36A3D9'},
  ['R'] = {'REPLACE','#F07178'},
  ['v'] = {'VISUAL', '#E6B673'},
  ['V'] = {'V-LINE', '#E6B673'},
  ['c'] = {'COMMAND', '#FF7733'},
  ['s'] = {'SELECT', '#E6B673'},
  ['S'] = {'S-LINE', '#E6B673'},
  ['t'] = {'TERMINAL', '#95E6CB'},
  [''] = {'V-BLOCK', '#E6B673'},
  [''] = {'S-BLOCK', '#E6B673'},
  ['Rv'] = {'VIRTUAL'},
  ['rm'] = {'--MORE'},
}

local sep = {
  right_filled = '',
  left_filled = ' ',
}

local function mode_label() return mode_map[vim.fn.mode()][1] or 'N/A' end
local function mode_hl() return mode_map[vim.fn.mode()][2] or 'NONE' end

local buffer_not_empty = function()
  if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
    return true
  end
  return false
end

gls.left[2] = {
    ViMode = {
      provider = function()
        vim.cmd('highlight GalaxyViMode guifg=' .. bg_color .. ' guibg=' ..
                  mode_hl() .. ' gui=bold')
        vim.cmd('highlight GalaxyViModeInv guifg=' .. mode_hl() .. ' guibg=' ..
                  bg_color .. ' gui=bold')
        return string.format('  %s ', mode_label())
      end,
      separator = sep.left_filled,
      separator_highlight = 'GalaxyViModeInv',
    },
}

gls.left[3] = {
  GitIcon = {
    provider = function() return ' ' end,
    condition = condition.check_git_workspace,
    separator = '',
    separator_highlight = {'NONE',bg_color},
    highlight = {colors.violet,bg_color,'NONE'},
  }
}

gls.left[4] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = condition.check_git_workspace,
    highlight = {colors.violet,bg_color,'bold'},
  }
}

gls.left[5] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = condition.hide_in_width,
    icon = '   ',
    highlight = {colors.green,bg_color},
  }
}
gls.left[6] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = condition.hide_in_width,
    icon = '   ',
    highlight = {colors.orange,bg_color},
  }
}

gls.left[7] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = condition.hide_in_width,
    icon = '   ',
    highlight = {colors.red,bg_color},
  }
}

gls.mid[1] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = condition.buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,bg_color},
  },
}

gls.mid[2] = {
  FileName = {
    provider = 'FileName',
    condition = condition.buffer_not_empty,
    highlight = {colors.magenta,bg_color,'bold'}
  }
}

gls.mid[3] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,bg_color}
  }
}

gls.mid[4] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.yellow,bg_color},
  }
}

gls.mid[5] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = ' ',
    highlight = {colors.cyan,bg_color},
  }
}

gls.mid[6] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = '  ',
    highlight = {colors.blue,bg_color},
  }
}

gls.right[1] = {
  FileEncode = {
    provider = 'FileEncode',
    condition = condition.hide_in_width,
    separator_highlight = {'NONE',bg_color},
    highlight = {colors.green,bg_color,'bold'}
  }
}

gls.right[3] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = ' ',
    separator_highlight = {'NONE',bg_color},
    highlight = {colors.fg,bg_color},
  },
}

gls.right[4] = {
  PerCent = {
    provider = 'LinePercent',
    separator = ' ',
    separator_highlight = {'#181825',bg_color},
    highlight = {colors.fg,bg_color,'bold'},
  }
}

gls.right[5] = {
  RainbowBlue = {
    provider = function() return ' ▊' end,
    highlight = {colors.violet,bg_color}
  },
}
