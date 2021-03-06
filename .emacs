; package setting
(require 'package)

 (setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                          ("melpa" . "https://melpa.org/packages/")))

;;(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
;;                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))

(package-initialize)

;;; Init Use Package
(unless package-archive-contents
  (package-refresh-contents))


;; ;; install package
 ;; (setq package-selected-packages
 ;;    '(company-box all-the-icons-dired all-the-icons-ivy all-the-icons-ivy-rich all-the-icons ivy-rich amx dashboard flyspell-correct sx org-bullets smart-mode-line powerline doom-themes counsel swiper browse-kill-ring avy fzf yasnippet-snippets pdf-tools smartparens yasnippet math-symbol-lists company-math company ivy which-key auctex))
 
 ;; (mapcar (lambda (p) (unless (package-installed-p p) (package-install p t)))
 ;; 	package-selected-packages)


; basic setting
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-amsmath-label "eq:")
 '(LaTeX-math-abbrev-prefix "'")
 '(LaTeX-math-list '((49 LaTeX-math-bb "" nil)) t)
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(column-number-mode t)
 '(company-box-enable-icon t)
 '(company-box-frame-behavior 'default)
 '(company-box-icon-right-margin 0)
 '(company-box-icons-functions
   '(company-box-icons--yasnippet company-box-icons--lsp company-box-icons--eglot company-box-icons--elisp company-box-icons--acphp company-box-icons--cider))
 '(company-box-max-candidates 15)
 '(company-box-scrollbar ''right)
 '(company-box-show-single-candidate 'never)
 '(company-box-tooltip-maximum-width 200)
 '(company-box-tooltip-minimum-width 200)
 '(company-text-icons-mapping
   '((array "a" font-lock-type-face)
     (boolean "b" font-lock-builtin-face)
     (class "c" font-lock-type-face)
     (color "#" success)
     (constant "c" font-lock-constant-face)
     (enum-member "e" font-lock-builtin-face)
     (enum "e" font-lock-builtin-face)
     (field "f" font-lock-variable-name-face)
     (file "f" font-lock-string-face)
     (folder "d" font-lock-doc-face)
     (interface "i" font-lock-type-face)
     (keyword "k" font-lock-keyword-face)
     (method "m" font-lock-function-name-face)
     (function "f" font-lock-function-name-face)
     (module "{" font-lock-type-face)
     (numeric "n" font-lock-builtin-face)
     (operator "o" font-lock-comment-delimiter-face)
     (parameter "p" font-lock-builtin-face)
     (property "p" font-lock-variable-name-face)
     (ruler "r" shadow)
     (snippet "S" font-lock-string-face)
     (string "s" font-lock-string-face)
     (struct "%" font-lock-variable-name-face)
     (text "w" shadow)
     (value "v" font-lock-builtin-face)
     (variable "v" font-lock-variable-name-face)
     (t "." shadow)))
 '(company-tooltip-margin 2)
 '(company-tooltip-maximum-width 200)
 '(company-tooltip-minimum 100)
 '(company-tooltip-minimum-width 4)
 '(custom-enabled-themes '(doom-gruvbox))
 '(custom-safe-themes
   '("c4063322b5011829f7fdd7509979b5823e8eea2abf1fe5572ec4b7af1dd78519" "7eea50883f10e5c6ad6f81e153c640b3a288cd8dc1d26e4696f7d40f754cc703" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "5784d048e5a985627520beb8a101561b502a191b52fa401139f4dd20acb07607" default))
 '(display-line-numbers-type 'relative)
 '(display-time-mode t)
 '(inhibit-startup-screen t)
 '(line-number-mode nil)
 '(menu-bar-mode nil)
 '(org-agenda-files nil)
 '(org-agenda-inhibit-startup t)
 '(package-selected-packages
   '(math-symbols company-box all-the-icons-dired all-the-icons-ivy all-the-icons-ivy-rich all-the-icons ivy-rich amx dashboard flyspell-correct sx org-bullets smart-mode-line powerline doom-themes counsel swiper browse-kill-ring avy fzf yasnippet-snippets pdf-tools smartparens yasnippet math-symbol-lists company-math company ivy which-key auctex))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(display-battery-mode)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-latex-sectioning-2-face ((t (:foreground "firebrick1" :weight normal :height 1.1))))
 '(font-latex-sectioning-3-face ((t (:foreground "dark red" :height 1.1))))
 '(font-lock-keyword-face ((t (:foreground "#a626a4"))))
 '(highlight ((t (:background "dark slate gray" :foreground "bisque1"))))
 '(org-agenda-date ((t (:foreground "dark cyan" :weight normal :height 1.1))))
 '(org-agenda-date-today ((t (:foreground "OrangeRed1" :underline t :weight normal :height 1.1))))
 '(org-agenda-date-weekend ((t (:inherit org-agenda-date :foreground "dark green" :weight normal :height 1.0))))
 '(org-agenda-done ((t (:foreground "LightSalmon2" :height 1.0))))
 '(org-agenda-structure ((t (:inherit font-lock-comment-face :foreground "turquoise4" :weight bold :height 1.1))))
 '(org-done ((t (:inherit org-headline-done :strike-through nil :weight bold :height 1.1))))
 '(org-headline-done ((t (:foreground "gray47"))))
 '(org-level-1 ((t (:inherit outline-1 :extend nil :height 1.1))))
 '(org-level-2 ((t (:inherit outline-2 :extend nil :height 1.1))))
 '(org-todo ((t (:foreground "red" :weight bold :height 1.1)))))

; font and modeline
(sml/setup)
(sml/apply-theme 'respectful)
(set-frame-font "-ADBO-Source Code Pro-normal-normal-normal-*-35-*-*-*-m-0-iso10646-1")
; fullscreen
;(toggle-frame-fullscreen)
; save place auto
(save-place-mode t)
(defalias 'yes-or-no-p 'y-or-n-p)

;; (setq mac-command-modifier 'meta)
;; (setq mac-option-modifier 'none)
;;(powerline-default-theme)
;;(global-hl-line-mode t)
;; (set-frame-font "-*-Menlo-normal-normal-normal-*-14-*-*-*-m-0-iso10646-1")

(add-hook 'emacs-lisp-mode-hook 'display-line-numbers-mode)
(add-hook 'emacs-lisp-mode-hook 'company-mode)
(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)

;; ; dashboard config
(dashboard-setup-startup-hook)
(setq dashboard-center-content t)
(setq dashboard-set-navigator t)
(setq dashboard-set-file-icons t)

; which key config
(which-key-mode)


; ivy config
(ivy-mode)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

(require 'ivy-rich)
(ivy-rich-mode 1)
(setcdr (assq t ivy-format-functions-alist) #'ivy-format-function-line)

(amx-mode 1)

(global-set-key "\C-s" 'swiper)


; yasnippet config
;;;(yas-global-mode t)


; smartparens config
;(smartparens-global-mode)

(add-hook 'bibtex-mode-hook 'display-line-numbers-mode)

; AUCTeX config
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'display-line-numbers-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook 'yas-minor-mode)
(add-hook 'LaTeX-mode-hook 'company-mode)
(add-hook 'LaTeX-mode-hook 'smartparens-mode)

(add-hook 'LaTeX-mode-hook
          (lambda ()
	    (LaTeX-add-environments
	     '("theorem" LaTeX-env-label)
             '("lemma" LaTeX-env-label)
	     '("corollary" LaTeX-env-label)
	     '("proposition" LaTeX-env-label)
    	     '("remark" LaTeX-env-label)
     	     '("definition" LaTeX-env-label)
	     '("example" LaTeX-env-label)
	     )))

;; add label insert flags
(setq reftex-insert-label-flags '("sL" "sftLHCPRDE"))

;; add label list
(setq reftex-label-alist
   '(("lemma" ?L "lem:"  "~\\ref{%s}" nil ("lemma" "Lemma"))
     ("theorem" ?H "thm:" "~\\ref{%s}" t   ("theorem" "Theorem"))
     ("corollary" ?C "cor:" "~\\ref{%s}" t ("corollary" "Corollary"))
     ("proposition" ?P "pro:" "~\\ref{%s}" t ("proposition" "Proposition"))
     ("remark" ?R "rmk:" "~\\ref{%s}" t ("remark" "Remark"))
     ("definition" ?D "def:" "~\\ref{%s}" t ("definition" "Definition"))
     ("example" ?E "exp:" "~\\ref{%s}" t ("example" "Example"))
     ))

(setq reftex-plug-into-AUCTeX t)
(setq TeX-electric-math '("$" . "$"))
(setq TeX-electric-sub-and-superscript t)

;; preview latex scale
(set-default 'preview-scale-function 0.8)

;; pdf-tools with auctex synctex setting
(pdf-tools-install)
(setq TeX-PDF-mode t)
(setq TeX-view-program-selection '((output-pdf "PDF Tools")))
(setq TeX-view-program-list '(("PDF Tools" TeX-pdf-tools-sync-view)))

(setq TeX-source-correlate-mode t)
(setq TeX-source-correlate-method 'synctex)
(setq TeX-source-correlate-start-server t)

(add-hook 'TeX-after-compilation-finished-functions
           #'TeX-revert-document-buffer)

(add-hook 'pdf-tools-enabled-hook 'pdf-view-fit-width-to-window)
(add-hook 'pdf-tools-enabled-hook 'pdf-view-midnight-minor-mode)

;; automatically annotate highlights
(setq pdf-annot-activate-created-annotations t)

;; use normal isearch
(define-key pdf-view-mode-map (kbd "C-s") 'isearch-forward)

;; (defun pdf-select-to-pdf-tools ()
;;   (interactive)
;; 	(setq TeX-view-program-list '(("PDF Tools" TeX-pdf-tools-sync-view)))
;; 	      (message "view as pdf-tools."))
;; (global-set-key (kbd "C-' a") 'pdf-select-to-pdf-tools)

;; (defun pdf-selection-skim ()
;;   (interactive)
;;         (setq TeX-view-program-list '(("PDF Tools" "/Applications/Skim.app/Contents/SharedSupport/displayline -b -g %n %o %b" )))
;;     (message "view as skim."))

;; (global-set-key (kbd "C-' s") 'pdf-selection-skim)


;; LaTeX math functions
(defun LaTeX-math-bb (char dollar)
  "Insert a {\\mathbb CHAR}."
  (interactive "*c\nP")
  (if dollar (insert (or (car TeX-electric-math) "$")))
  (if (member "latex2e" (TeX-style-list))
      (insert "\\mathbb{" (char-to-string char) "}")
    (insert "{\\mathbb " (char-to-string char) "}"))
  (if dollar (insert (or (cdr TeX-electric-math) "$"))))

(setq LaTeX-math-list '((49 LaTeX-math-bb "" nil)))


; company and math-company with auctex
;(add-hook 'after-init-hook 'global-company-mode)
(require 'company-box)
(add-hook 'company-mode-hook 'company-box-mode)

(add-to-list 'company-box-frame-parameters
             '(font . "-ADBO-Source Code Pro-normal-normal-normal-*-33-*-*-*-m-0-iso10646-1"))
(add-to-list 'company-box-frame-parameters
               '(font-parameter . "-ADBO-Source Code Pro-normal-normal-normal-*-33-*-*-*-m-0-iso10646-1"))
(add-to-list 'company-box-frame-parameters
               '(border-width . 2))
(add-to-list 'company-box-frame-parameters
               '(border-color . "red"))
(add-to-list 'company-box-frame-parameters
               '(scroll-bar-width . 2))

(setq company-minimum-prefix-length 1)
(setq company-idle-delay 0.1)
(setq company-selection-wrap-around t)

(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "C-n") 'company-select-next)
  (define-key company-active-map (kbd "C-p") 'company-select-previous))

(defun my-latex-mode-setup ()
  (setq-local company-backends
              (append '((company-math-symbols-latex company-math-symbols-unicode))
                      company-backends)))

  (add-hook 'LaTeX-mode-hook 'my-latex-mode-setup)



; org-config
(setq org-directory "~/ownCloud/Documents/gtd")
(setq org-agenda-files '( "~/ownCloud/Documents/gtd/gtd.org" ))

(setq org-capture-templates
      '(("i" "Todo [inbox]" entry (file "~/ownCloud/Documents/gtd/inbox.org")
         "* TODO %i%?\n %U")
	("s" "Todo [proj]" entry (file "~/ownCloud/Documents/gtd/gtd.org")
         "* TODO %i%?\n %U")
	("d" "Todo [doing]" entry (file "~/ownCloud/Documents/gtd/gtd.org")
         "* TODO Daily Doing %i%?\n ")
	("t" "Tickler" entry (file "~/ownCloud/Documents/gtd/tickler.org")
	 "* TODO %i%?\n %U")))



(add-hook 'org-capture-mode-hook 'delete-other-windows)
(setq org-refile-use-outline-path t)
(setq org-refile-targets '(("~/ownCloud/Documents/gtd/gtd.org" :maxlevel . 2)
                           ("~/ownCloud/Documents/gtd/tickler.org" :maxlevel . 2)))

(setq org-agenda-breadcrumbs-separator "=>")
(setq org-agenda-prefix-format
      '((agenda . " %i %-12:c%?-12t %l %s ")
       (todo . " %i %-12:c%?-12t %l ")
       (tags . " %i %-12:c %l")
       (search . " %i %-12:c %l")))
(setq org-agenda-tags-column -135)

(setq org-outline-path-complete-in-steps nil)
(setq org-refile-use-outline-path t)

(setq org-todo-keywords '((sequence "TODO(t)" "WAITING(w)" "DOING(g)" "|" "DONE(d)" "CANCELLED(c)")))
(setq org-file-apps '((auto-mode . emacs) (directory . emacs) ("\\.mm\\'" . default) ("\\.x?html?\\'" . default) ("\\.pdf\\'" . emacs)))

(add-hook 'org-agenda-mode-hook 'delete-other-windows)
;(add-hook 'org-open-link-functions 'delete-other-windows)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-bullets-bullet-list '("???" "???" "???" "???"))

(add-hook 'org-mode-hook 'display-line-numbers-mode)


; proxy setting
(defun toggle-proxy ()
  (interactive)
  (if (null url-proxy-services)
      (progn
	(setq url-proxy-services
	      '(("http" . "127.0.0.1:1087")
		("socks5" . "127.0.0.1:1080")))
	      (message "the proxy is open."))
    (setq url-proxy-services nil)
    (message "the proxy is closed.")))

;(toggle-proxy)


; some other keybinds
(define-key global-map (kbd "C-c a") 'org-agenda)
(define-key global-map (kbd "C-c g") 'counsel-org-goto-all)
(define-key global-map (kbd "C-c c") 'counsel-org-capture)
(global-set-key (kbd "C-c f") 'fzf-directory)
(global-set-key (kbd "C-c n") 'yas-insert-snippet)
(global-set-key (kbd "C-c y") 'browse-kill-ring)
(global-set-key (kbd "C-c k") 'kill-buffer-and-window)
(global-set-key (kbd "C-c r") 'arxiv-read-recent)
(global-set-key (kbd "C-c u") 'arxiv-read-author)
(global-set-key (kbd "C-c p") 'flyspell-correct-previous)
(global-set-key (kbd "C-c x") 'flyspell-correct-next)
(global-set-key (kbd "C-c t") 'counsel-load-theme)
(global-set-key (kbd "C-c e") 'avy-goto-char)
(global-set-key (kbd "C-c m") 'avy-goto-char-timer)
(global-set-key (kbd "C-c w") 'avy-goto-word-0)

;; ;; ; arxiv-mode
;;  (add-to-list 'load-path "/Users/Ren/.emacs.d/lisp/arxiv-mode")
;;  (require 'arxiv-mode)

;; ;; ;;; scihub
;;  (setq scihub-homepage "https://sci-hub.se")
;;  (add-to-list 'load-path "/Users/Ren/.emacs.d/lisp/scihub")
;;  (require 'scihub)


