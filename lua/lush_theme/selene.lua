--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

local light_grey = hsl(0, 0, 20)
local grey2 = hsl(0, 0, 42)
local grey3 = hsl(186, 8, 55)
local grey4 = hsl(0, 0, 79)
local grey5 = hsl(46, 42, 88)
local grey6 = hsl(44, 87, 94)

local black = hsl(0, 0, 0)
local white = hsl(0, 0, 100)
local red = hsl(0, 100, 50)

local yellow1 = hsl(51, 100, 50)
local yellow2 = hsl(64, 100, 50)
local yellow3 = hsl(65, 92, 76)
local yellow4 = hsl(37, 100, 60)

local blue1 = hsl(208, 100, 50)
local blue2 = hsl(240, 100, 28)
local blue3 = hsl(185, 40, 50)
local blue4 = hsl(203, 52, 60)

local green1 = hsl(146, 100, 62)
local green2 = hsl(172, 42, 30)
local green3 = hsl(120, 100, 50)
local green4 = hsl(138, 100, 69)
local green5 = hsl(120, 100, 42)

local orange1 = hsl(28, 100, 50)
local orange2 = hsl(20, 100, 50)
local orange3 = hsl(10, 90, 50)

local purple1 = hsl(290, 100, 60)
local purple2 = hsl(290, 60, 30)
local purple3 = hsl(290, 100, 19)
local purple4 = hsl(248, 21, 52)
local purple5 = hsl(248, 100, 72)
local purple6 = hsl(315, 100, 62)
local purple7 = hsl(335, 100, 55)
local purple8 = hsl(345, 100, 50)
local purple9 = hsl(250, 62, 75)

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    -- The following are all the Neovim default highlight groups from the docs
    -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
    -- probably style all of these at a bare minimum.
    --
    -- Referenced/linked groups must come before being referenced/lined,
    -- so the order shown ((mostly) alphabetical) is likely
    -- not the order you will end up with.
    --
    -- You can uncomment these and leave them empty to disable any
    -- styling for that group (meaning they mostly get styled as Normal)
    -- or leave them commented to apply vims default colouring or linking.

    Comment      { gui = "italic", fg = hsl(225, 100, 75) }, -- any comment
    ColorColumn  { bg = hsl(0, 0, 20) }, -- used for the columns set with 'colorcolumn'
    Conceal      { fg = blue1 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       { bg = blue1, fg = hsl(44, 87, 94) }, -- character under the cursor
    lCursor      { bg = Cursor.fg, fg = Cursor.bg }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     { bg = "fg" }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { bg = ColorColumn.bg }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   { bg = ColorColumn.bg, sp = hsl(46, 42, 88) }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    { fg = blue1 }, -- directory names (and other special names in listings)
    DiffAdd      { bg = hls(0, 0, 20), fg = green5 }, -- diff mode: Added line |diff.txt|
    DiffChange   { bg = DiffAdd.bg, fg = yellow4 }, -- diff mode: Changed line |diff.txt|
    DiffDelete   { bg = DiffAdd.bg, fg = red }, -- diff mode: Deleted line |diff.txt|
    DiffText     { bg = DiffAdd.bg, fg = blue1 }, -- diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- cursor in a focused terminal
    TermCursorNC { bg = hsl(0, 0, 79), fg = white }, -- cursor in an unfocused terminal
    ErrorMsg     { bg = red, fg = hsl(44, 87, 94) }, -- error messages on the command line
    VertSplit    { bg = hsl(248, 21, 52), fg = light_grey }, -- the column separating vertically split windows
    Folded       { bg = white, fg = hsl(223, 84, 61) }, -- line used for closed folds
    FoldColumn   { bg = white, fg = hsl(225, 60, 52) }, -- 'foldcolumn'
    SignColumn   { fg = white }, -- column where |signs| are displayed
    IncSearch    { bg = hsl(44, 87, 94), fg = red }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute   { bg = green1, fg = black }, -- |:substitute| replacement text highlighting
    LineNr       { bg = light_grey, fg = hsl(248, 100, 72) }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { bg = light_grey, fg = white }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { bg = grey2, fg = yellow1 }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      { fg = yellow1 }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    MsgSeparator { bg = grey4, fg = black }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      { fg = yellow2 }, -- |more-prompt|
    NonText      { fg = grey3 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { bg = black, fg = white }, -- normal text
    -- NormalFloat  { }, -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows
    Pmenu        { fg = white, bg = light_grey }, -- Popup menu: normal item.
    PmenuSel     { fg = white, bg = grey2 }, -- Popup menu: selected item.
    -- PmenuSbar    { }, -- Popup menu: scrollbar.
    -- PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
    Question     { fg = hsl(338, 81, 50), gui = "bold" }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { fg = hsl(210, 13, 25) }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       { bg = green1, fg = black }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SpecialKey   { bg = light_grey, fg =  grey3 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad     { fg = purple1, sp = orange1, gui = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
    SpellCap     { fg = purple2, sp = SpellBad.sp, gui = SpellBad.gui }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   { bg = green2 }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    { bg = purple3 }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   { bg = grey4, fg = black }, -- status line of current window
    StatusLineNC { bg = purple4, fg = light_grey }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { bg = purple4, fg = grey5 }, -- tab pages line, not active tab page label
    TabLineFill  { TabLine }, -- tab pages line, where there are no labels
    TabLineSel   { bg = purple5, fg = grey6 }, -- tab pages line, active tab page label
    Title        { bg = white, fg = purple5 }, -- titles for output from ":set all", ":autocmd" etc.
    Visual       { bg = blue2, gui = "bold" }, -- Visual mode selection
    VisualNOS    { bg = light_grey, gui = "reverse" }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { fg = orange1, gui = "bold" }, -- warning messages
    Whitespace   { fg = grey3 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu     { bg = light_grey, fg = yellow1 }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant       { fg = purple6 }, -- (preferred) any constant
    String         { fg = purple6 }, --   a string constant: "this is a string"
    Character      { fg = purple8 }, --  a character constant: 'c', '\n'
    Number         { fg = purple8 }, --   a number constant: 234, 0xff
    Boolean        { fg = purple7 }, --  a boolean constant: TRUE, false
    Float          { fg = purple8 }, --    a floating point constant: 2.3e10

    Identifier     { fg = orange2 }, -- (preferred) any variable name
    Function       { fg = orange3 }, -- function name (also: methods for classes)

    Statement      { fg = yellow2 }, -- (preferred) any statement
    -- Conditional    { }, --  if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --    case, default, etc.
    Operator       { fg = red }, -- "sizeof", "+", "*", etc.
    -- Keyword        { }, --  any other keyword
    -- Exception      { }, --  try, catch, throw

    PreProc        { fg = blue1 }, -- (preferred) generic Preprocessor
    -- Include        { }, --  preprocessor #include
    -- Define         { }, --   preprocessor #define
    -- Macro          { }, --    same as Define
    -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

    Type           { fg = green3 }, -- (preferred) int, long, char, etc.
    -- StorageClass   { }, -- static, register, volatile, etc.
    Structure      { fg = green4 }, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef

    Special        { fg = orange1 }, -- (preferred) any special symbol
    SpecialChar    { fg = purple6 }, --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    Delimiter      { fg = blue3 }, --  character that needs attention
    -- SpecialComment { }, -- special things inside a comment
    -- Debug          { }, --    debugging statements

    -- Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    -- Bold       { gui = "bold" },
    -- Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error          { bg = yellow1, fg = red, gui = "bold" }, -- (preferred) any erroneous construct

    Todo           { bg = yellow2, fg = blue1, gui = "bold" }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    -- LspReferenceText                     { }, -- used for highlighting "text" references
    -- LspReferenceRead                     { }, -- used for highlighting "read" references
    -- LspReferenceWrite                    { }, -- used for highlighting "write" references

    -- LspDiagnosticsDefaultError           { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultWarning         { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultInformation     { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultHint            { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    -- LspDiagnosticsVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
    -- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

    -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
    -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    -- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
    -- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
    -- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

    -- LspCodeLens                          { }, -- Used to color the virtual text of the codelens

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { };    -- (unstable) TODO: docs
    -- TSBoolean            { };    -- For booleans.
    -- TSCharacter          { };    -- For characters.
    -- TSComment            { };    -- For comment blocks.
    -- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSConditional        { };    -- For keywords related to conditionnals.
    -- TSConstant           { };    -- For constants
    -- TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { };    -- For syntax/parser errors.
    -- TSException          { };    -- For exception related keywords.
    -- TSField              { };    -- For fields.
    -- TSFloat              { };    -- For floats.
    -- TSFunction           { };    -- For function (calls and definitions).
    -- TSFuncBuiltin        { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction    { };    -- For keywords used to define a fuction.
    -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod             { };    -- For method calls and definitions.
    -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
    -- TSNone               { };    -- TODO: docs
    -- TSNumber             { };    -- For all numbers
    -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
    -- TSParameter          { };    -- For parameters of a function.
    -- TSParameterReference { };    -- For references to parameters of a function.
    -- TSProperty           { };    -- Same as `TSField`.
    -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
    -- TSPunctBracket       { };    -- For brackets and parens.
    -- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat             { };    -- For keywords related to loops.
    -- TSString             { };    -- For strings.
    -- TSStringRegex        { };    -- For regexes.
    -- TSStringEscape       { };    -- For escape characters within a string.
    -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
    -- TSType               { };    -- For types.
    -- TSTypeBuiltin        { };    -- For builtin types.
    -- TSVariable           { };    -- Any variable name that does not have another highlight.
    -- TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag                { };    -- Tags like html tag names.
    -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
    -- TSText               { };    -- For strings considered text in a markup language.
    -- TSEmphasis           { };    -- For text to be represented with emphasis.
    -- TSUnderline          { };    -- For text to be represented with an underline.
    -- TSStrike             { };    -- For strikethrough text.
    -- TSTitle              { };    -- Text that is part of a title.
    -- TSLiteral            { };    -- Literal text.
    -- TSURI                { };    -- Any URI like a link or email.

  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
