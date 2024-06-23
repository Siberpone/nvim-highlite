local Groups = require("highlite.groups") --- @type highlite.Groups
local Highlite = require("highlite") --- @type Highlite
local Palette = require("highlite.color.palette") --- @type highlite.color.Palette

local bg = vim.api.nvim_get_option("background") -- get the background
local palette = Palette.derive(bg, bg == "dark" and {
	annotation = "#ce5c59",
	attribute = "#ce5c59",
	bg = "#1e1c32",
	bg_contrast_high = "#3d385f",
	bg_contrast_low = "#2b2546",
	boolean = "#b383c6",
	buffer_active = "#3d385f",
	buffer_alternate = "#8cafb0",
	buffer_current = "#2d9caa",
	character = "#41a886",
	character_special = "#ce5c59",
	class = "#4697b8",
	comment = "#775f9e",
	comment_documentation = "#775f9e",
	comment_special = "#775f9e",
	conditional = "#f3dc6c",
	constant = "#b383c6",
	constant_builtin = "#ddb4fa",
	constructor = "#ddb4fa",
	decorator = "#ce5c59",
	define = "#ce5c59",
	diff_add = "#41a886",
	diff_change = "#f3dc6c",
	diff_delete = "#ce5c59",
	enum = "#4697b8",
	error = "#ce5c59",
	event = "#f3dc6c",
	field = "#d8f0e6",
	field_enum = "#d8f0e6",
	float = "#b383c6",
	fold = "#2b2546",
	func = "#f49b3b",
	func_builtin = "#f49b3b",
	hint = "#b383c6",
	identifier = "#b383c6",
	include = "#f49b3b",
	info = "#4697b8",
	interface = "#4697b8",
	interface_builtin = "#4697b8",
	keyword = "#f3dc6c",
	keyword_coroutine = "#f3dc6c",
	keyword_function = "#f3dc6c",
	keyword_operator = "#f3dc6c",
	keyword_return = "#f3dc6c",
	label = "#8cafb0",
	loop = "#f3dc6c",
	macro = "#f49b3b",
	message = "#d8f0e6",
	method = "#f49b3b",
	namespace = "#d8f0e6",
	number = "#b383c6",
	ok = "#41a886",
	operator = "#8cafb0",
	parameter = "#f3dc6c",
	preproc = "#ce5c59",
	preproc_conditional = "#ce5c59",
	property = "#d8f0e6",
	punctuation = "#8cafb0",
	punctuation_bracket = "#8cafb0",
	punctuation_delimiter = "#8cafb0",
	punctuation_special = "#8cafb0",
	search = "#952099",
	search_inactive = "#641566",
	select = "#952099",
	special = "#ddb4fa",
	statement = "#f3dc6c",
	storage = "#4697b8",
	string = "#41a886",
	string_escape = "#ce5c59",
	string_regex = "#f3dc6c",
	string_special = "#ddb4fa",
	structure = "#4697b8",
	syntax_error = "#ce5c59",
	tag = "#f49b3b",
	tag_attribute = "#f3dc6c",
	tag_delimiter = "#8cafb0",
	text = "#d8f0e6",
	text_contrast_bg_high = "#8cafb0",
	text_contrast_bg_low = "#775f9e",
	text_environment_name = "#d8f0e6",
	text_environment = "#d8f0e6",
	text_literal = "#d8f0e6",
	text_math = "#b383c6",
	text_reference = "#b383c6",
	throw = "#ce5c59",
	todo = "#4697b8",
	type = "#4697b8",
	type_builtin = "#4697b8",
	type_parameter = "#b383c6",
	uri = "#2d9caa",
	variable = "#d8f0e6",
	variable_builtin = "#ddb4fa",
	warning = "#f3dc6c",
} or {
	annotation = "#ce5c59",
	attribute = "#ce5c59",
	bg = "#1e1c32",
	bg_contrast_high = "#952099",
	bg_contrast_low = "#8cafb0",
	boolean = "#b383c6",
	buffer_active = "#3d385f",
	buffer_alternate = "#2b2546",
	buffer_current = "#2d9caa",
	character = "#41a886",
	character_special = "#ce5c59",
	class = "#4697b8",
	comment = "#775f9e",
	comment_documentation = "#775f9e",
	comment_special = "#775f9e",
	conditional = "#f3dc6c",
	constant = "#b383c6",
	constant_builtin = "#ddb4fa",
	constructor = "#ddb4fa",
	decorator = "#ce5c59",
	define = "#ce5c59",
	diff_add = "#41a886",
	diff_change = "#f3dc6c",
	diff_delete = "#ce5c59",
	enum = "#4697b8",
	error = "#ce5c59",
	event = "#f3dc6c",
	field = "#d8f0e6",
	field_enum = "#d8f0e6",
	float = "#b383c6",
	fold = "#2b2546",
	func = "#f49b3b",
	func_builtin = "#f49b3b",
	hint = "#b383c6",
	identifier = "#b383c6",
	include = "#f49b3b",
	info = "#4697b8",
	interface = "#4697b8",
	interface_builtin = "#4697b8",
	keyword = "#f3dc6c",
	keyword_coroutine = "#f3dc6c",
	keyword_function = "#f3dc6c",
	keyword_operator = "#f3dc6c",
	keyword_return = "#f3dc6c",
	label = "#8cafb0",
	loop = "#f3dc6c",
	macro = "#d8f0e6",
	message = "#d8f0e6",
	method = "#f49b3b",
	namespace = "#f49b3b",
	number = "#b383c6",
	ok = "#41a886",
	operator = "#8cafb0",
	parameter = "#d8f0e6",
	preproc = "#ce5c59",
	preproc_conditional = "#ce5c59",
	property = "#d8f0e6",
	punctuation = "#8cafb0",
	punctuation_bracket = "#8cafb0",
	punctuation_delimiter = "#8cafb0",
	punctuation_special = "#8cafb0",
	search = "#775f9e",
	select = "#952099",
	special = "#ddb4fa",
	statement = "#f3dc6c",
	storage = "#4697b8",
	string = "#41a886",
	string_escape = "#ce5c59",
	string_regex = "#ce5c59",
	string_special = "#ddb4fa",
	structure = "#4697b8",
	syntax_error = "#ce5c59",
	tag = "#2d9caa",
	tag_attribute = "#d8f0e6",
	tag_delimiter = "#8cafb0",
	text = "#d8f0e6",
	text_contrast_bg_high = "#952099",
	text_contrast_bg_low = "#8cafb0",
	text_environment_name = "#d8f0e6",
	text_environment = "#d8f0e6",
	text_literal = "#d8f0e6",
	text_math = "#b383c6",
	text_reference = "#b383c6",
	throw = "#ce5c59",
	todo = "#4697b8",
	type = "#4697b8",
	type_builtin = "#4697b8",
	type_parameter = "#b383c6",
	uri = "#2d9caa",
	variable = "#ddb4fa",
	variable_builtin = "#ddb4fa",
	warning = "#f3dc6c",
})

--- @type highlite.color.palette.terminal
local terminal_palette = {
	"#1e1c32",
	"#ce5c59",
	"#41a886",
	"#f3dc6c",
	"#4697b8",
	"#b383c6",
	"#8cafb0",
	"#3d385f",
	"#775f9e",
	"#952099",
	"#641566",
	"#f49b3b",
	"#2d9caa",
	"#ddb4fa",
	"#2b2546",
	"#d8f0e6",
}

--[[ Generate Groups ]]
local groups = Highlite.groups("default", palette)

--[[ Override Groups ]]
groups.Conditional = { fg = palette.conditional }
groups.Repeat = { fg = palette.loop }
groups.StorageClass = { fg = palette.storage }
groups.Structure = { fg = palette.structure }

groups.CurSearch = { bg = palette.search }
groups.IncSearch = { bg = palette.search_inactive }
groups.Search = { bg = palette.search_inactive }

groups.DiagnosticError = { fg = palette.error, italic = true }
groups.DiagnosticHint = { fg = palette.hint, italic = true }
groups.DiagnosticInfo = { fg = palette.info, italic = true }
groups.DiagnosticOk = { fg = palette.ok, italic = true }
groups.DiagnosticWarn = { fg = palette.warning, italic = true }

groups.MatchParen = { bg = palette.search }

groups.Directory = { fg = palette.class, bold = true }

groups.LspReferenceRead = { bg = palette.search_inactive }
groups.LspReferenceWrite = { bg = palette.search_inactive }

-- Treesitter
groups["@keyword.conditional"] = { fg = palette.conditional, nocombine = true }
groups["@keyword.operator"] = { fg = palette.keyword, italic = true, nocombine = true }
groups["@keyword.repeat"] = { fg = palette.loop, nocombine = true }
groups["@module"] = { fg = palette.namespace, italic = true }
groups["@string.escape"] = { fg = palette.string_escape, nocombine = true }
groups["@tag"] = { fg = palette.tag, nocombine = true }
groups["@tag.attribute"] = { fg = palette.tag_attribute, italic = true, nocombine = true }

-- neo-tree groups
groups.NeoTreeCursorLine = { fg = palette.text, bg = palette.bg_contrast_low }
groups.NeoTreeDimText = "Comment"
groups.NeoTreeDirectoryIcon = "Directory"
groups.NeoTreeDirectoryName = "Directory"
groups.NeoTreeDotfile = "Comment"
groups.NeoTreeFileIcon = "Normal"
groups.NeoTreeFileName = "Normal"
groups.NeoTreeFileNameOpened = "Special"
groups.NeoTreeFilterTerm = "Comment"
groups.NeoTreeFloatBorder = "Pmenu"
groups.NeoTreeFloatTitle = "PmenuSBar"
groups.NeoTreeTitleBar = "PmenuSel"
-- NeoTreeGitAdded           File name when the git status is added.
-- NeoTreeGitConflict        File name when the git status is conflict.
-- NeoTreeGitDeleted         File name when the git status is deleted.
-- NeoTreeGitIgnored         File name when the git status is ignored.
-- NeoTreeGitModified        File name when the git status is modified.
-- NeoTreeGitUnstaged        Used for git unstaged symbol.
-- NeoTreeGitUntracked       File name when the git status is untracked.
-- NeoTreeGitStaged          Used for git staged symbol.
groups.NeoTreeHiddenByName = "Comment"
groups.NeoTreeIndentMarker = "WinSeparator"
groups.NeoTreeExpander = "Directory"
-- NeoTreeNormal             |hl-Normal| override in Neo-tree window.
-- NeoTreeNormalNC           |hl-NormalNC| override in Neo-tree window.
-- NeoTreeSignColumn         |hl-SignColumn| override in Neo-tree window.
-- NeoTreeStatusLine         |hl-StatusLine| override in Neo-tree window.
-- NeoTreeStatusLineNC       |hl-StatusLineNC| override in Neo-tree window.
-- NeoTreeVertSplit          |hl-VertSplit| override in Neo-tree window.
-- NeoTreeWinSeparator       |hl-WinSeparator| override in Neo-tree window.
-- NeoTreeEndOfBuffer = { fg = mane_outline },
groups.NeoTreeRootName = "Title"
groups.NeoTreeSymbolicLinkTarget = { fg = palette.uri }
groups.NeoTreeWindowsHidden = "Comment"

-- NVIM-Notify Groups
groups.NotifyBackground = { bg = palette.bg }
groups.NotifyERRORBorder = { fg = palette.error }
groups.NotifyWARNBorder = { fg = palette.warning }
groups.NotifyINFOBorder = { fg = palette.info }
groups.NotifyDEBUGBorder = "NotifyWARNBorder"
groups.NotifyTRACEBorder = { fg = palette.hint }
groups.NotifyERRORIcon = "NotifyERRORBorder"
groups.NotifyWARNIcon = "NotifyWARNBorder"
groups.NotifyINFOIcon = "NotifyINFOBorder"
groups.NotifyDEBUGIcon = "NotifyDEBUGBorder"
groups.NotifyTRACEIcon = "NotifyTRACEBorder"
groups.NotifyERRORTitle = "NotifyERRORBorder"
groups.NotifyWARNTitle = "NotifyWARNBorder"
groups.NotifyINFOTitle = "NotifyINFOBorder"
groups.NotifyDEBUGTitle = "NotifyDEBUGBorder"
groups.NotifyTRACETitle = "NotifyTRACEBorder"

-- bash
groups["@constant.bash"] = { fg = palette.variable }

--[[ Generate ]]
Highlite.generate("highlite-coloratura", groups, terminal_palette)
