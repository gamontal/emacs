(require 'package) ; ** - requires package
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
 '(custom-safe-themes (quote ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "26614652a4b3515b4bbbb9828d71e206cc249b67c9142c06239ed3418eff95e2" "6a9606327ecca6e772fba6ef46137d129e6d1888dcfc65d0b9b27a7a00a4af20" "90edd91338ebfdfcd52ecd4025f1c7f731aced4c9c49ed28cfbebb3a3654840b" default)))
 '(display-battery-mode nil)
 '(display-time-day-and-date nil)
 '(display-time-mode nil)
 '(flymake-google-cpplint-command "/Python34/Scripts/cpplint")
 '(helm-autoresize-mode t)
 '(highlight-current-line-globally t nil (highlight-current-line))
 '(inhibit-startup-screen t)
 '(initial-buffer-choice t)
 '(initial-frame-alist (quote ((vertical-scroll-bars))))
 '(menu-bar-mode nil)
 '(minimap-window-location (quote right))
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("melpa" . "http://melpa.org/packages/"))))
 '(powerline-default-separator (quote arrow-fade))
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
 '(default ((t (:inherit nil :stipple nil :background "#2E3436" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 181 :width normal :foundry "outline" :family "Consolas"))))
 '(cursor ((t (:background "white"))))
 '(error ((t (:foreground "red" :weight bold))))
 '(font-lock-comment-face ((t (:foreground "gray74" :slant italic))))
 '(font-lock-string-face ((t (:foreground "SpringGreen1"))))
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
 '(mode-line-buffer-id ((t (:foreground "#FFA500"))))
 '(mode-line-inactive ((t (:inherit mode-line :background "gray8" :foreground "grey80" :box (:line-width -1 :color "grey40") :weight light))))
 '(powerline-active2 ((t (:inherit mode-line :background "grey22"))) t)
 '(region ((t (:background "blue"))))
 '(sml/filename ((t (:inherit sml/global :background "#222222" :foreground "gold" :weight light))))
 '(sml/folder ((t (:inherit sml/global :background "#222222" :foreground "#8FB28F" :weight normal))))
 '(sml/line-number ((t (:inherit sml/global :background "#222222" :foreground "#8FB28F" :weight light))))
 '(sml/modes ((t (:inherit sml/global :background "#222222" :foreground "#8FB28F"))))
 '(sml/modified ((t (:inherit sml/not-modified :background "#222222" :foreground "Red" :weight bold))))
 '(sml/mule-info ((t (:inherit sml/global :background "#222222"))))
 '(sml/not-modified ((t (:inherit sml/global :background "#222222"))))
 '(sml/position-percentage ((t (:inherit sml/prefix :background "#222222" :foreground "white" :weight normal))))
 '(sml/remote ((t (:inherit sml/global :background "#222222")))))

;; fullscreen startup
(w32-send-sys-command 61488)

;; These two lines are just examples
;(setq powerline-arrow-shape 'curve)
;(setq powerline-default-separator-dir '(right . left))
;; These two lines you really need.
;(setq sml/theme 'powerline)
(sml/setup)

;; turn off bell 
 (setq ring-bell-function 'ignore)

; display time and battery life on startup
;(display-time-mode t)
;(display-battery-mode t)

;; enable projectile
(require 'projectile) ; **
(projectile-global-mode)
(setq projectile-completion-system 'grizzl)

;; enable auto-complete
(require 'auto-complete) ; **
; do default config for auto-complete
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)
(setq projectile-enable-caching t)

(require 'auto-complete-config)
(ac-config-default)

; start yasnippet with emacs
(require 'yasnippet) ; **
(yas-global-mode 1)

; initialize auto-complete-c-headers and gets called for c/c++ hooks
(defun my:ac-c-header-init ()
  (require 'auto-complete-c-headers) ; **
  (add-to-list 'ac-sources 'ac-source-c-headers))

(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)

;fix iedit bug
(define-key global-map (kbd "C-c ;") 'iedit-mode) ; **

; start flymake-google-cppint-load
; flymake initialization

(defun my:flymake-google-init ()
  (require 'flymake-google-cpplint) ; **
   (custom-set-variables 
    '(flymake-google-cpplint-command "/Python34/Scripts/cpplint"))
  (flymake-google-cpplint-load)
)
(add-hook 'c-mode-hook 'my:flymake-google-init)
(add-hook 'c++-mode-hook 'my:flymake-google-init)

; start google-c-style with emacs
(require 'google-c-style) ; **
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

; turn on Semantic
;(Semantic-mode 1)
; add Semantic as a suggestion backend to auto complete
;(defun my:add-semantic-to-autocomplete()
; (add-to-list 'ac-sources 'ac-source-semantic)
;)
;(add-hook 'c-mode-common-hook 'my:add-semantic-to-autocomplete)


; popup-menu
(setq ac-show-menu-immediately-on-auto-complete t) ; **

; key-bindings
(global-set-key (kbd "C-c s") 'eshell) ; C-c s opens eshell

(global-set-key (kbd "C-c t") 'shell)  ; C-c t opens shell

(global-set-key (kbd "C-c p") 'helm-projectile)  ; C-c p init helm-projectile

(global-set-key (kbd "M-x") 'helm-M-x)

(global-set-key (kbd "C-c b") 'helm-buffers-list) 

;; Activate org-mode
(require 'org) ; **
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

(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . js3-mode))
