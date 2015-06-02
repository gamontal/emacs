(require 'package)
(setq package-enable-at-startup nil) ; To avoid initializing twice
(package-initialize)

;(require 'cask "~/.cask/cask.el")
;(cask-initialize)

(setq undo-limit 20000000)
(setq undo-strong-limit 40000000)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (wheatgrass)))
 '(custom-safe-themes (quote ("6a9606327ecca6e772fba6ef46137d129e6d1888dcfc65d0b9b27a7a00a4af20" "90edd91338ebfdfcd52ecd4025f1c7f731aced4c9c49ed28cfbebb3a3654840b" default)))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(helm-autoresize-mode t)
 '(highlight-current-line-globally t nil (highlight-current-line))
 '(inhibit-startup-screen t)
 '(initial-buffer-choice t)
 '(initial-frame-alist (quote ((vertical-scroll-bars))))
 '(menu-bar-mode nil)
 '(minimap-window-location (quote right))
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("melpa" . "http://melpa.org/packages/"))))
 '(scroll-bar-mode (quote right))
 '(send-mail-function (quote mailclient-send-it))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(word-wrap t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#2E3436" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 151 :width normal :foundry "outline" :family "Consolas"))))
 '(cursor ((t (:background "white"))))
 '(error ((t (:foreground "red" :weight bold))))
 '(font-lock-comment-face ((t (:foreground "gray74" :slant italic))))
 '(font-lock-string-face ((t (:foreground "yellow1"))))
 '(font-lock-variable-name-face ((t (:foreground "chartreuse"))))
 '(helm-candidate-number ((t (:foreground "white"))))
 '(helm-match ((t (:foreground "red"))))
 '(helm-selection ((((background dark)) (:background "gray30" :distant-foreground "black")) (((background light)) (:background "#b5ffd1" :distant-foreground "black"))))
 '(helm-source-header ((t (:background "gray15" :foreground "white" :box (:line-width -1 :style released-button) :family "Sans Serif"))))
 '(highlight ((t (:background "gray22" :foreground "white"))))
 '(highlight-current-line-face ((t (:background "gray25"))))
 '(isearch ((t (:background "red" :foreground "white"))))
 '(link ((t (:foreground "SlateGray1" :underline t))))
 '(minibuffer-prompt ((t (:foreground "light sea green" :weight semi-bold))))
 '(mode-line ((t (:background "#222222" :foreground "#8FB28F" :box (:line-width -1 :style released-button)))))
 '(mode-line-buffer-id ((t (:foreground "#FFA500" :weight bold))))
 '(mode-line-inactive ((t (:inherit mode-line :background "gray4" :foreground "grey80" :box (:line-width -1 :color "grey40") :weight light))))
 '(region ((t (:background "blue")))))

;; turn off bell 
 (setq ring-bell-function 'ignore)

;; fullscreen startup
(w32-send-sys-command 61488)

; display time and battery life on startup
(display-time-mode t)
(display-battery-mode t)

;; enable projectile
(require 'projectile)
(projectile-global-mode)
(setq projectile-completion-system 'grizzl)

;; enable auto-complete
(require 'auto-complete)
(global-auto-complete-mode t)
(setq projectile-enable-caching t)

(require 'auto-complete-config)
(ac-config-default)

; popup-menu
(setq ac-show-menu-immediately-on-auto-complete t)

; key-bindings
(global-set-key (kbd "C-c s") 'eshell) ; C-c s opens eshell

(global-set-key (kbd "C-c t") 'shell)  ; C-c t opens shell

(global-set-key (kbd "C-c r") 'helm-projectile)  ; C-c h init helm-projectile

(global-set-key (kbd "M-x") 'helm-M-x)

(global-set-key (kbd "C-c b") 'helm-buffers-list) 

;; Activate org-mode
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

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
