shell = {}

function shell.get_keywords()
  local keywords0_set = "alias bg bind break builtin case cd command continue declare dirs disown do done echo elif else enable esac eval exec exit export fc fg fi for function getops hash help history if in jobs kill let local logout popd pushd pwd read readonly return select set shift suspend test then time times trap type typeset ulimit umask unalias unset until wait while"
  local keywords1_set = "assoc aux break call cd chcp chdir choice cls cmdextversion color com1 com2 com3 com4 con copy ctty date defined del dir do dpath echo else endlocal erase errorlevel exist exit for ftype goto if in lpt1 lpt2 lpt3 lpt4 md mkdir move not nul path pause popd prompt prn pushd rd rem ren rename rmdir set setlocal shift start time title type ver verify vol"
  local keywords2_set = "append attrib chkdsk comp diskcomp"
  local keywords3_set = "begin break catch continue data do dynamicparam else elseif end exit filter finally for foreach from function if in local param private process return switch throw trap try until where while add-computer add-content add-history add-member add-pssnapin add-type checkpoint-computer clear-content clear-eventlog clear-history clear-host clear-item clear-itemproperty clear-variable compare-object complete-transaction connect-wsman convertfrom-csv convertfrom-securestring convertfrom-stringdata convert-path convertto-csv convertto-html convertto-securestring convertto-xml copy-item copy-itemproperty debug-process disable-computerrestore disable-psbreakpoint disable-psremoting disable-pssessionconfiguration disable-wsmancredssp disconnect-wsman enable-computerrestore enable-psbreakpoint enable-psremoting enable-pssessionconfiguration enable-wsmancredssp enter-pssession exit-pssession export-alias export-clixml export-console export-counter export-csv export-formatdata export-modulemember export-pssession foreach-object format-custom format-list format-table format-wide get-acl get-alias get-authenticodesignature get-childitem get-command get-computerrestorepoint get-content get-counter get-credential get-culture get-date get-event get-eventlog get-eventsubscriber get-executionpolicy get-formatdata get-help get-history get-host get-hotfix get-item get-itemproperty get-job get-location get-member get-module get-pfxcertificate get-process get-psbreakpoint get-pscallstack get-psdrive get-psprovider get-pssession get-pssessionconfiguration get-pssnapin get-random get-service get-tracesource get-transaction get-uiculture get-unique get-variable get-verb get-winevent get-wmiobject get-wsmancredssp get-wsmaninstance group-object import-alias import-clixml import-counter import-csv import-localizeddata import-module import-pssession invoke-command invoke-expression invoke-history invoke-item invoke-wmimethod invoke-wsmanaction join-path limit-eventlog measure-command measure-object move-item move-itemproperty new-alias new-event new-eventlog new-item new-itemproperty new-module new-modulemanifest new-object new-psdrive new-pssession new-pssessionoption new-service new-timespan new-variable new-webserviceproxy new-wsmaninstance new-wsmansessionoption out-default out-file out-gridview out-host out-null out-printer out-string pop-location push-location read-host receive-job register-engineevent register-objectevent register-pssessionconfiguration register-wmievent remove-computer remove-event remove-eventlog remove-item remove-itemproperty remove-job remove-module remove-psbreakpoint remove-psdrive remove-pssession remove-pssnapin remove-variable remove-wmiobject remove-wsmaninstance rename-item rename-itemproperty reset-computermachinepassword resolve-path restart-computer restart-service restore-computer resume-service select-object select-string select-xml send-mailmessage set-acl set-alias set-authenticodesignature set-content set-date set-executionpolicy set-item set-itemproperty set-location set-psbreakpoint set-psdebug set-pssessionconfiguration set-service set-strictmode set-tracesource set-variable set-wmiinstance set-wsmaninstance set-wsmanquickconfig show-eventlog sort-object split-path start-job start-process start-service start-sleep start-transaction start-transcript stop-computer stop-job stop-process stop-service stop-transcript suspend-service tee-object test-computersecurechannel test-connection test-modulemanifest test-path test-wsman trace-command undo-transaction unregister-event unregister-pssessionconfiguration update-formatdata update-list update-typedata use-transaction wait-event wait-job wait-process where-object write-debug write-error write-eventlog write-host write-output write-progress write-verbose write-warning ac asnp cat cd chdir clc clear clhy cli clp cls clv compare copy cp cpi cpp cvpa dbp del diff dir ebp echo epal epcsv epsn erase etsn exsn fc fl foreach ft fw gal gbp gc gci gcm gcs gdr ghy gi gjb gl gm gmo gp gps group gsn gsnp gsv gu gv gwmi h help history icm iex ihy ii ipal ipcsv ipmo ipsn ise iwmi kill lp ls man md measure mi mkdir more mount move mp mv nal ndr ni nmo nsn nv ogv oh popd ps pushd pwd r rbp rcjb rd rdr ren ri rjb rm rmdir rmo rni rnp rp rsn rsnp rv rvpa rwmi sajb sal saps sasv sbp sc select set si sl sleep sort sp spjb spps spsv start sv swmi tee type where wjb write"
  local keywords4_set = "importsystemmodules prompt psedit tabexpansion"
  return keywords0_set,keywords1_set,keywords2_set,keywords3_set,keywords4_set
end

function shell.get_autocomplete()
  local autocomplete_set = "AUTOLOAD BEGIN CHECK CORE DESTROY END EQ GE GT INIT LE LT NE NULL UNITCHECK __DATA__ __END__ __FILE__ __LINE__ __PACKAGE__ __SUB__ abs accept alarm and append assoc atan2 attrib aux bind binmode bless break break call caller cd chcp chdir chdir chkdsk chmod choice chomp chop chown chr chroot close closedir cls cmdextversion cmp color com1 com2 com3 com4 comp con connect continue copy cos crypt ctty date dbmclose dbmopen default defined defined del delete die dir diskcomp do do dpath dump each echo else else elsif endgrent endhostent endlocal endnetent endprotoent endpwent endservent eof eq erase errorlevel eval exec exist exists exit exit exp fc fcntl fileno flock for for foreach fork format formline ftype ge getc getgrent getgrgid getgrnam gethostbyaddr gethostbyname gethostent getlogin getnetbyaddr getnetbyname getnetent getpeername getpgrp getppid getpriority getprotobyname getprotobynumber getprotoent getpwent getpwnam getpwuid getservbyname getservbyport getservent getsockname getsockopt given glob gmtime goto goto grep gt hex if if in index int ioctl join keys kill last lc lcfirst le length link listen local localtime lock log lpt1 lpt2 lpt3 lpt4 lstat lt map md mkdir mkdir move msgctl msgget msgrcv msgsnd my ne next no not not nul oct open opendir or ord our pack package path pause pipe pop popd pos print printf prn prompt prototype push pushd qu quotemeta rand rd read readdir readline readlink readpipe recv redo ref rem ren rename rename require reset return reverse rewinddir rindex rmdir rmdir say scalar seek seekdir select semctl semget semop send set setgrent sethostent setlocal setnetent setpgrp setpriority setprotoent setpwent setservent setsockopt shift shift shmctl shmget shmread shmwrite shutdown sin sleep socket socketpair sort splice split sprintf sqrt srand start stat state study sub substr symlink syscall sysopen sysread sysseek system syswrite tell telldir tie tied time time times title truncate type uc ucfirst umask undef unless unlink unpack unshift untie until use utime values vec ver verify vol wait waitpid wantarray warn when while write xor add-computer add-content add-history add-member add-pssnapin add-type checkpoint-computer clear-content clear-eventlog clear-history clear-host clear-item clear-itemproperty clear-variable compare-object complete-transaction connect-wsman convertfrom-csv convertfrom-securestring convertfrom-stringdata convert-path convertto-csv convertto-html convertto-securestring convertto-xml copy-item copy-itemproperty debug-process disable-computerrestore disable-psbreakpoint disable-psremoting disable-pssessionconfiguration disable-wsmancredssp disconnect-wsman enable-computerrestore enable-psbreakpoint enable-psremoting enable-pssessionconfiguration enable-wsmancredssp enter-pssession exit-pssession export-alias export-clixml export-console export-counter export-csv export-formatdata export-modulemember export-pssession foreach-object format-custom format-list format-table format-wide get-acl get-alias get-authenticodesignature get-childitem get-command get-computerrestorepoint get-content get-counter get-credential get-culture get-date get-event get-eventlog get-eventsubscriber get-executionpolicy get-formatdata get-help get-history get-host get-hotfix get-item get-itemproperty get-job get-location get-member get-module get-pfxcertificate get-process get-psbreakpoint get-pscallstack get-psdrive get-psprovider get-pssession get-pssessionconfiguration get-pssnapin get-random get-service get-tracesource get-transaction get-uiculture get-unique get-variable get-verb get-winevent get-wmiobject get-wsmancredssp get-wsmaninstance group-object import-alias import-clixml import-counter import-csv import-localizeddata import-module import-pssession invoke-command invoke-expression invoke-history invoke-item invoke-wmimethod invoke-wsmanaction join-path limit-eventlog measure-command measure-object move-item move-itemproperty new-alias new-event new-eventlog new-item new-itemproperty new-module new-modulemanifest new-object new-psdrive new-pssession new-pssessionoption new-service new-timespan new-variable new-webserviceproxy new-wsmaninstance new-wsmansessionoption out-default out-file out-gridview out-host out-null out-printer out-string pop-location push-location read-host receive-job register-engineevent register-objectevent register-pssessionconfiguration register-wmievent remove-computer remove-event remove-eventlog remove-item remove-itemproperty remove-job remove-module remove-psbreakpoint remove-psdrive remove-pssession remove-pssnapin remove-variable remove-wmiobject remove-wsmaninstance rename-item rename-itemproperty reset-computermachinepassword resolve-path restart-computer restart-service restore-computer resume-service select-object select-string select-xml send-mailmessage set-acl set-alias set-authenticodesignature set-content set-date set-executionpolicy set-item set-itemproperty set-location set-psbreakpoint set-psdebug set-pssessionconfiguration set-service set-strictmode set-tracesource set-variable set-wmiinstance set-wsmaninstance set-wsmanquickconfig show-eventlog sort-object split-path start-job start-process start-service start-sleep start-transaction start-transcript stop-computer stop-job stop-process stop-service stop-transcript suspend-service tee-object test-computersecurechannel test-connection test-modulemanifest test-path test-wsman trace-command undo-transaction unregister-event unregister-pssessionconfiguration update-formatdata update-list update-typedata use-transaction wait-event wait-job wait-process where-object write-debug write-error write-eventlog write-host write-output write-progress write-verbose write-warning importsystemmodules prompt psedit tabexpansion"
  return autocomplete_set
end

function shell.get_reqular()
  local symbol_reqular_exp = "[ \\t]*function[ \\t]+([_\\.\\-a-zA-Z]+[_a-zA-Z0-9]*)\\s*[\\(\\{ ]*"
  return symbol_reqular_exp
end

function shell.create_bakup(path)
  local m_code = {
    "user_shell = {}\n",
    "function user_shell.get_keywords()\n",
    "  local keywords0_set = \"alias bg bind break builtin case cd command continue declare dirs disown do done echo elif else enable esac eval exec exit export fc fg fi for function getops hash help history if in jobs kill let local logout popd pushd pwd read readonly return select set shift suspend test then time times trap type typeset ulimit umask unalias unset until wait while\"\n",
    "  local keywords1_set = \"assoc aux break call cd chcp chdir choice cls cmdextversion color com1 com2 com3 com4 con copy ctty date defined del dir do dpath echo else endlocal erase errorlevel exist exit for ftype goto if in lpt1 lpt2 lpt3 lpt4 md mkdir move not nul path pause popd prompt prn pushd rd rem ren rename rmdir set setlocal shift start time title type ver verify vol\"\n",
    "  local keywords2_set = \"append attrib chkdsk comp diskcomp\"\n",
    "  local keywords3_set = \"begin break catch continue data do dynamicparam else elseif end exit filter finally for foreach from function if in local param private process return switch throw trap try until where while add-computer add-content add-history add-member add-pssnapin add-type checkpoint-computer clear-content clear-eventlog clear-history clear-host clear-item clear-itemproperty clear-variable compare-object complete-transaction connect-wsman convertfrom-csv convertfrom-securestring convertfrom-stringdata convert-path convertto-csv convertto-html convertto-securestring convertto-xml copy-item copy-itemproperty debug-process disable-computerrestore disable-psbreakpoint disable-psremoting disable-pssessionconfiguration disable-wsmancredssp disconnect-wsman enable-computerrestore enable-psbreakpoint enable-psremoting enable-pssessionconfiguration enable-wsmancredssp enter-pssession exit-pssession export-alias export-clixml export-console export-counter export-csv export-formatdata export-modulemember export-pssession foreach-object format-custom format-list format-table format-wide get-acl get-alias get-authenticodesignature get-childitem get-command get-computerrestorepoint get-content get-counter get-credential get-culture get-date get-event get-eventlog get-eventsubscriber get-executionpolicy get-formatdata get-help get-history get-host get-hotfix get-item get-itemproperty get-job get-location get-member get-module get-pfxcertificate get-process get-psbreakpoint get-pscallstack get-psdrive get-psprovider get-pssession get-pssessionconfiguration get-pssnapin get-random get-service get-tracesource get-transaction get-uiculture get-unique get-variable get-verb get-winevent get-wmiobject get-wsmancredssp get-wsmaninstance group-object import-alias import-clixml import-counter import-csv import-localizeddata import-module import-pssession invoke-command invoke-expression invoke-history invoke-item invoke-wmimethod invoke-wsmanaction join-path limit-eventlog measure-command measure-object move-item move-itemproperty new-alias new-event new-eventlog new-item new-itemproperty new-module new-modulemanifest new-object new-psdrive new-pssession new-pssessionoption new-service new-timespan new-variable new-webserviceproxy new-wsmaninstance new-wsmansessionoption out-default out-file out-gridview out-host out-null out-printer out-string pop-location push-location read-host receive-job register-engineevent register-objectevent register-pssessionconfiguration register-wmievent remove-computer remove-event remove-eventlog remove-item remove-itemproperty remove-job remove-module remove-psbreakpoint remove-psdrive remove-pssession remove-pssnapin remove-variable remove-wmiobject remove-wsmaninstance rename-item rename-itemproperty reset-computermachinepassword resolve-path restart-computer restart-service restore-computer resume-service select-object select-string select-xml send-mailmessage set-acl set-alias set-authenticodesignature set-content set-date set-executionpolicy set-item set-itemproperty set-location set-psbreakpoint set-psdebug set-pssessionconfiguration set-service set-strictmode set-tracesource set-variable set-wmiinstance set-wsmaninstance set-wsmanquickconfig show-eventlog sort-object split-path start-job start-process start-service start-sleep start-transaction start-transcript stop-computer stop-job stop-process stop-service stop-transcript suspend-service tee-object test-computersecurechannel test-connection test-modulemanifest test-path test-wsman trace-command undo-transaction unregister-event unregister-pssessionconfiguration update-formatdata update-list update-typedata use-transaction wait-event wait-job wait-process where-object write-debug write-error write-eventlog write-host write-output write-progress write-verbose write-warning ac asnp cat cd chdir clc clear clhy cli clp cls clv compare copy cp cpi cpp cvpa dbp del diff dir ebp echo epal epcsv epsn erase etsn exsn fc fl foreach ft fw gal gbp gc gci gcm gcs gdr ghy gi gjb gl gm gmo gp gps group gsn gsnp gsv gu gv gwmi h help history icm iex ihy ii ipal ipcsv ipmo ipsn ise iwmi kill lp ls man md measure mi mkdir more mount move mp mv nal ndr ni nmo nsn nv ogv oh popd ps pushd pwd r rbp rcjb rd rdr ren ri rjb rm rmdir rmo rni rnp rp rsn rsnp rv rvpa rwmi sajb sal saps sasv sbp sc select set si sl sleep sort sp spjb spps spsv start sv swmi tee type where wjb write\"\n",
    "  local keywords4_set = \"importsystemmodules prompt psedit tabexpansion\"\n",
    "  return keywords0_set,keywords1_set,keywords2_set,keywords3_set,keywords4_set\n",
    "end\n",
    "\n",
    "function user_shell.get_autocomplete()\n",
    "  local autocomplete_set = \"AUTOLOAD BEGIN CHECK CORE DESTROY END EQ GE GT INIT LE LT NE NULL UNITCHECK __DATA__ __END__ __FILE__ __LINE__ __PACKAGE__ __SUB__ abs accept alarm and append assoc atan2 attrib aux bind binmode bless break break call caller cd chcp chdir chdir chkdsk chmod choice chomp chop chown chr chroot close closedir cls cmdextversion cmp color com1 com2 com3 com4 comp con connect continue copy cos crypt ctty date dbmclose dbmopen default defined defined del delete die dir diskcomp do do dpath dump each echo else else elsif endgrent endhostent endlocal endnetent endprotoent endpwent endservent eof eq erase errorlevel eval exec exist exists exit exit exp fc fcntl fileno flock for for foreach fork format formline ftype ge getc getgrent getgrgid getgrnam gethostbyaddr gethostbyname gethostent getlogin getnetbyaddr getnetbyname getnetent getpeername getpgrp getppid getpriority getprotobyname getprotobynumber getprotoent getpwent getpwnam getpwuid getservbyname getservbyport getservent getsockname getsockopt given glob gmtime goto goto grep gt hex if if in index int ioctl join keys kill last lc lcfirst le length link listen local localtime lock log lpt1 lpt2 lpt3 lpt4 lstat lt map md mkdir mkdir move msgctl msgget msgrcv msgsnd my ne next no not not nul oct open opendir or ord our pack package path pause pipe pop popd pos print printf prn prompt prototype push pushd qu quotemeta rand rd read readdir readline readlink readpipe recv redo ref rem ren rename rename require reset return reverse rewinddir rindex rmdir rmdir say scalar seek seekdir select semctl semget semop send set setgrent sethostent setlocal setnetent setpgrp setpriority setprotoent setpwent setservent setsockopt shift shift shmctl shmget shmread shmwrite shutdown sin sleep socket socketpair sort splice split sprintf sqrt srand start stat state study sub substr symlink syscall sysopen sysread sysseek system syswrite tell telldir tie tied time time times title truncate type uc ucfirst umask undef unless unlink unpack unshift untie until use utime values vec ver verify vol wait waitpid wantarray warn when while write xor add-computer add-content add-history add-member add-pssnapin add-type checkpoint-computer clear-content clear-eventlog clear-history clear-host clear-item clear-itemproperty clear-variable compare-object complete-transaction connect-wsman convertfrom-csv convertfrom-securestring convertfrom-stringdata convert-path convertto-csv convertto-html convertto-securestring convertto-xml copy-item copy-itemproperty debug-process disable-computerrestore disable-psbreakpoint disable-psremoting disable-pssessionconfiguration disable-wsmancredssp disconnect-wsman enable-computerrestore enable-psbreakpoint enable-psremoting enable-pssessionconfiguration enable-wsmancredssp enter-pssession exit-pssession export-alias export-clixml export-console export-counter export-csv export-formatdata export-modulemember export-pssession foreach-object format-custom format-list format-table format-wide get-acl get-alias get-authenticodesignature get-childitem get-command get-computerrestorepoint get-content get-counter get-credential get-culture get-date get-event get-eventlog get-eventsubscriber get-executionpolicy get-formatdata get-help get-history get-host get-hotfix get-item get-itemproperty get-job get-location get-member get-module get-pfxcertificate get-process get-psbreakpoint get-pscallstack get-psdrive get-psprovider get-pssession get-pssessionconfiguration get-pssnapin get-random get-service get-tracesource get-transaction get-uiculture get-unique get-variable get-verb get-winevent get-wmiobject get-wsmancredssp get-wsmaninstance group-object import-alias import-clixml import-counter import-csv import-localizeddata import-module import-pssession invoke-command invoke-expression invoke-history invoke-item invoke-wmimethod invoke-wsmanaction join-path limit-eventlog measure-command measure-object move-item move-itemproperty new-alias new-event new-eventlog new-item new-itemproperty new-module new-modulemanifest new-object new-psdrive new-pssession new-pssessionoption new-service new-timespan new-variable new-webserviceproxy new-wsmaninstance new-wsmansessionoption out-default out-file out-gridview out-host out-null out-printer out-string pop-location push-location read-host receive-job register-engineevent register-objectevent register-pssessionconfiguration register-wmievent remove-computer remove-event remove-eventlog remove-item remove-itemproperty remove-job remove-module remove-psbreakpoint remove-psdrive remove-pssession remove-pssnapin remove-variable remove-wmiobject remove-wsmaninstance rename-item rename-itemproperty reset-computermachinepassword resolve-path restart-computer restart-service restore-computer resume-service select-object select-string select-xml send-mailmessage set-acl set-alias set-authenticodesignature set-content set-date set-executionpolicy set-item set-itemproperty set-location set-psbreakpoint set-psdebug set-pssessionconfiguration set-service set-strictmode set-tracesource set-variable set-wmiinstance set-wsmaninstance set-wsmanquickconfig show-eventlog sort-object split-path start-job start-process start-service start-sleep start-transaction start-transcript stop-computer stop-job stop-process stop-service stop-transcript suspend-service tee-object test-computersecurechannel test-connection test-modulemanifest test-path test-wsman trace-command undo-transaction unregister-event unregister-pssessionconfiguration update-formatdata update-list update-typedata use-transaction wait-event wait-job wait-process where-object write-debug write-error write-eventlog write-host write-output write-progress write-verbose write-warning importsystemmodules prompt psedit tabexpansion\"\n",
    "  return autocomplete_set\n",
    "end\n",
    "\n",
    "function user_shell.get_reqular()\n",
    "  local symbol_reqular_exp = \"[ \\\\t]*function[ \\\\t]+([_\\\\.\\\\-a-zA-Z]+[_a-zA-Z0-9]*)\\\\s*[\\\\(\\\\{ ]*\"\n",
    "  return symbol_reqular_exp\n",
    "end\n",
    "return user_shell",
  }
  local shell_code = table.concat(m_code)
  eu_core.save_file(path, shell_code)
  shell_code = nil
  m_code = nil
end

return shell