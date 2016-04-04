(require 'package)

;;
;; Package setup
;;

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)

(package-initialize)

(defvar my-packages
  '(org
    magit
    clojure-mode
    paredit
    cider
    smex
    rainbow-delimiters
    helm))

(if (eq system-type 'darwin)
    (add-to-list 'my-packages 'exec-path-from-shell))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(unless package-archive-contents
  (package-refresh-contents))

;;
;; General configuration
;;
(global-set-key (kbd "M-SPC") 'complete-symbol)

; enable line numbers for all buffers
(global-linum-mode 1)

;;
;; Helm
;;

(require 'helm-config)
(helm-mode t)

(global-set-key (kbd "M-x") 'helm-M-x) ; use Helm for M-x command browsing / execution

