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

#include "framework.h"

static WNDPROC orig_result_proc;

LRESULT CALLBACK
ptr_result_proc(HWND hwnd, UINT message, WPARAM wParam, LPARAM lParam)
{
    switch (message)
    {
        case WM_SIZE:
            break;
        case WM_RBUTTONUP:
        {
            return menu_pop_track(hwnd, IDR_RESULT_MENU, 0);
        }
        case WM_COMMAND:
        {
            WORD high = HIWORD(wParam);
            WORD low = LOWORD(wParam);
            if (high != 0)
            {
                break;
            }
            switch(low)
            {
                case IDM_RESULT_1:
                    SendMessage(hwnd, WM_COPY, 0, 0);
                    break;
                case IDM_RESULT_2:
                    SendMessage(hwnd, WM_PASTE, 0, 0);
                    break;
                case IDM_RESULT_3:
                    SendMessage(hwnd, EM_SETSEL, 0, -1);
                    break;
                case IDM_RESULT_4:
                    SendMessage(hwnd, EM_SETSEL, 0, 0);
                    break;
                case IDM_RESULT_5:
                    SendMessage(hwnd, EM_SETSEL, 0, -1);
                    SendMessage(hwnd, WM_CLEAR, 0, 0);
                    break;
                case IDM_RESULT_CLOSE:
                {
                    eu_tabpage *p = on_tabpage_focus_at();
                    if (p)
                    {
                        p->edit_show = false;
                        eu_window_resize(NULL);
                    }
                    break;
                }
                default:
                    break;
            }
            break;
        }
        case WM_DPICHANGED:
        {
            SendMessage(hwnd, WM_SETFONT, (WPARAM) on_theme_font_hwnd(), 0);
            break;
        }
        case WM_DESTROY:
        {
            printf("result_edit WM_DESTROY\n");
            break;
        }
        default:
            break;
    }
    return CallWindowProc(orig_result_proc, hwnd, message, wParam, lParam);
}

static int
update_redit_theme(eu_tabpage *pnode)
{
    if (pnode && pnode->hwnd_qredit)
    {
        SendMessage(pnode->hwnd_qredit, WM_SETFONT, (WPARAM) on_theme_font_hwnd(), 0);
    }
    return 0;
}

int
on_result_create_dlg(eu_tabpage *pnode)
{
    if (pnode->hwnd_qredit)
    {
        DestroyWindow(pnode->hwnd_qredit);
    }
    /* 创建结果消息控件 */
    const int style = WS_CHILD | WS_CLIPSIBLINGS | WS_VSCROLL | ES_LEFT | ES_MULTILINE | ES_AUTOVSCROLL;
    pnode->hwnd_qredit = CreateWindow(_T("EDIT"), NULL, style, 0, 0, 0, 0, eu_module_hwnd(), NULL, eu_module_handle(), NULL);
    if (pnode->hwnd_qredit == NULL)
    {
        MSG_BOX(IDC_MSG_EDIT_ERR1, IDC_MSG_ERROR, MB_ICONERROR | MB_OK);
        return 1;
    }
    if (!(orig_result_proc = (WNDPROC) SetWindowLongPtr(pnode->hwnd_qredit, GWLP_WNDPROC, (LONG_PTR) ptr_result_proc)))
    {
        printf("SetWindowLongPtr failed\n");
        return 1;
    }
    return update_redit_theme(pnode);
}

int
on_result_append_text(HWND hwnd, TCHAR *format, ...)
{
    va_list valist;
    SYSTEMTIME systime;
    TCHAR *buf = NULL;
    int l, len = 0;
    bool pt = true;
    eu_tabpage *pnode = NULL;
    if (hwnd == NULL)
    {
        if ((pnode = on_tabpage_focus_at()) == NULL)
        {
            return 1;
        }
        else
        {
            pt = false;
            hwnd = pnode->hwnd_qredit;
        }
    }
    va_start(valist, format);
    int buf_len = _vsctprintf(format, valist);
    buf = buf_len > 0 ? (TCHAR *)calloc(sizeof(TCHAR), buf_len += 68) : NULL;
    if (!buf)
    {
        va_end(valist);
        return 1;

    }
    if (pt)
    {
        GetLocalTime(&systime);
        l = _sntprintf(buf + len,
                       buf_len - len,
                       _T("%04d-%02d-%02d %02d:%02d:%02d.%06d | "),
                       systime.wYear,
                       systime.wMonth,
                       systime.wDay,
                       systime.wHour,
                       systime.wMinute,
                       systime.wSecond,
                       systime.wMilliseconds * 1000);
        if (l > 0)
        {
            len += l;
        }
    }
    {
        l = _vsntprintf(buf + len, buf_len - 1 - len, format, valist);
        if (l > 0)
        {
            len += l;
        }
    }
    va_end(valist);
    {
        l = _sntprintf(buf + len, buf_len - 1 - len, _T("\r\n"));
        if (l > 0)
        {
            len += l;
        }
    }
    SendMessage(hwnd, EM_SETSEL, -2, -1);
    SendMessage(hwnd, EM_REPLACESEL, true, (LPARAM) (LPCTSTR) buf);
    free(buf);
    return 0;
}
