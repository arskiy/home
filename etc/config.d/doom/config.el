;;; ~/etc/config.d/doom/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
;;

(load! "bindings")
(load! "mu4e-config")
(load! "setup-dired")
(load! "setup-elcord")
(load! "setup-deft")

(require 'zone)
(zone-when-idle 300)

(elcord-mode)
(counsel-mode)

(load-theme 'doom-one t)

(add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e/")

(setq
  +doom-dashboard-banner-file (expand-file-name "logo.png" doom-private-dir)
  org-ellipsis " ▾ "
  +magit-hub-features t
  prefer-coding-system 'utf-8
  truncate-lines nil
  alchemist-test-truncate-lines nil
  projectile-sort-order 'recently-active
  projectile-indexing-method 'alien
  projectile-completion-system 'ivy
  max-specpdl-size 10000
  max-lisp-eval-depth 5000
  doom-font (font-spec :family "scientifica" :size 12)
  mu4e-use-fancy-chars t
  mu4e-view-show-images t)
