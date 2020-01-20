;;; ~/etc/config.d/doom/setup-elcord.el -*- lexical-binding: t; -*-

(require 'elcord)

(setq elcord-mode-text-alist
 '((c-mode . "C  ")
  (c++-mode . "C++")
  (csharp-mode . "C#")
  (cperl-mode . "Perl")
  (enh-ruby-mode . "Ruby")
  (fsharp-mode . "F#")
  (java-mode . "Java")
  (lisp-mode . "Common-Lisp")
  (markdown-mode . "Markdown")
  (magit-mode . "It's Magit!")
  (slime-repl-mode . "SLIME-REPL")
  (sly-mrepl-mode . "Sly-REPL")
  (php-mode . "PHP")
  (rustic-mode . "Rust is NOT just a programming language, it's a lifestyle. r/rustjerk")))
