; -*- comment-start: ";" -*-
; AutoHotkey.ahk

; ���ϊ��L�[
; +sc07B	::	Send {Browser_Forward}
; sc07B	::	Send {Browser_Back}
; Temporary change for ignoring ~~Edge's bug~~ ?????.
+sc07B	::	Send !{Right}
sc07B	::	Send, !{Left}

; �ϊ��L�[
!sc079	::	Send {ShiftDown}{CtrlDown}{Tab}{ShiftUp}{CtrlUp}
+sc079	::	Send {ShiftDown}{CtrlDown}{Tab}{ShiftUp}{CtrlUp}
sc079	::	Send {CtrlDown}{Tab}{CtrlUp}

; �J�^�J�i�Ђ炪�ȃL�[
; * �f�t�H���g�ł̓J�^�J�i�Ђ炪�ȃL�[�� AHK �ŗ��p���邱�Ƃ��o���Ȃ��̂�
;   ���W�X�g����ύX���đ��̃L�[�Ƀ��}�b�v���C���̃L�[���t�b�N����
;   ����� KeyTweak ���g���� `Macintosh= (NumpadClear)` �Ɋ��蓖�ĂĂ���D
+!sc059	::	Send, ^T
!sc059	::	Send, ^w
sc059 :: Clipboard := Clipboard
; not working. why?
; sc059 & h :: Send {Left}
; sc059 & j :: Send {Down}
; sc059 & k :: Send {Up}
; sc059 & l :: Send {Right}

;#space::Send, !{Space}
;+#space::Send, !{Space}
;^#space::Send, !{Space}

; not working
; sc029 :: Ctrl

; I love Apple :)
; #space::sc029
; when you are using English as Primary system language,
; you might want to "override" preferred input methods.
; check Control Panel\Clock, Language, and Region\Language\Advanced settings.

#space::
    if (A_PriorHotkey <> A_ThisHotkey or A_TimeSincePriorHotkey > 400) {
        ; Single press -> toggle IME (send Hankaku/zenkaku)
        Send, {sc029}
        return
    } else {
        ; Double press -> Original behavior
        ; (but also toggle IME back again... not cool hack)
        Send, {sc029}
        Send, #{space}
        return
    }

; #space::
;        Loop 500
;             Click
; #IfWinNotActive ahk_class Emacs
If WinNotActive ("ahk_class Emacs")
{
#IfWinNotActive ahk_title Emacs, ahk_class cygwin/x X rl
!sc14B :: Send, ^{Left}
!sc14D :: Send, ^{Right}
+!sc14B :: Send, +^{Left}
+!sc14D :: Send, +^{Right}
#IfWinNotActive
; #IfWinNotActive
}

vk02D ::

; this won't do; capslock will stick.
; CapsLock::Ctrl
; sc03a::Ctrl
