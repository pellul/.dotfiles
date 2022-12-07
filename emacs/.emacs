(require 'package)

(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(global-superword-mode t)
 '(global-whitespace-mode t)
 '(neo-window-position (quote right))
 '(package-selected-packages
   (quote
    (markdown-mode rust-mode yaml-mode yaml typescript-mode twig-mode editorconfig tabbar ag highlight-parentheses diff-hl emmet-mode move-dup tt-mode projectile-git-autofetch xclip vue-mode telephone-line swiper-helm spacegray-theme python-mode ob-sql-mode neotree multiple-cursors expand-region magit counsel-projectile afternoon-theme ivy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(whitespace-tab ((t (:foreground "#636363")))))


(setq package-selected-packages
  '(afternoon-theme
    ag
    async
    counsel
    counsel-projectile
    dash
    diff-hl
    edit-indirect
    editorconfig
    emmet-mode
    epl
    expand-region
    git-commit
    helm
    helm-core
    highlight-parentheses
    ivy
    magit
    mmm-mode
    move-dup
    multiple-cursors
    nadvice
    neotree
    ob-sql-mode
    php-mode
    pkg-info
    popup
    projectile
    projectile-git-autofetch
    python-mode
    s
    spacegray-theme
    ssass-mode
    swiper
    swiper-helm
    tabbar
    telephone-line
    transient
    tt-mode
    twig-mode
    vscode-dark-plus-theme
    vue-html-mode
    vue-mode
    with-editor
    xclip))
(package-install-selected-packages)

;; prevent emacs from creating backfile in the current repo
(setq backup-directory-alist `(("." . "~/.saves")))
(setq version-control t     ;; Use version numbers for backups.
      kept-new-versions 10  ;; Number of newest versions to keep.
      kept-old-versions 0   ;; Number of oldest versions to keep.
      delete-old-versions t ;; Don't ask to delete excess backup versions.
      backup-by-copying t)  ;; Copy all files, don't rename them.
(setq vc-make-backup-files t)

;; projectile conf
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; auto discover projets
(setq projectile-project-search-path '("/opt/si/"))
;; auto toggle neotree on project opening
(setq projectile-switch-project-action 'neotree-projectile-action)

;; ivy conf
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

;; multiple cursors
(global-set-key (kbd "C-c m c") 'mc/edit-lines)

;; move and duplicate lines
(move-dup-mode 1)
(global-set-key (kbd "M-N") 'move-dup-duplicate-down)
(global-set-key (kbd "M-P") 'move-dup-duplicate-up)
(global-set-key (kbd "M-n") 'move-dup-move-lines-down)
(global-set-key (kbd "M-p") 'move-dup-move-lines-up)

;; rebind C-S Backspace
(global-set-key (kbd "^H") 'kill-whole-line)

;; xclip
(xclip-mode 1)

;;; emmet
(emmet-mode 1)

;; multiple-cursors conf
;;(global-set-key (kbd "H-spac") 'set-rectangular-region-anchor)
(setq neo-window-width 55)
(defun neotree-project-dir ()
  "Open NeoTree using the git root."
  (interactive)
  (let ((project-dir (projectile-project-root))
        (file-name (buffer-file-name)))
    (neotree-toggle)
    (if project-dir
        (if (neo-global--window-exists-p)
            (progn
              (neotree-dir project-dir)
              (neotree-find file-name)))
      (message "Could not find git project root."))))
(global-set-key [f8] 'neotree-project-dir)
(setq neo-smart-open t)

;; autoload theme
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'vscode-dark-plus t)


;; powerline
(require 'telephone-line)
(setq telephone-line-primary-left-separator 'telephone-line-cubed-left
      telephone-line-secondary-left-separator 'telephone-line-cubed-hollow-left
      telephone-line-primary-right-separator 'telephone-line-cubed-right
      telephone-line-secondary-right-separator 'telephone-line-cubed-hollow-right)
(setq telephone-line-height 24 telephone-line-evil-use-short-tag t)
(telephone-line-mode 1)


(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-screen t)
;; Start fullscreen (cross-platf)
(add-hook 'window-setup-hook 'toggle-frame-fullscreen t)


;; backtab
;; TODO

; START TABS CONFIG
;; from https://dougie.io/emacs/indentation/
;; Create a variable for our preferred tab width
(setq custom-tab-width 2)

;; Two callable functions for enabling/disabling tabs in Emacs
(defun disable-tabs () (setq indent-tabs-mode nil))
(defun enable-tabs  ()
  (local-set-key (kbd "TAB") 'tab-to-tab-stop)
  (setq indent-tabs-mode t)
  (setq tab-width custom-tab-width))

;; Hooks to Enable Tabs
(add-hook 'prog-mode-hook 'enable-tabs)
;; Hooks to Disable Tabs
(add-hook 'lisp-mode-hook 'disable-tabs)
(add-hook 'emacs-lisp-mode-hook 'disable-tabs)

;; Language-Specific Tweaks
(setq-default python-indent-offset custom-tab-width) ;; Python
(setq-default js-indent-level custom-tab-width)      ;; Javascript

;; Making electric-indent behave sanely
(setq-default electric-indent-inhibit t)

;; Make the backspace properly erase the tab instead of
;; removing 1 space at a time.
(setq backward-delete-char-untabify-method 'hungry)

;; WARNING: This will change your life
;; (OPTIONAL) Visualize tabs as a pipe character - "|"
;; This will also show trailing characters as they are useful to spot.
(setq whitespace-style '(face tabs tab-mark trailing))

(setq whitespace-display-mappings
  '((tab-mark 9 [124 9] [92 9]))) ; 124 is the ascii ID for '\|'

(enable-tabs)
; END TABS CONFIG

;; mark lines over 80 chars
;;(setq-default whitespace-line-column 80 whitespace-style '(face lines-tail))

(global-whitespace-mode) ; Enable whitespace mode everywhere
(put 'upcase-region 'disabled nil)

(global-display-line-numbers-mode 1)
(global-diff-hl-mode t)
(diff-hl-margin-mode 1)

;; show diff in lines
(setq magit-diff-refine-hunk (quote all))

;; delete trailing spaces on save
(add-hook 'before-save-hook 'delete-trailing-whitespace nil t)

;; highlight parentheses
(global-highlight-parentheses-mode t)

(which-function-mode -1)  ;; disable by default due to performance issues
(put 'downcase-region 'disabled nil)

(editorconfig-mode 1)
(add-hook 'find-file-hook 'editorconfig-mode-apply)
