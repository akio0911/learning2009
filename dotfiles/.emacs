(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(tool-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; Control + すべてのキー　を無視する
(mac-add-ignore-shortcut '(control))

;; Option キーを Meta キーとして使う
(setq mac-option-modifier 'meta)

;; 選択範囲が反転
(setq-default transient-mark-mode t)

;; 「Clarity and Beauty」というテーマを適用
(require 'color-theme)
(color-theme-initialize)
(color-theme-clarity)
;;(color-theme-blue-sea)

;; 半透明
;; あとで
(set-frame-parameter nil 'alpha 90)

;; C-h に delete-backward-char を割り当てる
(global-set-key "\C-h" 'delete-backward-char)

;; C-h を backspace として使いたい
;;(keyboard-translate ?\C-h ?\C-?)
;;(global-set-key "\C-h" nil)


;; C-h で前の1文字を消去できるように設定
(define-key global-map "\C-h" 'delete-backward-char)


;; help を C-x C-h に割り当てる
(define-key global-map "\C-x\C-h" 'help)

(global-set-key "\C-xp" (lambda () (interactive) (other-window -1)))


;; *.rhtml html-mode
(add-to-list 'auto-mode-alist '("\\.rhtml$" . html-mode))



;; for AquaSKK
;;(setq mac-pass-control-to-system nil)
(setq mac-pass-control-to-system t)


;; ;; to use SKK
;; (require 'skk-setup)

;; ;; DDSKK の初回起動を速くすることができます。
;; (setq skk-preload t)

;; 印刷フォントサイズを変更する
(setq mac-print-font-size 7)

;; ;; DDSKK
;; (require 'skk-autoloads)
;; (global-set-key "\C-x\C-j" 'skk-mode)
;; (global-set-key "\C-xj" 'skk-auto-fill-mode)
;; (global-set-key "\C-xt" 'skk-tutorial)
;; ;(setq skk-large-jisyo "/Users/akio0911/SKK-JISYO.L")

;; ;; DDSKK インクリメント検索
;; (add-hook 'isearch-mode-hook
;;           #'(lambda ()
;;               (when (and (boundp 'skk-mode)
;;                          skk-mode
;;                          skk-isearch-mode-enable)
;;                 (skk-isearch-mode-setup))))
;; (add-hook 'isearch-mode-end-hook
;;           #'(lambda ()
;;               (when (and (featurep 'skk-isearch)
;;                          skk-isearch-mode-enable)
;;                 (skk-isearch-mode-cleanup))))

;; ;; DDSKK の初回起動を速くする
;; (setq skk-preload t)




;; (setq skk-server-host "localhost")
;; (setq skk-server-portnum 1178)


;; for rails.el
;(setq load-path (cons "~/.emacs.d/rails" load-path))
;(setq load-path (cons "~/.emacs.d/emacs-rails" load-path))
;;(require 'rails)

(setq load-path (cons "~/.emacs.d/emacs-rails" load-path))
(defun try-complete-abbrev (old)
  (if (expand-abbrev) t nil))

(setq hippie-expand-try-functions-list
      '(try-complete-abbrev
        try-complete-file-name
        try-expand-dabbrev))
(setq rails-use-mongrel t)
(require 'rails)





;; ;; 保存先を指定する
;; (setq abbrev-file-name "~/.abbrev_defs")
;; ;; 略称展開のキーバインドを指定する
;; (define-key esc-map  " " 'expand-abbrev) ;; M-SPC
;; ;; 起動時に保存した略称を読み込む
;; (quietly-read-abbrev-file)
;; ;; 略称を保存する
;; (setq save-abbrevs t)


;;; Twittering mode
;;;
;;(setq load-path (cons "~/.emacs.d/twittering-mode" load-path))
;;(require 'twittering-mode)
;;(setq twittering-username "akio0911")

;;(autoload 'twittering-mode "twittering-mode" "" t)
;;(autoload 'twittering-update-status-from-minibuffer "twittering-mode" "" t)

;;(defun twit ()
;;  (interactive)
;;  (twittering-update-status-from-minibuffer (buffer-substring (region-beginning) (region-end))))

;;(setq twittering-timer-interval 65535)

;; ;; rhtml-minor-mode
;; (setq load-path (cons "~/.emacs.d" load-path))

;; (require 'rhtml-minor-mode)

;; (defun rhtml-modes ()
;;   (two-mode-mode)
;;   (rhtml-minor-mode))

;; (setq auto-mode-alist
;;       (cons '("\\.rhtml$" . rhtml-modes)
;;             auto-mode-alist))



;;make svn the default version control system
(add-to-list 'vc-handled-backends 'SVN)


;; ;; hatena-mode
;; (setq load-path (cons (expand-file-name "~/.emacs.d/hatena-mode") load-path))
;; (load "hatena-mode")
;; (setq hatena-usrid "akio0911")
;; (setq hatena-plugin-directory "~/.emacs.d/hatena-mode")


;;; 日時をモードラインに表示
;; format: Thu Jul 25 1:23AM のとき
;(setq display-time-day-and-date t)
;(display-time)
;; format: 2002/7/25 Thu 1:23am のとき
(setq display-time-day-and-date t
      display-time-12hr-format t)
(setq display-time-string-forms
      '((if display-time-day-and-date
;         (format "%s/%s/%s %s " year month day dayname) ; 2002/7/25 Thu 1:23am
          (format "%s/%s/%s %s " (substring year -2) month day dayname) ; 02/7/25 Thu 1:23am
        "")
      (format "%s:%s%s"
          (if display-time-24hr-format 24-hours 12-hours)
          minutes
          (if display-time-24hr-format "" am-pm))))
(display-time)

;;;;;;;;;;;;;;;; text-translator ;;;;;;;;;;;;;;;;

;; (setq load-path (cons (expand-file-name "~/.emacs.d/text-translator") load-path))

;; ;; require でも autoload でもおすきな方をどうぞ.
;; ;; 最近だと, require の方が推奨されているとのことです.

;; ;;(autoload 'text-translator "text-translator" "Text Translator" t)
;; (require 'text-translator)

;; (global-set-key "\C-x\M-t" 'text-translator)
;; (global-set-key "\C-x\M-T" 'text-translator-translate-last-string)

;; ;; プリフィックスキーを変更する場合.
;; ;; (setq text-translator-prefix-key "\M-n")

;; ;; 自動選択に使用する関数を設定
;; (setq text-translator-auto-selection-func
;;       'text-translator-translate-by-auto-selection-enja)
;; ;; グローバルキーを設定
;; (global-set-key "\C-xt" 'text-translator-translate-by-auto-selection)

;;;;;;;;;;;;;;;; text-translator ;;;;;;;;;;;;;;;;

;; 動的略語展開
(define-key global-map "\C-o" 'dabbrev-expand)


;;;;;;;;;;;;;;;; ruby-mode ;;;;;;;;;;;;;;;;
;; (autoload 'ruby-mode
;;   "ruby-mode" "Mode for editing ruby source files" t)
;; (setq auto-mode-alist
;;       (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
(require 'ruby-mode)
(require 'inf-ruby)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))
(add-hook 'ruby-mode-hook 'inf-ruby-keys)

(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.cgi$" . ruby-mode)) ;; if needed

;; インデントスタイルの設定
(setq ruby-deep-indent-paren-style nil)
;;;;;;;;;;;;;;;; ruby-mode ;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;; rube-electric.el ;;;;;;;;;;;;;;;;
(require 'ruby-electric)
(add-hook 'ruby-mode-hook (lambda () (ruby-electric-mode 1)))

;; 特定の文字のみ閉じる設定にする
(setq ruby-electric-expand-delimiters-list '( ?\{))
;;;;;;;;;;;;;;;; rube-electric.el ;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;; devel/which ;;;;;;;;;;;;;;;;
;; (defun ffap-ruby-mode (name)
;;   (shell-command-to-string
;;    (format "ruby -e 'require %%[rubygems];require %%[devel/which];require %%[%s];print(which_library(%%[%s]))'" name name)))
;; ;;   (format "ruby -e 'require %%[rubygems];require %%[devel/which]'" name name)))
;; (defun find-rubylib (name)
;;   (interactive "sRuby library name: ")
;;   (find-file (ffap-ruby-mode name)))
;;;;;;;;;;;;;;;; devel/which ;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;; ffap ;;;;;;;;;;;;;;;;
(require 'ffap)
(add-to-list 'ffap-alist '(ruby-mode . ffap-ruby-mode))
;;;;;;;;;;;;;;;; ffap ;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;; ri-emacs ;;;;;;;;;;;;;;;;
;;(require 'ri-ruby)
;; (setq ri-ruby-script "/opt/local/bin/ri-emacs")
;; (load "ri-ruby")
;;;;;;;;;;;;;;;; ri-emacs ;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;; rcodetools.el ;;;;;;;;;;;;;;;;
;;(setq load-path (cons "~/.emacs.d/rcodetools-0.8.1.0" load-path))
;;(require 'rcodetools)
;; (setq rct-find-tag-if-available nil)
;; (defun make-ruby-scratch-buffer ()
;;   (with-current-buffer (get-buffer-create "*ruby scratch*")
;;     (ruby-mode)
;;     (current-buffer)))
;; (defun ruby-scratch ()
;;   (interactive)
;;   (pop-to-buffer (make-ruby-scratch-buffer)))
;; (defun ruby-mode-hook-rcodetools ()
;;   (define-key ruby-mode-map "\M-\C-i" 'rct-complete-symbol)
;;   (define-key ruby-mode-map "\C-c\C-t" 'ruby-toggle-buffer)
;;   (define-key ruby-mode-map "\C-c\C-d" 'xmp)
;;   (define-key ruby-mode-map "\C-c\C-f" 'rct-ri))
;; (add-hook 'ruby-mode-hook 'ruby-mode-hook-rcodetools)
;;;;;;;;;;;;;;;; rcodetools.el ;;;;;;;;;;;;;;;;

;; 対応する括弧の色を変える
(show-paren-mode t)

;;;;;;;;;;;;;;;; sql-mode ;;;;;;;;;;;;;;;;

;;;
;;; sql-mode
;;; http://www.emacswiki.org/cgi-bin/wiki.pl?SqlMode
;;;

;; (setq load-path (cons "~/.emacs.d/sql-mode" load-path))

;; (autoload 'sql-mode "sql" "SQL Edit mode" t)
;; (autoload 'sql-oracle "sql" "SQL Edit mode" t)
;; (autoload 'sql-ms "sql" "SQL Edit mode" t)
;; (autoload 'master-mode "master" "Master mode minor mode." t)

;; ;; SQL mode に入った時点で sql-indent / sql-complete を読み込む
;; (eval-after-load "sql"
;;   '(progn
;;      (load-library "sql-indent")
;;      (load-library "sql-complete")
;;      (load-library "sql-transform")
;;      ))

;; ;; デフォルトのデータベースの設定
;; (setq sql-user "postgres82")
;; (setq sql-database "laqua")

;; ;; SQL モードの雑多な設定
;; (add-hook 'sql-mode-hook
;;     (function (lambda ()
;;                 (setq sql-indent-offset 4)
;;                 (setq sql-indent-maybe-tab t)
;;                 (local-set-key "\C-cu" 'sql-to-update) ; sql-transform
;;                  ;; SQLi の自動ポップアップ
;;                    (setq sql-pop-to-buffer-after-send-region t)
;;                 ;; master モードを有効にし、SQLi をスレーブバッファにする
;;                    (master-mode t)
;;                 (master-set-slave sql-buffer)
;;                 ))
;;     )
;; (add-hook 'sql-set-sqli-hook
;;           (function (lambda ()
;;                       (master-set-slave sql-buffer))))
;; (add-hook 'sql-interactive-mode-hook
;;           (function (lambda ()
;;                       ;; 「;」をタイプしたら SQL 文を実行
;;                          (setq sql-electric-stuff 'semicolon)
;;                       ;; comint 関係の設定
;;                          (setq comint-buffer-maximum-size 500)
;;                       (setq comint-input-autoexpand t)
;;                       (setq comint-output-filter-functions
;;                             'comint-truncate-buffer)))
;;           )

;; ;; SQL モードから SQLi へ送った SQL 文も SQLi ヒストリの対象とする
;; (defadvice sql-send-region (after sql-store-in-history)
;;   "The region sent to the SQLi process is also stored in the history."
;;   (let ((history (buffer-substring-no-properties start end)))
;;     (save-excursion
;;       (set-buffer sql-buffer)
;;       (message history)
;;       (if (and (funcall comint-input-filter history)
;;                (or (null comint-input-ignoredups)
;;                    (not (ring-p comint-input-ring))
;;                    (ring-empty-p comint-input-ring)
;;                    (not (string-equal (ring-ref comint-input-ring 0)
;;                                       history))))
;;           (ring-insert comint-input-ring history))
;;       (setq comint-save-input-ring-index comint-input-ring-index)
;;       (setq comint-input-ring-index nil))))
;; (ad-activate 'sql-send-region)

;;;;;;;;;;;;;;;; sql-mode ;;;;;;;;;;;;;;;;

;;(require 'install-elisp)

;;;;;;;;;;;;;;;; for wl ;;;;;;;;;;;;;;;;

(setq load-path (cons "/Applications/Emacs.app/Contents/Resources/site-lisp/wl" load-path))
(setq load-path (cons "/Applications/Emacs.app/Contents/Resources/site-lisp/flim" load-path))
(setq load-path (cons "/Applications/Emacs.app/Contents/Resources/site-lisp/semi" load-path))
(autoload 'wl "wl" "Wanderlust" t)
(autoload 'wl-other-frame "wl" "Wanderlust on new frame." t)
(autoload 'wl-draft "wl-draft" "Write draft with Wanderlust." t)

;; spam 判定の設定

(defun st-wl-summary-refile-spam ()
  (interactive)
  (wl-summary-refile (wl-summary-message-number) "%[Gmail]/Spam")
  (wl-summary-next))
;(define-key wl-summary-mode-map "!" 'st-wl-summary-refile-spam)
;(define-key wl-summary-mode-map "\M-u" 'wl-summary-mark-as-unread)

;; 検索の設定

(defun st-wl-summary-gmail-search ()
  (interactive)
  (setq word (concat "\"" (read-from-minibuffer "Gmail Search Word: ")
  "\""))
  (setq keys '("body" "tocc" "subject" "from"))
  (setq res "")
  (while (not (null keys))
    (setq key (car keys))
    (setq keys (cdr keys))
    (setq res (concat res key ":" word (if (null keys) nil "|")))
    )
  (wl-summary-goto-folder-subr (concat "\(" res ")%[Gmail]/All Mail")
                               nil nil nil t)
)
;(define-key wl-summary-mode-map "/" 'st-wl-summary-gmail-search)

;; Idle interval in seconds to save draft buffers automatically.
;; If you don't want to use this feature, set this to nil.
(setq wl-auto-save-drafts-interval 60)


;;;;;;;;;;;;;;;; for wl ;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;; Dictionary.app ;;;;;;;;;;;;;;;;
;; MacOSX の Dictionary.app で単語の意味を知らべる

(defun my-search-at-dictionary-app ()
  ""
  (interactive)
  (let* ((keyword (read-from-minibuffer
                   " keyword: "
                   (my-get-keyword)))
         (encoded-keyword (encode-coding-string keyword 'japanese-shift-jis)))
(unless (string= encoded-keyword "")
    (do-applescript (concat "
activate application \"Dictionary\"
tell application \"System Events\"
        tell application process \"Dictionary\"
                set value of text field 1 of group 1 of tool bar 1 of window 1 to \""
                        encoded-keyword "\"
                click button 1 of text field 1 of group 1 of tool bar 1 of window 1
        end tell
end tell
")))))


(defun my-get-keyword ()
""
(or (and
transient-mark-mode
mark-active
(buffer-substring-no-properties
(region-beginning) (region-end)))
(thing-at-point 'word)))


(transient-mark-mode t)
;;;;;;;;;;;;;;;; Dictionary.app ;;;;;;;;;;;;;;;;


;; ;;;;;;;;;;;;;;;; howm ;;;;;;;;;;;;;;;;
(autoload 'howm-menu "howm-mode" "Howm mode" t)
(autoload 'howm-list-all "howm-mode" "Howm mode" t)
(autoload 'howm-create "howm-mode" "Howm mode" t)
(global-set-key "\C-c,," 'howm-menu)
(global-set-key "\C-c,a" 'howm-list-all)
(global-set-key "\C-c,c" 'howm-create)
;;(setq howm-directory "~/howm/")
(setq howm-directory "~/Dropbox/howm")
(setq howm-view-summary-persistent nil)
(setq howm-list-recent-title t)
(setq howm-list-all-title t)
(setq howm-menu-expiry-hours 2)
;;(add-hook 'howm-mode-on-hook 'auto-fill-mode)
;;(remove-hook 'howm-mode-on-hook 'auto-fill-mode)

(setq howm-view-summary-persistent nil)

(setq howm-menu-schedule-days-before 10)
(setq howm-menu-schedule-days 3)

(setq howm-refresh-after-save nil)
(setq howm-menu-refresh-after-save nil)
(setq howm-menu-recent-num 10)
(setq howm-menu-todo-num 10)
(setq howm-view-keep-one-window t)
;;(setq howm-view-keep-one-window nil)
(setq hwom-list-normalizer 'howm-view-sort-by-mtime)
;; ;;;;;;;;;;;;;;;; howm ;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;; howm ;;;;;;;;;;;;;;;;
;; (setq howm-menu-lang 'ja)
;; (global-set-key "\C-c,," 'howm-menu)
;; (mapc
;;  (lambda (f)
;;    (autoload f
;;      "howm" "Hitori Otegaru Wiki Modoki" t))
;;  '(howm-menu howm-list-all howm-list-recent
;;              howm-list-grep howm-create
;;              howm-keyword-to-kill-ring))
;;;;;;;;;;;;;;;; howm ;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;; ActionScript ;;;;;;;;;;;;;;;;
(setq auto-mode-alist (append '(("\\.as[123]?$" . java-mode)) auto-mode-alist))
(setq auto-mode-alist (append '(("\\.as$" . java-mode)) auto-mode-alist))
;; (setq c-default-style
;;       '((java-mode . "gnu") ))
(setq c-default-style
      '((java-mode . "java")
        (objc-mode . "stroustrup")))
;;;;;;;;;;;;;;;; ActionScript ;;;;;;;;;;;;;;;;

;;(setq load-path (cons "~/.emacs.d/auto-complete/" load-path))
;;(require 'auto-complete)
;;(global-auto-complete-mode t)

;; フォントサイズ指定
;;(if (eq window-system 'mac) (require 'carbon-font))
;(fixed-width-set-fontset "osaka" 10)
;;(fixed-width-set-fontset "hiramaru" 10)

;; フォント・サイズ指定
(if (eq window-system 'mac) (require 'carbon-font))
;(fixed-width-set-fontset "osaka" 10)
(fixed-width-set-fontset "hiramaru" 10)


; アンチエイリアス
(setq mac-allow-anti-aliasing nil)


;;(global-set-key [C-return] 'other-window)
;;(global-set-key [C-backspace] (lambda () (interactive) (other-window -1)))
;;(global-set-key [return] 'other-window)
;;(global-set-key [backspace] (lambda () (interactive) (other-window -1)))

(set-face-background 'flymake-errline "DarkSlateBlue")
(set-face-background 'flymake-warnline "firebrick")
;;(set-face-background 'howm-mode-title-face "black")
;;(set-face-foreground 'howm-mode-title-face "LawnGreen")

(eval-after-load "howm-mode"
  '(progn
     (set-face-background 'howm-mode-title-face "black")
     (set-face-foreground 'howm-mode-title-face "LawnGreen")))

(global-set-key "\M-," 'beginning-of-buffer)
(global-set-key "\M-." 'end-of-buffer)

;; ウィンドウ分割
(global-set-key [right] 'split-window-horizontally)
(global-set-key [left] 'split-window-horizontally)
(define-key global-map [up] 'split-window-vertically)
(define-key global-map [down] 'delete-other-windows)

;; 分割したウィンドウを時計回りに移動
(global-set-key "\M-l" 'other-window)

;; バッファをM-n,M-pで切り替え
(defun previous-buffer ()
  "Select previous window."
  (interactive)
  (bury-buffer))
(defun backward-buffer ()
  "Select backward window."
  (interactive)
  (switch-to-buffer
    (car (reverse (buffer-list)))))
(global-set-key "\M-n" 'previous-buffer)
(global-set-key "\M-p" 'backward-buffer)


;; Macで動くCarbon Emacsを半透明化して最大化する
;; http://d.hatena.ne.jp/suztomo/20080923/1222149517
;; (when (eq window-system 'mac)
;;   (add-hook 'window-setup-hook
;;             (lambda ()
;; ;;              (setq mac-autohide-menubar-on-maximize t)
;;               (set-frame-parameter nil 'fullscreen 'fullboth)
;;               )))


(defun mac-toggle-max-window ()
  (interactive)
  (if (frame-parameter nil 'fullscreen)
      (set-frame-parameter nil 'fullscreen nil)
    (set-frame-parameter nil 'fullscreen 'fullboth)))

;; Carbon Emacsの設定で入れられた. メニューを隠したり．
(custom-set-variables
 '(display-time-mode t)
 '(tool-bar-mode nil)
 '(transient-mark-mode t))
(custom-set-faces
 )

;;Color
(if window-system (progn
   (set-background-color "Black")
   (set-foreground-color "LightGray")
   (set-cursor-color "Gray")
   (set-frame-parameter nil 'alpha 90)
   ))
;;
;;

;; スタートアップメッセージを非表示
(setq inhibit-startup-message t)

(set-face-background 'mode-line "white")  ;; アクティブなバッファの文字色
(set-face-foreground 'mode-line "black")  ;; アクティブなバッファの文字色
(set-face-background 'mode-line-inactive "black")  ;; アクティブでないバッファの背景色
(set-face-foreground 'mode-line-inactive "white")  ;; アクティブでないバッファの背景色


;;====================================
;;; 分割したウィンドウ状態を保存・復元する
;;===================================
;; デフォルトは C-c C-w
;;(setq load-path (cons "~/.emacs.d/revive/" load-path))
;;(require 'revive)
;;(setq load-path (cons "~/.emacs.d/windows/" load-path))
;;(require 'windows)
;; 新規にフレームを作らない
;;(setq win:use-frame nil)
;;(win:startup-with-window)
;;(define-key ctl-x-map "C" 'see-you-again)

;; irbsh
;;(add-to-list 'load-path "/opt/local/share/emacs/site-lisp")
;;(load "irbsh")
;;(load "irbsh-toggle")
;; irbsh


;; ;;====================================
;; ;;; 折り返し表示ON/OFF
;; ;;====================================
;; (defun toggle-truncate-lines ()
;;   "折り返し表示をトグル動作します."
;;   (interactive)
;;   (if truncate-lines
;;       (setq truncate-lines nil)
;;     (setq truncate-lines t))
;;   (recenter))


;; (global-set-key "\C-c\C-l" 'toggle-truncate-lines) ; 折り返し表示ON/OFF

;; 右端で折り返す
(setq truncate-partial-width-windows nil)
(setq truncate-lines nil)

;; Objective-J
(add-to-list 'auto-mode-alist '("\\.j$" . objc-mode))

