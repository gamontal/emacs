
(require 'package)
(setq package-enable-at-startup nil) ; To avoid initializing twice
(package-initialize)

; Stop Emacs from losing undo information by
; setting very high limits for undo buffers
(setq undo-limit 20000000)
(setq undo-strong-limit 40000000)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (wheatgrass)))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice t)
 '(initial-frame-alist (quote ((vertical-scroll-bars))))
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("melpa" . "http://melpa.org/packages/"))))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(menu-bar-mode nil) ;disable menu bar on startup
 '(word-wrap t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 143 :width normal :foundry "outline" :family "MS Reference Sans Serif"))))
 '(cursor ((t (:background "white"))))
 '(font-lock-comment-face ((t (:foreground "spring green"))))
 '(font-lock-string-face ((t (:foreground "yellow1"))))
 '(font-lock-variable-name-face ((t (:foreground "chartreuse"))))
 '(highlight ((t (:background "gray7"))))
 '(isearch ((t (:background "red" :foreground "white"))))
 '(link ((t (:foreground "yellow green" :underline t))))
 '(minibuffer-prompt ((t (:foreground "magenta1"))))
 '(mode-line-buffer-id ((t (:background "blue" :foreground "white" :weight bold))))
 '(mode-line-inactive ((t (:inherit mode-line :background "gray4" :foreground "grey80" :box (:line-width -1 :color "grey40") :weight light))))
 '(region ((t (:background "blue")))))

;; turn off bell 
 (setq ring-bell-function 'ignore)

;; fullscreen startup
(w32-send-sys-command 61488)

; display time and battery life on startup
(display-time-mode t)
(display-battery-mode t)

;; highlight rows
(global-hl-line-mode t)

;; enable projectile
(require 'projectile)
(projectile-global-mode)

;; enable auto-complete
(require 'auto-complete)
(global-auto-complete-mode t)

(require 'auto-complete-config)
(ac-config-default)

; popup-menu
(setq ac-show-menu-immediately-on-auto-complete t)

; key-bindings
(global-set-key (kbd "C-c s") 'eshell) ; C-c s opens eshell

(global-set-key (kbd "C-c t") 'shell)  ; C-c t opens shell


