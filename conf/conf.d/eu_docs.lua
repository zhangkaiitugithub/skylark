require("eu_core")
local conf_path = eu_core.script_path()
local user_file = (conf_path.. "\\script-opts\\user_docs.lua")
if (not eu_core.file_exists(user_file)) then
  local opt = (conf_path.. "\\script-opts")
  if (not eu_core.euapi.eu_exist_path(opt)) then
    eu_core.mkdir(opt)
  end
  local user_code = {
    "--[=[\n",
    "Using Lua script, you can add syntax parser by yourself.\n",
    "The following is an example.\n",
    "]=]\n",
    "\n",
    "user_docs = {}\n",
    "require(\"eu_core\")\n",
    "\n",
    "function user_docs.get_docs()\n",
    "  local e,i = eu_core.enum{\n",
    "    DOCTYPE_END = 0,\n",
    "    DOCTYPE_ASM = 1,\n",
    "    DOCTYPE_AU3 = 2,\n",
    "    DOCTYPE_CS = 3,\n",
    "    DOCTYPE_CPP = 4,\n",
    "    DOCTYPE_CMAKE = 5,\n",
    "    DOCTYPE_CSS = 6,\n",
    "    DOCTYPE_COBOL = 7,\n",
    "    DOCTYPE_DIFF = 8,\n",
    "    DOCTYPE_FORTRAN = 9,\n",
    "    DOCTYPE_GO = 10,\n",
    "    DOCTYPE_HTML = 11,\n",
    "    DOCTYPE_JSON = 12,\n",
    "    DOCTYPE_JAVA = 13,\n",
    "    DOCTYPE_JAVASCRIPT = 14,\n",
    "    DOCTYPE_JULIA = 15,\n",
    "    DOCTYPE_KOTLIN = 16,\n",
    "    DOCTYPE_LISP = 17,\n",
    "    DOCTYPE_LOG = 18,\n",
    "    DOCTYPE_LUA = 19,\n",
    "    DOCTYPE_MAKEFILE = 20,\n",
    "    DOCTYPE_MARKDOWN = 21,\n",
    "    DOCTYPE_NIM = 22,\n",
    "    DOCTYPE_PERL = 23,\n",
    "    DOCTYPE_PROPERTIES = 24,\n",
    "    DOCTYPE_PYTHON = 25,\n",
    "    DOCTYPE_REDIS = 26,\n",
    "    DOCTYPE_RUBY = 27,\n",
    "    DOCTYPE_RUST = 28,\n",
    "    DOCTYPE_SQL = 29,\n",
    "    DOCTYPE_SH = 30,\n",
    "    DOCTYPE_SWIFT = 31,\n",
    "    DOCTYPE_TXT = 32,\n",
    "    DOCTYPE_XML = 33,\n",
    "    DOCTYPE_YAML = 34,\n",
    "    DOCTYPE_CAML = 35,\n",
    "    DOCTYPE_MATLAB = 36,\n",
    "  }\n",
    "  local ffi_null = eu_core.ffi.cast(\"void *\", nil)\n",
    "  local docs_t = eu_core.ffi.new (\"doctype_t[?]\", i,\n",
    "    {\n",
    "      {\n",
    "          e.DOCTYPE_ASM,\n",
    "          \"asm\",\n",
    "          \";*.asm;\",\n",
    "          \"Assembly\",\n",
    "          0,\n",
    "          -1,\n",
    "          eu_core.euapi.on_doc_init_list,\n",
    "          eu_core.euapi.on_doc_init_after_asm,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_cpp_like,\n",
    "          eu_core.euapi.on_doc_reload_list_reqular,\n",
    "          eu_core.euapi.on_doc_click_list_jmp,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_AU3,\n",
    "          \"au3\",\n",
    "          \";*.au3;\",\n",
    "          \"Autoit3 Script\",\n",
    "          0,\n",
    "          -1,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_cpp_like,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_CAML,\n",
    "          \"caml\",\n",
    "          \";*.ml;*.mli;*.sml;*.thy;\",\n",
    "          \"Caml Language\",\n",
    "          0,\n",
    "          -1,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_cpp_like,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_CS,\n",
    "          \"cshape\",\n",
    "          \";*.cs;\",\n",
    "          \"C#\",\n",
    "          0,\n",
    "          -1,\n",
    "          eu_core.euapi.on_doc_init_list,\n",
    "          eu_core.euapi.on_doc_init_after_cs,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keydown_jmp,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_cpp_like,\n",
    "          eu_core.euapi.on_doc_reload_list_reqular,\n",
    "          eu_core.euapi.on_doc_click_list_jmp,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_CPP,\n",
    "          \"cpp\",\n",
    "          \";*.h;*.hh;*.hpp;*.c;*.cc;*.cpp;*.cxx;*.rc;*.rc2;*.dlg;\",\n",
    "          \"C/C++\",\n",
    "          0,\n",
    "          -1,\n",
    "          eu_core.euapi.on_doc_init_list,\n",
    "          eu_core.euapi.on_doc_init_after_cpp,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keydown_jmp,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_cpp_like,\n",
    "          eu_core.euapi.on_doc_reload_list_reqular,\n",
    "          eu_core.euapi.on_doc_click_list_jmp,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_CMAKE,\n",
    "          \"cmake\",\n",
    "          \";CMakeLists.txt;*.cmake;*.ctest;CMakeLists;\",\n",
    "          \"CMake\",\n",
    "          0,\n",
    "          -1,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_init_after_cmake,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_cmake_like,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_CSS,\n",
    "          \"css\",\n",
    "          \";*.css;*.scss;*.less;*.hss;\",\n",
    "          \"CSS\",\n",
    "          0,\n",
    "          -1,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_init_after_css,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_css_like,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_COBOL,\n",
    "          \"cobol\",\n",
    "          \";*.cobol;*.cob;\",\n",
    "          \"Cobol\",\n",
    "          0,\n",
    "          -1,\n",
    "          eu_core.euapi.on_doc_init_list,\n",
    "          eu_core.euapi.on_doc_init_after_cobol,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_cpp_like,\n",
    "          eu_core.euapi.on_doc_reload_list_reqular,\n",
    "          eu_core.euapi.on_doc_click_list_jmp,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_DIFF,\n",
    "          ffi_null,\n",
    "          \";*.diff;*.patch;\",\n",
    "          \"Diff File\",\n",
    "          0,\n",
    "          -1,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_init_after_diff,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_identation,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_FORTRAN,\n",
    "          \"fortran\",\n",
    "          \";*.f;*.for;*.ftn;*.fpp;*.f90;*.f95;*.f03;*.f08;*.f2k;*.hf;\",\n",
    "          \"Fortran Source\",\n",
    "          0,\n",
    "          -1,\n",
    "          eu_core.euapi.on_doc_init_list,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_cpp_like,\n",
    "          eu_core.euapi.on_doc_reload_list_reqular,\n",
    "          eu_core.euapi.on_doc_click_list_jmp,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_GO,\n",
    "          \"golang\",\n",
    "          \";*.go;\",\n",
    "          \"Golang\",\n",
    "          0,\n",
    "          -1,\n",
    "          eu_core.euapi.on_doc_init_list,\n",
    "          eu_core.euapi.on_doc_init_after_go,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keydown_jmp,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_cpp_like,\n",
    "          eu_core.euapi.on_doc_reload_list_reqular,\n",
    "          eu_core.euapi.on_doc_click_list_jmp,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_HTML,\n",
    "          \"html\",\n",
    "          \";*.html;*.htm;*.shtml;*.xhtml;*.phtml;*.htt;*.htd;*.hta;*.asp;*.php;\",\n",
    "          \"HTML\",\n",
    "          0,\n",
    "          -1,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_init_after_html,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_html_like,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_JSON,\n",
    "          \"json\",\n",
    "          \";*.json;*.eslintrc;*.jshintrc;*.jsonld;*.ipynb;*.babelrc;*.prettierrc;*.stylelintrc;*.jsonc;*jscop;\",\n",
    "          \"JSON\",\n",
    "          0,\n",
    "          -1,\n",
    "          eu_core.euapi.on_doc_init_tree,\n",
    "          eu_core.euapi.on_doc_init_after_json,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_json_like,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_reload_tree_json,\n",
    "          eu_core.euapi.on_doc_click_tree_json,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_JAVA,\n",
    "          \"java\",\n",
    "          \";*.java;*.jad;*.pde;\",\n",
    "          \"Java\",\n",
    "          0,\n",
    "          -1,\n",
    "          eu_core.euapi.on_doc_init_list,\n",
    "          eu_core.euapi.on_doc_init_after_java,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keydown_jmp,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_cpp_like,\n",
    "          eu_core.euapi.on_doc_reload_list_reqular,\n",
    "          eu_core.euapi.on_doc_click_list_jmp,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_JAVASCRIPT,\n",
    "          \"javascript\",\n",
    "          \";*.js;*.es;*.ts;*.jse;*.jsm;*.mjs;*.qs;\",\n",
    "          \"JavaScript\",\n",
    "          0,\n",
    "          -1,\n",
    "          eu_core.euapi.on_doc_init_list,\n",
    "          eu_core.euapi.on_doc_init_after_js,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keydown_jmp,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_cpp_like,\n",
    "          eu_core.euapi.on_doc_reload_list_reqular,\n",
    "          eu_core.euapi.on_doc_click_list_jmp,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_JULIA,\n",
    "          \"julia\",\n",
    "          \";*.jl;\",\n",
    "          \"Julia Script\",\n",
    "          0,\n",
    "          -1,\n",
    "          eu_core.euapi.on_doc_init_list,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_cpp_like,\n",
    "          eu_core.euapi.on_doc_reload_list_reqular,\n",
    "          eu_core.euapi.on_doc_click_list_jmp,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_KOTLIN,\n",
    "          \"kotlin\",\n",
    "          \";*.kt;*.kts;\",\n",
    "          \"Kotlin\",\n",
    "          0,\n",
    "          -1,\n",
    "          eu_core.euapi.on_doc_init_list,\n",
    "          eu_core.euapi.on_doc_init_after_java,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keydown_jmp,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_cpp_like,\n",
    "          eu_core.euapi.on_doc_reload_list_reqular,\n",
    "          eu_core.euapi.on_doc_click_list_jmp,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_LISP,\n",
    "          \"lisp\",\n",
    "          \";*.lsp;\",\n",
    "          \"Lisp\",\n",
    "          0,\n",
    "          -1,\n",
    "          eu_core.euapi.on_doc_init_list,\n",
    "          eu_core.euapi.on_doc_init_after_lisp,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_cpp_like,\n",
    "          eu_core.euapi.on_doc_reload_list_reqular,\n",
    "          eu_core.euapi.on_doc_click_list_jmp,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_LOG,\n",
    "          \"log\",\n",
    "          \";*.log;changelog;\",\n",
    "          \"Log File\",\n",
    "          0,\n",
    "          -1,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_init_after_log,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_identation,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_LUA,\n",
    "          \"luascript\",\n",
    "          \";*.lua;\",\n",
    "          \"Lua\",\n",
    "          0,\n",
    "          -1,\n",
    "          eu_core.euapi.on_doc_init_result_list,\n",
    "          eu_core.euapi.on_doc_init_after_lua,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_cpp_like,\n",
    "          eu_core.euapi.on_doc_reload_list_reqular,\n",
    "          eu_core.euapi.on_doc_click_list_jmp,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_MAKEFILE,\n",
    "          \"makefile\",\n",
    "          \";*.gcc;*.msvc;*.msc;*.mk;*.mak;*.configure;*.mozbuild;*.build;Makefile;configure;\",\n",
    "          \"Makefile\",\n",
    "          0,\n",
    "          -1,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_init_after_makefile,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_makefile_like,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_MARKDOWN,\n",
    "          ffi_null,\n",
    "          \";*.md;*.markdown;readme;\",\n",
    "          \"Markdown\",\n",
    "          0,\n",
    "          -1,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_init_after_markdown,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_markdown_like,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_MATLAB,\n",
    "          \"matlab\",\n",
    "          \";*.m;*.sce;*.sci;\",\n",
    "          \"Matlab Source\",\n",
    "          0,\n",
    "          -1,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_cpp_like,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_NIM,\n",
    "          \"nim\",\n",
    "          \";*.nim;\",\n",
    "          \"Nim File\",\n",
    "          0,\n",
    "          -1,\n",
    "          eu_core.euapi.on_doc_init_list,\n",
    "          eu_core.euapi.on_doc_init_after_nim,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_cpp_like,\n",
    "          eu_core.euapi.on_doc_reload_list_reqular,\n",
    "          eu_core.euapi.on_doc_click_list_jmp,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_PERL,\n",
    "          \"perl\",\n",
    "          \";*.pl;*.perl;\",\n",
    "          \"Perl\",\n",
    "          0,\n",
    "          -1,\n",
    "          eu_core.euapi.on_doc_init_list,\n",
    "          eu_core.euapi.on_doc_init_after_perl,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_cpp_like,\n",
    "          eu_core.euapi.on_doc_reload_list_reqular,\n",
    "          eu_core.euapi.on_doc_click_list_jmp,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_PROPERTIES,\n",
    "          ffi_null,\n",
    "          \";*.properties;*.ini;*.inf;*.cfg;*.cnf;*.conf;\",\n",
    "          \"Properties File\",\n",
    "          0,\n",
    "          -1,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_init_after_properties,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_PYTHON,\n",
    "          \"python\",\n",
    "          \";*.py;*.pyw;*.pyx;*.pxd;*.pxi;\",\n",
    "          \"Python\",\n",
    "          0,\n",
    "          -1,\n",
    "          eu_core.euapi.on_doc_init_list,\n",
    "          eu_core.euapi.on_doc_init_after_python,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_cpp_like,\n",
    "          eu_core.euapi.on_doc_reload_list_reqular,\n",
    "          eu_core.euapi.on_doc_click_list_jmp,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_REDIS,\n",
    "          \"redis\",\n",
    "          \";*.redis;\",\n",
    "          \"Redis\",\n",
    "          0,\n",
    "          -1,\n",
    "          eu_core.euapi.on_doc_init_tree,\n",
    "          eu_core.euapi.on_doc_init_after_redis,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keydown_redis,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_redis_like,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_reload_tree_redis,\n",
    "          eu_core.euapi.on_doc_click_tree_redis,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_RUBY,\n",
    "          \"ruby\",\n",
    "          \";*.rb;\",\n",
    "          \"Ruby\",\n",
    "          0,\n",
    "          -1,\n",
    "          eu_core.euapi.on_doc_init_list,\n",
    "          eu_core.euapi.on_doc_init_after_ruby,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_cpp_like,\n",
    "          eu_core.euapi.on_doc_reload_list_reqular,\n",
    "          eu_core.euapi.on_doc_click_list_jmp,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_RUST,\n",
    "          \"rust\",\n",
    "          \";*.rs;\",\n",
    "          \"Rust\",\n",
    "          0,\n",
    "          -1,\n",
    "          eu_core.euapi.on_doc_init_list,\n",
    "          eu_core.euapi.on_doc_init_after_rust,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_cpp_like,\n",
    "          eu_core.euapi.on_doc_reload_list_reqular,\n",
    "          eu_core.euapi.on_doc_click_list_jmp,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_SQL,\n",
    "          \"sql\",\n",
    "          \";*.sql;*.prc;\",\n",
    "          \"SQL\",\n",
    "          0,\n",
    "          -1,\n",
    "          eu_core.euapi.on_doc_init_result,\n",
    "          eu_core.euapi.on_doc_init_after_sql,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keydown_sql,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_sql_like,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_reload_tree_sql,\n",
    "          eu_core.euapi.on_doc_click_tree_sql,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_SH,\n",
    "          \"shell\",\n",
    "          \";*.bat;*.cmd;*.nt;*.ps1;*.psc1;*.psd1;*.psm1;*.sh;*.mozconfig;\",\n",
    "          \"Shell\",\n",
    "          0,\n",
    "          -1,\n",
    "          eu_core.euapi.on_doc_init_list_sh,\n",
    "          eu_core.euapi.on_doc_init_after_shell_sh,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general_sh,\n",
    "          eu_core.euapi.on_doc_cpp_like,\n",
    "          eu_core.euapi.on_doc_reload_list_sh,\n",
    "          eu_core.euapi.on_doc_click_list_jump_sh,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_SWIFT,\n",
    "          \"swift\",\n",
    "          \";*.swift;\",\n",
    "          \"Swift\",\n",
    "          0,\n",
    "          -1,\n",
    "          eu_core.euapi.on_doc_init_list,\n",
    "          eu_core.euapi.on_doc_init_after_swift,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keydown_jmp,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_cpp_like,\n",
    "          eu_core.euapi.on_doc_reload_list_reqular,\n",
    "          eu_core.euapi.on_doc_click_list_jmp,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_TXT,\n",
    "          ffi_null,\n",
    "          \";*.txt;\",\n",
    "          \"Text\",\n",
    "          0,\n",
    "          -1,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_identation,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_XML,\n",
    "          ffi_null,\n",
    "          \";*.xml;*.xsl;*.svg;*.xul;*.xsd;*.dtd;*.xslt;*.axl;*.xrc;*.rdf;*.manifest;\",\n",
    "          \"XML\",\n",
    "          0,\n",
    "          -1,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_init_after_xml,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_xml_like,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_YAML,\n",
    "          ffi_null,\n",
    "          \";*.yaml;*.yml;*.clang-tidy;*.mir;*.apinotes;*.ifs;*.clang-format;_clang-format;\",\n",
    "          \"YAML\",\n",
    "          0,\n",
    "          -1,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_init_after_yaml,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          eu_core.euapi.on_doc_keyup_general,\n",
    "          eu_core.euapi.on_doc_identation,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "          ffi_null,\n",
    "      },\n",
    "      {\n",
    "          e.DOCTYPE_END,\n",
    "          ffi_null,\n",
    "      }\n",
    "    })\n",
    "    e = nil\n",
    "    return docs_t\n",
    "end\n",
    "return user_docs",
  }
  local shell_code = table.concat(user_code)
  eu_core.save_file(user_file, shell_code)
  shell_code = nil
  user_code = nil
end
require("user_docs")

function string:split(delimiter)
  local result = {}
  local from  = 1
  local delim_from, delim_to = string.find(self, delimiter, from)
  while delim_from do
    table.insert(result, string.sub(self, from, delim_from-1))
    from = delim_to + 1
    delim_from, delim_to = string.find(self, delimiter, from)
  end
  table.insert(result, string.sub(self, from))
  return result
end


function fetch_doctype(s)
  local m_config = eu_core.ffi.cast('doctype_t *', s)
  local m_req = nil
  local m_key0,m_key1,m_key2,m_key3,m_key4,m_key5
  local m_set = nil
  local m_styles = nil
  local m_line_comment = nil
  local m_block_comment = nil
  local calltip = nil
  local reqular = nil
  local tab_width = nil
  local tab_convert_spaces = nil

  if (m_config.filetypename ~= nil) then
    local typename = eu_core.ffi.string(m_config.filetypename)
    local tmp_file = (conf_path .. "\\script-opts\\user_" .. typename .. ".lua")
    if (not eu_core.file_exists(tmp_file)) then
      m_req = require(typename);
      if (m_req.create_bakup ~= nil) then m_req.create_bakup(tmp_file) end
    else
      m_req = require("user_" .. typename);
    end
  end
  if (m_req ~= nil) then
    if (m_req.get_tabattr ~= nil) then
      tab_width,tab_convert_spaces = m_req.get_tabattr()
    end
    if (tab_width == nil) then
      tab_width = 0
    end
    if (tab_convert_spaces == nil) then
      tab_convert_spaces = -1
    end
    m_config.tab_width = tab_width
    m_config.tab_convert_spaces = tab_convert_spaces
    if (m_req.get_calltip ~= nil) then
      calltip = m_req.get_calltip()
    end
    if (calltip ~= nil) then
      for key, value in ipairs(calltip) do
        local ss = string.split(value, "|")
        local val = string.gsub(ss[2], "\\n", "\n")
        eu_core.euapi.eu_init_calltip_tree(m_config, ss[1], val)
      end
    end
    if (m_req.get_keywords ~= nil) then
      m_key0,m_key1,m_key2,m_key3,m_key4,m_key5 = m_req.get_keywords()
    end
    if (m_key0 ~= nil) then
      m_config.keywords0 = eu_core.ffi.cast('const char *', m_key0)
    end
    if (m_key1 ~= nil) then
      m_config.keywords1 = eu_core.ffi.cast('const char *', m_key1)
    end
    if (m_key2 ~= nil) then
      m_config.keywords2 = eu_core.ffi.cast('const char *', m_key2)
    end
    if (m_key3 ~= nil) then
      m_config.keywords3 = eu_core.ffi.cast('const char *', m_key3)
    end
    if (m_key4 ~= nil) then
      m_config.keywords4 = eu_core.ffi.cast('const char *', m_key4)
    end
    if (m_key5 ~= nil) then
      m_config.keywords5 = eu_core.ffi.cast('const char *', m_key5)
    end
    if (m_req.init_after_callback ~= nil) then
      if (m_config.fn_init_after == nil) then m_config.fn_init_after = eu_core.ffi.cast('init_after_ptr', m_req.init_after_callback) end
    end
    if (m_req.get_reqular ~= nil) then
      reqular = m_req.get_reqular()
    end
    if (reqular ~= nil) then
      m_config.reqular_exp = eu_core.ffi.cast('const char *', reqular)
      if (m_config.fn_init_before == nil) then m_config.fn_init_before = eu_core.euapi.on_doc_init_list end
      if (m_config.fn_reload_symlist == nil) then m_config.fn_reload_symlist = eu_core.euapi.on_doc_reload_list_reqular end
      if (m_config.fn_click_symlist == nil) then m_config.fn_click_symlist = eu_core.euapi.on_doc_click_list_jmp end
    end
    if (m_req.get_autocomplete ~= nil) then
      m_set = m_req.get_autocomplete()
    end
    if (m_set ~= nil) then
      local dst = string.split(m_set, " +")
      for i = 1, #dst do
        eu_core.euapi.eu_init_completed_tree(m_config, dst[i])
      end
    end
    local count = 0;
    if (m_req.get_styles ~= ni) then
        m_styles = m_req.get_styles()
        if (m_styles ~= nil) then
          for k, v in pairs(m_styles) do
            count = count + 1
          end
        end
    end
    if (count > 0) then
      local bit = require("bit")
      for k, v in pairs(m_styles) do
        if (k < 32) then
          m_config.style.type[k] = k
          m_config.style.color[k] = v
          m_config.style.mask = bit.bor(m_config.style.mask,bit.lshift(1,k))
        end
      end
    end
    if (m_req.get_comments ~= ni) then
        m_line_comment,m_block_comment = m_req.get_comments()
        if (m_line_comment ~= nil and m_block_comment ~= nil) then
          m_config.comment.initialized = true
          m_config.comment.line = eu_core.ffi.cast("const char *", m_line_comment)
          m_config.comment.block = eu_core.ffi.cast("const char *", m_block_comment)
        end
    end
  end
end

function fill_my_docs()
  local my_doc_config = user_docs.get_docs()
  local my_size = eu_core.ffi.sizeof(my_doc_config)/eu_core.ffi.sizeof("doctype_t")
  for i=0,my_size-1 do
    fetch_doctype(my_doc_config[i])
  end
  local doc_ptr = tonumber(eu_core.ffi.cast("uintptr_t", my_doc_config))
  return doc_ptr
end