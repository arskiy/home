;;; ~/etc/config.d/doom/setup-deft.el -*- lexical-binding: t; -*-

(require 'deft)
(setq deft-directory
      "~/etc/config.d/doom/org"
      deft-extensions '("txt" "tex" "org" "md")
      deft-recursive t
      deft-use-filename-as-title t)

(map!
 :n "SPC n D" #'deft-find-file)
