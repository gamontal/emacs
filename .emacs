
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (wheatgrass)))
 '(inhibit-startup-screen t)
 '(initial-buffer-choice t)
 '(initial-frame-alist (quote ((vertical-scroll-bars))))
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(word-wrap t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "gray0" :foreground "gray89" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 135 :width normal :foundry "outline" :family "Consolas"))))
 '(cursor ((t (:background "white"))))
 '(highlight ((t (:background "gray7" :foreground "white"))))
 '(link ((t (:foreground "yellow green" :underline t))))
 '(minibuffer-prompt ((t (:foreground "magenta1"))))
 '(mode-line-buffer-id ((t (:background "blue" :foreground "white" :weight bold))))
 '(mode-line-inactive ((t (:inherit mode-line :background "gray4" :foreground "grey80" :box (:line-width -1 :color "grey40") :weight light))))
 '(region ((t (:background "blue" :foreground "white")))))

;; turn off bell 
 (setq ring-bell-function 'ignore)

;; fullscreen startup
(w32-send-sys-command 61488)

;; highlight rows
(global-hl-line-mode t)
