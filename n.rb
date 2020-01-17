
data = <<__eof__
extern short g_rcvar_debug, g_rcvar_tokentrace, g_rcvar_quietmode, cmtdebug, flowdebug, g_rcvar_copysource;
extern int g_rcvar_nobanner, g_rcvar_showprogress, g_rcvar_maxerrors;
extern short hpux_lang, g_rcvar_integer16, g_rcvar_doublereals, g_rcvar_pascalenumsize;
extern short g_rcvar_needsignedbyte, g_rcvar_unsignedchar, g_rcvar_importall;
extern short g_rcvar_nestedcomments, g_rcvar_pascalsignif, g_rcvar_pascalcasesens;
extern short g_rcvar_dollar_idents, g_rcvar_ignorenonalpha, g_rcvar_modula2;
extern short g_rcvar_lowpreclogicals, g_rcvar_commonextern;
extern short g_rcvar_ansiC, g_rcvar_cplus, g_rcvar_signedchars, g_rcvar_signedfield, g_rcvar_signedshift;
extern short g_rcvar_hassignedchar, g_rcvar_voidstar, g_rcvar_symcase, ucconsts, g_rcvar_csignif;
extern short g_rcvar_copystructs, g_rcvar_usevextern, g_rcvar_implementationmodules;
extern short g_rcvar_turboobjects, g_rcvar_useAnyptrMacros, g_rcvar_usePPMacros;
extern short g_rcvar_slashslash, g_rcvar_sprintf_value, g_rcvar_tagstructs;
extern char g_rcvar_codefnfmt[40], g_rcvar_modulefnfmt[40], g_rcvar_logfnfmt[40];
extern char g_rcvar_headerfnfmt[40], g_rcvar_headerfnfmt2[40], g_rcvar_includefnfmt[40];
extern char g_rcvar_selfincludefmt[40], g_rcvar_includeoutfnfmt[40];
extern char g_rcvar_constformat[40], g_rcvar_moduleformat[40], g_rcvar_functionformat[40];
extern char g_rcvar_varformat[40], g_rcvar_fieldformat[40], g_rcvar_typeformat[40];
extern char g_rcvar_enumformat[40], g_rcvar_symbolformat[40];
extern char g_rcvar_p2c_h_name[40], g_rcvar_exportsymbol[40], g_rcvar_export_symbol[40];
extern char g_rcvar_externalias[40];
extern char g_rcvar_memcpyname[40], g_rcvar_sprintfname[40];
extern char g_rcvar_roundname[40], g_rcvar_divname[40], g_rcvar_modname[40], g_rcvar_remname[40];
extern char g_rcvar_strposname[40], g_rcvar_strcicmpname[40];
extern char g_rcvar_strsubname[40], g_rcvar_strdeletename[40], g_rcvar_strinsertname[40];
extern char g_rcvar_strmovename[40], g_rcvar_strpadname[40];
extern char OFSname[40], SEGname[40];
extern char g_rcvar_strltrimname[40], g_rcvar_strrtrimname[40], g_rcvar_strrptname[40];
extern char g_rcvar_absname[40], g_rcvar_oddname[40], g_rcvar_evenname[40], g_rcvar_swapname[40];
extern char g_rcvar_mallocname[40], g_rcvar_freename[40], g_rcvar_freervaluename[40];
extern char g_rcvar_randrealname[40], g_rcvar_randintname[40], g_rcvar_randomizename[40];
extern char g_rcvar_skipspacename[40], g_rcvar_readlnname[40], g_rcvar_freopenname[40];
extern char g_rcvar_skipnlspacename[40];
extern char g_rcvar_eofname[40], g_rcvar_eolnname[40], g_rcvar_fileposname[40], g_rcvar_maxposname[40];
extern char g_rcvar_setunionname[40], g_rcvar_setintname[40], g_rcvar_setdiffname[40];
extern char g_rcvar_setinname[40], g_rcvar_setaddname[40], g_rcvar_setaddrangename[40];
extern char g_rcvar_setremname[40], g_rcvar_floatscanfcode[40];
extern char g_rcvar_setequalname[40], g_rcvar_subsetname[40], g_rcvar_setxorname[40];
extern char g_rcvar_setcopyname[40], g_rcvar_setexpandname[40], g_rcvar_setpackname[40];
extern char g_rcvar_getbitsname[40], g_rcvar_clrbitsname[40], g_rcvar_putbitsname[40];
extern char g_rcvar_declbufname[40], g_rcvar_declbufncname[40];
extern char g_rcvar_resetbufname[40], g_rcvar_setupbufname[40];
extern char g_rcvar_getfbufname[40], g_rcvar_chargetfbufname[40], g_rcvar_arraygetfbufname[40];
extern char g_rcvar_putfbufname[40], g_rcvar_charputfbufname[40], g_rcvar_arrayputfbufname[40];
extern char g_rcvar_getname[40], g_rcvar_chargetname[40], g_rcvar_arraygetname[40];
extern char g_rcvar_putname[40], g_rcvar_charputname[40], g_rcvar_arrayputname[40];
extern char g_rcvar_eofbufname[40], g_rcvar_fileposbufname[40];
extern char g_rcvar_storebitsname[40], g_rcvar_signextname[40];
extern char g_rcvar_filenotfoundname[40], g_rcvar_filenotopenname[40];
extern char g_rcvar_filewriteerrorname[40], g_rcvar_badinputformatname[40], g_rcvar_endoffilename[40];
extern short g_rcvar_strcpyleft;
extern char g_rcvar_language[40], g_rcvar_target[40], g_rcvar_maintype[40];
extern int g_rcvar_sizeof_char, g_rcvar_sizeof_short, sizeof_integer, g_rcvar_sizeof_pointer, g_rcvar_sizeof_double, g_rcvar_sizeof_float,g_rcvar_sizeof_enum, g_rcvar_sizeof_int, g_rcvar_sizeof_long;
extern short g_rcvar_size_t_long;
extern int g_rcvar_setbits, g_rcvar_defaultsetsize, g_rcvar_seek_base, g_rcvar_integerwidth, g_rcvar_realwidth;
extern short g_rcvar_quoteincludes, g_rcvar_expandincludes, g_rcvar_collectnest;
extern int g_rcvar_phystabsize, g_rcvar_intabsize, g_rcvar_linewidth, g_rcvar_maxlinewidth;
extern int g_rcvar_majorspace, g_rcvar_minorspace, g_rcvar_declspace, g_rcvar_functionspace, g_rcvar_minfuncspace;
extern int g_rcvar_casespacing, g_rcvar_caselimit;
extern int g_rcvar_returnlimit, g_rcvar_breaklimit, g_rcvar_continuelimit;
extern short g_rcvar_nullstmtline, g_rcvar_shortcircuit, g_rcvar_shortopt, g_rcvar_usecommas, g_rcvar_elseif;
extern short g_rcvar_usereturns, g_rcvar_usebreaks, g_rcvar_infloopstyle, g_rcvar_reusefieldnames;
extern short g_rcvar_bracesalways, g_rcvar_braceline, g_rcvar_bracecombine, g_rcvar_braceelse, g_rcvar_braceelseline;
extern short g_rcvar_newlinefunctions;
extern short g_rcvar_eatcomments, g_rcvar_spitcomments, g_rcvar_spitorphancomments;
extern short g_rcvar_commentafter, g_rcvar_blankafter;
extern int g_rcvar_tabsize, g_rcvar_blockindent, g_rcvar_bodyindent, g_rcvar_argindent;
extern int g_rcvar_switchindent, g_rcvar_caseindent, g_rcvar_labelindent;
extern int g_rcvar_openbraceindent, g_rcvar_closebraceindent;
extern int g_rcvar_funcopenindent, g_rcvar_funccloseindent;
extern int g_rcvar_structindent, g_rcvar_structinitindent, g_rcvar_extrainitindent;
extern int g_rcvar_constindent, g_rcvar_commentindent, g_rcvar_bracecommentindent, g_rcvar_commentoverindent;
extern int g_rcvar_declcommentindent;
extern int g_rcvar_minspacing, g_rcvar_minspacingthresh;
extern int g_rcvar_extraindent, g_rcvar_bumpindent;
extern double g_rcvar_overwidepenalty, g_rcvar_overwideextrapenalty;
extern double g_rcvar_commabreakpenalty, g_rcvar_commabreakextrapenalty;
extern double g_rcvar_assignbreakpenalty, g_rcvar_assignbreakextrapenalty;
extern double g_rcvar_specialargbreakpenalty;
extern double g_rcvar_opbreakpenalty, g_rcvar_opbreakextrapenalty, g_rcvar_exhyphenpenalty;
extern double g_rcvar_logbreakpenalty, g_rcvar_logbreakextrapenalty;
extern double g_rcvar_relbreakpenalty, g_rcvar_relbreakextrapenalty;
extern double g_rcvar_morebreakpenalty, g_rcvar_morebreakextrapenalty;
extern double g_rcvar_parenbreakpenalty, g_rcvar_parenbreakextrapenalty;
extern double g_rcvar_qmarkbreakpenalty, g_rcvar_qmarkbreakextrapenalty;
extern double g_rcvar_wrongsidepenalty, g_rcvar_earlybreakpenalty, g_rcvar_extraindentpenalty;
extern double g_rcvar_bumpindentpenalty, g_rcvar_nobumpindentpenalty;
extern double g_rcvar_indentamountpenalty, g_rcvar_sameindentpenalty;
extern double g_rcvar_showbadlimit;
extern long g_rcvar_maxalts;
extern short g_rcvar_breakbeforearith, g_rcvar_breakbeforerel, g_rcvar_breakbeforelog;
extern short g_rcvar_breakbeforedot, g_rcvar_breakbeforeassign;
extern short g_rcvar_for_allornone;
extern short g_rcvar_extraparens, g_rcvar_breakparens, g_rcvar_returnparens;
extern short g_rcvar_variablearrays, g_rcvar_initpacstrings, g_rcvar_stararrays;
extern short g_rcvar_spaceexprs, g_rcvar_spacefuncs, g_rcvar_spacecommas, g_rcvar_implicitzero, g_rcvar_starindex;
extern int g_rcvar_casetabs;
extern short g_rcvar_starfunctions, g_rcvar_mixfields, g_rcvar_newdelete, g_rcvar_alloczeronil, g_rcvar_postincrement;
extern short g_rcvar_mixvars, g_rcvar_mixtypes, g_rcvar_mixinits, g_rcvar_nullcharconst, g_rcvar_castnull, g_rcvar_addindex;
extern short g_rcvar_spacestars, g_rcvar_highcharints, g_rcvar_highcharbits, g_rcvar_hasstaticlinks;
extern short g_rcvar_mainlocals, g_rcvar_storefilenames, g_rcvar_addrstdfiles, g_rcvar_readwriteopen;
extern short g_rcvar_anonymousunions, g_rcvar_callcasts;
extern short g_rcvar_charfiletext, g_rcvar_messagestderr, g_rcvar_literalfilesflag, g_rcvar_structfilesflag;
extern short g_rcvar_printfonly, g_rcvar_mixwritelns, g_rcvar_usegets, g_rcvar_newlinespace, g_rcvar_binarymode;
extern char g_rcvar_openmode[40], g_rcvar_filenamefilter[40];
extern short g_rcvar_atan2flag, g_rcvar_div_po2, g_rcvar_mod_po2, g_rcvar_assumebits, g_rcvar_assumesigns;
extern short g_rcvar_fullstrwrite, g_rcvar_fullstrread, g_rcvar_whilefgets, g_rcvar_buildreads, g_rcvar_buildwrites;
extern short g_rcvar_foldconsts, g_rcvar_foldstrconsts, g_rcvar_charconsts, g_rcvar_useconsts, g_rcvar_useundef;
extern short g_rcvar_elimdeadcode, g_rcvar_analyzeflow, g_rcvar_offsetforloops, g_rcvar_forevalorder;
extern short g_rcvar_smallsetconst, g_rcvar_bigsetconst, g_rcvar_lelerange, g_rcvar_unsignedtrick;
extern short g_rcvar_useisalpha, g_rcvar_useisspace, g_rcvar_usestrncmp;
extern short g_rcvar_casecheck, g_rcvar_arraycheck, g_rcvar_rangecheck, g_rcvar_nilcheck, g_rcvar_malloccheck;
extern short g_rcvar_checkfileopen, g_rcvar_checkfileisopen, g_rcvar_checkfilewrite;
extern short g_rcvar_checkreadformat, g_rcvar_checkfileeof, g_rcvar_checkstdineof, g_rcvar_checkfileseek;
extern short g_rcvar_squeezesubr, g_rcvar_useenum, g_rcvar_enumbyte, g_rcvar_packing, g_rcvar_packsigned, g_rcvar_keepnulls;
extern short g_rcvar_compenums, g_rcvar_formatstrings, g_rcvar_alwayscopyvalues;
extern short g_rcvar_use_static, g_rcvar_var_static, g_rcvar_void_args, g_rcvar_prototypes, g_rcvar_fullprototyping;
extern short g_rcvar_procptrprototypes, g_rcvar_promote_enums;
extern short g_rcvar_preservetypes, g_rcvar_preservepointers, g_rcvar_preservestrings;
extern short g_rcvar_castargs, g_rcvar_castlongargs, g_rcvar_promoteargs, g_rcvar_fixpromotedargs;
extern short g_rcvar_varstrings, g_rcvar_varfiles, g_rcvar_userefs, g_rcvar_useinits, g_rcvar_copystructfuncs;
extern long g_rcvar_skipindices;
extern short g_rcvar_stringleaders;
extern int g_rcvar_stringceiling, g_rcvar_stringdefault, g_rcvar_stringtrunclimit, g_rcvar_longstringsize;
extern short g_rcvar_warnnames, g_rcvar_warnmacros;
extern Strlist *g_rcvar_importfrom, *g_rcvar_importdirs, *g_rcvar_includedirs, *g_rcvar_includefrom;
extern Strlist *g_rcvar_librfiles, *g_rcvar_bufferedfiles, *g_rcvar_unbufferedfiles, *g_rcvar_shellvars;
extern Strlist *g_rcvar_externwords, *g_rcvar_cexternwords;
extern Strlist *varmacros, *constmacros, *fieldmacros;
extern Strlist *funcmacros, *funcmacroargs, *g_rcvar_nameoflist;
extern Strlist *g_rcvar_specialmallocs, *g_rcvar_specialfrees, *g_rcvar_specialsizeofs;
extern Strlist *g_rcvar_initialcalls, *g_rcvar_eatnotes, *g_rcvar_literalfiles, *g_rcvar_structfiles;
extern Strlist *g_rcvar_replacebefore, *g_rcvar_replaceafter;
extern char g_rcvar_fixedcomment[40], g_rcvar_permanentcomment[40], g_rcvar_interfacecomment[40];
extern char g_rcvar_embedcomment[40], g_rcvar_skipcomment[40], g_rcvar_noskipcomment[40];
extern char g_rcvar_signedcomment[40], g_rcvar_unsignedcomment[40], g_rcvar_tagcomment[40];
extern char g_rcvar_name_RETV[40], g_rcvar_name_STRMAX[40], g_rcvar_name_LINK[40];
extern char g_rcvar_name_COPYPAR[40], g_rcvar_name_TEMP[40], g_rcvar_name_DUMMY[40];
extern char g_rcvar_name_LOC[40], g_rcvar_name_VARS[40], g_rcvar_name_STRUCT[40];
extern char g_rcvar_name_FAKESTRUCT[40], g_rcvar_name_AHIGH[40], g_rcvar_name_ALOW[40];
extern char g_rcvar_name_UNION[40], g_rcvar_name_VARIANT[40], g_rcvar_name_LABEL[40], g_rcvar_name_LABVAR[40];
extern char g_rcvar_name_WITH[40], g_rcvar_name_FOR[40], g_rcvar_name_ENUM[40];
extern char g_rcvar_name_PTR[40], g_rcvar_name_STRING[40], g_rcvar_name_SET[40];
extern char g_rcvar_name_PROCEDURE[40], g_rcvar_name_MAIN[40], g_rcvar_name_UNITINIT[40];
extern char g_rcvar_name_HSYMBOL[40], g_rcvar_name_GSYMBOL[40];
extern char g_rcvar_name_SETBITS[40], g_rcvar_name_UCHAR[40], g_rcvar_name_SCHAR[40];
extern char g_rcvar_name_BOOLEAN[40], g_rcvar_name_TRUE[40], g_rcvar_name_FALSE[40], g_rcvar_name_NULL[40];
extern char g_rcvar_name_ESCAPECODE[40], g_rcvar_name_IORESULT[40];
extern char g_rcvar_name_ARGC[40], g_rcvar_name_ARGV[40];
extern char g_rcvar_name_ESCAPE[40], g_rcvar_name_ESCIO[40], g_rcvar_name_CHKIO[40], g_rcvar_name_SETIO[40];
extern char g_rcvar_name_ESCIO2[40];
extern char g_rcvar_name_OUTMEM[40], g_rcvar_name_CASECHECK[40], g_rcvar_name_NILCHECK[40];
extern char g_rcvar_name_FNSIZE[40], g_rcvar_name_FNVAR[40];
extern char g_rcvar_alternatename1[40], g_rcvar_alternatename2[40], g_rcvar_alternatename[40];

__eof__

$typmap = Hash.new{|selfhash, key| selfhash[key] = [] }
data.each_line do |dt|
  dt.strip!
  next if dt.empty?
  vals = dt.split(/\s+/)
  vals.shift
  typ = vals.shift
  names = vals.join(" ").gsub(";", "").split(",")
  names.each do |n|
    $typmap[typ].push(n)
  end
end

$typmap.sort_by{|k, v| k}.to_h.each do |typ, names|
  names.each do |n|
      $stdout.printf("extern %s %s;\n", typ, n.strip)
  end
end
