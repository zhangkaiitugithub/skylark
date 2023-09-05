eu_accel = {}

require("eu_sci")
require("eu_core")

function eu_accel.loadaccel()
  local my_code = nil
  local acc_file = (eu_core.script_path() .. "\\skylark_input.conf")
  if (not eu_core.file_exists(acc_file)) then
    local code = {
      "local bit = require(\"bit\")\n",
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
      "                 {bit.bor(FVIRTKEY,FSHIFT), VK_F5, IDM_FILE_RELOAD_CURRENT},\n",
      "                 {0, 0, IDM_FILE_REMOTE_FILESERVERS},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"D\"), IDM_FILE_ADD_FAVORITES},\n",
      "                 {0, 0, IDM_FILE_PAGESETUP},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"P\"), IDM_FILE_PRINT},\n",
      "                 {0, 0, IDM_FILE_RESTART_ADMIN},\n",
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
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"E\"), IDM_EDIT_COPY_INCREMENTAL},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"J\"), IDM_EDIT_COPY_RTF},\n",
      "                 {bit.bor(FCONTROL), string.byte(\"^\"), IDM_EDIT_SWAP_CLIPBOARD},\n",
      "                 {0, 0, IDM_EDIT_CLEAR_CLIPBOARD},\n",
      "                 {0, 0, IDM_EDIT_OTHER_EDITOR},\n",
      "                 {0, 0, IDM_EDIT_OTHER_BCOMPARE},\n",
      "                 {bit.bor(FVIRTKEY,FALT), string.byte(\"D\"), IDM_EDIT_DELETELINE},\n",
      "                 {bit.bor(FVIRTKEY,FALT), string.byte(\"X\"), IDM_DELETE_SPACE_LINEHEAD},\n",
      "                 {bit.bor(FVIRTKEY,FALT), string.byte(\"E\"), IDM_DELETE_SPACE_LINETAIL},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), string.byte(\"X\"), IDM_DELETE_ALL_SPACE_LINEHEAD},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), string.byte(\"E\"), IDM_DELETE_ALL_SPACE_LINETAIL},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), VK_SPACE, IDM_DELETE_ALL_SPACE_LINE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), string.byte(\"D\"), IDM_EDIT_REMOVE_DUP_LINES},\n",
      "                 {bit.bor(FVIRTKEY,FALT), string.byte(\"J\"), IDM_EDIT_JOINLINE},\n",
      "                 {bit.bor(FVIRTKEY,FALT), string.byte(\"Y\"), IDM_EDIT_LINETRANSPOSE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), VK_UP, IDM_EDIT_MOVE_LINEUP},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), VK_DOWN, IDM_EDIT_MOVE_LINEDOWN},\n",
      "                 {0, 0, IDM_EDIT_ASCENDING_SORT},\n",
      "                 {0, 0, IDM_EDIT_ASCENDING_SORT_IGNORECASE},\n",
      "                 {0, 0, IDM_EDIT_DESCENDING_SORT},\n",
      "                 {0, 0, IDM_EDIT_DESCENDING_SORT_IGNORECASE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"U\"), IDM_EDIT_LOWERCASE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"U\"), IDM_EDIT_UPPERCASE},\n",
      "                 {bit.bor(FVIRTKEY,FALT), string.byte(\"U\"), IDM_EDIT_WORD_UPPERCASE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), string.byte(\"U\"), IDM_EDIT_SENTENCE_UPPERCASE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), VK_SPACE, IDM_EDIT_TAB_SPACE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), string.byte(\"T\"), IDM_EDIT_SPACE_TAB},\n",
      "                 {bit.bor(FCONTROL,FSHIFT), string.byte(\"/\"), IDM_EDIT_SLASH_BACKSLASH},\n",
      "                 {bit.bor(FCONTROL,FSHIFT), string.byte(\"\\\\\"), IDM_EDIT_BACKSLASH_SLASH},\n",
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
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"B\"), IDM_SEARCH_MATCHING_BRACE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), string.byte(\"B\"), IDM_SEARCH_MATCHING_BRACE_SELECT},\n",
      "                 {bit.bor(FVIRTKEY,FALT), VK_UP, IDM_SEARCH_NAVIGATE_PREV_HISTORY},\n",
      "                 {bit.bor(FVIRTKEY,FALT), VK_DOWN, IDM_SEARCH_NAVIGATE_NEXT_HISTORY},\n",
      "                 {bit.bor(FVIRTKEY,FALT), string.byte(\"0\"), IDM_SEARCH_NAVIGATE_CLEAR_HISTORY},\n",
      "                 {bit.bor(FVIRTKEY,FALT), VK_NUMPAD0, IDM_SEARCH_NAVIGATE_CLEAR_HISTORY},\n",
      "                 {bit.bor(FVIRTKEY), VK_F9, IDM_SEARCH_TOGGLE_BOOKMARK},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_F9, IDM_SEARCH_REMOVE_ALL_BOOKMARKS},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_F2, IDM_SEARCH_GOTO_PREV_BOOKMARK},\n",
      "                 {bit.bor(FVIRTKEY), VK_F2, IDM_SEARCH_GOTO_NEXT_BOOKMARK},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), VK_F2, IDM_SEARCH_GOTO_PREV_BOOKMARK_INALL},\n",
      "                 {bit.bor(FVIRTKEY,FSHIFT), VK_F2, IDM_SEARCH_GOTO_NEXT_BOOKMARK_INALL},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_BACK, IDM_SEARCH_NAVIGATE_PREV_THIS},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), VK_BACK, IDM_SEARCH_NAVIGATE_PREV_INALL},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"A\"), IDM_SEARCH_SELECT_MATCHING_ALL},\n",
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
      "                 {0, 0, IDM_VIEW_FOLDLINE_VISIABLE},\n",
      "                 {0, 0, IDM_VIEW_WHITESPACE_VISIABLE},\n",
      "                 {0, 0, IDM_VIEW_NEWLINE_VISIABLE},\n",
      "                 {0, 0, IDM_VIEW_INDENTGUIDES_VISIABLE},\n",
      "                 {0, 0, IDM_VIEW_TIPS_ONTAB},\n",
      "                 {0, 0, IDM_VIEW_CODE_HINT},\n",
      "                 {0, 0, IDM_TABCLOSE_FOLLOW},\n",
      "                 {0, 0, IDM_TABCLOSE_ALWAYS},\n",
      "                 {0, 0, IDM_TABCLOSE_NONE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_TAB, IDM_VIEW_SWITCH_TAB},\n",
      "                 {0, 0, IDM_VIEW_SCROLLCURSOR},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_OEM_MINUS, IDM_VIEW_ZOOMOUT},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_SUBTRACT, IDM_VIEW_ZOOMOUT},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_OEM_PLUS, IDM_VIEW_ZOOMIN},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_ADD, IDM_VIEW_ZOOMIN},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"0\"), IDM_VIEW_ZOOMRESET},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_NUMPAD0, IDM_VIEW_ZOOMRESET},\n",
      "                 -- Format menu\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_F6, IDM_FORMAT_REFORMAT_JSON},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), VK_F6, IDM_FORMAT_COMPRESS_JSON},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_F7, IDM_FORMAT_REFORMAT_JS},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), VK_F7, IDM_FORMAT_COMPRESS_JS},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_F8, IDM_FORMAT_RUN_SCRIPT},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), VK_F8, IDM_FORMAT_BYTE_CODE},\n",
      "                 {bit.bor(FVIRTKEY), VK_F10, IDM_FORMAT_WHOLE_FILE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_F10, IDM_FORMAT_RANGLE_STR},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"W\"), IDM_EDIT_GB_BIG5},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"Q\"), IDM_EDIT_BIG5_GB},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"8\"), IDM_FORMAT_FULL_HALF},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"9\"), IDM_FORMAT_HALF_FULL},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"L\"), IDM_VIEW_WRAPLINE_MODE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"Y\"), IDM_FORMAT_HYPERLINKHOTSPOTS},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FALT), string.byte(\"N\"), IDM_FORMAT_CHECK_INDENTATION},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), string.byte(\"Q\"), IDM_EDIT_QRCODE},\n",
      "                 -- Programming menu\n",
      "                 {bit.bor(FALT), string.byte(\"|\"), IDM_SOURCE_BLOCKFOLD_TOGGLE},\n",
      "                 {bit.bor(FALT), string.byte(\"}\"), IDM_SOURCE_BLOCKFOLD_CONTRACTALL},\n",
      "                 {bit.bor(FALT), string.byte(\"{\"), IDM_SOURCE_BLOCKFOLD_EXPANDALL},\n",
      "                 {bit.bor(FVIRTKEY), VK_F12, IDM_SOURCECODE_GOTODEF},\n",
      "                 {0, 0, IDM_SOURCEE_ENABLE_ACSHOW},\n",
      "                 {0, 0, IDM_SOURCE_ENABLE_CTSHOW},\n",
      "                 {bit.bor(FCONTROL), string.byte(\">\"), IDM_DATABASE_INSERT_CONFIG},\n",
      "                 {bit.bor(FVIRTKEY), VK_F5, IDM_DATABASE_EXECUTE_SQL},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_DIVIDE, IDM_EDIT_LINECOMMENT},\n",
      "                 {bit.bor(FCONTROL), string.byte(\"/\"), IDM_EDIT_LINECOMMENT},\n",
      "                 {bit.bor(FCONTROL), string.byte(\"\\\\\"), IDM_EDIT_STREAMCOMMENT},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"K\"), IDM_SOURCE_SNIPPET_CONFIGURE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL), VK_F5, IDM_PROGRAM_EXECUTE_ACTION},\n",
      "                 -- Settings menu\n",
      "                 {0, 0, IDM_VIEW_MODIFY_STYLETHEME},\n",
      "                 {0, 0, IDM_SET_RESET_CONFIG},\n",
      "                 {0, 0, IDM_FILE_SAVE_NOTIFY},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"V\"), IDM_SET_LUAJIT_EXECUTE},\n",
      "                 {bit.bor(FVIRTKEY,FCONTROL,FSHIFT), string.byte(\"Z\"), IDM_SET_LUAJIT_EXECUTE + 1},\n",
      "                 -- Help menu\n",
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
    if (m_len < 174) then
      eu_core.euapi.eu_reset_accs_mask()
    end
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
