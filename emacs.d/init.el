(require 'package)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(add-to-list 'package-archives
	     '("melpa" . "https://stable.melpa.org/packages/") t)
;(add-to-list 'package-archives
;             '("marmalade" . "http://marmalade-repo.org/packages/") t)

(package-initialize)

;; (when (not package-archive-contents)
;;   (package-refresh-contents))

(package-refresh-contents t)

(setq auto-install-packages
      '(solarized-theme
       elpy
       which-key
       dockerfile-mode
       company))

(dolist (pkg auto-install-packages)
  (unless (package-installed-p pkg)
    (package-install pkg)))

(require 'init-local nil t)

(load-theme 'solarized-dark t)

;; Python configuration
(elpy-enable)

(setq python-shell-interpreter "jupyter"
      python-shell-interpreter-args "console --simple-prompt"
      python-shell-prompt-detect-failure-warning nil)
(add-to-list 'python-shell-completion-native-disabled-interpreters
             "jupyter")

(menu-bar-mode -1)

(tool-bar-mode -1)

(which-key-mode)

(show-paren-mode t)			;highlight balancing paren

(column-number-mode t)                ;display column numbers in the window status line
(line-number-mode -1)                 ;don't display line numbers in the window status line 
(global-display-line-numbers-mode t)  ;show line numberes in window gutter
(global-hl-line-mode t)		      ;highlight the current line

(setq gc-cons-threshold 20000000)	;increase GC to every 20MB from default .7MB for performance

(setq dired-isearch-filenames t)                      ;c-s only searches filenames in dired buffer

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-show-numbers t)
 '(global-company-mode t)
 '(package-selected-packages
   (quote
    (dockerfile-mode better-defaults elpy solarized-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
