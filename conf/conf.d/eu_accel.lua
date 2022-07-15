eu_accel = {}

require("eu_core")

function eu_accel.loadaccel()
  local my_code = nil
  local acc_file = (eu_core.script_path() .. "\\skylark_input.conf")
  if (not eu_core.file_exists(acc_file)) then
    local code = {
      "local bit = require(\"bit\")\n",
      "-- File\n",
      "local IDM_FILE_NEW = 30000\n",
      "local IDM_FILE_OPEN = 30001\n",
      "local IDM_HISTORY_CLEAN = 30107\n",
      "local IDM_FILE_SAVE = 30002\n",
      "local IDM_FILE_SAVEAS = 30003\n",
      "local IDM_FILE_SAVEALL = 30419\n",
      "local IDM_FILE_CLOSE = 30004\n",
      "local IDM_FILE_CLOSEALL = 30100\n",
      "local IDM_FILE_CLOSEALL_EXCLUDE = 30101\n",
      "local IDM_FILE_RESTORE_RECENT = 30114\n",
      "local IDM_FILE_PAGESETUP = 42040\n",
      "local IDM_FILE_PRINT = 30005\n",
      "local IDM_EXIT = 105\n",
      "-- Edit\n",
      "local IDM_EDIT_UNDO = 30014\n",
      "local IDM_EDIT_REDO = 30015\n",
      "local IDM_EDIT_CUT = 30007\n",
      "local IDM_EDIT_COPY = 30008\n",
      "local IDM_EDIT_PASTE = 30009\n",
      "local IDM_EDIT_DELETE = 30413\n",
      "local IDM_EDIT_CUTLINE = 30420\n",
      "local IDM_EDIT_COPYLINE = 30422\n",
      "local IDM_EDIT_COPY_FILENAME = 30405\n",
      "local IDM_EDIT_COPY_PATHNAME = 30406\n",
      "local IDM_EDIT_COPY_PATHFILENAME = 30407\n",
      "local IDM_EDIT_DELETELINE = 30426\n",
      "local IDM_DELETE_SPACE_LINEHEAD = 30401\n",
      "local IDM_DELETE_SPACE_LINETAIL = 30402\n",
      "local IDM_DELETE_ALL_SPACE_LINE = 30404\n",
      "local IDM_EDIT_REMOVE_DUP_LINES = 30424\n",
      "local IDM_EDIT_LINETRANSPOSE = 30425\n",
      "local IDM_EDIT_JOINLINE = 30429\n",
      "local IDM_EDIT_MOVE_LINEUP = 30447\n",
      "local IDM_EDIT_MOVE_LINEDOWN = 30448\n",
      "local IDM_EDIT_LINECOMMENT = 42043\n",
      "local IDM_EDIT_STREAMCOMMENT = 42044\n",
      "local IDM_EDIT_ASCENDING_SORT = 42821\n",
      "local IDM_EDIT_DESCENDING_SORT = 42822\n",
      "local IDM_EDIT_ASCENDING_SORT_IGNORECASE = 42823\n",
      "local IDM_EDIT_DESCENDING_SORT_IGNORECASE = 42824\n",
      "local IDM_EDIT_LOWERCASE = 30427\n",
      "local IDM_EDIT_UPPERCASE = 30428\n",
      "local IDM_EDIT_TAB_SPACE = 42825\n",
      "local IDM_EDIT_SPACE_TAB = 42826\n",
      "local IDM_EDIT_OTHER_EDITOR = 42828\n",
      "local IDM_OPEN_FILE_PATH = 42704\n",
      "local IDM_OPEN_CONTAINING_FOLDER = 42705\n",
      "local IDM_ONLINE_SEARCH_GOOGLE = 42706\n",
      "local IDM_ONLINE_SEARCH_BAIDU = 42707\n",
      "local IDM_ONLINE_SEARCH_BING = 42708\n",
      "local IDM_EDIT_BASE64_ENCODING = 30200\n",
      "local IDM_EDIT_BASE64_DECODING = 30201\n",
      "local IDM_EDIT_MD5 = 30202\n",
      "local IDM_EDIT_SHA1 = 30203\n",
      "local IDM_EDIT_SHA256 = 30204\n",
      "local IDM_EDIT_3DES_CBC_ENCRYPTO = 30205\n",
      "local IDM_EDIT_3DES_CBC_DECRYPTO = 30206\n",
      "-- Serach\n",
      "local IDM_SEARCH_FIND = 30011\n",
      "local IDM_SEARCH_FINDPREV = 30012\n",
      "local IDM_SEARCH_FINDNEXT = 30013\n",
      "local IDM_SEARCH_REPLACE = 30414\n",
      "local IDM_SEARCH_FILES = 30319\n",
      "local IDM_UPDATE_SELECTION = 42703\n",
      "local IDM_SELECTION_RECTANGLE = 42850\n",
      "local IDM_SEARCH_SELECTALL = 30415\n",
      "local IDM_SEARCH_SELECTWORD = 30430\n",
      "local IDM_SEARCH_SELECTLINE = 30431\n",
      "local IDM_SEARCH_ADDSELECT_LEFT_WORD = 30432\n",
      "local IDM_SEARCH_ADDSELECT_RIGHT_WORD = 30433\n",
      "local IDM_SEARCH_ADDSELECT_LEFT_WORDGROUP = 30434\n",
      "local IDM_SEARCH_ADDSELECT_RIGHT_WORDGROUP = 30435\n",
      "local IDM_SEARCH_SELECT_HEAD = 43020\n",
      "local IDM_SEARCH_SELECT_END = 43021\n",
      "local IDM_SEARCH_SELECTTOP_FIRSTLINE = 30513\n",
      "local IDM_SEARCH_SELECTBOTTOM_FIRSTLINE = 30514\n",
      "local IDM_SEARCH_MOVE_LEFT_WORD = 30436\n",
      "local IDM_SEARCH_MOVE_RIGHT_WORD = 30437\n",
      "local IDM_SEARCH_MOVE_LEFT_WORDGROUP = 30438\n",
      "local IDM_SEARCH_MOVE_RIGHT_WORDGROUP = 30439\n",
      "local IDM_SEARCH_MOVETOP_FIRSTLINE = 30511\n",
      "local IDM_SEARCH_MOVEBOTTOM_FIRSTLINE = 30512\n",
      "local IDM_SEARCH_GOTOHOME = 30509\n",
      "local IDM_SEARCH_GOTOEND = 30510\n",
      "local IDM_SEARCH_GOTOLINE = 30508\n",
      "local IDM_SEARCH_TOGGLE_BOOKMARK = 30016\n",
      "local IDM_SEARCH_ADD_BOOKMARK = 30208\n",
      "local IDM_SEARCH_REMOVE_BOOKMARK = 30209\n",
      "local IDM_SEARCH_REMOVE_ALL_BOOKMARKS = 30210\n",
      "local IDM_SEARCH_GOTO_PREV_BOOKMARK = 30017\n",
      "local IDM_SEARCH_GOTO_NEXT_BOOKMARK = 30018\n",
      "local IDM_SEARCH_GOTO_PREV_BOOKMARK_INALL = 30301\n",
      "local IDM_SEARCH_GOTO_NEXT_BOOKMARK_INALL = 30302\n",
      "local IDM_SEARCH_NAVIGATE_PREV_THIS = 30303\n",
      "local IDM_SEARCH_NAVIGATE_PREV_INALL = 30304\n",
      "-- View\n",
      "local IDM_VIEW_FILETREE = 30020\n",
      "local IDM_VIEW_SYMTREE = 30021\n",
      "local IDM_VIEW_FULLSCREEN = 42602\n",
      "local IDM_VIEW_MENUBAR = 42601\n",
      "local IDM_VIEW_TOOLBAR = 42603\n",
      "local IDM_VIEW_STATUSBAR = 42604\n",
      "local IDM_VIEW_HEXEDIT_MODE = 30019\n",
      "local IDM_VIEW_LINENUMBER_VISIABLE = 30501\n",
      "local IDM_VIEW_BOOKMARK_VISIABLE = 30207\n",
      "local IDM_SOURCE_BLOCKFOLD_VISIABLE = 30502\n",
      "local IDM_VIEW_WHITESPACE_VISIABLE = 30500\n",
      "local IDM_VIEW_NEWLINE_VISIABLE = 30108\n",
      "local IDM_VIEW_INDENTGUIDES_VISIABLE = 30300\n",
      "local IDM_VIEW_TIPS_ONTAB = 42994\n",
      "local IDM_VIEW_ZOOMOUT = 30023\n",
      "local IDM_VIEW_ZOOMIN = 30024\n",
      "local IDM_VIEW_ZOOMRESET = 30416\n",
      "-- Format\n",
      "local IDM_FORMAT_REFORMAT = 42250\n",
      "local IDM_FORMAT_COMPRESS = 42251\n",
      "local IDM_FORMAT_WHOLE_FILE = 42252\n",
      "local IDM_FORMAT_RANGLE_STR = 42253\n",
      "local IDM_FORMAT_RUN_SCRIPT = 42406\n",
      "local IDM_FORMAT_BYTE_CODE = 42407\n",
      "local IDM_EDIT_GB_BIG5 = 41000\n",
      "local IDM_EDIT_BIG5_GB = 41001\n",
      "local IDM_VIEW_WRAPLINE_MODE = 30444\n",
      "local IDM_EDIT_QRCODE = 42701\n",
      "-- Programming\n",
      "local IDM_SOURCE_BLOCKFOLD_TOGGLE = 30503\n",
      "local IDM_SOURCE_BLOCKFOLD_CONTRACT = 30504\n",
      "local IDM_SOURCE_BLOCKFOLD_EXPAND = 30505\n",
      "local IDM_SOURCE_BLOCKFOLD_CONTRACTALL = 30506\n",
      "local IDM_SOURCE_BLOCKFOLD_EXPANDALL = 30507\n",
      "local IDM_SOURCECODE_GOTODEF = 30441\n",
      "local IDM_SOURCEE_ENABLE_ACSHOW = 30102\n",
      "local IDM_SOURCE_ENABLE_CTSHOW = 30104\n",
      "local IDM_DATABASE_INSERT_CONFIG = 30305\n",
      "local IDM_DATABASE_EXECUTE_SQL = 30440\n",
      "local IDM_PROGRAM_EXECUTE_ACTION = 42866\n",
      "-- Settings\n",
      "local IDM_VIEW_MODIFY_STYLETHEME = 30022\n",
      "-- Help\n",
      "local IDM_DONATION = 42869\n",
      "local IDM_INTRODUTION = 30517\n",
      "local IDM_CHANGELOG = 30516\n",
      "-- Tabs right click\n",
      "local IDM_TAB_CLOSE_LEFT = 42995\n",
      "local IDM_TAB_CLOSE_RIGHT = 42996\n",
      "-- ACCEL struct members\n",
      "local FVIRTKEY = 0x1\n",
      "local FNOINVERT = 0x02\n",
      "local FSHIFT= 0x04\n",
      "local FCONTROL= 0x08\n",
      "local FALT = 0x10\n",
      "-- Currently availab virtualkey codes\n",
      "-- docs.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes\n",
      "local VK_F1 = 0x70\n",
      "local VK_F2 = 0x71\n",
      "local VK_F3 = 0x72\n",
      "local VK_F4 = 0x73\n",
      "local VK_F5 = 0x74\n",
      "local VK_F6 = 0x75\n",
      "local VK_F7 = 0x76\n",
      "local VK_F8 = 0x77\n",
      "local VK_F9 = 0x78\n",
      "local VK_F10 = 0x79\n",
      "local VK_F11 = 0x7A\n",
      "local VK_F12 = 0x7B\n",
      "local VK_INSERT = 0x2D\n",
      "local VK_TAB = 0x09\n",
      "local VK_DIVIDE = 0x6F\n",
      "local VK_MULTIPLY = 0x6A\n",
      "local VK_ESCAPE = 0x1B\n",
      "local VK_RETURN = 0x0D\n",
      "local VK_SPACE = 0x20\n",
      "local VK_BACK = 0x08\n",
      "local VK_END = 0x23\n",
      "local VK_PRIOR = 0x21\n",
      "local VK_NEXT = 0x22\n",
      "local VK_HOME = 0x24\n",
      "local VK_LEFT = 0x25\n",
      "local VK_UP = 0x26\n",
      "local VK_RIGHT = 0x27\n",
      "local VK_DOWN = 0x28\n",
      "local VK_DELETE = 0x2E\n",
      "local VK_ADD = 0x6B\n",
      "local VK_SUBTRACT = 0x6D\n",
      "local VK_OEM_PLUS = 0xBB\n",
      "local VK_OEM_COMMA = 0xBC\n",
      "local VK_OEM_MINUS = 0xBD\n",
      "local VK_OEM_PERIOD = 0xBE\n",
      "local VK_NUMPAD0 = 0x60\n",
      "local VK_NUMPAD1 = 0x61\n",
      "local VK_NUMPAD2 = 0x62\n",
      "local VK_NUMPAD3 = 0x63\n",
      "local VK_NUMPAD4 = 0x64\n",
      "local VK_NUMPAD5 = 0x65\n",
      "local VK_NUMPAD6 = 0x66\n",
      "local VK_NUMPAD7 = 0x67\n",
      "local VK_NUMPAD8 = 0x68\n",
      "local VK_NUMPAD9 = 0x69\n",
      "-- You can change the shortcut keys of the menu here\n",
      "-- If FVIRTKEY flag is not specified, key is assumed to ASCII character.\n",
      "local accel_t = {-- File menu\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"N\"), IDM_FILE_NEW},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"O\"), IDM_FILE_OPEN},\n",
      "                 {0, 0, IDM_HISTORY_CLEAN},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"S\"), IDM_FILE_SAVE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"S\"), IDM_FILE_SAVEAS},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), string.byte(\"S\"), IDM_FILE_SAVEALL},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"W\"), IDM_FILE_CLOSE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), VK_F4, IDM_FILE_CLOSEALL},\n",
      "                 {0, 0, IDM_FILE_CLOSEALL_EXCLUDE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"T\"), IDM_FILE_RESTORE_RECENT},\n",
      "                 {0, 0, IDM_FILE_PAGESETUP},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"P\"), IDM_FILE_PRINT},\n",
      "                 {bit.bor(FVIRTKEY,FALT), VK_F4, IDM_EXIT},\n",
      "                 -- Edit menu\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"Z\"), IDM_EDIT_UNDO},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"Y\"), IDM_EDIT_REDO},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"X\"), IDM_EDIT_CUT},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"C\"), IDM_EDIT_COPY},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"V\"), IDM_EDIT_PASTE},\n",
      "                 {bit.bor(FVIRTKEY), VK_DELETE, IDM_EDIT_DELETE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"X\"), IDM_EDIT_CUTLINE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"C\"), IDM_EDIT_COPYLINE},\n",
      "                 {0, 0, IDM_EDIT_COPY_FILENAME},\n",
      "                 {0, 0, IDM_EDIT_COPY_PATHNAME},\n",
      "                 {0, 0, IDM_EDIT_COPY_PATHFILENAME},\n",
      "                 {0, 0, IDM_EDIT_OTHER_EDITOR},\n",      
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"E\"), IDM_EDIT_DELETELINE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"H\"), IDM_DELETE_SPACE_LINEHEAD},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"E\"), IDM_DELETE_SPACE_LINETAIL},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), VK_SPACE, IDM_DELETE_ALL_SPACE_LINE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), string.byte(\"D\"), IDM_EDIT_REMOVE_DUP_LINES},\n",
      "                 {bit.bor(FVIRTKEY,FALT), string.byte(\"J\"), IDM_EDIT_JOINLINE},\n",
      "                 {bit.bor(FVIRTKEY,FALT), string.byte(\"S\"), IDM_EDIT_LINETRANSPOSE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), VK_UP, IDM_EDIT_MOVE_LINEUP},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), VK_DOWN, IDM_EDIT_MOVE_LINEDOWN},\n",
      "                 {0, 0, IDM_EDIT_ASCENDING_SORT},\n",
      "                 {0, 0, IDM_EDIT_ASCENDING_SORT_IGNORECASE},\n",
      "                 {0, 0, IDM_EDIT_DESCENDING_SORT},\n",
      "                 {0, 0, IDM_EDIT_DESCENDING_SORT_IGNORECASE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"U\"), IDM_EDIT_LOWERCASE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"U\"), IDM_EDIT_UPPERCASE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), VK_SPACE, IDM_EDIT_TAB_SPACE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), string.byte(\"T\"), IDM_EDIT_SPACE_TAB},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"F\"), IDM_OPEN_FILE_PATH},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"D\"), IDM_OPEN_CONTAINING_FOLDER},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"G\"), IDM_ONLINE_SEARCH_GOOGLE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"B\"), IDM_ONLINE_SEARCH_BAIDU},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"I\"), IDM_ONLINE_SEARCH_BING},\n",
      "                 {0, 0, IDM_EDIT_BASE64_ENCODING},\n",
      "                 {0, 0, IDM_EDIT_BASE64_DECODING},\n",
      "                 {0, 0, IDM_EDIT_MD5},\n",
      "                 {0, 0, IDM_EDIT_SHA1},\n",
      "                 {0, 0, IDM_EDIT_SHA256},\n",
      "                 {0, 0, IDM_EDIT_3DES_CBC_ENCRYPTO},\n",
      "                 {0, 0, IDM_EDIT_3DES_CBC_DECRYPTO},\n",
      "                 -- Serach menu\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"F\"), IDM_SEARCH_FIND},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_F3, IDM_SEARCH_FINDPREV},\n",
      "                 {bit.bor(FVIRTKEY), VK_F3, IDM_SEARCH_FINDNEXT},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"R\"), IDM_SEARCH_REPLACE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), string.byte(\"F\"), IDM_SEARCH_FILES},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), string.byte(\"Q\"), IDM_UPDATE_SELECTION},\n",
      "                 {bit.bor(FVIRTKEY,FALT), string.byte(\"C\"), IDM_SELECTION_RECTANGLE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"A\"), IDM_SEARCH_SELECTALL},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), string.byte(\"W\"), IDM_SEARCH_SELECTWORD},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"L\"), IDM_SEARCH_SELECTLINE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), VK_HOME, IDM_SEARCH_SELECT_HEAD},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), VK_END, IDM_SEARCH_SELECT_END},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), VK_LEFT, IDM_SEARCH_ADDSELECT_LEFT_WORD},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), VK_RIGHT, IDM_SEARCH_ADDSELECT_RIGHT_WORD},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT,FALT), VK_LEFT, IDM_SEARCH_ADDSELECT_LEFT_WORDGROUP},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT,FALT), VK_RIGHT, IDM_SEARCH_ADDSELECT_RIGHT_WORDGROUP},\n",
      "                 {bit.bor(FCONTROL,FSHIFT), string.byte(\"]\"), IDM_SEARCH_SELECTTOP_FIRSTLINE},\n",
      "                 {bit.bor(FCONTROL,FSHIFT), string.byte(\"[\"), IDM_SEARCH_SELECTBOTTOM_FIRSTLINE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_LEFT, IDM_SEARCH_MOVE_LEFT_WORD},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_RIGHT, IDM_SEARCH_MOVE_RIGHT_WORD},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), VK_LEFT, IDM_SEARCH_MOVE_LEFT_WORDGROUP},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), VK_RIGHT, IDM_SEARCH_MOVE_RIGHT_WORDGROUP},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"K\"), IDM_SEARCH_MOVETOP_FIRSTLINE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"J\"), IDM_SEARCH_MOVEBOTTOM_FIRSTLINE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_HOME, IDM_SEARCH_GOTOHOME},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_END, IDM_SEARCH_GOTOEND},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"G\"), IDM_SEARCH_GOTOLINE},\n",
      "                 {bit.bor(FVIRTKEY), VK_F9, IDM_SEARCH_TOGGLE_BOOKMARK},\n",
      "                 {bit.bor(FVIRTKEY,FALT), VK_F9, IDM_SEARCH_ADD_BOOKMARK},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_F9, IDM_SEARCH_REMOVE_BOOKMARK},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), VK_F9, IDM_SEARCH_REMOVE_ALL_BOOKMARKS},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_F2, IDM_SEARCH_GOTO_PREV_BOOKMARK},\n",
      "                 {bit.bor(FVIRTKEY), VK_F2, IDM_SEARCH_GOTO_NEXT_BOOKMARK},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), VK_F2, IDM_SEARCH_GOTO_PREV_BOOKMARK_INALL},\n",
      "                 {bit.bor(FVIRTKEY,FSHIFT), VK_F2, IDM_SEARCH_GOTO_NEXT_BOOKMARK_INALL},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_BACK, IDM_SEARCH_NAVIGATE_PREV_THIS},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), VK_BACK, IDM_SEARCH_NAVIGATE_PREV_INALL},\n",
      "                 -- View menu\n",
      "                 {0, 0, IDM_VIEW_FILETREE},\n",
      "                 {0, 0, IDM_VIEW_SYMTREE},\n",
      "                 {bit.bor(FVIRTKEY), VK_F11, IDM_VIEW_FULLSCREEN},\n",
      "                 {bit.bor(FVIRTKEY, FALT), VK_F11, IDM_VIEW_MENUBAR},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_F11, IDM_VIEW_TOOLBAR},\n",
      "                 {bit.bor(FVIRTKEY,FSHIFT), VK_F11, IDM_VIEW_STATUSBAR},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"H\"), IDM_VIEW_HEXEDIT_MODE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"N\"), IDM_VIEW_LINENUMBER_VISIABLE},\n",
      "                 {0, 0, IDM_VIEW_BOOKMARK_VISIABLE},\n",
      "                 {0, 0, IDM_SOURCE_BLOCKFOLD_VISIABLE},\n",
      "                 {0, 0, IDM_VIEW_WHITESPACE_VISIABLE},\n",
      "                 {0, 0, IDM_VIEW_NEWLINE_VISIABLE},\n",
      "                 {0, 0, IDM_VIEW_INDENTGUIDES_VISIABLE},\n",
      "                 {0, 0, IDM_VIEW_TIPS_ONTAB},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_ADD, IDM_VIEW_ZOOMOUT},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_OEM_PLUS, IDM_VIEW_ZOOMOUT},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_SUBTRACT, IDM_VIEW_ZOOMIN},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_OEM_MINUS, IDM_VIEW_ZOOMIN},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"0\"), IDM_VIEW_ZOOMRESET},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_NUMPAD0, IDM_VIEW_ZOOMRESET},\n",
      "                 -- Format menu\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_F6, IDM_FORMAT_REFORMAT},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), VK_F6, IDM_FORMAT_COMPRESS},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_F7, IDM_FORMAT_WHOLE_FILE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), VK_F7, IDM_FORMAT_RANGLE_STR},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_F8, IDM_FORMAT_RUN_SCRIPT},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), VK_F8, IDM_FORMAT_BYTE_CODE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"W\"), IDM_EDIT_GB_BIG5},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"Q\"), IDM_EDIT_BIG5_GB},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"L\"), IDM_VIEW_WRAPLINE_MODE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"Q\"), IDM_EDIT_QRCODE},\n",
      "                 -- Programming menu\n",
      "                 {bit.bor(FALT), string.byte(\"|\"), IDM_SOURCE_BLOCKFOLD_TOGGLE},\n",
      "                 {bit.bor(FALT), string.byte(\"}\"), IDM_SOURCE_BLOCKFOLD_CONTRACT},\n",
      "                 {bit.bor(FALT), string.byte(\"{\"), IDM_SOURCE_BLOCKFOLD_EXPAND},\n",
      "                 {0, 0, IDM_SOURCE_BLOCKFOLD_CONTRACTALL},\n",
      "                 {0, 0, IDM_SOURCE_BLOCKFOLD_EXPANDALL},\n",
      "                 {bit.bor(FVIRTKEY), VK_F12, IDM_SOURCECODE_GOTODEF},\n",
      "                 {0, 0, IDM_SOURCEE_ENABLE_ACSHOW},\n",
      "                 {0, 0, IDM_SOURCE_ENABLE_CTSHOW},\n",
      "                 {bit.bor(FCONTROL), string.byte(\">\"), IDM_DATABASE_INSERT_CONFIG},\n",
      "                 {bit.bor(FVIRTKEY), VK_F5, IDM_DATABASE_EXECUTE_SQL},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_DIVIDE, IDM_EDIT_LINECOMMENT},\n",
      "                 {bit.bor(FCONTROL), string.byte(\"/\"), IDM_EDIT_LINECOMMENT},\n",
      "                 {bit.bor(FCONTROL), string.byte(\"\\\\\"), IDM_EDIT_STREAMCOMMENT},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_F5, IDM_PROGRAM_EXECUTE_ACTION},\n",
      "                 -- Settings menu\n",
      "                 {0, 0, IDM_VIEW_MODIFY_STYLETHEME},\n",
      "                 -- Settings menu\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_F1, IDM_DONATION},\n",
      "                 {0, 0, IDM_INTRODUTION},\n",
      "                 {0, 0, IDM_CHANGELOG},\n",
      "                 -- Tabs right click\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), string.byte(\"L\"), IDM_TAB_CLOSE_LEFT},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), string.byte(\"R\"), IDM_TAB_CLOSE_RIGHT}\n",
      "                }\n",
      "return accel_t",
    }
    local mystring = table.concat(code)
    my_code = assert(loadstring(mystring))()
    eu_core.save_file(acc_file, mystring)
  else
    my_code = assert(dofile(acc_file))
  end
  local m_len = tonumber(#my_code)
  if (m_len ~= nil) then
    local m_accel = eu_core.ffi.new("ACCEL[?]", m_len, {})
    for i = 0, m_len - 1 do
      local m_ptr = eu_core.ffi.cast('ACCEL *', m_accel[i])
      m_ptr.fVirt = tonumber(my_code[i+1][1])
      m_ptr.key = tonumber(my_code[i+1][2])
      m_ptr.cmd = tonumber(my_code[i+1][3])
    end
    if (not eu_core.euapi.eu_accel_ptr(m_accel)) then
      do return 1 end
    end
  end
  return 0
end

return eu_accel
