
/* Declarations created by "makeproto" on Tue Jan  5 11:58:04 2016 */



/* Declarations from trans.c */
extern void     saveoldfile        PP( (char *fname) );
extern void     closelogfile       PV();
extern void     showinitfile       PV();
extern void     usage              PV();
extern int      main               PP( (int argc, char **argv) );
extern void     exit_failure       PV();
extern int      outmem             PV();
extern int      ISBOGUS            PP( (char *p) );
extern char    *meaningkindname    PP( (enum meaningkind kind) );
extern char    *typekindname       PP( (enum typekind kind) );
extern char    *exprkindname       PP( (enum exprkind kind) );
extern char    *stmtkindname       PP( (enum stmtkind kind) );
extern void     dumptype           PP( (Type *tp) );
extern void     dumpmeaning        PP( (Meaning *mp) );
extern void     dumpsymtable       PP( (Symbol *sym) );
extern void     dumptypename       PP( (Type *tp, int waddr) );
extern void     dumptypename_file  PP( (FILE *f, Type *tp) );
extern void     dumpexpr           PP( (Expr *ex) );
extern void     dumpexpr_file      PP( (FILE *f, Expr *ex) );
extern void     innerdumpstmt      PP( (Stmt *sp, int indent) );
extern void     dumpstmt           PP( (Stmt *sp, int indent) );
extern void     dumpstmt_file      PP( (FILE *f, Stmt *sp) );
extern void     wrapup             PV();
extern void     mem_summary        PV();
extern anyptr   test_malloc        PP( (int size, int *total, int *final) );
extern void     test_free          PP( (anyptr p) );
extern anyptr   test_realloc       PP( (anyptr p, int size) );

/* Declarations from stuff.c */
extern void     debughook          PV();
extern Strlist *strlist_append     PP( (Strlist **base, char *s) );
extern Strlist *strlist_insert     PP( (Strlist **base, char *s) );
extern Strlist *strlist_add        PP( (Strlist **base, char *s) );
extern void     strlist_mix        PP( (Strlist **base, Strlist *sl) );
extern void     strlist_eat        PP( (Strlist **base) );
extern void     strlist_empty      PP( (Strlist **base) );
extern void     strlist_remove     PP( (Strlist **base, char *s) );
extern void     strlist_delete     PP( (Strlist **base, Strlist *sl) );
extern Strlist *strlist_find       PP( (Strlist *base, char *s) );
extern Strlist *strlist_cifind     PP( (Strlist *base, char *s) );
extern int      strcincmp          PP( (char *s1, char *s2, int n) );
extern int      strcicmp           PP( (char *s1, char *s2) );
extern void     fixfname           PP( (char *fn, char *ext) );
extern void     removesuffix       PP( (char *fn) );
extern char    *stralloc           PP( (char *s) );
extern void     strchange          PP( (char **v, char *s) );
extern char    *format_gen         PP( (char *fmt, long i1, long i2, double dbl,
                                        char *s1, char *s2, char *s3) );
extern char    *format_none        PP( (char *fmt) );
extern char    *format_d           PP( (char *fmt, long a1) );
extern char    *format_g           PP( (char *fmt, double a1) );
extern char    *format_s           PP( (char *fmt, char *a1) );
extern char    *format_ss          PP( (char *fmt, char *a1, char *a2) );
extern char    *format_sd          PP( (char *fmt, char *a1, long a2) );
extern char    *format_ds          PP( (char *fmt, long a1, char *a2) );
extern char    *format_dd          PP( (char *fmt, long a1, long a2) );
extern char    *format_sss         PP( (char *fmt, char *a1, char *a2, char *a3) );
extern char    *format_ssd         PP( (char *fmt, char *a1, char *a2, long a3) );
extern char    *format_sds         PP( (char *fmt, char *a1, long a2, char *a3) );
extern int      my_toupper         PP( (int c) );
extern int      my_tolower         PP( (int c) );
extern void     upc                PP( (char *s) );
extern void     lwc                PP( (char *s) );
extern char    *strupper           PP( (char *s) );
extern char    *strlower           PP( (char *s) );
extern char    *my_strchr          PP( (char *cp, int c) );
extern char    *my_strrchr         PP( (char *cp, int c) );
extern char    *my_strtok          PP( (char *cp, char *delim) );
extern char    *my_strtokq         PP( (char *cp, char *delim) );
extern long     my_strtol          PP( (char *buf, char **ret, int base) );
extern void     init_stuff         PV();

/* Declarations from out.c */
extern void     setup_out          PV();
extern int      grow_outfilebuf    PV();
extern void     flush_outfilebuf   PV();
extern void     puts_outf          PP( (char *s) );
extern void     select_outfile     PP( (FILE *fp) );
extern void     start_source       PV();
extern void     end_source         PV();
extern int      line_start         PV();
extern int      cur_column         PV();
extern int      lookback           PP( (int n) );
extern int      lookback_prn       PP( (int n) );
extern int      adddeltas          PP( (int d1, int d2) );
extern int      applydelta         PP( (int i, int d) );
extern void     moreindent         PP( (int delta) );
extern void     singleindent       PP( (int delta) );
extern void     futureindent       PP( (int num) );
extern int      parsedelta         PP( (char *cp, int def) );
extern void     eatblanklines      PV();
extern int      parse_breakstr     PP( (char *cp) );
extern long     getcurtime         PV();
extern void     output             PP( (char *msg) );
extern void     out_n_spaces       PP( (int n) );
extern void     out_spaces         PP( (int spc, int over, int len, int delta) );
extern void     testlinebreaker    PP( (int lev, char *fn) );
extern void     outsection         PP( (int size) );
extern int      isembedcomment     PP( (Strlist *cmt) );
extern Strlist *outcomments        PP( (Strlist *cmt) );
extern void     outcomment         PP( (Strlist *cmt) );
extern void     outtrailcomment    PP( (Strlist *cmt, int serial, int indent) );
extern void     flushcomments      PP( (Strlist **cmt, int kind, int serial) );
extern char    *rawCstring         PP( (char *fmt, char *s, int len, int special) );
extern char    *makeCstring        PP( (char *s, int len) );
extern char    *makeCchar          PP( (int ich) );

/* Declarations from comment.c */
extern void     setup_comment      PV();
extern int      commentlen         PP( (Strlist *cmt) );
extern int      commentvisible     PP( (Strlist *cmt) );
extern void     steal_comments     PP( (long olds, long news, int always) );
extern Strlist *fixbeginendcomment PP( (Strlist *cmt) );
extern void     attach_comments    PP( (Stmt *sbase) );
extern void     setcommentkind     PP( (Strlist *cmt, int kind) );
extern void     commentline        PP( (int kind) );
extern void     addnote            PP( (char *msg, long serial) );
extern Strlist *grabcomment        PP( (int kind) );
extern int      matchcomment       PP( (Strlist *cmt, int kind, long stamp) );
extern Strlist *findcomment        PP( (Strlist *cmt, int kind, long stamp) );
extern Strlist *extractcomment     PP( (Strlist **cmt, int kind, long stamp) );
extern void     changecomments     PP( (Strlist *cmt, int okind, long ostamp,
                                        int kind, long stamp) );

/* Declarations from lex.c */
extern char    *fixpascalname      PP( (char *name) );
extern void     init_lex           PV();
extern void     setup_lex          PV();
extern int      checkeatnote       PP( (char *msg) );
extern void     beginerror         PV();
extern void     counterror         PV();
extern void     error              PP( (char *msg) );
extern void     interror           PP( (char *proc, char *msg) );
extern void     warning            PP( (char *msg) );
extern void     intwarning         PP( (char *proc, char *msg) );
extern void     note               PP( (char *msg) );
extern void     endnote            PP( (char *msg) );
extern void     showendnotes       PV();
extern char    *tok_name           PP( (Token tok) );
extern void     expected           PP( (char *msg) );
extern void     expecttok          PP( (Token tok) );
extern void     needtok            PP( (Token tok) );
extern int      wexpected          PP( (char *msg) );
extern int      wexpecttok         PP( (Token tok) );
extern int      wneedtok           PP( (Token tok) );
extern void     alreadydef         PP( (Symbol *sym) );
extern void     undefsym           PP( (Symbol *sym) );
extern void     symclass           PP( (Symbol *sym) );
extern void     badtypes           PV();
extern void     valrange           PV();
extern void     skipparens         PV();
extern void     skiptotoken2       PP( (Token tok1, Token tok2) );
extern void     skippasttoken2     PP( (Token tok1, Token tok2) );
extern void     skippasttotoken    PP( (Token tok1, Token tok2) );
extern void     skiptotoken        PP( (Token tok) );
extern void     skippasttoken      PP( (Token tok) );
extern int      skipopenparen      PV();
extern int      skipcloseparen     PV();
extern int      skipcomma          PV();
extern char    *findaltname        PP( (char *name, int num) );
extern Symbol  *findsymbol_opt     PP( (char *name) );
extern Symbol  *findsymbol         PP( (char *name) );
extern void     clearprogress      PV();
extern void     progress           PV();
extern void     replacestrings     PP( (char *buf, Strlist *sl) );
extern void     getlinep           PV();
extern void     push_input_file    PP( (FILE *fp, char *fname, int isinclude) );
extern void     include_as_import  PV();
extern void     push_input_strlist PP( (Strlist *sp, char *fname) );
extern void     pop_input          PV();
extern int      undooption         PP( (int i, char *name) );
extern void     badinclude         PV();
extern int      handle_include     PP( (char *fn) );
extern int      turbo_directive    PP( (char *closing, char *after) );
extern void     defmacro           PP( (char *name, long kind, char *fname,
                                        int lnum) );
extern void     check_unused_macros PV();
extern char    *getinlinepart      PV();
extern char     getchartok         PV();
extern char    *getparenstr        PP( (char *buf) );
extern void     leadingcomments    PV();
extern void     get_C_string       PP( (int term) );
extern void     begincommenting    PP( (char *cp) );
extern void     saveinputcomment   PP( (char *cp) );
extern void     endcommenting      PP( (char *cp) );
extern char    *peeknextptr        PV();
extern int      peeknextchar       PV();
extern int      peeknextword       PP( (char *word) );
extern void     gettok             PV();
extern void     checkkeyword       PP( (Token tok) );
extern void     checkmodulewords   PV();

/* Declarations from parse.c */
extern void     setup_parse        PV();
extern void     echobreak          PV();
extern void     echoword           PP( (char *name, int comma) );
extern void     echoprocname       PP( (Meaning *mp) );
extern void     need_forward_decl  PP( (Meaning *func) );
extern void     free_stmt          PP( (Stmt *sp) );
extern Stmt    *makestmt           PP( (enum stmtkind kind) );
extern Stmt    *makestmt_call      PP( (Expr *call) );
extern Stmt    *makestmt_assign    PP( (Expr *lhs, Expr *rhs) );
extern Stmt    *makestmt_if        PP( (Expr *cond, Stmt *thn, Stmt *els) );
extern Stmt    *makestmt_seq       PP( (Stmt *s1, Stmt *s2) );
extern Stmt    *copystmt           PP( (Stmt *sp) );
extern void     nukestmt           PP( (Stmt *sp) );
extern void     splicestmt         PP( (Stmt *sp, Stmt *spnew) );
extern int      stmtcount          PP( (Stmt *sp) );
extern Stmt    *close_files_to_ctx PP( (Meaning *ctx) );
extern void     withrecordtype     PP( (Type *tp, Expr *ex) );
extern int      simplewith         PP( (Expr *ex) );
extern int      simplefor          PP( (Stmt *sp, Expr *ex) );
extern int      tryfuncmacro       PP( (Expr **exp, Meaning *mp) );
extern Expr    *replaceexprexpr    PP( (Expr *ex, Expr *oldex, Expr *newex,
                                        int keeptype) );
extern void     replaceexpr        PP( (Stmt *sp, Expr *oldex, Expr *newex) );
extern Stmt    *mixassignments     PP( (Stmt *sp, Meaning *mp) );
extern int      expr_is_bool       PP( (Expr *ex, int want) );
extern int      implies            PP( (Expr *c1, Expr *c2, int not1, int not2) );
extern void     infiniteloop       PP( (Stmt *sp) );
extern Expr    *print_func         PP( (Expr *ex) );
extern int      printnl_func       PP( (Expr *ex) );
extern Expr    *chg_printf         PP( (Expr *ex) );
extern Expr    *mix_printf         PP( (Expr *ex, Expr *ex2) );
extern int      proveexprprop      PP( (Expr *ex, Stmt *sp, int prop) );
extern Expr    *flow_fixexpr       PP( (Expr *ex, Stmt *sp, int env) );
extern void     flowblock          PP( (Stmt *sp) );
extern void     eatstmt            PP( (Stmt **spp) );
extern int      haslabels          PP( (Stmt *sp) );
extern void     fixblock           PP( (Stmt **spp, Stmt *thereturn) );
extern int      checkvarchangedexpr PP( (Expr *ex, Meaning *mp, int addrokay) );
extern int      checkvarchanged    PP( (Stmt *sp, Meaning *mp) );
extern int      checkexprchanged   PP( (Stmt *sp, Expr *ex) );
extern void     checkvaroffsetexpr PP( (Expr *ex, Meaning *mp, int myoffset) );
extern void     checkvaroffsetstmt PP( (Stmt *sp, Meaning *mp) );
extern int      checkvaroffset     PP( (Stmt *sp, Meaning *mp) );
extern Expr    *initfilevar        PP( (Expr *ex) );
extern void     initfilevars       PP( (Meaning *mp, Stmt ***sppp, Expr *exbase) );
extern void     movetoend          PP( (Meaning *mp) );
extern void     do_include         PP( (Token blkind) );
extern void     p_block            PP( (Token blkind) );
extern int      p_search           PP( (char *fname, char *ext, int need) );
extern void     p_program          PV();

/* Declarations from decl.c */
extern Meaning *makespecialproc    PP( (char *name, Stmt *(*handler)()) );
extern Meaning *makestandardproc   PP( (char *name, Stmt *(*handler)()) );
extern Meaning *makespecialfunc    PP( (char *name, Expr *(*handler)()) );
extern Meaning *makestandardfunc   PP( (char *name, Expr *(*handler)()) );
extern Meaning *makespecialvar     PP( (char *name, Expr *(*handler)()) );
extern void     setup_decl         PV();
extern int      push_imports       PV();
extern void     pop_imports        PP( (int mark) );
extern void     import_ctx         PP( (Meaning *ctx) );
extern void     perm_import        PP( (Meaning *ctx) );
extern void     unimport           PP( (int mark) );
extern void     activatemeaning    PP( (Meaning *mp) );
extern void     pushctx            PP( (Meaning *ctx) );
extern void     popctx             PV();
extern void     forget_ctx         PP( (Meaning *ctx, int all) );
extern void     handle_nameof      PV();
extern int      issafename         PP( (Symbol *sp, int isglobal, int isdefine,
                                        int isfield) );
extern void     setupmeaning       PP( (Meaning *mp, Symbol *sym,
                                        enum meaningkind kind,
                                        enum meaningkind namekind) );
extern Meaning *addmeaningas       PP( (Symbol *sym, enum meaningkind kind,
                                        enum meaningkind namekind) );
extern Meaning *addmeaning         PP( (Symbol *sym, enum meaningkind kind) );
extern Meaning *addmeaningafter    PP( (Meaning *mpprev, Symbol *sym,
                                        enum meaningkind kind) );
extern void     unaddmeaning       PP( (Meaning *mp) );
extern void     readdmeaning       PP( (Meaning *mp) );
extern Meaning *addfield           PP( (Symbol *sym, Meaning ***flast,
                                        Type *rectype, Meaning *tname) );
extern int      isfiletype         PP( (Type *type, int big) );
extern int      israndomfile       PP( (Type *type) );
extern Meaning *isfilevar          PP( (Expr *ex) );
extern Type    *filebasetype       PP( (Type *type) );
extern Expr    *filebasename       PP( (Expr *ex) );
extern Expr    *filenamepart       PP( (Expr *ex) );
extern int      fileisbuffered     PP( (Expr *ex, int maybe) );
extern Type    *findbasetype_      PP( (Type *type, int flags) );
extern Type    *findbasetype       PP( (Type *type, int flags) );
extern Expr    *arraysize          PP( (Type *tp, int incskipped) );
extern Type    *promote_type       PP( (Type *tp) );
extern Type    *promote_type_bin   PP( (Type *t1, Type *t2) );
extern void     predeclare_varstruct PP( (Meaning *mp) );
extern void     outdeclarator      PP( (Type *type, char *name, int flags) );
extern Type    *canonicaltype      PP( (Type *type) );
extern int      identicaltypes     PP( (Type *t1, Type *t2) );
extern int      similartypes       PP( (Type *t1, Type *t2) );
extern int      tinyexpr           PP( (Expr *ex) );
extern void     declarefiles       PP( (Strlist *fnames) );
extern char    *variantfieldname   PP( (int num) );
extern int      record_is_union    PP( (Type *tp) );
extern void     outfieldlist       PP( (Meaning *mp) );
extern void     declarebigfile     PP( (Type *type) );
extern void     outbasetype        PP( (Type *type, int flags) );
extern void     out_type           PP( (Type *type, int flags) );
extern int      onewordstring      PP( (char *cp) );
extern int      onewordtype        PP( (Type *type, int flags) );
extern int      varstorageclass    PP( (Meaning *mp) );
extern char    *storageclassname   PP( (int i) );
extern void     declarevar         PP( (Meaning *mp, int which) );
extern int      checkvarmac        PP( (Meaning *mp) );
extern int      declarevars        PP( (Meaning *ctx, int invarstruct) );
extern void     redeclarevars      PP( (Meaning *ctx) );
extern void     out_argdecls       PP( (Type *ftype) );
extern void     makevarstruct      PP( (Meaning *func) );
extern Type    *maketype           PP( (enum typekind kind) );
extern Type    *makesubrangetype   PP( (Type *type, Expr *smin, Expr *smax) );
extern Type    *makesettype        PP( (Type *setof) );
extern Type    *makestringtype     PP( (int len) );
extern Type    *makepointertype    PP( (Type *type) );
extern Value    p_constant         PP( (Type *type) );
extern int      typebits           PP( (long smin, long smax) );
extern int      packedsize         PP( (char *fname, Type **typep, long *sizep,
                                        int mode) );
extern void     decl_comments      PP( (Meaning *mp) );
extern void     makestructtag      PP( (Type *type, char *tname) );
extern void     p_attributes       PV();
extern void     ignore_attributes  PV();
extern int      size_attributes    PV();
extern void     p_mech_spec        PP( (int doref) );
extern Type    *p_modula_subrange  PP( (Type *basetype) );
extern void     makefakestruct     PP( (Type *tp, Meaning *tname) );
extern Type    *p_type             PP( (Meaning *tname) );
extern Type    *p_funcdecl         PP( (int *isfunc, int istype) );
extern Symbol  *findlabelsym       PV();
extern void     p_labeldecl        PV();
extern Meaning *findfieldname      PP( (Symbol *sym, Meaning **variants,
                                        int *nvars) );
extern Expr    *p_constrecord      PP( (Type *type, int style) );
extern Expr    *p_constarray       PP( (Type *type, int style) );
extern Expr    *p_conststring      PP( (Type *type, int style) );
extern Expr    *p_subconst         PP( (Type *type, int style) );
extern void     p_constdecl        PV();
extern void     declaresubtypes    PP( (Meaning *mp) );
extern void     declaretype        PP( (Meaning *mp) );
extern int      preservetype       PP( (Type *type) );
extern void     declaretypes       PP( (int outflag) );
extern void     p_typedecl         PV();
extern void     setupfilevar       PP( (Meaning *mp) );
extern Meaning *validatedtype      PP( (Meaning *dtype, Type *type) );
extern void     p_vardecl          PP( (int iscommon) );
extern void     p_commondecl       PV();
extern void     p_valuedecl        PV();
extern Meaning *maketempvar        PP( (Type *type, char *name) );
extern Meaning *makestmttempvar    PP( (Type *type, char *name) );
extern Meaning *markstmttemps      PV();
extern void     freestmttemps      PP( (Meaning *mark) );
extern void     freetempvar        PP( (Meaning *tvar) );
extern void     canceltempvar      PP( (Meaning *tvar) );

/* Declarations from expr.c */
extern void     free_value         PP( (Value *val) );
extern Value    copyvalue          PP( (Value val) );
extern int      valuesame          PP( (Value a, Value b) );
extern char    *value_name         PP( (Value val, char *intfmt, int islong) );
extern Value    value_cast         PP( (Value val, Type *type) );
extern Type    *ord_type           PP( (Type *tp) );
extern int      long_type          PP( (Type *tp) );
extern Value    make_ord           PP( (Type *type, long i) );
extern long     ord_value          PP( (Value val) );
extern void     ord_range_expr     PP( (Type *type, Expr **smin, Expr **smax) );
extern int      ord_range          PP( (Type *type, long *smin, long *smax) );
extern void     freeexpr           PP( (Expr *ex) );
extern Expr    *makeexpr           PP( (enum exprkind kind, int n) );
extern Expr    *makeexpr_un        PP( (enum exprkind kind, Type *type,
                                        Expr *arg1) );
extern Expr    *makeexpr_bin       PP( (enum exprkind kind, Type *type,
                                        Expr *arg1, Expr *arg2) );
extern Expr    *makeexpr_val       PP( (Value val) );
extern Expr    *makeexpr_char      PP( (int c) );
extern Expr    *makeexpr_long      PP( (long i) );
extern Expr    *makeexpr_real      PP( (char *r) );
extern Expr    *makeexpr_lstring   PP( (char *msg, int len) );
extern Expr    *makeexpr_string    PP( (char *msg) );
extern int      checkstring        PP( (Expr *ex, char *msg) );
extern Expr    *makeexpr_var       PP( (Meaning *mp) );
extern Expr    *makeexpr_name      PP( (char *name, Type *type) );
extern Expr    *makeexpr_setbits   PV();
extern Expr    *makeexpr_bicall_0  PP( (char *name, Type *type) );
extern Expr    *makeexpr_bicall_1  PP( (char *name, Type *type, Expr *arg1) );
extern Expr    *makeexpr_bicall_2  PP( (char *name, Type *type, Expr *arg1,
                                        Expr *arg2) );
extern Expr    *makeexpr_bicall_3  PP( (char *name, Type *type, Expr *arg1,
                                        Expr *arg2, Expr *arg3) );
extern Expr    *makeexpr_bicall_4  PP( (char *name, Type *type, Expr *arg1,
                                        Expr *arg2, Expr *arg3, Expr *arg4) );
extern Expr    *makeexpr_bicall_5  PP( (char *name, Type *type, Expr *arg1,
                                        Expr *arg2, Expr *arg3, Expr *arg4,
                                        Expr *arg5) );
extern Expr    *makeexpr_SETIO     PP( (Expr *flag, char *code, Expr *name) );
extern Expr    *copyexpr           PP( (Expr *ex) );
extern int      exprsame           PP( (Expr *a, Expr *b, int strict) );
extern int      exprequiv          PP( (Expr *a, Expr *b) );
extern void     deletearg          PP( (Expr **ex, int n) );
extern void     insertarg          PP( (Expr **ex, int n, Expr *arg) );
extern Expr    *grabarg            PP( (Expr *ex, int n) );
extern void     delsimparg         PP( (Expr **ep, int n) );
extern Expr    *resimplify         PP( (Expr *ex) );
extern int      realzero           PP( (char *s) );
extern int      realint            PP( (char *s, int i) );
extern int      checkconst         PP( (Expr *ex, long val) );
extern int      isliteralconst     PP( (Expr *ex, Value *valp) );
extern int      isconstexpr        PP( (Expr *ex, long *valp) );
extern int      isconstantexpr     PP( (Expr *ex) );
extern Expr    *makeexpr_actcast   PP( (Expr *a, Type *type) );
extern Expr    *makeexpr_cast      PP( (Expr *a, Type *type) );
extern Expr    *gentle_cast        PP( (Expr *a, Type *type) );
extern Expr    *makeexpr_charcast  PP( (Expr *ex) );
extern Expr    *makeexpr_stringcast PP( (Expr *ex) );
extern int      exprlongness       PP( (Expr *ex) );
extern Expr    *makeexpr_longcast  PP( (Expr *a, int tolong) );
extern Expr    *makeexpr_arglong   PP( (Expr *a, int tolong) );
extern Expr    *makeexpr_unlongcast PP( (Expr *a) );
extern Expr    *makeexpr_forcelongness PP( (Expr *a) );
extern Expr    *makeexpr_ord       PP( (Expr *ex) );
extern int      expr_looks_neg     PP( (Expr *ex) );
extern int      expr_is_neg        PP( (Expr *ex) );
extern int      expr_neg_cost      PP( (Expr *a) );
extern Expr    *enum_to_int        PP( (Expr *a) );
extern Expr    *neg_inside_sum     PP( (Expr *a) );
extern Expr    *makeexpr_neg       PP( (Expr *a) );
extern Type    *true_type          PP( (Expr *ex) );
extern int      ischartype         PP( (Expr *ex) );
extern Expr    *makeexpr_plus      PP( (Expr *a, Expr *b) );
extern Expr    *makeexpr_minus     PP( (Expr *a, Expr *b) );
extern Expr    *makeexpr_inc       PP( (Expr *a, Expr *b) );
extern Expr    *distribute_plus    PP( (Expr *ex) );
extern Expr    *makeexpr_times     PP( (Expr *a, Expr *b) );
extern Expr    *makeexpr_sqr       PP( (Expr *ex, int cube) );
extern Expr    *makeexpr_divide    PP( (Expr *a, Expr *b) );
extern int      gcd                PP( (int a, int b) );
extern int      negsigns           PP( (int mask) );
extern int      possiblesigns      PP( (Expr *ex) );
extern Expr    *dodivmod           PP( (char *funcname, enum exprkind ekind,
                                        Expr *a, Expr *b) );
extern Expr    *makeexpr_div       PP( (Expr *a, Expr *b) );
extern Expr    *makeexpr_mod       PP( (Expr *a, Expr *b) );
extern Expr    *makeexpr_rem       PP( (Expr *a, Expr *b) );
extern int      expr_not_cost      PP( (Expr *a) );
extern Expr    *makeexpr_not       PP( (Expr *a) );
extern Type    *mixsets            PP( (Expr **ep1, Expr **ep2) );
extern Meaning *istempprocptr      PP( (Expr *ex) );
extern Expr    *makeexpr_stringify PP( (Expr *ex) );
extern Expr    *makeexpr_rel       PP( (enum exprkind rel, Expr *a, Expr *b) );
extern Expr    *makeexpr_and       PP( (Expr *a, Expr *b) );
extern Expr    *makeexpr_or        PP( (Expr *a, Expr *b) );
extern Expr    *makeexpr_range     PP( (Expr *ex, Expr *exlow, Expr *exhigh,
                                        int higheq) );
extern Expr    *makeexpr_cond      PP( (Expr *c, Expr *a, Expr *b) );
extern int      expr_is_lvalue     PP( (Expr *ex) );
extern int      expr_has_address   PP( (Expr *ex) );
extern Expr    *checknil           PP( (Expr *ex) );
extern int      checkvarinlists    PP( (Strlist *yes, Strlist *no, int def,
                                        Meaning *mp) );
extern void     requirefilebuffer  PP( (Expr *ex) );
extern Expr    *makeexpr_hat       PP( (Expr *a, int check) );
extern Expr    *un_sign_extend     PP( (Expr *a) );
extern Expr    *makeexpr_addr      PP( (Expr *a) );
extern Expr    *makeexpr_addrstr   PP( (Expr *a) );
extern Expr    *makeexpr_addrf     PP( (Expr *a) );
extern Expr    *makeexpr_index     PP( (Expr *a, Expr *b, Expr *offset) );
extern Expr    *makeexpr_type      PP( (Type *type) );
extern Expr    *makeexpr_sizeof    PP( (Expr *ex, int incskipped) );
extern int      exprspeed          PP( (Expr *ex) );
extern int      noargdependencies  PP( (Expr *ex, int vars) );
extern int      nodependencies     PP( (Expr *ex, int vars) );
extern int      exprdependsvar     PP( (Expr *ex, Meaning *mp) );
extern int      exprdepends        PP( (Expr *ex, Expr *ex2) );
extern int      nosideeffects_func PP( (Expr *ex) );
extern int      deterministic_func PP( (Expr *ex) );
extern int      noargsideeffects   PP( (Expr *ex, int mode) );
extern int      nosideeffects      PP( (Expr *ex, int mode) );
extern int      exproccurs         PP( (Expr *ex, Expr *ex2) );
extern Expr    *singlevar          PP( (Expr *ex) );
extern int      structuredfunc     PP( (Expr *ex) );
extern int      strlapfunc         PP( (Expr *ex) );
extern Meaning *istempvar          PP( (Expr *ex) );
extern Meaning *totempvar          PP( (Expr *ex) );
extern Meaning *isretvar           PP( (Expr *ex) );
extern Expr    *bumpstring         PP( (Expr *ex, Expr *index, int offset) );
extern long     po2m1              PP( (int n) );
extern int      isarithkind        PP( (enum exprkind kind) );
extern Expr    *makeexpr_assign    PP( (Expr *a, Expr *b) );
extern Expr    *makeexpr_comma     PP( (Expr *a, Expr *b) );
extern int      strmax             PP( (Expr *ex) );
extern int      strhasnull         PP( (Value val) );
extern int      istempsprintf      PP( (Expr *ex) );
extern Expr    *makeexpr_sprintfify PP( (Expr *ex) );
extern Expr    *makeexpr_unsprintfify PP( (Expr *ex) );
extern int      sprintflength      PP( (Expr *ex, int allownulls) );
extern Expr    *makeexpr_concat    PP( (Expr *a, Expr *b, int usesprintf) );
extern Expr    *cleansprintf       PP( (Expr *ex) );
extern Expr    *makeexpr_substring PP( (Expr *vex, Expr *ex, Expr *exi,
                                        Expr *exj) );
extern Expr    *makeexpr_dot       PP( (Expr *ex, Meaning *mp) );
extern Expr    *makeexpr_dotq      PP( (Expr *ex, char *name, Type *type) );
extern Expr    *strmax_func        PP( (Expr *ex) );
extern Expr    *makeexpr_nil       PV();
extern Expr    *makeexpr_ctx       PP( (Meaning *ctx) );
extern Expr    *force_signed       PP( (Expr *ex) );
extern Expr    *force_unsigned     PP( (Expr *ex) );
extern long     type_sizeof        PP( (Type *type, int pasc) );
extern Value    eval_expr          PP( (Expr *ex) );
extern Value    eval_expr_consts   PP( (Expr *ex) );
extern Value    eval_expr_pasc     PP( (Expr *ex) );
extern int      expr_is_const      PP( (Expr *ex) );
extern Expr    *eatcasts           PP( (Expr *ex) );

/* Declarations from pexpr.c */
extern Expr    *dots_n_hats        PP( (Expr *ex, Type *target) );
extern Expr    *p_index            PP( (Expr *ex, Expr *ex2) );
extern Expr    *fake_dots_n_hats   PP( (Expr *ex) );
extern void     var_reference      PP( (Meaning *mp) );
extern Expr    *expr_reference     PP( (Expr *ex) );
extern Expr    *p_variable         PP( (Type *target) );
extern Expr    *p_ord_expr         PV();
extern Expr    *packset            PP( (Expr *ex, Type *type) );
extern Expr    *p_setfactor        PP( (Type *target, int sure) );
extern Expr    *p_funcarglist      PP( (Expr *ex, Meaning *args, int firstarg,
                                        int ismacro) );
extern Expr    *replacemacargs     PP( (Expr *ex, Expr *fex) );
extern Expr    *p_noarglist        PP( (Expr *ex, Meaning *mp, Meaning *args) );
extern void     func_reference     PP( (Meaning *func) );
extern Expr    *p_memcall          PP( (Expr *expr, Meaning *mp) );
extern Expr    *p_funccall         PP( (Meaning *mp) );
extern Expr    *accumulate_strlit  PV();
extern Expr    *pascaltypecast     PP( (Type *type, Expr *ex2) );
extern Expr    *p_sexpr            PP( (Type *target) );
extern Expr    *p_rexpr            PP( (Type *target) );
extern Expr    *p_andexpr          PP( (Type *target) );
extern Expr    *p_expr             PP( (Type *target) );
extern Type    *nametotype         PP( (char *name) );
extern int      istypespec         PP( (int iscast) );
extern Expr    *pc_parentype       PP( (char *cp) );
extern Expr    *pc_typename        PV();
extern Expr    *pc_factor          PV();
extern Expr    *pc_expr2           PP( (int prec) );
extern Expr    *pc_expr            PV();
extern Expr    *pc_expr_str        PP( (char *buf) );
extern Expr    *fixexpr            PP( (Expr *ex, int env) );
extern void     out_var            PP( (Meaning *mp, int prec) );
extern void     out_field          PP( (Meaning *mp) );
extern void     out_expr           PP( (Expr *ex) );
extern void     out_expr_top       PP( (Expr *ex) );
extern void     out_expr_factor    PP( (Expr *ex) );
extern void     out_expr_parens    PP( (Expr *ex) );
extern void     out_expr_stmt      PP( (Expr *ex) );
extern void     out_expr_bool      PP( (Expr *ex) );

/* Declarations from funcs.c */
extern void     setup_funcs        PV();
extern int      isvar              PP( (Expr *ex, Meaning *mp) );
extern char    *getstring          PP( (Expr *ex) );
extern Expr    *p_parexpr          PP( (Type *target) );
extern Type    *argbasetype        PP( (Expr *ex) );
extern Type    *choosetype         PP( (Type *t1, Type *t2) );
extern Expr    *convert_offset     PP( (Type *type, Expr *ex2) );
extern Expr    *convert_size       PP( (Type *type, Expr *ex, char *name) );
extern Stmt    *proc_assert        PV();
extern Stmt    *wrapopencheck      PP( (Stmt *sp, Expr *fex) );
extern void     parse_special_variant PP( (Type *tp, char *buf) );
extern char    *find_special_variant PP( (char *buf, char *spname,
                                          Strlist *splist, int need) );
extern int      is_std_file        PP( (Expr *ex) );
extern Stmt    *proc_exit          PV();
extern Stmt    *doseek             PP( (Expr *fex, Expr *ex) );
extern Expr    *writeelement       PP( (Expr *ex, Expr *wid, Expr *prec,
                                        int base) );
extern void     decl_builtins      PV();

/* Declarations from dir.c */
extern void     init_dir           PV();
extern void     setup_dir          PV();
extern void     setup_module       PP( (char *name, int defn) );
extern void     fix_parameters     PV();
extern Stmt    *fix_statement      PP( (Stmt *sp) );
extern Expr    *fix_expression     PP( (Expr *ex, int env) );
extern Expr    *fix_bicall         PP( (Expr *ex, int env) );
extern int      boolean_bicall     PP( (char *name) );
extern unsigned int safemask_bicall PP( (char *name) );
extern int      sideeffects_bicall PP( (char *name) );

/* Declarations from hpmods.c */
extern void     hpmods             PP( (char *name, int defn) );

/* Declarations from citmods.c */
extern void     citmods            PP( (char *name, int defn) );


/* End. */

