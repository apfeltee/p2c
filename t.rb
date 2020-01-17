
$varnames = []
$funcnames = []

FALLBREAK = nil
BRK_RIGHT = nil
AVOIDNAME = nil
AVOIDGLOB = nil
WARNNAME = nil
NOSIDEEFF = nil
STRUCTF = nil
STRLAPF = nil
LEAVEALONE = nil
DETERMF = nil
NEEDSTATIC = nil
MAC_VAR = nil
MAC_CONST = nil
MAC_FIELD = nil
MAC_FUNC = nil
WARNLIBR = nil
FSPCARG1 = nil
FSPCARG2 = nil
FSPCARG3 = nil

def method_missing(m, *a, **kw)
  m = m.to_s
  $varnames.push(m);
  return m
end

def Object.const_missing(name)
  return name
end

def func(s)
  $funcnames.push(s)
  return s
end

items = [
['S', 'R', "DEBUG",            func(debug),             0],
['I', 'R', "SHOWPROGRESS",     func(showprogress),      0],
['S', 'V', "TOKENTRACE",       func(tokentrace),        0],
['S', 'V', "QUIET",            func(quietmode),         0],
['S', 'V', "COPYSOURCE",       func(copysource),        0],
['I', 'R', "MAXERRORS",	  func(maxerrors),	      0],
['X', ' ', "INCLUDE",          nil,               2],
['U', 'T', "LANGUAGE",          language,         40],
['S', 'V', "MODULA2",          func(modula2),          -1],
['S', 'T', "INTEGER16",        func(integer16),        -1],
['S', 'T', "DOUBLEREALS",      func(doublereals),      -1],
['S', 'V', "UNSIGNEDCHAR",     func(unsignedchar),     -1],
['S', 'V', "NEEDSIGNEDBYTE",   func(needsignedbyte),    0],
['S', 'V', "PASCALENUMSIZE",   func(pascalenumsize),   -1],
['S', 'V', "NESTEDCOMMENTS",   func(nestedcomments),   -1],
['S', 'V', "IMPORTALL",        func(importall),        -1],
['S', 'V', "IMPLMODULES",      func(implementationmodules), -1],
['S', 'V', "TURBOOBJECTS",     func(turboobjects),     -1],
['A', 'V', "EXTERNWORDS",	  func(externwords),	      0],
['A', 'V', "CEXTERNWORDS",	  func(cexternwords),      0],
['S', 'V', "PASCALSIGNIF",     func(pascalsignif),     -1],
['S', 'V', "PASCALCASESENS",   func(pascalcasesens),   -1],
['S', 'V', "DOLLARIDENTS",     func(dollar_idents),    -1],
['S', 'V', "IGNORENONALPHA",   func(ignorenonalpha),   -1],
['I', 'V', "SEEKBASE",         func(seek_base),        -1],
['S', 'V', "LOWPRECLOGICALS",  func(lowpreclogicals),  -1],
['S', 'V', "COMMONEXTERN",     func(commonextern),      0],
['I', 'R', "INPUTTABSIZE",     func(intabsize),         8],
['X', 'V', "REPLACEBEFORE",    func(replacebefore),     4],
['S', 'T', "ANSIC",            func(ansiC),            -1],
['S', 'T', "C++",              func(cplus),            -1],
['S', 'T', "VOID*",            func(voidstar),         -1],
['S', 'T', "HASSIGNEDCHAR",    func(hassignedchar),    -1],
['S', 'V', "CASTNULL",         func(castnull),         -1],
['S', 'V', "COPYSTRUCTS",      func(copystructs),      -1],
['S', 'V', "VARIABLEARRAYS",   func(variablearrays),   -1],
['S', 'V', "INITPACSTRINGS",   func(initpacstrings),   -1],
['S', 'V', "REUSEFIELDNAMES",  func(reusefieldnames),   1],
['S', 'V', "USEVEXTERN",       func(usevextern),        1],
['S', 'V', "CSIGNIF",          func(csignif),          -1],
['S', 'V', "USEANYPTRMACROS",  func(useAnyptrMacros),  -1],
['S', 'V', "USEPPMACROS",      func(usePPMacros),      -1],
['C', 'V', "MAINTYPE",          maintype,         40],
['X', 'V', "REPLACEAFTER",     func(replaceafter),      4],


['U', 'T', "TARGET",            target,           40],
['S', 'T', "SIGNEDCHAR",       func(signedchars),      -1],
['S', 'T', "SIGNEDFIELD",      func(signedfield),      -1],
['S', 'T', "SIGNEDSHIFT",      func(signedshift),      -1],
['I', 'T', "CHARSIZE",         func(sizeof_char),       0],
['I', 'T', "SHORTSIZE",        func(sizeof_short),      0],
['I', 'T', "INTSIZE",          func(sizeof_int),        0],
['I', 'T', "LONGSIZE",         func(sizeof_long),       0],
['I', 'T', "PTRSIZE",          func(sizeof_pointer),    0],
['I', 'T', "DOUBLESIZE",       func(sizeof_double),     0],
['I', 'T', "FLOATSIZE",        func(sizeof_float),      0],
['I', 'T', "ENUMSIZE",         func(sizeof_enum),       0],
['S', 'T', "SIZE_T_LONG",      func(size_t_long),      -1],


['S', 'V', "NULLSTMTLINE",     func(nullstmtline),      0],
['S', 'V', "BRACESALWAYS",     func(bracesalways),     -1],
['S', 'V', "BRACELINE",        func(braceline),        -1],
['S', 'V', "BRACECOMBINE",     func(bracecombine),      0],
['S', 'V', "BRACEELSE",        func(braceelse),         0],
['S', 'V', "BRACEELSELINE",    func(braceelseline),     0],
['S', 'V', "ELSEIF",           func(elseif),           -1],
['S', 'V', "NEWLINEFUNCS",     func(newlinefunctions),  0],


['I', 'R', "PHYSTABSIZE",      func(phystabsize),       8],
['D', 'R', "INDENT",           func(tabsize),           2],
['D', 'R', "BLOCKINDENT",      func(blockindent),       0],
['D', 'R', "BODYINDENT",       func(bodyindent),        0],
['D', 'R', "FUNCARGINDENT",    func(argindent),      1000],
['D', 'R', "OPENBRACEINDENT",  func(openbraceindent),   0],
['D', 'R', "CLOSEBRACEINDENT", func(closebraceindent),  0],
['D', 'R', "FUNCOPENINDENT",   func(funcopenindent),    0],
['D', 'R', "FUNCCLOSEINDENT",  func(funccloseindent),   0],
['D', 'R', "SWITCHINDENT",     func(switchindent),      0],
['D', 'R', "CASEINDENT",       func(caseindent),       -2],
['D', 'R', "LABELINDENT",      func(labelindent),    1000],
['D', 'R', "STRUCTINDENT",     func(structindent),      0],
['D', 'R', "STRUCTINITINDENT", func(structinitindent),  0],
['D', 'R', "EXTRAINITINDENT",  func(extrainitindent),   2],
['I', 'R', "EXTRAINDENT",      func(extraindent),       2],
['I', 'R', "BUMPINDENT",       func(bumpindent),        1],
['D', 'R', "CONSTINDENT",      func(constindent),    1024],
['D', 'R', "COMMENTINDENT",    func(commentindent),     3],
['D', 'R', "BRACECOMMENTINDENT",func(bracecommentindent), 2],
['D', 'R', "DECLCOMMENTINDENT",func(declcommentindent), -999],
['D', 'R', "COMMENTOVERINDENT",func(commentoverindent), 4],  
['I', 'R', "MINSPACING",       func(minspacing),        2],
['I', 'R', "MINSPACINGTHRESH", func(minspacingthresh), -1],


['I', 'R', "LINEWIDTH",        func(linewidth),        78],
['I', 'R', "MAXLINEWIDTH",     func(maxlinewidth),     90],
['R', 'V', "OVERWIDEPENALTY",        func(overwidepenalty),         2500],
['R', 'V', "OVERWIDEEXTRAPENALTY",   func(overwideextrapenalty),     100],
['R', 'V', "COMMABREAKPENALTY",      func(commabreakpenalty),       1000],
['R', 'V', "COMMABREAKEXTRAPENALTY", func(commabreakextrapenalty),   500],
['R', 'V', "ASSIGNBREAKPENALTY",     func(assignbreakpenalty),      5000],
['R', 'V', "ASSIGNBREAKEXTRAPENALTY",func(assignbreakextrapenalty), 3000],
['R', 'V', "SPECIALARGBREAKPENALTY", func(specialargbreakpenalty),   500],
['R', 'V', "OPBREAKPENALTY",         func(opbreakpenalty),          2500],
['R', 'V', "OPBREAKEXTRAPENALTY",    func(opbreakextrapenalty),     2000],
['R', 'V', "LOGBREAKPENALTY",        func(logbreakpenalty),          500],
['R', 'V', "LOGBREAKEXTRAPENALTY",   func(logbreakextrapenalty),     100],
['R', 'V', "RELBREAKPENALTY",        func(relbreakpenalty),         2000],
['R', 'V', "RELBREAKEXTRAPENALTY",   func(relbreakextrapenalty),    1000],
['R', 'V', "EXHYPHENPENALTY",        func(exhyphenpenalty),         1000],
['R', 'V', "MOREBREAKPENALTY",       func(morebreakpenalty),        -500],
['R', 'V', "MOREBREAKEXTRAPENALTY",  func(morebreakextrapenalty),   -300],
['R', 'V', "QMARKBREAKPENALTY",      func(qmarkbreakpenalty),       5000],
['R', 'V', "QMARKBREAKEXTRAPENALTY", func(qmarkbreakextrapenalty),  3000],
['R', 'V', "PARENBREAKPENALTY",      func(parenbreakpenalty),       2500],
['R', 'V', "PARENBREAKEXTRAPENALTY", func(parenbreakextrapenalty),  1000],
['R', 'V', "WRONGSIDEPENALTY",       func(wrongsidepenalty),        1000],
['R', 'V', "EARLYBREAKPENALTY",      func(earlybreakpenalty),        100],
['R', 'V', "EXTRAINDENTPENALTY",     func(extraindentpenalty),      3000],
['R', 'V', "BUMPINDENTPENALTY",      func(bumpindentpenalty),       1000],
['R', 'V', "NOBUMPINDENTPENALTY",    func(nobumpindentpenalty),     2500],
['R', 'V', "INDENTAMOUNTPENALTY",    func(indentamountpenalty),       50],
['R', 'V', "SAMEINDENTPENALTY",      func(sameindentpenalty),        500],
['R', 'V', "SHOWBADLIMIT",           func(showbadlimit),            -120],
['L', 'R', "MAXLINEBREAKTRIES",  func(maxalts),      5000],
['G', 'V', "ALLORNONEBREAK",    nil,             FALLBREAK],
['G', 'V', "ONESPECIALARG",     nil,             FSPCARG1],
['G', 'V', "TWOSPECIALARGS",    nil,             FSPCARG2],
['G', 'V', "THREESPECIALARGS",  nil,             FSPCARG3],
['B', 'V', "BREAKARITH",       func(breakbeforearith),  BRK_RIGHT],
['B', 'V', "BREAKREL",         func(breakbeforerel),    BRK_RIGHT],
['B', 'V', "BREAKLOG",         func(breakbeforelog),    BRK_RIGHT],
['B', 'V', "BREAKDOT",         func(breakbeforedot),    BRK_RIGHT],
['B', 'V', "BREAKASSIGN",      func(breakbeforeassign), BRK_RIGHT],
['S', 'V', "FOR_ALLORNONE",    func(for_allornone),     1],


['S', 'V', "NOBANNER",         func(nobanner),	      0],
['S', 'V', "SLASHSLASH",       func(slashslash),       -1],
['S', 'V', "EATCOMMENTS",      func(eatcomments),       0],
['S', 'V', "SPITCOMMENTS",     func(spitcomments),      0],
['S', 'V', "SPITORPHANCOMMENTS",func(spitorphancomments), 0],
['S', 'V', "COMMENTAFTER",     func(commentafter),     -1],
['S', 'V', "BLANKAFTER",       func(blankafter),        1],
['A', 'V', "EATNOTES",         func(eatnotes),          0],


['C', 'V', "FIXEDCOMMENT",      fixedcomment,     40],
['C', 'V', "PERMANENTCOMMENT",  permanentcomment, 40],
['C', 'V', "INTERFACECOMMENT",  interfacecomment, 40],
['C', 'V', "EMBEDCOMMENT",      embedcomment,     40],
['C', 'V', "SKIPCOMMENT",       skipcomment,      40],
['C', 'V', "NOSKIPCOMMENT",     noskipcomment,    40],
['C', 'V', "SIGNEDCOMMENT",     signedcomment,    40],
['C', 'V', "UNSIGNEDCOMMENT",   unsignedcomment,  40],
['C', 'V', "TAGCOMMENT",        tagcomment,       40],


['I', 'V', "MAJORSPACING",     func(majorspace),        2],
['I', 'V', "MINORSPACING",     func(minorspace),        1],
['I', 'V', "DECLSPACING",      func(declspace),        -1],
['I', 'V', "FUNCSPACING",      func(functionspace),     2],
['I', 'V', "MINFUNCSPACING",   func(minfuncspace),      1],
['S', 'V', "EXTRAPARENS",      func(extraparens),      -1],
['S', 'V', "BREAKADDPARENS",   func(breakparens),      -1],
['S', 'V', "RETURNPARENS",     func(returnparens),     -1],
['S', 'V', "SPACEEXPRS",       func(spaceexprs),       -1],
['S', 'V', "SPACEFUNCS",	  func(spacefuncs),	      0],
['S', 'V', "SPACECOMMAS",	  func(spacecommas),	      1],
['S', 'V', "IMPLICITZERO",     func(implicitzero),     -1],
['S', 'V', "STARINDEX",        func(starindex),        -1],
['S', 'V', "ADDINDEX",         func(addindex),         -1],
['S', 'V', "STARARRAYS",       func(stararrays),        1],
['S', 'V', "STARFUNCTIONS",    func(starfunctions),    -1],
['S', 'V', "SPACESTARS",       func(spacestars),        0],
['S', 'V', "CALLCASTS",        func(callcasts),        -1],
['S', 'V', "POSTINCREMENT",    func(postincrement),     1],
['S', 'V', "MIXVARS",          func(mixvars),          -1],
['S', 'V', "MIXTYPES",         func(mixtypes),         -1],
['S', 'V', "MIXFIELDS",        func(mixfields),        -1],
['S', 'V', "MIXINITS",         func(mixinits),         -1],
['S', 'V', "MAINLOCALS",       func(mainlocals),        1],
['S', 'V', "NULLCHAR",         func(nullcharconst),     1],
['S', 'V', "HIGHCHARINT",      func(highcharints),      1],
['S', 'V', "ANONYMOUSUNIONS",  func(anonymousunions),  -1],
['I', 'V', "CASESPACING",      func(casespacing),       1],
['D', 'V', "CASETABS",         func(casetabs),       1000],
['I', 'V', "CASELIMIT",        func(caselimit),         9],
['S', 'V', "USECOMMAS",        func(usecommas),        -1],
['S', 'V', "USERETURNS",       func(usereturns),        1],
['I', 'V', "RETURNLIMIT",      func(returnlimit),       3],
['S', 'V', "USEBREAKS",        func(usebreaks),         1],
['I', 'V', "BREAKLIMIT",       func(breaklimit),        2],
['I', 'V', "CONTINUELIMIT",    func(continuelimit),     5],
['S', 'V', "INFLOOPSTYLE",     func(infloopstyle),      0],


['C', 'V', "CODEFILENAME",      codefnfmt,        40],
['C', 'V', "MODULEFILENAME",    modulefnfmt,      40],
['C', 'V', "HEADERFILENAME",    headerfnfmt,      40],
['C', 'V', "HEADERFILENAME2",   headerfnfmt2,     40],
['C', 'V', "SELFINCLUDENAME",   selfincludefmt,   40],
['C', 'V', "LOGFILENAME",       logfnfmt,         40],
['C', 'V', "INCLUDEFILENAME",   includefnfmt,     40],
['C', 'V', "INCLUDEOUTFILENAME",  includeoutfnfmt, 40],
['S', 'V', "SYMCASE",          func(symcase),          -1],
['C', 'V', "SYMBOLFORMAT",      symbolformat,     40],
['C', 'V', "CONSTFORMAT",       constformat,      40],
['C', 'V', "MODULEFORMAT",      moduleformat,     40],
['C', 'V', "FUNCTIONFORMAT",    functionformat,   40],
['C', 'V', "VARFORMAT",         varformat,        40],
['C', 'V', "FIELDFORMAT",       fieldformat,      40],
['C', 'V', "TYPEFORMAT",        typeformat,       40],
['C', 'V', "ENUMFORMAT",        enumformat,       40],
['C', 'V', "RETURNVALUENAME",   name_RETV,        40],
['C', 'V', "UNITINITNAME",      name_UNITINIT,    40],
['C', 'V', "HSYMBOLNAME",       name_HSYMBOL,     40],
['C', 'V', "GSYMBOLNAME",       name_GSYMBOL,     40],
['C', 'V', "STRINGMAXNAME",     name_STRMAX,      40],
['C', 'V', "ARRAYMINNAME",      name_ALOW,        40],
['C', 'V', "ARRAYMAXNAME",      name_AHIGH,       40],
['C', 'V', "COPYPARNAME",       name_COPYPAR,     40],
['C', 'V', "STATICLINKNAME",    name_LINK,        40],
['C', 'V', "LOCALVARSSTRUCT",   name_LOC,         40],
['C', 'V', "LOCALVARSNAME",     name_VARS,        40],
['C', 'V', "FWDSTRUCTNAME",     name_STRUCT,      40],
['C', 'V', "ENUMLISTNAME",      name_ENUM,        40],
['C', 'V', "UNIONNAME",         name_UNION,       40],
['C', 'V', "UNIONPARTNAME",     name_VARIANT,     40],
['C', 'V', "FAKESTRUCTNAME",    name_FAKESTRUCT,  40],
['S', 'V', "TAGSTRUCTS",       func(tagstructs),        0],
['C', 'V', "LABELNAME",         name_LABEL,       40],
['C', 'V', "LABELVARNAME",      name_LABVAR,      40],
['C', 'V', "TEMPNAME",          name_TEMP,        40],
['C', 'V', "DUMMYNAME",         name_DUMMY,       40],
['C', 'V', "FORNAME",           name_FOR,         40],
['C', 'V', "WITHNAME",          name_WITH,        40],
['C', 'V', "PTRNAME",           name_PTR,         40],
['C', 'V', "STRINGNAME",        name_STRING,      40],
['C', 'V', "SETNAME",           name_SET,         40],
['C', 'V', "FNVARNAME",         name_FNVAR,       40],
['C', 'V', "FNSIZENAME",        name_FNSIZE,      40],
['C', 'V', "ALTERNATENAME1",    alternatename1,   40],
['C', 'V', "ALTERNATENAME2",    alternatename2,   40],
['C', 'V', "ALTERNATENAME",     alternatename,    40],
['C', 'V', "EXPORTSYMBOL",      exportsymbol,     40],
['C', 'V', "EXPORT_SYMBOL",     export_symbol,    40],
['C', 'V', "ALIAS",             externalias,      40],
['X', 'V', "SYNONYM",           nil,              3],
['X', 'V', "NAMEOF",           func(nameoflist),        1],
['G', 'V', "AVOIDNAME",         nil,             AVOIDNAME],
['G', 'V', "AVOIDGLOBALNAME",   nil,             AVOIDGLOB],
['G', 'V', "WARNNAME",          nil,             WARNNAME],
['G', 'V', "NOSIDEEFFECTS",     nil,             NOSIDEEFF],
['G', 'V', "STRUCTFUNCTION",    nil,             STRUCTF],
['G', 'V', "STRLAPFUNCTION",    nil,             STRLAPF],
['F', 'V', "LEAVEALONE",        nil,             LEAVEALONE],
['G', 'V', "DETERMINISTIC",     nil,             DETERMF],
['G', 'V', "NEEDSTATIC",        nil,             NEEDSTATIC],
['S', 'V', "WARNNAMES",        func(warnnames),         0],
['M', 'V', "VARMACRO",          nil,             MAC_VAR],
['M', 'V', "CONSTMACRO",        nil,             MAC_CONST],
['M', 'V', "FIELDMACRO",        nil,             MAC_FIELD],
['M', 'V', "FUNCMACRO",         nil,             MAC_FUNC],
['S', 'V', "WARNMACROS",       func(warnmacros),        0],


['A', 'V', "INITIALCALLS",     func(initialcalls),      0],
['S', 'V', "EXPANDINCLUDES",   func(expandincludes),   -1],
['S', 'V', "COLLECTNEST",      func(collectnest),       1],
['S', 'V', "SHORTCIRCUIT",     func(shortcircuit),     -1],
['S', 'V', "SHORTOPT",         func(shortopt),          1],
['S', 'V', "ELIMDEADCODE",     func(elimdeadcode),      1],
['S', 'V', "ANALYZEFLOW",      func(analyzeflow),       1],
['S', 'V', "FOLDCONSTANTS",    func(foldconsts),       -1],
['S', 'V', "FOLDSTRCONSTANTS", func(foldstrconsts),    -1],
['S', 'V', "CHARCONSTS",	  func(charconsts),        1],
['S', 'V', "USECONSTS",        func(useconsts),        -1],
['S', 'V', "USEUNDEF",         func(useundef),          1],
['S', 'V', "USEINITS",         func(useinits),         -1],
['L', 'V', "SKIPINDICES",      func(skipindices),       0],
['S', 'V', "OFFSETFORLOOPS",   func(offsetforloops),    1],
['S', 'V', "FOREVALORDER",     func(forevalorder),      0],
['S', 'V', "STRINGLEADERS",    func(stringleaders),     2],
['S', 'V', "STOREFILENAMES",   func(storefilenames),   -1],
['S', 'V', "CHARFILETEXT",     func(charfiletext),     -1],
['S', 'V', "SQUEEZESUBR",      func(squeezesubr),       1],
['S', 'T', "USEENUM",          func(useenum),          -1],
['S', 'V', "SQUEEZEENUM",      func(enumbyte),         -1],
['S', 'V', "COMPENUMS",        func(compenums),        -1],
['S', 'V', "PRESERVETYPES",    func(preservetypes),     1],
['S', 'V', "PRESERVEPOINTERS", func(preservepointers),  0],
['S', 'V', "PRESERVESTRINGS",  func(preservestrings),  -1],
['S', 'V', "PACKING",          func(packing),           1],
['S', 'V', "PACKSIGNED",       func(packsigned),        1],
['I', 'V', "STRINGCEILING",    func(stringceiling),   255],
['I', 'V', "STRINGDEFAULT",    func(stringdefault),   255],
['I', 'V', "STRINGTRUNCLIMIT", func(stringtrunclimit), -1],
['I', 'V', "LONGSTRINGSIZE",   func(longstringsize),   -1],
['S', 'V', "KEEPNULLS",        func(keepnulls),         0],
['S', 'V', "HIGHCHARBITS",     func(highcharbits),     -1],
['S', 'V', "ALWAYSCOPYVALUES", func(alwayscopyvalues),  0],
['S', 'V', "STATICFUNCTIONS",  func(use_static),        1],
['S', 'V', "STATICVARIABLES",  func(var_static),        1],
['S', 'V', "VOIDARGS",         func(void_args),        -1],
['S', 'V', "PROTOTYPES",       func(prototypes),       -1],
['S', 'V', "FULLPROTOTYPING",  func(fullprototyping),  -1],
['S', 'V', "PROCPTRPROTOTYPES",func(procptrprototypes), 1],
['S', 'V', "CASTARGS",         func(castargs),         -1],
['S', 'V', "CASTLONGARGS",     func(castlongargs),     -1],
['S', 'V', "PROMOTEARGS",      func(promoteargs),      -1],
['S', 'V', "FIXPROMOTEDARGS",  func(fixpromotedargs),   1],
['S', 'V', "PROMOTEENUMS",     func(promote_enums),    -1],
['S', 'V', "STATICLINKS",      func(hasstaticlinks),   -1],
['S', 'V', "VARSTRINGS",       func(varstrings),        0],
['S', 'V', "VARFILES",         func(varfiles),          1],
['S', 'V', "USEREFS",          func(userefs),          -1],
['S', 'V', "ADDRSTDFILES",     func(addrstdfiles),      0],
['S', 'V', "COPYSTRUCTFUNCS",  func(copystructfuncs),  -1],
['S', 'V', "ATAN2",            func(atan2flag),         0],
['S', 'V', "BITWISEMOD",       func(mod_po2),          -1],
['S', 'V', "BITWISEDIV",       func(div_po2),          -1],
['S', 'V', "ASSUMEBITS",       func(assumebits),        0],
['S', 'V', "ASSUMESIGNS",      func(assumesigns),       1],
['S', 'V', "NEWDELETE",        func(newdelete),        -1],
['S', 'V', "ALLOCZERONIL",     func(alloczeronil),      0],
['S', 'V', "PRINTFONLY",       func(printfonly),       -1],
['S', 'V', "MIXWRITELNS",      func(mixwritelns),       1],
['S', 'V', "MESSAGESTDERR",    func(messagestderr),     1],
['I', 'V', "INTEGERWIDTH",     func(integerwidth),     -1],
['I', 'V', "REALWIDTH",        func(realwidth),        12],
['S', 'V', "FORMATSTRINGS",    func(formatstrings),     0],
['S', 'V', "WHILEFGETS",       func(whilefgets),        1],
['S', 'V', "USEGETS",          func(usegets),           1],
['C', 'V', "FLOATSCANFCODE",    floatscanfcode,   40],
['S', 'V', "NEWLINESPACE",     func(newlinespace),     -1],
['S', 'V', "BUILDREADS",       func(buildreads),        1],
['S', 'V', "BUILDWRITES",      func(buildwrites),       1],
['S', 'V', "BINARYMODE",       func(binarymode),        1],
['S', 'V', "READWRITEOPEN",    func(readwriteopen),    -1],
['C', 'V', "OPENMODE",          openmode,         40],
['S', 'V', "LITERALFILES",     func(literalfilesflag), -1],
['A', 'V', "LITERALFILE",      func(literalfiles),      0],
['S', 'V', "STRUCTFILES",      func(structfilesflag),   0],
['A', 'V', "STRUCTFILE",       func(structfiles),       0],
['C', 'V', "FILENAMEFILTER",    filenamefilter,   40],
['S', 'V', "FULLSTRWRITE",     func(fullstrwrite),     -1],
['S', 'V', "FULLSTRREAD",      func(fullstrread),       1],
['I', 'R', "SETBITS",          func(setbits),          -1],
['I', 'V', "DEFAULTSETSIZE",   func(defaultsetsize),   -1],
['S', 'V', "SMALLSETCONST",    func(smallsetconst),    -2],
['S', 'V', "BIGSETCONST",      func(bigsetconst),       1],
['S', 'V', "LELERANGE",        func(lelerange),         0],
['S', 'V', "UNSIGNEDTRICK",    func(unsignedtrick),     1],
['S', 'V', "USEISALPHA",       func(useisalpha),        1],
['S', 'V', "USEISSPACE",       func(useisspace),        0],
['S', 'V', "USESTRNCMP",	  func(usestrncmp),	      1],


['G', 'V', "WARNLIBRARY",       nil,             WARNLIBR],
['S', 'V', "QUOTEINCLUDES",    func(quoteincludes),     1],
['X', 'V', "IMPORTFROM",       func(importfrom),        1],
['A', 'V', "IMPORTDIR",        func(importdirs),        0],
['A', 'V', "INCLUDEDIR",       func(includedirs),       0],
['X', 'V', "INCLUDEFROM",      func(includefrom),       1],
['A', 'V', "LIBRARYFILE",      func(librfiles),         0],
['X', 'V', "SHELLVARS",        func(shellvars),         1],
['C', 'V', "HEADERNAME",        p2c_h_name,       40],
['C', 'V', "PROCTYPENAME",      name_PROCEDURE,   40],
['C', 'V', "UCHARNAME",         name_UCHAR,       40],
['C', 'V', "SCHARNAME",         name_SCHAR,       40],
['C', 'V', "BOOLEANNAME",       name_BOOLEAN,     40],
['C', 'V', "TRUENAME",          name_TRUE,        40],
['C', 'V', "FALSENAME",         name_FALSE,       40],
['C', 'V', "NULLNAME",          name_NULL,        40],
['C', 'V', "ESCAPECODENAME",    name_ESCAPECODE,  40],
['C', 'V', "IORESULTNAME",      name_IORESULT,    40],
['C', 'V', "ARGCNAME",          name_ARGC,        40],
['C', 'V', "ARGVNAME",          name_ARGV,        40],
['C', 'V', "MAINNAME",          name_MAIN,        40],
['C', 'V', "ESCAPENAME",        name_ESCAPE,      40],
['C', 'V', "ESCIONAME",         name_ESCIO,       40],
['C', 'V', "ESCIO2NAME",        name_ESCIO2,      40],
['C', 'V', "CHECKIONAME",       name_CHKIO,       40],
['C', 'V', "SETIONAME",         name_SETIO,       40],
['C', 'V', "FILENOTFOUNDNAME",  filenotfoundname, 40],
['C', 'V', "FILENOTOPENNAME",   filenotopenname,  40],
['C', 'V', "FILEWRITEERRORNAME",filewriteerrorname,40],
['C', 'V', "BADINPUTFORMATNAME",badinputformatname,40],
['C', 'V', "ENDOFFILENAME",     endoffilename,    40],
['C', 'V', "OUTMEMNAME",        name_OUTMEM,      40],
['C', 'V', "CASECHECKNAME",     name_CASECHECK,   40],
['C', 'V', "NILCHECKNAME",      name_NILCHECK,    40],
['C', 'V', "SETBITSNAME",       name_SETBITS,     40],
['S', 'V', "SPRINTFVALUE",     func(sprintf_value),    -1],
['C', 'V', "SPRINTFNAME",       sprintfname,      40],
['C', 'V', "MEMCPYNAME",        memcpyname,       40],
['C', 'V', "ROUNDNAME",         roundname,        40],
['C', 'V', "DIVNAME",	   divname,	     40],
['C', 'V', "MODNAME",	   modname,	     40],
['C', 'V', "REMNAME",	   remname,	     40],
['C', 'V', "STRCICMPNAME",      strcicmpname,     40],
['C', 'V', "STRSUBNAME",        strsubname,       40],
['C', 'V', "STRPOSNAME",        strposname,       40],
['S', 'V', "STRCPYLEFT",       func(strcpyleft),        1],
['C', 'V', "STRDELETENAME",     strdeletename,    40],
['C', 'V', "STRINSERTNAME",     strinsertname,    40],
['C', 'V', "STRMOVENAME",       strmovename,	     40],
['C', 'V', "STRLTRIMNAME",      strltrimname,     40],
['C', 'V', "STRRTRIMNAME",      strrtrimname,     40],
['C', 'V', "STRRPTNAME",        strrptname,       40],
['C', 'V', "STRPADNAME",        strpadname,       40],
['C', 'V', "OFSNAME",           OFSname,          40],
['C', 'V', "SEGNAME",           SEGname,          40],
['C', 'V', "ABSNAME",           absname,          40],
['C', 'V', "ODDNAME",           oddname,          40],
['C', 'V', "EVENNAME",          evenname,         40],
['C', 'V', "SWAPNAME",          swapname,         40],
['C', 'V', "MALLOCNAME",        mallocname,       40],
['C', 'V', "FREENAME",          freename,         40],
['C', 'V', "FREERVALUENAME",    freervaluename,   40],
['X', 'V', "SPECIALMALLOC",    func(specialmallocs),    1],
['X', 'V', "SPECIALFREE",      func(specialfrees),      1],
['X', 'V', "SPECIALSIZEOF",    func(specialsizeofs),    1],
['C', 'V', "RANDREALNAME",      randrealname,     40],
['C', 'V', "RANDINTNAME",       randintname,      40],
['C', 'V', "RANDOMIZENAME",     randomizename,    40],
['C', 'V', "SKIPSPACENAME",     skipspacename,    40],
['C', 'V', "SKIPNLSPACENAME",   skipnlspacename,  40],
['C', 'V', "READLNNAME",        readlnname,       40],
['C', 'V', "FREOPENNAME",       freopenname,      40],
['C', 'V', "EOFNAME",           eofname,          40],
['C', 'V', "EOLNNAME",          eolnname,         40],
['C', 'V', "FILEPOSNAME",       fileposname,      40],
['C', 'V', "MAXPOSNAME",        maxposname,       40],
['C', 'V', "SETUNIONNAME",      setunionname,     40],
['C', 'V', "SETINTNAME",        setintname,       40],
['C', 'V', "SETDIFFNAME",       setdiffname,      40],
['C', 'V', "SETXORNAME",        setxorname,       40],
['C', 'V', "SETINNAME",         setinname,        40],
['C', 'V', "SETADDNAME",        setaddname,       40],
['C', 'V', "SETADDRANGENAME",   setaddrangename,  40],
['C', 'V', "SETREMNAME",        setremname,       40],
['C', 'V', "SETEQUALNAME",      setequalname,     40],
['C', 'V', "SUBSETNAME",        subsetname,       40],
['C', 'V', "SETCOPYNAME",       setcopyname,      40],
['C', 'V', "SETEXPANDNAME",     setexpandname,    40],
['C', 'V', "SETPACKNAME",       setpackname,      40],
['C', 'V', "SIGNEXTENDNAME",    signextname,      40],
['C', 'V', "GETBITSNAME",       getbitsname,      40],
['C', 'V', "CLRBITSNAME",       clrbitsname,      40],
['C', 'V', "PUTBITSNAME",       putbitsname,      40],
['C', 'V', "STOREBITSNAME",     storebitsname,    40],
['C', 'V', "DECLBUFNAME",	   declbufname,	     40],
['C', 'V', "DECLBUFNCNAME",	   declbufncname,    40],
['A', 'V', "BUFFEREDFILE",     func(bufferedfiles),     0],
['A', 'V', "UNBUFFEREDFILE",   func(unbufferedfiles),   0],
['C', 'V', "RESETBUFNAME",	   resetbufname,     40],
['C', 'V', "SETUPBUFNAME",	   setupbufname,     40],
['C', 'V', "GETFBUFNAME",       getfbufname,      40],
['C', 'V', "CHARGETFBUFNAME",   chargetfbufname,  40],
['C', 'V', "ARRAYGETFBUFNAME",  arraygetfbufname, 40],
['C', 'V', "PUTFBUFNAME",       putfbufname,      40],
['C', 'V', "CHARPUTFBUFNAME",   charputfbufname,  40],
['C', 'V', "ARRAYPUTFBUFNAME",  arrayputfbufname, 40],
['C', 'V', "GETNAME",           getname,          40],
['C', 'V', "CHARGETNAME",       chargetname,      40],
['C', 'V', "ARRAYGETNAME",      arraygetname,     40],
['C', 'V', "PUTNAME",           putname,          40],
['C', 'V', "CHARPUTNAME",       charputname,      40],
['C', 'V', "ARRAYPUTNAME",      arrayputname,     40],
['C', 'V', "EOFBUFNAME",        eofbufname,       40],
['C', 'V', "FILEPOSBUFNAME",    fileposbufname,   40],


['S', 'V', "CASECHECK",        func(casecheck),         0],
['S', 'V', "ARRAYCHECK",       func(arraycheck),        0],
['S', 'V', "RANGECHECK",       func(rangecheck),        0],
['S', 'V', "NILCHECK",         func(nilcheck),          0],
['S', 'V', "MALLOCCHECK",      func(malloccheck),       0],
['S', 'V', "CHECKFILEOPEN",    func(checkfileopen),     1],
['S', 'V', "CHECKFILEISOPEN",  func(checkfileisopen),   0],
['S', 'V', "CHECKFILEWRITE",   func(checkfilewrite),    2],
['S', 'V', "CHECKREADFORMAT",  func(checkreadformat),   2],
['S', 'V', "CHECKFILEEOF",     func(checkfileeof),      2],
['S', 'V', "CHECKSTDINEOF",    func(checkstdineof),     2],
['S', 'V', "CHECKFILESEEK",    func(checkfileseek),     2],
]

p $varnames
File.open("fmt.rb", "wb") do |fh|
  fh.printf("varnames={\n")
  $varnames.each do |var|
    gn = sprintf("g_rcvar_%s", var.to_s)
    printf("  %p => %p,\n", var.to_s, gn)
  end
  fh.printf("}\n")
end
