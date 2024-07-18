/* ui.c */
void ui_write(char_u *s, int len, int console);
void ui_inchar_undo(char_u *s, int len);
int ui_inchar(char_u *buf, int maxlen, long wtime, int tb_change_cnt);
int inchar_loop(char_u *buf, int maxlen, long wtime, int tb_change_cnt, int (*wait_func)(long wtime, int *interrupted, int ignore_input), int (*resize_func)(int check_only));
int ui_wait_for_chars_or_timer(long wtime, int (*wait_func)(long wtime, int *interrupted, int ignore_input), int *interrupted, int ignore_input);
int ui_char_avail(void);
void ui_delay(long msec_arg, int ignoreinput);
void ui_suspend(void);
void suspend_shell(void);
int ui_get_shellsize(void);
void ui_set_shellsize(int mustset);
void ui_new_shellsize(void);
int ui_get_winpos(int *x, int *y, varnumber_T timeout);
void ui_breakcheck(void);
void ui_breakcheck_force(int force);
int vim_is_input_buf_full(void);
int vim_is_input_buf_empty(void);
int vim_free_in_input_buf(void);
int vim_used_in_input_buf(void);
char_u *get_input_buf(void);
void set_input_buf(char_u *p, int overwrite);
void add_to_input_buf(char_u *s, int len);
void add_to_input_buf_csi(char_u *str, int len);
void trash_input_buf(void);
int read_from_input_buf(char_u *buf, long maxlen);
void fill_input_buf(int exit_on_error);
void read_error_exit(void);
void ui_cursor_shape_forced(int forced);
void ui_cursor_shape(void);
int check_col(int col);
int check_row(int row);
long scroll_line_len(linenr_T lnum);
linenr_T ui_find_longest_lnum(void);
void ui_focus_change(int in_focus);
void im_save_status(long *psave);
/* vim: set ft=c : */
