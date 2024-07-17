/* misc2.c */
int virtual_active(void);
int getviscol(void);
int coladvance_force(colnr_T wcol);
int getviscol2(colnr_T col, colnr_T coladd);
int coladvance(colnr_T wantcol);
int getvpos(pos_T *pos, colnr_T wantcol);
int inc_cursor(void);
int inc(pos_T *lp);
int incl(pos_T *lp);
int dec_cursor(void);
int dec(pos_T *lp);
int decl(pos_T *lp);
linenr_T get_cursor_rel_lnum(win_T *wp, linenr_T lnum);
void check_pos(buf_T *buf, pos_T *pos);
void check_cursor_lnum(void);
void check_cursor_col(void);
void check_cursor_col_win(win_T *win);
void check_cursor(void);
void check_visual_pos(void);
void adjust_cursor_col(void);
int set_leftcol(colnr_T leftcol);
int copy_option_part(char_u **option, char_u *buf, int maxlen, char *sep_chars);
int vim_isspace(int x);
int simplify_key(int key, int *modifiers);
int handle_x_keys(int key);
char_u *get_special_key_name(int c, int modifiers);
int trans_special(char_u **srcp, char_u *dst, int flags, int escape_ks, int *did_simplify);
int special_to_buf(int key, int modifiers, int escape_ks, char_u *dst);
int find_special_key(char_u **srcp, int *modp, int flags, int *did_simplify);
int may_adjust_key_for_ctrl(int modifiers, int key);
int may_remove_shift_modifier(int modifiers, int key);
int extract_modifiers(int key, int *modp, int simplify, int *did_simplify);
int find_special_key_in_table(int c);
int get_special_key_code(char_u *name);
char_u *get_key_name(int i);
int get_fileformat(buf_T *buf);
int get_fileformat_force(buf_T *buf, exarg_T *eap);
void set_fileformat(int t, int opt_flags);
int default_fileformat(void);
int call_shell(char_u *cmd, int opt);
int get_real_state(void);
int after_pathsep(char_u *b, char_u *p);
int same_directory(char_u *f1, char_u *f2);
int vim_chdirfile(char_u *fname, char *trigger_autocmd);
int vim_stat(const char *name, stat_T *stp);
char *parse_shape_opt(int what);
int get_shape_idx(int mouse);
void update_mouseshape(int shape_idx);
void f_getmouseshape(typval_T *argvars, typval_T *rettv);
int vim_chdir(char_u *new_dir);
int get_user_name(char_u *buf, int len);
void free_username(void);
int filewritable(char_u *fname);
int get2c(FILE *fd);
int get3c(FILE *fd);
int get4c(FILE *fd);
char_u *read_string(FILE *fd, int cnt);
int put_bytes(FILE *fd, long_u nr, int len);
int mch_parse_cmd(char_u *cmd, int use_shcf, char ***argv, int *argc);
int build_argv_from_string(char_u *cmd, char ***argv, int *argc);
int build_argv_from_list(list_T *l, char ***argv, int *argc);
int get_special_pty_type(void);
int cmp_keyvalue_value(const void *a, const void *b);
int cmp_keyvalue_value_n(const void *a, const void *b);
int cmp_keyvalue_value_i(const void *a, const void *b);
int cmp_keyvalue_value_ni(const void *a, const void *b);
/* vim: set ft=c : */
