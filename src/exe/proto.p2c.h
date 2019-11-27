
/* Declarations created by "makeproto" on Tue Jan  5 11:58:04 2016 */

/* Declarations from trans.c */
#ifdef PROTO_TRANS_C
Static void initrc();
Static int readrc(char* rcname, int need);
Static void postrc();
Static void openlogfile();
#endif /*PROTO_TRANS_C*/

/* Declarations from stuff.c */
#ifdef PROTO_STUFF_C
Static void cvcase(char* buf, int flags);
#endif /*PROTO_STUFF_C*/

/* Declarations from out.c */
#ifdef PROTO_OUT_C
Static void leading_tab(int col);
Static void flush_outbuf (int numbreaks, const int* breakpos, int* breakindent, int numedits, const int* editpos, char* editold, const char* editnew);
Static int readquotes(int* posp, int err);
Static int readparens(int* posp, int err);
Static int measurechars(int first, int last);
Static void makeedit(int pos, int ch);
Static void unedit();
Static int parencount(Paren* par);
Static int trybreakline (int pos, int count, int indent, double badness, int flags, Paren* parens);
#endif /*PROTO_OUT_C*/

/* Declarations from comment.c */
#ifdef PROTO_COMMENT_C
Static void attach_mark(Stmt* sp);
#endif /*PROTO_COMMENT_C*/

/* Declarations from lex.c */
#ifdef PROTO_LEX_C
Static void makekeyword(char* name);
Static void makeglobword(char* name);
Static void makekeywords();
Static Symbol* Pkeyword(char* name, Token tok);
Static Symbol* Pkeywordposs(char* name, Token tok);
Static void makePascalwords();
Static void deterministic(char* name);
Static void nosideeff(char* name);
Static void recordsideeffects();
Static void push_input();
Static int parsecomment(int p2c_only, int starparen);
Static void comment(int starparen);
Static int getflag();
#endif /*PROTO_LEX_C*/

/* Declarations from parse.c */
#ifdef PROTO_PARSE_C
Static void forward_decl(Meaning* func, int isextern);
Static Stmt* p_stmt(Stmt* slist, int sflags);
Static int usebraces(Stmt* sp, int opts);
Static void outnl(int serial);
Static void out_block(Stmt* spbase, int opts, int serial);
Static int checkreturns(Stmt** spp, int nearret);
Static int isescape(Expr* ex);
Static int deadendblock(Stmt* sp, int breaks);
Static int propcheckexprokay(Expr* ex);
Static int findpropexpr(Expr* ex, int prop, int add);
Static void findpropchecksexpr(Expr* ex);
Static void findpropchecks(Stmt* sp);
Static void checkpropzero (Expr * ex, long* truep, long* falsep, int nonzero);
Static void checkpropsexpr (Expr * ex, Stmt* sp, long* truep, long* falsep);
Static void checkprops(Stmt* sp, long* truep, long* falsep);
Static int checkelimexpr(Expr* ex, Expr* ex2);
Static int checkelims(Stmt* sp, Expr* ex, int depth, int last);
Static int checkcomma_expr(Stmt** spp, Expr** exp);
Static void checkcommas(Stmt** spp);
Static int checkvarchangeable(Expr* ex, Meaning* mp);
Static void findinitsexpr(Expr* ex);
Static int findinitscheckexpr(Expr* ex, Meaning* mp);
Static int findinitscheckstmt(Stmt* sp, Meaning* mp);
Static int anygotos(Stmt* sp);
Static void findinits(Stmt* sp, int depth, int okay);
Static Stmt* p_body();
Static void out_function(Meaning* func);
Static void scanfwdparams(Meaning* mp);
Static void p_function(int isfunc);
Static void out_include(char* name, int quoted);
Static void cleanheadername(char* dest, char* name);
Static int tryimport (Symbol * sym, char* fname, char* ext, int need);
Static void p_import(int inheader);
Static void skipunitheader();
Static void skiptomodule();
Static void p_moduleinit(Meaning* mod);
Static void p_nested_module();
Static int p_module(int ignoreit, int isdefn);
#endif /*PROTO_PARSE_C*/

/* Declarations from decl.c */
#ifdef PROTO_DECL_C
Static Meaning* findstandardmeaning(enum meaningkind kind, char* name);
Static Meaning* makestandardmeaning(enum meaningkind kind, char* name);
Static Type* makestandardtype(enum typekind kind, Meaning* mp);
Static Stmt* nullspecialproc(Meaning* mp);
Static Stmt* nullstandardproc(Expr* ex);
Static Expr* nullspecialfunc(Meaning* mp);
Static Expr* nullstandardfunc(Expr* ex);
Static Expr* nullspecialvar(Meaning* mp);
Static void initmeaning(Meaning* mp);
Static void declare_args(Type* type, int isheader, int isforward);
Static int checkstructconst(Meaning* mp);
Static int mixable (Meaning * mp1, Meaning* mp2, int args, int flags);
Static int checkvarmacdef(Expr* ex, Meaning* mp);
Static void fielddecl (Meaning * mp, Type** type, Type** tp2, long* val, int ispacked, int* aligned);
Static void realignfields(Meaning* firstmp, Meaning* stopmp);
static void tryrealignfields(Meaning* firstmp);
Static void p_fieldlist (Type * tp, Meaning** flast, int ispacked, Meaning* tname);
Static Type* p_arraydecl (char* tname, int ispacked, Meaning*** confp);
Static Type* p_conformant_array(char* tname, Meaning*** confp);
Static void nameexternalvar(Meaning* mp, char* name);
Static void handlebrackets(Meaning* mp, int skip, int wasaliased);
Static void handleabsolute(Meaning* mp, int skip);
#endif /*PROTO_DECL_C*/

/* Declarations from expr.c */
#ifdef PROTO_EXPR_C
Static Expr* docast(Expr* a, Type* type);
Static Expr* dolongcast(Expr* a, int tolong);
Static Expr* commute(Expr* a, Expr* b, enum exprkind kind);
Static Value eval_expr_either(Expr* ex, int pasc);
#endif /*PROTO_EXPR_C*/

/* Declarations from pexpr.c */
#ifdef PROTO_PEXPR_C
Static void bindnames(Expr* ex);
Static Expr* makesmallsetconst(long bits, Type* type);
Static Expr* p_factor(Type* target);
Static Expr* p_powterm(Type* target);
Static Expr* p_term(Type* target);
Static int incompat(Expr* ex, int num, int prec);
Static void outop3(int breakbefore, char* name);
Static void out_ctx(Meaning* ctx, int address);
Static int scanfield (Meaning * *variants, short* unions, int lev, Meaning* mp, Meaning* field);
Static void wrexpr(Expr* ex, int prec);
#endif /*PROTO_PEXPR_C*/

/* Declarations from funcs.c */
#ifdef PROTO_FUNCS_C
Static Expr* func_abs();
Static Expr* func_addr();
Static Expr* func_iaddress();
Static Expr* func_addtopointer();
Static Expr* checkfilename(Expr* nex);
Static Stmt* assignfilename(Expr* fex, Expr* nex);
Static Stmt* proc_assign();
Static Stmt* handleopen(int code);
Static Stmt* proc_append();
Static Expr* func_arccos(Expr* ex);
Static Expr* func_arcsin(Expr* ex);
Static Expr* func_arctan(Expr* ex);
Static Expr* func_arctanh(Expr* ex);
Static Stmt* proc_argv();
Static Expr* func_asr();
Static Expr* func_lsl();
Static Expr* func_lsr();
Static Expr* func_bin();
Static Expr* func_binary(Expr* ex);
Static Expr* handle_bitsize(int next);
Static Expr* func_bitsize();
Static Expr* func_bitnext();
Static Expr* func_blockread();
Static Expr* func_blockwrite();
Static Stmt* proc_blockread();
Static Stmt* proc_blockwrite();
Static Stmt* proc_bclr();
Static Stmt* proc_bset();
Static Expr* func_bsl();
Static Expr* func_bsr();
Static Expr* func_btst();
Static Expr* func_byteread();
Static Expr* func_bytewrite();
Static Expr* func_byte_offset();
Static Stmt* proc_call();
Static Expr* func_chr();
Static Stmt* proc_close();
Static Expr* func_concat();
Static Expr* func_copy(Expr* ex);
Static Expr* func_cos(Expr* ex);
Static Expr* func_cosh(Expr* ex);
Static Stmt* proc_cycle();
Static Stmt* proc_date();
Static Stmt* proc_dec();
Static Expr* func_dec();
Static Stmt* proc_delete(Expr* ex);
Static Expr* parse_constructor(Type* type, Expr* var);
Static char* choose_free_func(Expr* ex);
Static int usenewdelete(Type* tp);
Static Stmt* proc_dispose();
Static Expr* func_exp(Expr* ex);
Static Expr* func_expo(Expr* ex);
Static Expr* iofunc(Expr* ex, int code);
Static Expr* func_eof();
Static Expr* func_eoln();
Static Stmt* proc_escape();
Static Stmt* proc_excl();
Static Expr* file_iofunc(int code, long base);
Static Expr* func_fcall();
Static Expr* func_filepos();
Static Expr* func_filesize();
Static Stmt* proc_fillchar();
Static Expr* func_sngl();
Static Expr* func_float();
Static Stmt* proc_flush();
Static Expr* func_frac(Expr* ex);
Static Stmt* proc_freemem(Expr* ex);
Static Stmt* proc_get();
Static Stmt* proc_getmem(Expr* ex);
Static Stmt* proc_gotoxy(Expr* ex);
Static Stmt* proc_halt();
Static Expr* handle_vax_hex(Expr* ex, char* fmt, int scale);
Static Expr* func_hex();
Static Expr* func_hi();
Static Expr* func_high();
Static Expr* func_hiword();
Static Stmt* proc_inc();
Static Stmt* proc_incl();
Static Stmt* proc_insert(Expr* ex);
Static Expr* func_int();
Static Expr* func_uint();
Static Stmt* proc_leave();
Static Expr* func_lint();
Static Expr* func_lo();
Static Expr* func_loophole();
Static Expr* func_lower();
Static Expr* func_loword();
Static Expr* func_ln(Expr* ex);
Static Expr* func_log(Expr* ex);
Static Expr* func_max();
Static Expr* func_maxavail(Expr* ex);
Static Expr* func_maxpos();
Static Expr* func_memavail(Expr* ex);
Static Expr* var_mem();
Static Expr* var_memw();
Static Expr* var_meml();
Static Expr* func_min();
Static Stmt* proc_move(Expr* ex);
Static Stmt* proc_move_fast();
Static Stmt* proc_new();
Static Expr* func_new_turbo();
Static Expr* handle_new(Expr* ex);
Static Expr* func_oct();
Static Expr* func_octal(Expr* ex);
Static Expr* func_odd(Expr* ex);
Static Expr* func_ofs();
Static Expr* func_seg();
Static Stmt* proc_open();
Static Expr* func_ord();
Static Expr* func_ord4();
Static Stmt* proc_pack();
Static Expr* func_pad(Expr* ex);
Static Stmt* proc_page();
Static Expr* func_paramcount(Expr* ex);
Static Expr* func_paramstr(Expr* ex);
Static Expr* func_pi();
Static Expr* var_port();
Static Expr* var_portw();
Static Expr* func_pos(Expr* ex);
Static Expr* func_ptr(Expr* ex);
Static Expr* func_position();
Static Expr* func_pred();
Static Stmt* proc_put();
Static Expr* func_pwroften(Expr* ex);
Static Stmt* proc_reset();
Static Stmt* proc_rewrite();
Static Expr* makegetchar(Expr* fex);
Static Stmt* fixscanf(Stmt* sp, Expr* fex);
Static Expr* makefgets(Expr* vex, Expr* lex, Expr* fex);
Static Stmt* skipeoln(Expr* fex);
Static Stmt* handleread_text(Expr* fex, Expr* var, int isreadln);
Static Stmt* handleread_bin(Expr* fex, Expr* var);
Static Stmt* proc_read();
Static Stmt* proc_readdir();
Static Stmt* proc_readln();
Static Stmt* proc_readv();
Static Stmt* proc_strread();
Static Expr* func_random();
Static Stmt* proc_randomize();
Static Expr* func_round(Expr* ex);
Static Stmt* proc_unpack();
Static Expr* func_uround(Expr* ex);
Static Expr* func_scan();
Static Expr* func_scaneq(Expr* ex);
Static Expr* func_scanne(Expr* ex);
Static Stmt* proc_seek();
Static Expr* func_seekeof();
Static Expr* func_seekeoln();
Static Expr* func_self();
Static Stmt* proc_setstrlen();
Static Stmt* proc_settextbuf();
Static Expr* func_sin(Expr* ex);
Static Expr* func_sinh(Expr* ex);
Static Expr* func_sizeof();
Static Expr* func_statusv();
Static Expr* func_str_hp(Expr* ex);
Static Stmt* proc_strappend();
Static Stmt* proc_strdelete();
Static Stmt* proc_strinsert();
Static Stmt* proc_strmove();
Static Expr* func_strlen(Expr* ex);
Static Expr* func_strltrim(Expr* ex);
Static Expr* func_strmax(Expr* ex);
Static Expr* func_strpos(Expr* ex);
Static Expr* func_strrpt(Expr* ex);
Static Expr* func_strrtrim(Expr* ex);
Static Expr* func_succ();
Static Expr* func_sqr();
Static Expr* func_sqrt(Expr* ex);
Static Expr* func_swap(Expr* ex);
Static Expr* func_tan(Expr* ex);
Static Expr* func_tanh(Expr* ex);
Static Expr* func_trunc(Expr* ex);
Static Expr* func_typeof();
Static Expr* func_utrunc(Expr* ex);
Static Expr* func_uand();
Static Expr* func_ub();
Static Expr* func_udec();
Static Expr* func_unot();
Static Expr* func_uor();
Static Expr* func_upcase(Expr* ex);
Static Expr* func_upper();
Static Expr* func_uxor();
Static Expr* func_val_modula();
Static Stmt* proc_val_turbo();
Static Expr* writestrelement (Expr * ex, Expr* wid, Expr* vex, int code, int needboth);
Static char* makeenumnames(Type* tp);
Static Stmt* handlewrite_text(Expr* fex, Expr* ex, int iswriteln);
Static Stmt* handlewrite_bin(Expr* fex, Expr* ex);
Static Stmt* proc_write();
Static Stmt* handle_modula_write(char* fmt);
Static Stmt* proc_writecard();
Static Stmt* proc_writeint();
Static Stmt* proc_writehex();
Static Stmt* proc_writeoct();
Static Stmt* proc_writereal();
Static Stmt* proc_writedir();
Static Stmt* handlewriteln(int iswriteln);
Static Stmt* proc_overprint();
Static Stmt* proc_prompt();
Static Stmt* proc_writeln();
Static Stmt* proc_message();
Static Stmt* proc_writev();
Static Stmt* proc_strwrite(Meaning* mp_x, Stmt* spbase);
Static Stmt* proc_str_turbo();
Static Stmt* proc_time();
Static Expr* func_xor();
#endif /*PROTO_FUNCS_C*/

/* Declarations from dir.c */
#ifdef PROTO_DIR_C
Static void _setup(char* name, int defn);
#endif /*PROTO_DIR_C*/

/* Declarations from hpmods.c */
#ifdef PROTO_HPMODS_C
Static Stmt* proc_freadbytes();
Static Stmt* proc_fwritebytes();
Static void setup_sysglobals();
#endif /*PROTO_HPMODS_C*/

/* Declarations from citmods.c */
#ifdef PROTO_CITMODS_C
Static Stmt* proc_na_fillbyte(Expr* ex);
Static Stmt* proc_na_fill(Expr* ex);
Static Stmt* proc_na_move(Expr* ex);
Static Stmt* proc_na_exch(Expr* ex);
Static Expr* func_na_comp(Expr* ex);
Static Expr* func_na_scaneq(Expr* ex);
Static Expr* func_na_scanne(Expr* ex);
Static Stmt* proc_na_new(Expr* ex);
Static Stmt* proc_na_dispose(Expr* ex);
Static Stmt* proc_na_alloc(Expr* ex);
Static Stmt* proc_na_outeralloc(Expr* ex);
Static Stmt* proc_na_free(Expr* ex);
Static Expr* func_na_memavail(Expr* ex);
Static Expr* func_na_and(Expr* ex);
Static Expr* func_na_bic(Expr* ex);
Static Expr* func_na_or(Expr* ex);
Static Expr* func_na_xor(Expr* ex);
Static Expr* func_na_not(Expr* ex);
Static Expr* func_na_mask(Expr* ex);
Static int check0_31(Expr* ex);
Static Expr* func_na_test(Expr* ex);
Static Stmt* proc_na_set(Expr* ex);
Static Stmt* proc_na_clear(Expr* ex);
Static Expr* func_na_po2(Expr* ex);
Static Expr* func_na_lobits(Expr* ex);
Static Expr* func_na_hibits(Expr* ex);
Static Expr* func_na_asl(Expr* ex);
Static Expr* func_na_lsl(Expr* ex);
Static Stmt* proc_na_bfand(Expr* ex);
Static Stmt* proc_na_bfbic(Expr* ex);
Static Stmt* proc_na_bfor(Expr* ex);
Static Stmt* proc_na_bfxor(Expr* ex);
Static Expr* func_imin(Expr* ex);
Static Expr* func_imax(Expr* ex);
Static Expr* func_na_add(Expr* ex);
Static Expr* func_na_sub(Expr* ex);
Static Stmt* proc_return();
Static Expr* func_charupper(Expr* ex);
Static Expr* func_charlower(Expr* ex);
Static Expr* func_strint(Expr* ex);
Static Expr* func_strint2(Expr* ex);
Static Expr* func_strhex(Expr* ex);
Static Expr* func_strreal(Expr* ex);
Static Expr* func_strchar(Expr* ex);
Static Expr* func_strreadint(Expr* ex);
Static Expr* func_strreadreal(Expr* ex);
Static Stmt* proc_strappendc(Expr* ex);
Static Expr* func_strbegins(Expr* ex);
Static Expr* func_strcontains(Expr* ex);
Static Expr* func_strsub(Expr* ex);
Static Expr* func_strpart(Expr* ex);
Static Expr* func_strequal(Expr* ex);
Static Expr* func_strcmp(Expr* ex);
Static Expr* func_strljust(Expr* ex);
Static Expr* func_strrjust(Expr* ex);
Static Stmt* proc_strnew(Expr* ex);
Static Stmt* proc_strlist_add(Expr* ex);
Static Stmt* proc_strlist_append(Expr* ex);
Static Stmt* proc_strlist_insert(Expr* ex);
Static Stmt* proc_fixfname(Expr* ex);
Static Stmt* proc_forcefname(Expr* ex);
Static Expr* func_stdin();
Static Expr* func_stdout();
Static Expr* func_stderr();
Static Stmt* proc_m_color(Expr* ex);
#endif /*PROTO_CITMODS_C*/

/* End. */
