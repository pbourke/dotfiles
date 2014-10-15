(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)

; smooth scrolling http://emacs.wordpress.com/2007/09/10/smooth-scrolling/
(set-variable 'scroll-conservatively 100)
