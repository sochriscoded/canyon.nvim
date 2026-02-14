local M = {}
local colors = require("canyon.palette")

M.setup = function()
  return {
    Normal = { fg = colors.fg, bg = colors.bg },
    NormalFloat = { fg = colors.fg, bg = colors.light_bg },
    Comment = { fg = colors.dark_fg, italic = true },
    Constant = { fg = colors.blue },
    String = { fg = colors.bright_green },
    Character = { fg = colors.bright_green },
    Number = { fg = colors.bright_red },
    Boolean = { fg = colors.magenta },
    Float = { fg = colors.bright_red },
    FloatBorder = { fg = colors.gray, bg = colors.light_bg },
    Operator = { fg = colors.fg },
    Keyword = { fg = colors.bright_yellow, bold = true },
    Keywords = { fg = colors.bright_yellow, bold = true },
    Identifier = { fg = colors.fg },
    Function = { fg = colors.green },
    Statement = { fg = colors.orange },
    Conditional = { fg = colors.bright_yellow },
    Repeat = { fg = colors.orange },
    Label = { fg = colors.bright_cyan },
    Exception = { fg = colors.bright_red },
    PreProc = { fg = colors.cyan },
    Include = { fg = colors.cyan },
    Define = { fg = colors.cyan },
    Title = { fg = colors.fg },
    Macro = { fg = colors.bright_red },
    PreCondit = { fg = colors.cyan },
    Type = { fg = colors.yellow },
    StorageClass = { fg = colors.yellow },
    Structure = { fg = colors.bright_blue },
    TypeDef = { fg = colors.bright_blue },
    Special = { fg = colors.bright_cyan, italic = true },
    SpecialComment = { fg = colors.dark_fg, italic = true },
    Error = { fg = colors.red },
    Todo = { fg = colors.blue, bold = true, italic = true },
    Underlined = { fg = colors.fg, underline = true },
    Cursor = { fg = colors.bg, bg = colors.fg },
    CursorLineNr = { fg = colors.bright_orange, bold = true },
    SignColumn = { bg = colors.bg },
    Conceal = { fg = colors.gray },
    CursorColumn = { bg = colors.med_bg },
    CursorLine = { bg = colors.med_bg },
    ColorColumn = { bg = colors.light_bg },
    StatusLine = { fg = colors.light_gray, bg = colors.light_bg },
    StatusLineNC = { fg = colors.dark_fg, bg = colors.light_bg },
    StatusLineTerm = { fg = colors.fg, bg = colors.bg },
    StatusLineTermNC = { fg = colors.gray },
    Directory = { fg = colors.bright_blue },
    DiffAdd = { fg = colors.bright_green, bg = '#1a2e1a' },
    DiffChange = { fg = colors.bright_yellow },
    DiffDelete = { fg = colors.bright_red, bg = '#2e1a1a' },
    DiffText = { fg = colors.bright_yellow, bg = '#2e2a1a' },
    ErrorMsg = { fg = colors.red },
    VertSplit = { fg = colors.bright_black },
    WinSeparator = { fg = colors.bright_black },
    Folded = { fg = colors.gray, bg = colors.light_bg },
    FoldColumn = {},
    Search = { fg = colors.bg, bg = colors.bright_yellow },
    IncSearch = { fg = colors.bg, bg = colors.bright_orange },
    LineNr = { fg = colors.gray },
    MatchParen = { fg = colors.bright_red, underline = true },
    NonText = { fg = colors.bright_black },
    Pmenu = { fg = colors.fg, bg = colors.light_bg },
    PmenuSel = { fg = colors.bright_white, bg = colors.bright_black },
    PmenuSbar = { bg = colors.light_bg },
    PmenuThumb = { bg = colors.gray },
    Question = { fg = colors.bright_green },
    QuickFixLine = { fg = colors.bright_white, bg = colors.bright_black },
    SpecialKey = { fg = colors.bright_black },
    SpellBad = { fg = colors.bright_red, undercurl = true, sp = colors.bright_red },
    SpellCap = { fg = colors.bright_yellow, undercurl = true, sp = colors.bright_yellow },
    SpellLocal = { fg = colors.bright_cyan, undercurl = true, sp = colors.bright_cyan },
    SpellRare = { fg = colors.bright_magenta, undercurl = true, sp = colors.bright_magenta },
    TabLine = { fg = colors.gray, bg = colors.light_bg },
    TabLineSel = { fg = colors.bright_white, bg = colors.bg },
    TabLineFill = { bg = colors.light_bg },
    Terminal = { fg = colors.fg, bg = colors.bg },
    Visual = { bg = colors.bright_black },
    VisualNOS = { bg = colors.bright_black },
    WarningMsg = { fg = colors.bright_yellow },
    WildMenu = { fg = colors.bg, bg = colors.bright_orange },

    ---------------------------------------------------------------------------
    -- TreeSitter
    ---------------------------------------------------------------------------
    ["@error"] = { fg = colors.red },
    ["@punctuation.delimiter"] = { fg = colors.fg },
    ["@punctuation.bracket"] = { fg = colors.fg },
    ["@punctuation.special"] = { fg = colors.bright_cyan },

    -- Values & literals
    ["@constant"] = { fg = colors.blue },
    ["@constant.builtin"] = { fg = colors.blue },
    ["@constant.macro"] = { fg = colors.blue },
    ["@symbol"] = { fg = colors.bright_cyan },
    ["@string"] = { fg = colors.bright_green },
    ["@string.regex"] = { fg = colors.red },
    ["@string.escape"] = { fg = colors.bright_magenta },
    ["@character"] = { fg = colors.bright_green },
    ["@number"] = { fg = colors.red },
    ["@boolean"] = { fg = colors.magenta },
    ["@float"] = { fg = colors.bright_red },

    -- Annotations & attributes
    ["@annotation"] = { fg = colors.bright_yellow },
    ["@attribute"] = { fg = colors.bright_cyan },
    ["@namespace"] = { fg = colors.bright_blue },

    -- Functions
    ["@function"] = { fg = colors.green, bold = true },
    ["@function.builtin"] = { fg = colors.green, bold = true },
    ["@function.macro"] = { fg = colors.bright_red },
    ["@method"] = { fg = colors.green },

    -- Parameters & variables
    ["@parameter"] = { fg = colors.cyan },
    ["@parameter.reference"] = { fg = colors.cyan },
    ["@field"] = { fg = colors.fg },
    ["@property"] = { fg = colors.fg },
    ["@constructor"] = { fg = colors.fg },
    ["@variable"] = { fg = colors.fg },
    ["@variable.builtin"] = { fg = colors.bright_white, italic = true },

    ---------------------------------------------------------------------------
    -- Control flow — the sandstone formations directing your eye
    --
    -- Arches/Moab mapping:
    --   conditional (if/else/switch/case) = sunlit sandstone arches
    --   repeat (for/while/do)             = weathered erosion patterns
    --   keyword (break/continue)          = same warm family
    --   keyword.return (return/yield)     = desert sunset, end of path
    --   exception (try/catch/throw)       = iron oxide streaks, danger
    --   keyword.operator (and/or/not)     = quiet logical connectives
    ---------------------------------------------------------------------------
    ["@conditional"] = { fg = colors.bright_yellow },
    ["@repeat"] = { fg = colors.orange },
    ["@keyword"] = { fg = colors.bright_yellow, bold = true },
    ["@keyword.function"] = { fg = colors.green },
    ["@keyword.function.ruby"] = { fg = colors.green },
    ["@keyword.return"] = { fg = colors.bright_magenta },
    ["@keyword.operator"] = { fg = colors.light_gray },
    ["@exception"] = { fg = colors.bright_red },
    ["@label"] = { fg = colors.bright_cyan },

    -- Operators
    ["@operator"] = { fg = colors.fg },

    -- Types — the desert sky
    ["@type"] = { fg = colors.yellow },
    ["@type.builtin"] = { fg = colors.yellow, italic = true },
    ["@type.qualifier"] = { fg = colors.yellow },
    ["@structure"] = { fg = colors.bright_blue },
    ["@include"] = { fg = colors.cyan },

    -- Text
    ["@text"] = { fg = colors.fg },
    ["@text.strong"] = { fg = colors.bright_white, bold = true },
    ["@text.emphasis"] = { fg = colors.bright_white, italic = true },
    ["@text.underline"] = { fg = colors.fg, underline = true },
    ["@text.title"] = { fg = colors.bright_white, bold = true },
    ["@text.literal"] = { fg = colors.bright_green },
    ["@text.uri"] = { fg = colors.bright_blue, italic = true },
    ["@text.reference"] = { fg = colors.bright_cyan, bold = true },

    -- Tags (HTML/JSX)
    ["@tag"] = { fg = colors.bright_red },
    ["@tag.attribute"] = { fg = colors.bright_orange },
    ["@tag.delimiter"] = { fg = colors.gray },

    ---------------------------------------------------------------------------
    -- Semantic tokens
    ---------------------------------------------------------------------------
    ["@class"] = { fg = colors.bright_blue },
    ["@struct"] = { fg = colors.bright_blue },
    ["@enum"] = { fg = colors.bright_blue },
    ["@enumMember"] = { fg = colors.blue },
    ["@event"] = { fg = colors.bright_orange },
    ["@interface"] = { fg = colors.bright_cyan },
    ["@modifier"] = { fg = colors.bright_magenta },
    ["@regexp"] = { fg = colors.red },
    ["@typeParameter"] = { fg = colors.bright_yellow },
    ["@decorator"] = { fg = colors.bright_orange },

    ---------------------------------------------------------------------------
    -- LSP Semantic (0.9+)
    ---------------------------------------------------------------------------
    ["@lsp.type.class"] = { fg = colors.bright_blue },
    ["@lsp.type.enum"] = { fg = colors.bright_blue },
    ["@lsp.type.decorator"] = { fg = colors.bright_orange },
    ["@lsp.type.enumMember"] = { fg = colors.blue },
    ["@lsp.type.function"] = { fg = colors.green },
    ["@lsp.type.interface"] = { fg = colors.bright_cyan },
    ["@lsp.type.macro"] = { fg = colors.bright_red },
    ["@lsp.type.method"] = { fg = colors.green },
    ["@lsp.type.namespace"] = { fg = colors.bright_blue },
    ["@lsp.type.parameter"] = { fg = colors.cyan },
    ["@lsp.type.property"] = { fg = colors.fg },
    ["@lsp.type.struct"] = { fg = colors.bright_blue },
    ["@lsp.type.type"] = { fg = colors.yellow },
    ["@lsp.type.variable"] = { fg = colors.fg },

    ---------------------------------------------------------------------------
    -- HTML
    ---------------------------------------------------------------------------
    htmlArg = { fg = colors.bright_orange },
    htmlBold = { fg = colors.bright_white, bold = true },
    htmlEndTag = { fg = colors.gray },
    htmlH1 = { fg = colors.bright_white, bold = true },
    htmlH2 = { fg = colors.bright_white, bold = true },
    htmlH3 = { fg = colors.fg, bold = true },
    htmlH4 = { fg = colors.fg, bold = true },
    htmlH5 = { fg = colors.fg },
    htmlH6 = { fg = colors.light_gray },
    htmlItalic = { fg = colors.bright_white, italic = true },
    htmlLink = { fg = colors.bright_blue, underline = true },
    htmlSpecialChar = { fg = colors.bright_cyan },
    htmlSpecialTagName = { fg = colors.bright_red },
    htmlTag = { fg = colors.gray },
    htmlTagN = { fg = colors.bright_red },
    htmlTagName = { fg = colors.bright_red },
    htmlTitle = { fg = colors.bright_white },

    ---------------------------------------------------------------------------
    -- Markdown
    ---------------------------------------------------------------------------
    markdownBlockquote = { fg = colors.light_gray, italic = true },
    markdownBold = { fg = colors.bright_white, bold = true },
    markdownCode = { fg = colors.bright_green },
    markdownCodeBlock = { fg = colors.bright_green },
    markdownCodeDelimiter = { fg = colors.green },
    markdownH1 = { fg = colors.bright_white, bold = true },
    markdownH2 = { fg = colors.bright_white, bold = true },
    markdownH3 = { fg = colors.fg, bold = true },
    markdownH4 = { fg = colors.fg, bold = true },
    markdownH5 = { fg = colors.light_gray, bold = true },
    markdownH6 = { fg = colors.gray, bold = true },
    markdownHeadingDelimiter = { fg = colors.bright_orange },
    markdownHeadingRule = { fg = colors.gray },
    markdownId = { fg = colors.cyan },
    markdownIdDeclaration = { fg = colors.cyan },
    markdownIdDelimiter = { fg = colors.gray },
    markdownItalic = { fg = colors.bright_white, italic = true },
    markdownLinkDelimiter = { fg = colors.gray },
    markdownLinkText = { fg = colors.bright_blue },
    markdownListMarker = { fg = colors.bright_orange },
    markdownOrderedListMarker = { fg = colors.bright_orange },
    markdownRule = { fg = colors.gray },

    ---------------------------------------------------------------------------
    -- Diff
    ---------------------------------------------------------------------------
    diffAdded = { fg = colors.bright_green },
    diffRemoved = { fg = colors.bright_red },
    diffFileId = { fg = colors.bright_blue, bold = true, reverse = true },
    diffFile = { fg = colors.gray },
    diffNewFile = { fg = colors.bright_green },
    diffOldFile = { fg = colors.bright_red },
    debugPc = { bg = colors.med_bg },
    debugBreakpoint = { fg = colors.bright_red, reverse = true },

    ---------------------------------------------------------------------------
    -- Git Signs
    ---------------------------------------------------------------------------
    GitSignsAdd = { fg = colors.green },
    GitSignsChange = { fg = colors.yellow },
    GitSignsDelete = { fg = colors.red },
    GitSignsAddLn = { fg = colors.bright_green, bg = '#1a2e1a' },
    GitSignsChangeLn = { fg = colors.bright_yellow, bg = '#2e2a1a' },
    GitSignsDeleteLn = { fg = colors.bright_red, bg = '#2e1a1a' },
    GitSignsCurrentLineBlame = { fg = colors.dark_fg },

    ---------------------------------------------------------------------------
    -- NvimTree
    ---------------------------------------------------------------------------
    NvimTreeNormal = { fg = colors.fg, bg = colors.menu },
    NvimTreeVertSplit = { fg = colors.bright_black, bg = colors.menu },
    NvimTreeRootFolder = { fg = colors.bright_orange, bold = true },
    NvimTreeGitDirty = { fg = colors.yellow },
    NvimTreeGitNew = { fg = colors.green },
    NvimTreeImageFile = { fg = colors.bright_magenta },
    NvimTreeFolderIcon = { fg = colors.bright_blue },
    NvimTreeIndentMarker = { fg = colors.bright_black },
    NvimTreeEmptyFolderName = { fg = colors.gray },
    NvimTreeFolderName = { fg = colors.bright_blue },
    NvimTreeSpecialFile = { fg = colors.bright_cyan, underline = true },
    NvimTreeOpenedFolderName = { fg = colors.bright_blue, bold = true },
    NvimTreeCursorLine = { bg = colors.light_bg },
    NvimTreeIn = { bg = colors.light_bg },

    ---------------------------------------------------------------------------
    -- LSP Diagnostics
    ---------------------------------------------------------------------------
    DiagnosticError = { fg = colors.red },
    DiagnosticWarn = { fg = colors.bright_yellow },
    DiagnosticInfo = { fg = colors.bright_blue },
    DiagnosticHint = { fg = colors.bright_cyan },
    DiagnosticUnderlineError = { undercurl = true, sp = colors.red },
    DiagnosticUnderlineWarn = { undercurl = true, sp = colors.bright_yellow },
    DiagnosticUnderlineInfo = { undercurl = true, sp = colors.bright_blue },
    DiagnosticUnderlineHint = { undercurl = true, sp = colors.bright_cyan },
    DiagnosticSignError = { fg = colors.red },
    DiagnosticSignWarn = { fg = colors.bright_yellow },
    DiagnosticSignInfo = { fg = colors.bright_blue },
    DiagnosticSignHint = { fg = colors.bright_cyan },
    DiagnosticFloatingError = { fg = colors.red },
    DiagnosticFloatingWarn = { fg = colors.bright_yellow },
    DiagnosticFloatingInfo = { fg = colors.bright_blue },
    DiagnosticFloatingHint = { fg = colors.bright_cyan },
    DiagnosticVirtualTextError = { fg = colors.red },
    DiagnosticVirtualTextWarn = { fg = colors.bright_yellow },
    DiagnosticVirtualTextInfo = { fg = colors.bright_blue },
    DiagnosticVirtualTextHint = { fg = colors.bright_cyan },
    LspDiagnosticsDefaultError = { fg = colors.red },
    LspDiagnosticsDefaultWarning = { fg = colors.bright_yellow },
    LspDiagnosticsDefaultInformation = { fg = colors.bright_blue },
    LspDiagnosticsDefaultHint = { fg = colors.bright_cyan },
    LspDiagnosticsUnderlineError = { fg = colors.red, undercurl = true },
    LspDiagnosticsUnderlineWarning = { fg = colors.bright_yellow, undercurl = true },
    LspDiagnosticsUnderlineInformation = { fg = colors.bright_blue, undercurl = true },
    LspDiagnosticsUnderlineHint = { fg = colors.bright_cyan, undercurl = true },
    LspReferenceText = { bg = colors.bright_black },
    LspReferenceRead = { bg = colors.bright_black },
    LspReferenceWrite = { fg = colors.bright_white, bg = colors.bright_black },
    LspCodeLens = { fg = colors.dark_fg },

    ---------------------------------------------------------------------------
    -- Cmp
    ---------------------------------------------------------------------------
    CmpItemAbbr = { fg = colors.fg, bg = colors.light_bg },
    CmpItemKind = { fg = colors.bright_cyan, bg = colors.light_bg },
    CmpItemKindMethod = { link = "@method" },
    CmpItemKindText = { link = "@text" },
    CmpItemKindFunction = { link = "@function" },
    CmpItemKindConstructor = { link = "@type" },
    CmpItemKindVariable = { link = "@variable" },
    CmpItemKindClass = { link = "@type" },
    CmpItemKindInterface = { link = "@type" },
    CmpItemKindModule = { link = "@namespace" },
    CmpItemKindProperty = { link = "@property" },
    CmpItemKindOperator = { link = "@operator" },
    CmpItemKindReference = { link = "@parameter.reference" },
    CmpItemKindUnit = { link = "@field" },
    CmpItemKindValue = { link = "@field" },
    CmpItemKindField = { link = "@field" },
    CmpItemKindEnum = { link = "@field" },
    CmpItemKindKeyword = { link = "@keyword" },
    CmpItemKindSnippet = { link = "@text" },
    CmpItemKindEvent = { link = "@constant" },
    CmpItemKindEnumMember = { link = "@field" },
    CmpItemKindConstant = { link = "@constant" },
    CmpItemKindStruct = { link = "@structure" },
    CmpItemKindTypeParameter = { link = "@parameter" },

    -- WinPicker
    WinPicker = { fg = colors.bright_white, bg = colors.blue, bold = true },

    ---------------------------------------------------------------------------
    -- Telescope
    ---------------------------------------------------------------------------
    TelescopeNormal = { fg = colors.fg, bg = colors.bg },
    TelescopeBorder = { fg = colors.gray },
    TelescopePromptBorder = { fg = colors.bright_orange },
    TelescopePromptTitle = { fg = colors.bright_orange },
    TelescopeResultsTitle = { fg = colors.bright_blue },
    TelescopePreviewTitle = { fg = colors.bright_green },
    TelescopeSelection = { fg = colors.bright_white, bg = colors.bright_black },
    TelescopeSelectionCaret = { fg = colors.bright_orange },
    TelescopeMatching = { fg = colors.bright_yellow, bold = true },

    -- Indent Blankline
    IndentBlanklineChar = { fg = colors.bright_black },
    IndentBlanklineContextChar = { fg = colors.gray },

    -- Which-key
    WhichKey = { fg = colors.bright_orange },
    WhichKeyGroup = { fg = colors.bright_blue },
    WhichKeyDesc = { fg = colors.fg },
    WhichKeySeparator = { fg = colors.dark_fg },
    WhichKeyFloat = { bg = colors.light_bg },

    -- Lazy.nvim
    LazyButton = { fg = colors.fg, bg = colors.light_bg },
    LazyButtonActive = { fg = colors.bright_white, bg = colors.bright_black },
    LazyH1 = { fg = colors.bg, bg = colors.bright_orange, bold = true },
  }
end
return M