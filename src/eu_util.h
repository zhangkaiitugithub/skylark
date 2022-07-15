/******************************************************************************
 * This file is part of Skylark project
 * Copyright ©2022 Hua andy <hua.andy@gmail.com>

 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * at your option any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 *******************************************************************************/

#ifndef _H_SKYLARK_UTIL_
#define _H_SKYLARK_UTIL_

#ifndef MAX
#define MAX(_a_, _b_) ((_a_) > (_b_) ? (_a_) : (_b_))
#endif

#ifndef MIN
#define MIN(_a_, _b_) ((_a_) < (_b_) ? (_a_) : (_b_))
#endif

#ifndef UTIL_SWAP
#define UTIL_SWAP(TYPE,A,B) {TYPE t=A; A=B; B=t;}
#endif

typedef struct UTIL_STREAM_DESC_* pt_stream;
typedef void (*ptr_stream_close)(pt_stream pstream);
typedef struct  UTIL_STREAM_DESC_
{
    size_t               size;
    uintptr_t            base;
    ptr_stream_close     close;
} util_stream;

#ifdef __cplusplus
extern "C"
{
#endif

int util_aes_enc(unsigned char *dec, unsigned char *enc, int len);
int util_aes_dec(unsigned char *enc, unsigned char *dec, int len);
int util_enc_des_ecb_192(unsigned char *key_192bits, unsigned char *decrypt, long decrypt_len, unsigned char *encrypt, long *encrypt_len);
int util_dec_des_ecb_192(unsigned char *key_192bits, unsigned char *encrypt, long encrypt_len, unsigned char *decrypt, long *decrypt_len);
int util_enc_des_cbc_192(unsigned char *key_192bits, unsigned char *decrypt, long decrypt_len, unsigned char *encrypt, long *encrypt_len, unsigned char *init_vector);
int util_dec_des_cbc_192(unsigned char *key_192bits, unsigned char *encrypt, long encrypt_len, unsigned char *decrypt, long *decrypt_len, unsigned char *init_vector);

int util_file_md5(const TCHAR *path, TCHAR *out, int out_len);
int util_file_sha1(const TCHAR *path, TCHAR *out, int out_len);
int util_file_sha256(const TCHAR *path, TCHAR *out, int out_len);

int util_hex_expand(char *hex_buf, int hex_len, char *asc_buf);
int util_hex_fold(char *asc_buf, int asc_len, char *hex_buf);
int util_set_title(const TCHAR *filename);
int util_set_working_dir(const TCHAR *path, TCHAR **old);
int util_query_hostname(char *hostname, char *ip, int bufsize);
int util_effect_line(eu_tabpage *pnode, sptr_t *, sptr_t *);
int util_get_hex_byte(const char *p);
int util_strnspace(const char *s1, const char *s2);

char*  util_unix_newline(const char *in, const size_t in_size);
char*  util_strdup_select(eu_tabpage *pnode, size_t *text_len, size_t multiple);
char*  util_strdup_line(eu_tabpage *pnode, sptr_t line_number, size_t *plen);
char*  util_strdup_content(eu_tabpage *pnode, size_t *plen);
void   util_push_text_dlg(eu_tabpage *pnode, HWND hwnd);
void   util_enable_menu_item(HMENU hmenu, uint32_t m_id, bool enable);
void   util_set_menu_item(HMENU hmenu, uint32_t m_id, bool checked);
void   util_update_menu_chars(HMENU hmenu, uint32_t m_id, int width);
void   util_upper_string(char *str);
void   util_kill_thread(uint32_t pid);
void   util_wait_cursor(eu_tabpage *pnode);
void   util_restore_cursor(eu_tabpage *pnode);
void   util_setforce_eol(eu_tabpage *pnode);
void   util_save_placement(HWND hwnd);
void   util_restore_placement(HWND hwnd);
bool   util_availed_char(int ch);
bool   util_under_wine(void);
void   util_trim_right_star(TCHAR *str);
char*  util_struct_to_string(void *buf, size_t bufsize);
bool   util_string_to_struct(const char *buffer, void *buf, size_t bufsize);
bool   util_creater_window(HWND hwnd, HWND hparent);
bool   util_can_selections(eu_tabpage *pnode);
bool   util_file_size(HANDLE hfile, uint64_t *psize);
bool   util_open_file(LPCTSTR path, pt_stream pstream);
bool   util_exist_libcurl(void);
time_t util_last_time(const TCHAR *path);
uint64_t util_gen_tstamp(void);
void util_switch_menu_group(HMENU hmenu, int pop_id, uint32_t first_id, uint32_t last_id, uint32_t select);
WCHAR* util_to_abs(const char *path);
TCHAR* util_make_u16(const char *utf8, TCHAR *utf16, int len);
char*  util_make_u8(const TCHAR *utf16, char *utf8, int len);
HANDLE util_mk_temp(TCHAR *file_path, TCHAR *ext);
HWND   util_create_tips(HWND hwnd_stc, HWND hwnd, TCHAR* ptext);
TCHAR* util_unix2path(TCHAR *path);
TCHAR* util_path2unix(TCHAR *path);
const char* util_trim_left_white(const char *str, int *length);
unsigned long util_compress_bound(unsigned long source_len);
int util_uncompress(uint8_t *dest, unsigned long *dest_len, const uint8_t *source, unsigned long *source_len);
int util_compress(uint8_t *dest, unsigned long *dest_len, const uint8_t *source, unsigned long source_len, int level);
int util_count_number(size_t number);
void util_transparent(HWND hwnd, int percent);
void util_untransparent(HWND hwnd);
bool util_product_name(LPCWSTR filepath, LPWSTR out_string, size_t len);
const uint32_t util_os_version(void);

#ifdef __cplusplus
}
#endif

#endif // _H_SKYLARK_UTIL_
