;;; ~/etc/config.d/doom/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
;;

(load! "bindings")
(load! "mu4e-config")
(load! "setup-dired")
(load! "setup-elcord")
(load! "setup-deft")
(load! "setup-colemak")

(elcord-mode)
(counsel-mode)

(load-theme 'doom-sourcerer t)

(after! rustic
  (push 'rustic-clippy flycheck-checkers))

(setq rustic-lsp-server 'rust-analyzer)

(add-hook 'rustic-mode-hook 'rust-analyzer-inlay-hints-mode)

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
  mu4e-view-show-images t
  langtool-language-tool-jar "/nix/store/d5ycz0991v0g93m4bicl7bs4yjih64d5-LanguageTool-4.9/share/languagetool-commandline.jar"
  bookmark-default-file "/home/arskiy/etc/config.d/doom/bookmarks"

  internal-lisp-face-attributes [nil
   :family :foundry :swidth :height :weight :slant :underline :inverse
   :foreground :background :stipple :overline :strike :box
   :font :inherit :fontset :vector :extend]

  lsp-idle-delay 0.550
  read-process-output-max (* 1024 1024))
