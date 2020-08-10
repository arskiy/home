;; -*- no-byte-compile: t; -*-
;;; ~/etc/config.d/doom/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:fetcher github :repo "username/repo"))
;; (package! builtin-package :disable t)
(package! elcord)
(package! 2048-game)
(package! ht)
(package! dash)
(package! tide :disable t)
(package! gdscript-mode
          :recipe (:host github
                   :repo "GDQuest/emacs-gdscript-mode"))
