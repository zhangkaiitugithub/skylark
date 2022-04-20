au3 = {}

require("eu_sci")
require("eu_core")

function au3.init_after_callback(p)
  local pnode = eu_core.ffi.cast("void *", p)
  local res = eu_core.euapi.on_doc_init_after_scilexer(pnode, "au3")
  if (res ~= 1) then
    eu_core.euapi.on_doc_comment_light(pnode, SCE_AU3_COMMENT, 0)                           -- third parameter(0), uses the theme default color
    eu_core.euapi.on_doc_commentblock_light(pnode, SCE_AU3_COMMENTBLOCK, 0)
    eu_core.euapi.on_doc_keyword_light(pnode, SCE_AU3_KEYWORD, 0, 0)                        -- 5, SCE_AU3_KEYWORD, keywords0
    eu_core.euapi.on_doc_marcro_light(pnode, SCE_AU3_MACRO, 2, 0x0080FF)                    -- 6, SCE_AU3_MACRO, keywords2
    eu_core.euapi.on_doc_string_light(pnode, SCE_AU3_STRING, 0x008080)
    eu_core.euapi.on_doc_variable_light(pnode, SCE_AU3_VARIABLE, 0x808000)
    eu_core.euapi.on_doc_send_light(pnode, SCE_AU3_SENT, 3, 0xFF0000)                       -- 10, SCE_AU3_SENT, keywords3
    eu_core.euapi.on_doc_preprocessor_light(pnode, SCE_AU3_PREPROCESSOR, 4, 0xFF8000)       -- 11, SCE_AU3_PREPROCESSOR, keywords4
    eu_core.euapi.on_doc_special_light(pnode, SCE_AU3_SPECIAL, 0xFF0000)
  end
  return res
end

function au3.get_keywords()
  local keywords0_set = "and byref case const continuecase continueloop default dim do else elseif endfunc endif endselect endswitch endwith enum exit exitloop false for func global if in local next not or redim return select step switch then to true until wend while with abs acos adlibdisable adlibenable asc ascw asin assign atan autoitsetoption autoitwingettitle autoitwinsettitle beep binary binarylen binarymid binarytostring bitand bitnot bitor bitrotate bitshift bitxor blockinput break call cdtray ceiling chr chrw clipget clipput consoleread consolewrite consolewriteerror controlclick controlcommand controldisable controlenable controlfocus controlgetfocus controlgethandle controlgetpos controlgettext controlhide controllistview controlmove controlsend controlsettext controlshow controltreeview cos dec dircopy dircreate dirgetsize dirmove dirremove dllcall dllcallbackfree dllcallbackgetptr dllcallbackregister dllclose dllopen dllstructcreate dllstructgetdata dllstructgetptr dllstructgetsize dllstructsetdata drivegetdrive drivegetfilesystem drivegetlabel drivegetserial drivegettype drivemapadd drivemapdel drivemapget drivesetlabel drivespacefree drivespacetotal drivestatus envget envset envupdate eval execute exp filechangedir fileclose filecopy filecreatentfslink filecreateshortcut filedelete fileexists filefindfirstfile filefindnextfile filegetattrib filegetlongname filegetshortcut filegetshortname filegetsize filegettime filegetversion fileinstall filemove fileopen fileopendialog fileread filereadline filerecycle filerecycleempty filesavedialog fileselectfolder filesetattrib filesettime filewrite filewriteline floor ftpsetproxy guicreate guictrlcreateavi guictrlcreatebutton guictrlcreatecheckbox guictrlcreatecombo guictrlcreatecontextmenu guictrlcreatedate guictrlcreatedummy guictrlcreateedit guictrlcreategraphic guictrlcreategroup guictrlcreateicon guictrlcreateinput guictrlcreatelabel guictrlcreatelist guictrlcreatelistview guictrlcreatelistviewitem guictrlcreatemenu guictrlcreatemenuitem guictrlcreatemonthcal guictrlcreateobj guictrlcreatepic guictrlcreateprogress guictrlcreateradio guictrlcreateslider guictrlcreatetab guictrlcreatetabitem guictrlcreatetreeview guictrlcreatetreeviewitem guictrlcreateupdown guictrldelete guictrlgethandle guictrlgetstate guictrlread guictrlrecvmsg guictrlregisterlistviewsort guictrlsendmsg guictrlsendtodummy guictrlsetbkcolor guictrlsetcolor guictrlsetcursor guictrlsetdata guictrlsetdefbkcolor guictrlsetdefcolor guictrlsetfont guictrlsetgraphic guictrlsetimage guictrlsetlimit guictrlsetonevent guictrlsetpos guictrlsetresizing guictrlsetstate guictrlsetstyle guictrlsettip guidelete guigetcursorinfo guigetmsg guigetstyle guiregistermsg guisetaccelerators guisetbkcolor guisetcoord guisetcursor guisetfont guisethelp guiseticon guisetonevent guisetstate guisetstyle guistartgroup guiswitch hex hotkeyset httpsetproxy hwnd inetget inetgetsize inidelete iniread inireadsection inireadsectionnames inirenamesection iniwrite iniwritesection inputbox int isadmin isarray isbinary isbool isdeclared isdllstruct isfloat ishwnd isint iskeyword isnumber isobj isptr isstring log memgetstats mod mouseclick mouseclickdrag mousedown mousegetcursor mousegetpos mousemove mouseup mousewheel msgbox number objcreate objevent objevent objget objname opt ping pixelchecksum pixelgetcolor pixelsearch pluginclose pluginopen processclose processexists processgetstats processlist processsetpriority processwait processwaitclose progressoff progresson progressset ptr random regdelete regenumkey regenumval regread regwrite round run runas runaswait runwait send sendkeepactive seterror setextended shellexecute shellexecutewait shutdown sin sleep soundplay soundsetwavevolume splashimageon splashoff splashtexton sqrt srandom statusbargettext stderrread stdinwrite stdioclose stdoutread string stringaddcr stringcompare stringformat stringinstr stringisalnum stringisalpha stringisascii stringisdigit stringisfloat stringisint stringislower stringisspace stringisupper stringisxdigit stringleft stringlen stringlower stringmid stringregexp stringregexpreplace stringreplace stringright stringsplit stringstripcr stringstripws stringtobinary stringtrimleft stringtrimright stringupper tan tcpaccept tcpclosesocket tcpconnect tcplisten tcpnametoip tcprecv tcpsend tcpshutdown tcpstartup timerdiff timerinit tooltip traycreateitem traycreatemenu traygetmsg trayitemdelete trayitemgethandle trayitemgetstate trayitemgettext trayitemsetonevent trayitemsetstate trayitemsettext traysetclick trayseticon traysetonevent traysetpauseicon traysetstate traysettooltip traytip ubound udpbind udpclosesocket udpopen udprecv udpsend udpshutdown udpstartup vargettype winactivate winactive winclose winexists winflash wingetcaretpos wingetclasslist wingetclientsize wingethandle wingetpos wingetprocess wingetstate wingettext wingettitle winkill winlist winmenuselectitem winminimizeall winminimizeallundo winmove winsetontop winsetstate winsettitle winsettrans winwait winwaitactive winwaitclose winwaitnotactive"
  local keywords1_set = nil
  local keywords2_set = "@appdatacommondir @appdatadir @autoitexe @autoitpid @autoitunicode @autoitversion @autoitx64 @com_eventobj @commonfilesdir @compiled @computername @comspec @cr @crlf @desktopcommondir @desktopdepth @desktopdir @desktopheight @desktoprefresh @desktopwidth @documentscommondir @error @exitcode @exitmethod @extended @favoritescommondir @favoritesdir @gui_ctrlhandle @gui_ctrlid @gui_dragfile @gui_dragid @gui_dropid @gui_winhandle @homedrive @homepath @homeshare @hotkeypressed @hour @inetgetactive @inetgetbytesread @ipaddress1 @ipaddress2 @ipaddress3 @ipaddress4 @kblayout @lf @logondnsdomain @logondomain @logonserver @mday @min @mon @mydocumentsdir @numparams @osbuild @oslang @osservicepack @ostype @osversion @processorarch @programfilesdir @programscommondir @programsdir @scriptdir @scriptfullpath @scriptlinenumber @scriptname @sec @startmenucommondir @startmenudir @startupcommondir @startupdir @sw_disable @sw_enable @sw_hide @sw_lock @sw_maximize @sw_minimize @sw_restore @sw_show @sw_showdefault @sw_showmaximized @sw_showminimized @sw_showminnoactive @sw_showna @sw_shownoactivate @sw_shownormal @sw_unlock @systemdir @tab @tempdir @tray_id @trayiconflashing @trayiconvisible @username @userprofiledir @wday @windowsdir @workingdir @yday @year"
  local keywords3_set = "{!} {#} {^} {{} {}} {+} {alt} {altdown} {altup} {appskey} {asc} {backspace} {break} {browser_back} {browser_favorites} {browser_forward} {browser_home} {browser_refresh} {browser_search} {browser_stop} {bs} {capslock} {ctrldown} {ctrlup} {del} {delete} {down} {end} {enter} {esc} {escape} {f1} {f10} {f11} {f12} {f2} {f3} {f4} {f5} {f6} {f7} {f8} {f9} {home} {ins} {insert} {lalt} {launch_app1} {launch_app2} {launch_mail} {launch_media} {lctrl} {left} {lshift} {lwin} {lwindown} {lwinup} {media_next} {media_play_pause} {media_prev} {media_stop} {numlock} {numpad0} {numpad1} {numpad2} {numpad3} {numpad4} {numpad5} {numpad6} {numpad7} {numpad8} {numpad9} {numpadadd} {numpaddiv} {numpaddot} {numpadenter} {numpadmult} {numpadsub} {pause} {pgdn} {pgup} {printscreen} {ralt} {rctrl} {right} {rshift} {rwin} {rwindown} {rwinup} {scrolllock} {shiftdown} {shiftup} {sleep} {space} {tab} {up} {volume_down} {volume_mute} {volume_up}"
  local keywords4_set = "#ce #comments-end #comments-start #cs #include #include-once #notrayicon #requireadmin #autoit3wrapper_au3check_parameters #autoit3wrapper_au3check_stop_onwarning #autoit3wrapper_change2cui #autoit3wrapper_compression #autoit3wrapper_cvswrapper_parameters #autoit3wrapper_icon #autoit3wrapper_outfile #autoit3wrapper_outfile_type #autoit3wrapper_plugin_funcs #autoit3wrapper_res_comment #autoit3wrapper_res_description #autoit3wrapper_res_field #autoit3wrapper_res_file_add #autoit3wrapper_res_fileversion #autoit3wrapper_res_fileversion_autoincrement #autoit3wrapper_res_icon_add #autoit3wrapper_res_language #autoit3wrapper_res_legalcopyright #autoit3wrapper_res_requestedexecutionlevel #autoit3wrapper_res_savesource #autoit3wrapper_run_after #autoit3wrapper_run_au3check #autoit3wrapper_run_before #autoit3wrapper_run_cvswrapper #autoit3wrapper_run_debug_mode #autoit3wrapper_run_obfuscator #autoit3wrapper_run_tidy #autoit3wrapper_tidy_stop_onerror #autoit3wrapper_useansi #autoit3wrapper_useupx #autoit3wrapper_usex64 #autoit3wrapper_version #endregion #forceref #obfuscator_ignore_funcs #obfuscator_ignore_variables #obfuscator_parameters #region #tidy_parameters"  
  return keywords0_set,keywords1_set,keywords2_set,keywords3_set,keywords4_set
end

function au3.get_autocomplete()
  local autocomplete_set = "and byref case const continuecase continueloop default dim do else elseif endfunc endif endselect endswitch endwith enum exit exitloop false for func global if in local next not or redim return select step switch then to true until wend while with abs acos adlibdisable adlibenable asc ascw asin assign atan autoitsetoption autoitwingettitle autoitwinsettitle beep binary binarylen binarymid binarytostring bitand bitnot bitor bitrotate bitshift bitxor blockinput break call cdtray ceiling chr chrw clipget clipput consoleread consolewrite consolewriteerror controlclick controlcommand controldisable controlenable controlfocus controlgetfocus controlgethandle controlgetpos controlgettext controlhide controllistview controlmove controlsend controlsettext controlshow controltreeview cos dec dircopy dircreate dirgetsize dirmove dirremove dllcall dllcallbackfree dllcallbackgetptr dllcallbackregister dllclose dllopen dllstructcreate dllstructgetdata dllstructgetptr dllstructgetsize dllstructsetdata drivegetdrive drivegetfilesystem drivegetlabel drivegetserial drivegettype drivemapadd drivemapdel drivemapget drivesetlabel drivespacefree drivespacetotal drivestatus envget envset envupdate eval execute exp filechangedir fileclose filecopy filecreatentfslink filecreateshortcut filedelete fileexists filefindfirstfile filefindnextfile filegetattrib filegetlongname filegetshortcut filegetshortname filegetsize filegettime filegetversion fileinstall filemove fileopen fileopendialog fileread filereadline filerecycle filerecycleempty filesavedialog fileselectfolder filesetattrib filesettime filewrite filewriteline floor ftpsetproxy guicreate guictrlcreateavi guictrlcreatebutton guictrlcreatecheckbox guictrlcreatecombo guictrlcreatecontextmenu guictrlcreatedate guictrlcreatedummy guictrlcreateedit guictrlcreategraphic guictrlcreategroup guictrlcreateicon guictrlcreateinput guictrlcreatelabel guictrlcreatelist guictrlcreatelistview guictrlcreatelistviewitem guictrlcreatemenu guictrlcreatemenuitem guictrlcreatemonthcal guictrlcreateobj guictrlcreatepic guictrlcreateprogress guictrlcreateradio guictrlcreateslider guictrlcreatetab guictrlcreatetabitem guictrlcreatetreeview guictrlcreatetreeviewitem guictrlcreateupdown guictrldelete guictrlgethandle guictrlgetstate guictrlread guictrlrecvmsg guictrlregisterlistviewsort guictrlsendmsg guictrlsendtodummy guictrlsetbkcolor guictrlsetcolor guictrlsetcursor guictrlsetdata guictrlsetdefbkcolor guictrlsetdefcolor guictrlsetfont guictrlsetgraphic guictrlsetimage guictrlsetlimit guictrlsetonevent guictrlsetpos guictrlsetresizing guictrlsetstate guictrlsetstyle guictrlsettip guidelete guigetcursorinfo guigetmsg guigetstyle guiregistermsg guisetaccelerators guisetbkcolor guisetcoord guisetcursor guisetfont guisethelp guiseticon guisetonevent guisetstate guisetstyle guistartgroup guiswitch hex hotkeyset httpsetproxy hwnd inetget inetgetsize inidelete iniread inireadsection inireadsectionnames inirenamesection iniwrite iniwritesection inputbox int isadmin isarray isbinary isbool isdeclared isdllstruct isfloat ishwnd isint iskeyword isnumber isobj isptr isstring log memgetstats mod mouseclick mouseclickdrag mousedown mousegetcursor mousegetpos mousemove mouseup mousewheel msgbox number objcreate objevent objevent objget objname opt ping pixelchecksum pixelgetcolor pixelsearch pluginclose pluginopen processclose processexists processgetstats processlist processsetpriority processwait processwaitclose progressoff progresson progressset ptr random regdelete regenumkey regenumval regread regwrite round run runas runaswait runwait send sendkeepactive seterror setextended shellexecute shellexecutewait shutdown sin sleep soundplay soundsetwavevolume splashimageon splashoff splashtexton sqrt srandom statusbargettext stderrread stdinwrite stdioclose stdoutread string stringaddcr stringcompare stringformat stringinstr stringisalnum stringisalpha stringisascii stringisdigit stringisfloat stringisint stringislower stringisspace stringisupper stringisxdigit stringleft stringlen stringlower stringmid stringregexp stringregexpreplace stringreplace stringright stringsplit stringstripcr stringstripws stringtobinary stringtrimleft stringtrimright stringupper tan tcpaccept tcpclosesocket tcpconnect tcplisten tcpnametoip tcprecv tcpsend tcpshutdown tcpstartup timerdiff timerinit tooltip traycreateitem traycreatemenu traygetmsg trayitemdelete trayitemgethandle trayitemgetstate trayitemgettext trayitemsetonevent trayitemsetstate trayitemsettext traysetclick trayseticon traysetonevent traysetpauseicon traysetstate traysettooltip traytip ubound udpbind udpclosesocket udpopen udprecv udpsend udpshutdown udpstartup vargettype winactivate winactive winclose winexists winflash wingetcaretpos wingetclasslist wingetclientsize wingethandle wingetpos wingetprocess wingetstate wingettext wingettitle winkill winlist winmenuselectitem winminimizeall winminimizeallundo winmove winsetontop winsetstate winsettitle winsettrans winwait winwaitactive winwaitclose winwaitnotactive"
  return autocomplete_set
end

function au3.get_reqular()
  local symbol_reqular_exp = "[ \\t]*Func[ \\t]+([_a-zA-Z]+[_a-zA-Z0-9]*)\\("
  return symbol_reqular_exp
end

function au3.create_bakup(path)
  local au3_code = {
    "user_au3 = {}\n",
    "\n",
    "require(\"eu_sci\")\n",
    "require(\"eu_core\")\n",
    "\n",
    "function user_au3.init_after_callback(p)\n",
    "  local pnode = eu_core.ffi.cast(\"void *\", p)\n",
    "  local res = eu_core.euapi.on_doc_init_after_scilexer(pnode, \"au3\")\n",
    "  if (res ~= 1) then\n",
    "    eu_core.euapi.on_doc_comment_light(pnode, SCE_AU3_COMMENT, 0)                           -- third parameter(0), uses the theme default color\n",
    "    eu_core.euapi.on_doc_commentblock_light(pnode, SCE_AU3_COMMENTBLOCK, 0)\n",
    "    eu_core.euapi.on_doc_keyword_light(pnode, SCE_AU3_KEYWORD, 0, 0)                        -- 5, SCE_AU3_KEYWORD, keywords0\n",
    "    eu_core.euapi.on_doc_marcro_light(pnode, SCE_AU3_MACRO, 2, 0x0080FF)                    -- 6, SCE_AU3_MACRO, keywords2\n",
    "    eu_core.euapi.on_doc_string_light(pnode, SCE_AU3_STRING, 0x008080)\n",
    "    eu_core.euapi.on_doc_variable_light(pnode, SCE_AU3_VARIABLE, 0x808000)\n",
    "    eu_core.euapi.on_doc_send_light(pnode, SCE_AU3_SENT, 3, 0xFF0000)                       -- 10, SCE_AU3_SENT, keywords3\n",
    "    eu_core.euapi.on_doc_preprocessor_light(pnode, SCE_AU3_PREPROCESSOR, 4, 0xFF8000)       -- 11, SCE_AU3_PREPROCESSOR, keywords4\n",
    "    eu_core.euapi.on_doc_special_light(pnode, SCE_AU3_SPECIAL, 0xFF0000)\n",
    "  end\n",
    "  return res\n",
    "end\n",
    "\n",
    "function user_au3.get_keywords()\n",
    "  local keywords0_set = \"and byref case const continuecase continueloop default dim do else elseif endfunc endif endselect endswitch endwith enum exit exitloop false for func global if in local next not or redim return select step switch then to true until wend while with abs acos adlibdisable adlibenable asc ascw asin assign atan autoitsetoption autoitwingettitle autoitwinsettitle beep binary binarylen binarymid binarytostring bitand bitnot bitor bitrotate bitshift bitxor blockinput break call cdtray ceiling chr chrw clipget clipput consoleread consolewrite consolewriteerror controlclick controlcommand controldisable controlenable controlfocus controlgetfocus controlgethandle controlgetpos controlgettext controlhide controllistview controlmove controlsend controlsettext controlshow controltreeview cos dec dircopy dircreate dirgetsize dirmove dirremove dllcall dllcallbackfree dllcallbackgetptr dllcallbackregister dllclose dllopen dllstructcreate dllstructgetdata dllstructgetptr dllstructgetsize dllstructsetdata drivegetdrive drivegetfilesystem drivegetlabel drivegetserial drivegettype drivemapadd drivemapdel drivemapget drivesetlabel drivespacefree drivespacetotal drivestatus envget envset envupdate eval execute exp filechangedir fileclose filecopy filecreatentfslink filecreateshortcut filedelete fileexists filefindfirstfile filefindnextfile filegetattrib filegetlongname filegetshortcut filegetshortname filegetsize filegettime filegetversion fileinstall filemove fileopen fileopendialog fileread filereadline filerecycle filerecycleempty filesavedialog fileselectfolder filesetattrib filesettime filewrite filewriteline floor ftpsetproxy guicreate guictrlcreateavi guictrlcreatebutton guictrlcreatecheckbox guictrlcreatecombo guictrlcreatecontextmenu guictrlcreatedate guictrlcreatedummy guictrlcreateedit guictrlcreategraphic guictrlcreategroup guictrlcreateicon guictrlcreateinput guictrlcreatelabel guictrlcreatelist guictrlcreatelistview guictrlcreatelistviewitem guictrlcreatemenu guictrlcreatemenuitem guictrlcreatemonthcal guictrlcreateobj guictrlcreatepic guictrlcreateprogress guictrlcreateradio guictrlcreateslider guictrlcreatetab guictrlcreatetabitem guictrlcreatetreeview guictrlcreatetreeviewitem guictrlcreateupdown guictrldelete guictrlgethandle guictrlgetstate guictrlread guictrlrecvmsg guictrlregisterlistviewsort guictrlsendmsg guictrlsendtodummy guictrlsetbkcolor guictrlsetcolor guictrlsetcursor guictrlsetdata guictrlsetdefbkcolor guictrlsetdefcolor guictrlsetfont guictrlsetgraphic guictrlsetimage guictrlsetlimit guictrlsetonevent guictrlsetpos guictrlsetresizing guictrlsetstate guictrlsetstyle guictrlsettip guidelete guigetcursorinfo guigetmsg guigetstyle guiregistermsg guisetaccelerators guisetbkcolor guisetcoord guisetcursor guisetfont guisethelp guiseticon guisetonevent guisetstate guisetstyle guistartgroup guiswitch hex hotkeyset httpsetproxy hwnd inetget inetgetsize inidelete iniread inireadsection inireadsectionnames inirenamesection iniwrite iniwritesection inputbox int isadmin isarray isbinary isbool isdeclared isdllstruct isfloat ishwnd isint iskeyword isnumber isobj isptr isstring log memgetstats mod mouseclick mouseclickdrag mousedown mousegetcursor mousegetpos mousemove mouseup mousewheel msgbox number objcreate objevent objevent objget objname opt ping pixelchecksum pixelgetcolor pixelsearch pluginclose pluginopen processclose processexists processgetstats processlist processsetpriority processwait processwaitclose progressoff progresson progressset ptr random regdelete regenumkey regenumval regread regwrite round run runas runaswait runwait send sendkeepactive seterror setextended shellexecute shellexecutewait shutdown sin sleep soundplay soundsetwavevolume splashimageon splashoff splashtexton sqrt srandom statusbargettext stderrread stdinwrite stdioclose stdoutread string stringaddcr stringcompare stringformat stringinstr stringisalnum stringisalpha stringisascii stringisdigit stringisfloat stringisint stringislower stringisspace stringisupper stringisxdigit stringleft stringlen stringlower stringmid stringregexp stringregexpreplace stringreplace stringright stringsplit stringstripcr stringstripws stringtobinary stringtrimleft stringtrimright stringupper tan tcpaccept tcpclosesocket tcpconnect tcplisten tcpnametoip tcprecv tcpsend tcpshutdown tcpstartup timerdiff timerinit tooltip traycreateitem traycreatemenu traygetmsg trayitemdelete trayitemgethandle trayitemgetstate trayitemgettext trayitemsetonevent trayitemsetstate trayitemsettext traysetclick trayseticon traysetonevent traysetpauseicon traysetstate traysettooltip traytip ubound udpbind udpclosesocket udpopen udprecv udpsend udpshutdown udpstartup vargettype winactivate winactive winclose winexists winflash wingetcaretpos wingetclasslist wingetclientsize wingethandle wingetpos wingetprocess wingetstate wingettext wingettitle winkill winlist winmenuselectitem winminimizeall winminimizeallundo winmove winsetontop winsetstate winsettitle winsettrans winwait winwaitactive winwaitclose winwaitnotactive\"\n",
    "  local keywords1_set = nil\n",
    "  local keywords2_set = \"@appdatacommondir @appdatadir @autoitexe @autoitpid @autoitunicode @autoitversion @autoitx64 @com_eventobj @commonfilesdir @compiled @computername @comspec @cr @crlf @desktopcommondir @desktopdepth @desktopdir @desktopheight @desktoprefresh @desktopwidth @documentscommondir @error @exitcode @exitmethod @extended @favoritescommondir @favoritesdir @gui_ctrlhandle @gui_ctrlid @gui_dragfile @gui_dragid @gui_dropid @gui_winhandle @homedrive @homepath @homeshare @hotkeypressed @hour @inetgetactive @inetgetbytesread @ipaddress1 @ipaddress2 @ipaddress3 @ipaddress4 @kblayout @lf @logondnsdomain @logondomain @logonserver @mday @min @mon @mydocumentsdir @numparams @osbuild @oslang @osservicepack @ostype @osversion @processorarch @programfilesdir @programscommondir @programsdir @scriptdir @scriptfullpath @scriptlinenumber @scriptname @sec @startmenucommondir @startmenudir @startupcommondir @startupdir @sw_disable @sw_enable @sw_hide @sw_lock @sw_maximize @sw_minimize @sw_restore @sw_show @sw_showdefault @sw_showmaximized @sw_showminimized @sw_showminnoactive @sw_showna @sw_shownoactivate @sw_shownormal @sw_unlock @systemdir @tab @tempdir @tray_id @trayiconflashing @trayiconvisible @username @userprofiledir @wday @windowsdir @workingdir @yday @year\"\n",
    "  local keywords3_set = \"{!} {#} {^} {{} {}} {+} {alt} {altdown} {altup} {appskey} {asc} {backspace} {break} {browser_back} {browser_favorites} {browser_forward} {browser_home} {browser_refresh} {browser_search} {browser_stop} {bs} {capslock} {ctrldown} {ctrlup} {del} {delete} {down} {end} {enter} {esc} {escape} {f1} {f10} {f11} {f12} {f2} {f3} {f4} {f5} {f6} {f7} {f8} {f9} {home} {ins} {insert} {lalt} {launch_app1} {launch_app2} {launch_mail} {launch_media} {lctrl} {left} {lshift} {lwin} {lwindown} {lwinup} {media_next} {media_play_pause} {media_prev} {media_stop} {numlock} {numpad0} {numpad1} {numpad2} {numpad3} {numpad4} {numpad5} {numpad6} {numpad7} {numpad8} {numpad9} {numpadadd} {numpaddiv} {numpaddot} {numpadenter} {numpadmult} {numpadsub} {pause} {pgdn} {pgup} {printscreen} {ralt} {rctrl} {right} {rshift} {rwin} {rwindown} {rwinup} {scrolllock} {shiftdown} {shiftup} {sleep} {space} {tab} {up} {volume_down} {volume_mute} {volume_up}\"\n",
    "  local keywords4_set = \"#ce #comments-end #comments-start #cs #include #include-once #notrayicon #requireadmin #autoit3wrapper_au3check_parameters #autoit3wrapper_au3check_stop_onwarning #autoit3wrapper_change2cui #autoit3wrapper_compression #autoit3wrapper_cvswrapper_parameters #autoit3wrapper_icon #autoit3wrapper_outfile #autoit3wrapper_outfile_type #autoit3wrapper_plugin_funcs #autoit3wrapper_res_comment #autoit3wrapper_res_description #autoit3wrapper_res_field #autoit3wrapper_res_file_add #autoit3wrapper_res_fileversion #autoit3wrapper_res_fileversion_autoincrement #autoit3wrapper_res_icon_add #autoit3wrapper_res_language #autoit3wrapper_res_legalcopyright #autoit3wrapper_res_requestedexecutionlevel #autoit3wrapper_res_savesource #autoit3wrapper_run_after #autoit3wrapper_run_au3check #autoit3wrapper_run_before #autoit3wrapper_run_cvswrapper #autoit3wrapper_run_debug_mode #autoit3wrapper_run_obfuscator #autoit3wrapper_run_tidy #autoit3wrapper_tidy_stop_onerror #autoit3wrapper_useansi #autoit3wrapper_useupx #autoit3wrapper_usex64 #autoit3wrapper_version #endregion #forceref #obfuscator_ignore_funcs #obfuscator_ignore_variables #obfuscator_parameters #region #tidy_parameters\"\n",
    "  return keywords0_set,keywords1_set,keywords2_set,keywords3_set,keywords4_set\n",
    "end\n",
    "\n",
    "function user_au3.get_autocomplete()\n",
    "  local autocomplete_set = \"and byref case const continuecase continueloop default dim do else elseif endfunc endif endselect endswitch endwith enum exit exitloop false for func global if in local next not or redim return select step switch then to true until wend while with abs acos adlibdisable adlibenable asc ascw asin assign atan autoitsetoption autoitwingettitle autoitwinsettitle beep binary binarylen binarymid binarytostring bitand bitnot bitor bitrotate bitshift bitxor blockinput break call cdtray ceiling chr chrw clipget clipput consoleread consolewrite consolewriteerror controlclick controlcommand controldisable controlenable controlfocus controlgetfocus controlgethandle controlgetpos controlgettext controlhide controllistview controlmove controlsend controlsettext controlshow controltreeview cos dec dircopy dircreate dirgetsize dirmove dirremove dllcall dllcallbackfree dllcallbackgetptr dllcallbackregister dllclose dllopen dllstructcreate dllstructgetdata dllstructgetptr dllstructgetsize dllstructsetdata drivegetdrive drivegetfilesystem drivegetlabel drivegetserial drivegettype drivemapadd drivemapdel drivemapget drivesetlabel drivespacefree drivespacetotal drivestatus envget envset envupdate eval execute exp filechangedir fileclose filecopy filecreatentfslink filecreateshortcut filedelete fileexists filefindfirstfile filefindnextfile filegetattrib filegetlongname filegetshortcut filegetshortname filegetsize filegettime filegetversion fileinstall filemove fileopen fileopendialog fileread filereadline filerecycle filerecycleempty filesavedialog fileselectfolder filesetattrib filesettime filewrite filewriteline floor ftpsetproxy guicreate guictrlcreateavi guictrlcreatebutton guictrlcreatecheckbox guictrlcreatecombo guictrlcreatecontextmenu guictrlcreatedate guictrlcreatedummy guictrlcreateedit guictrlcreategraphic guictrlcreategroup guictrlcreateicon guictrlcreateinput guictrlcreatelabel guictrlcreatelist guictrlcreatelistview guictrlcreatelistviewitem guictrlcreatemenu guictrlcreatemenuitem guictrlcreatemonthcal guictrlcreateobj guictrlcreatepic guictrlcreateprogress guictrlcreateradio guictrlcreateslider guictrlcreatetab guictrlcreatetabitem guictrlcreatetreeview guictrlcreatetreeviewitem guictrlcreateupdown guictrldelete guictrlgethandle guictrlgetstate guictrlread guictrlrecvmsg guictrlregisterlistviewsort guictrlsendmsg guictrlsendtodummy guictrlsetbkcolor guictrlsetcolor guictrlsetcursor guictrlsetdata guictrlsetdefbkcolor guictrlsetdefcolor guictrlsetfont guictrlsetgraphic guictrlsetimage guictrlsetlimit guictrlsetonevent guictrlsetpos guictrlsetresizing guictrlsetstate guictrlsetstyle guictrlsettip guidelete guigetcursorinfo guigetmsg guigetstyle guiregistermsg guisetaccelerators guisetbkcolor guisetcoord guisetcursor guisetfont guisethelp guiseticon guisetonevent guisetstate guisetstyle guistartgroup guiswitch hex hotkeyset httpsetproxy hwnd inetget inetgetsize inidelete iniread inireadsection inireadsectionnames inirenamesection iniwrite iniwritesection inputbox int isadmin isarray isbinary isbool isdeclared isdllstruct isfloat ishwnd isint iskeyword isnumber isobj isptr isstring log memgetstats mod mouseclick mouseclickdrag mousedown mousegetcursor mousegetpos mousemove mouseup mousewheel msgbox number objcreate objevent objevent objget objname opt ping pixelchecksum pixelgetcolor pixelsearch pluginclose pluginopen processclose processexists processgetstats processlist processsetpriority processwait processwaitclose progressoff progresson progressset ptr random regdelete regenumkey regenumval regread regwrite round run runas runaswait runwait send sendkeepactive seterror setextended shellexecute shellexecutewait shutdown sin sleep soundplay soundsetwavevolume splashimageon splashoff splashtexton sqrt srandom statusbargettext stderrread stdinwrite stdioclose stdoutread string stringaddcr stringcompare stringformat stringinstr stringisalnum stringisalpha stringisascii stringisdigit stringisfloat stringisint stringislower stringisspace stringisupper stringisxdigit stringleft stringlen stringlower stringmid stringregexp stringregexpreplace stringreplace stringright stringsplit stringstripcr stringstripws stringtobinary stringtrimleft stringtrimright stringupper tan tcpaccept tcpclosesocket tcpconnect tcplisten tcpnametoip tcprecv tcpsend tcpshutdown tcpstartup timerdiff timerinit tooltip traycreateitem traycreatemenu traygetmsg trayitemdelete trayitemgethandle trayitemgetstate trayitemgettext trayitemsetonevent trayitemsetstate trayitemsettext traysetclick trayseticon traysetonevent traysetpauseicon traysetstate traysettooltip traytip ubound udpbind udpclosesocket udpopen udprecv udpsend udpshutdown udpstartup vargettype winactivate winactive winclose winexists winflash wingetcaretpos wingetclasslist wingetclientsize wingethandle wingetpos wingetprocess wingetstate wingettext wingettitle winkill winlist winmenuselectitem winminimizeall winminimizeallundo winmove winsetontop winsetstate winsettitle winsettrans winwait winwaitactive winwaitclose winwaitnotactive\"\n",
    "  return autocomplete_set\n",
    "end\n",
    "\n",
    "function user_au3.get_reqular()\n",
    "  local symbol_reqular_exp = \"[ \\\\t]*Func[ \\\\t]+([_a-zA-Z]+[_a-zA-Z0-9]*)\\\\(\"\n",
    "  return symbol_reqular_exp\n",
    "end\n",    
    "return user_au3",
  }
  local shell_code = table.concat(au3_code)
  eu_core.save_file(path, shell_code)
  shell_code = nil
  au3_code = nil
end

return au3