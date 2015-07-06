(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (misterioso))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;
;; Configure MELPA
;;

(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line


;;
;; 2 space tabs
;;

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)


;;
;; Init packages
;;

(add-to-list 'load-path "~/.emacs.d/elpa/neotree-0.2.1/")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(add-to-list 'load-path "~/.emacs.d/elpa/mustache-mode-1.3/")
(require 'mustache-mode)

(add-to-list 'load-path "~/.emacs.d/elpa/alchemist-1.1.1/")
(require 'alchemist)
