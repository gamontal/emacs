;; configuration:

(require 'package) ; 
(setq package-enable-at-startup nil) ; To avoid initializing twice
(package-initialize)

(setq undo-limit 20000000)
(setq undo-strong-limit 40000000)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("2e5705ad7ee6cfd6ab5ce81e711c526ac22abed90b852ffaf0b316aa7864b11f" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(highlight-current-line-globally t nil (highlight-current-line))
 '(initial-buffer-choice t)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#2E3436" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 181 :width normal :foundry "outline" :family "Consolas"))))
 '(font-lock-comment-face ((t (:foreground "yellow" :slant italic))))
 '(helm-source-header ((t (:background "#abd7f0" :foreground "black" :family "Sans Serif"))))
 '(highlight-current-line-face ((t (:background "gray25"))))
 '(link ((t (:foreground "SlateGray1" :underline t))))
 '(minibuffer-prompt ((t (:foreground "white"))))
 '(mode-line ((t (:background "grey70" :foreground "black" :inverse-video nil :box (:line-width -1 :style released-button)))))
 '(sml/filename ((t (:inherit sml/global :foreground "Blue" :weight normal :height 0.9 :family "consolas"))))
 '(sml/line-number ((t (:inherit sml/modes))))
 '(sml/modified ((t (:inherit sml/not-modified :foreground "Red"))))
 '(sml/prefix ((t (:inherit sml/global :foreground "grey20" :weight bold)))))

;; turn off bell 
(setq ring-bell-function 'ignore)

;; disable menu-bar and toolbar
(menu-bar-mode -1)
(tool-bar-mode -1)

;; enable smart-mode-line
(sml/setup)

;; enable projectile
(require 'projectile) 
(projectile-global-mode)
(setq projectile-completion-system 'grizzl)

; start yasnippet with emacs
(require 'yasnippet) 
(yas-global-mode 1)

; highlight current line
(require 'highlight-current-line)

; load AES
(require 'aes)

; load ASCII
(require 'ascii)

; Bright-red TODOs
 (setq todoenb-modes '(c++-mode c-mode emacs-lisp-mode ruby-mode html-mode))
 (make-face 'font-lock-fixme-face)
 (make-face 'font-lock-study-face)
 (make-face 'font-lock-important-face)
 (make-face 'font-lock-note-face)
 (mapc (lambda (mode)
	 (font-lock-add-keywords
	  mode
	  '(("\\<\\(TODO\\)" 1 'font-lock-fixme-face t)
	    ("\\<\\(STUDY\\)" 1 'font-lock-study-face t)
	    ("\\<\\(IMPORTANT\\)" 1 'font-lock-important-face t)
            ("\\<\\(NOTE\\)" 1 'font-lock-note-face t))))
	todoenb-modes)
 (modify-face 'font-lock-fixme-face "Red" nil nil t nil t nil nil)
 (modify-face 'font-lock-study-face "Yellow" nil nil t nil t nil nil)
 (modify-face 'font-lock-important-face "Yellow" nil nil t nil t nil nil)
 (modify-face 'font-lock-note-face "Magenta" nil nil t nil t nil nil)

(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . js3-mode))
(add-to-list 'auto-mode-alist '("\\.vb\\'" . visual-basic-mode))

; key-bindings

(global-set-key (kbd "C-c s") 'eshell) ; C-c s opens eshell

(global-set-key (kbd "C-c t") 'shell)  ; C-c t opens shell

(global-set-key (kbd "C-c p") 'helm-projectile)  ; C-c p init helm-projectile

(global-set-key (kbd "M-x") 'helm-M-x)

(global-set-key (kbd "C-c b") 'helm-buffers-list) 

(global-set-key (kbd "C-c /") 'make-directory)




