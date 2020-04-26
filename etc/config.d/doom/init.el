;;; init.el -*- lexical-binding: t; -*-

;; This file controls what Doom modules are enabled and what order they load in.
;; Remember to run 'doom sync' after modifying it!

;; NOTE Press 'SPC h d h' (or 'C-h d h' for non-vim users) to access Doom's
;;      documentation. There you'll find information about all of Doom's modules
;;      and what flags they support.

;; NOTE Move your cursor over a module's name (or its flags) and press 'K' (or
;;      'C-c g k' for non-vim users) to view its documentation. This works on
;;      flags as well (those symbols that start with a plus).
;;
;;      Alternatively, press 'gd' (or 'C-c g d') on a module to browse its
;;      directory (for easy access to its source code).

(doom! :input
       ;;chinese
       ;;japanese

       :completion
       ;;company

       ;;helm              ; the *other* search engine for love and life
       ;;ido               ; the other *other* search engine...
       (ivy               ; a search engine for love and life
         +icons
         +childframe
         )

       :ui
       deft              ; notational velocity for Emacs
       doom              ; what makes DOOM look the way it does
       doom-dashboard    ; a nifty splash screen for Emacs
       doom-quit         ; DOOM quit-message prompts when you quit Emacs
       ;;fill-column       ; a `fill-column' indicator
       hl-todo           ; highlight TODO/FIXME/NOTE tags
       indent-guides     ; highlighted indent columns
       modeline          ; snazzy, Atom-inspired modeline, plus API
       ;nav-flash         ; blink the current line after jumping
       neotree           ; a project drawer, like NERDTree for vim
       ophints           ; highlight the region an operation acts on
       (popup            ; tame sudden yet inevitable temporary windows
        +all             ; catch all popups that start with an asterix
        +defaults)       ; default popup rules
       ;pretty-code       ; replace bits of code with pretty symbols
       tabs            ; a tabbar for remacs
       ;;treemacs          ; a project drawer, like neotree but cooler
       unicode           ; extended unicode support for various languages
       vc-gutter         ; vcs diff in the fringe
       ;vi-tilde-fringe   ; fringe tildes to mark beyond EOB
       (window-select     ; visually switch windows
         +numbers
         )
       workspaces        ; tab emulation, persistence & separate workspaces

       :editor
       (evil +everywhere); come to the dark side, we have cookies
       file-templates    ; auto-snippets for empty files
       fold              ; (nigh) universal code folding
       (format +onsave)  ; automated prettiness
       ;;lispy             ; vim for lisp, for people who dont like vim
       multiple-cursors  ; editing in many places at once
       ;;objed             ; text object editing for the innocent
       ;;parinfer          ; turn lisp into python, sort of
       rotate-text       ; cycle region at point between text candidates
       ;snippets          ; my elves. They type so I don't have to

       :emacs
       (dired            ; making dired pretty [functional]
       ;+ranger         ; bringing the goodness of ranger to dired
       +icons          ; colorful icons for dired-mode
        )
       electric          ; smarter, keyword-based electric-indent
       ibuffer
       vc                ; version-control and Emacs, sitting in a tree

       :term
       ;eshell            ; a consistent, cross-platform shell (WIP)
       ;;shell             ; a terminal REPL for Emacs
       ;term              ; terminals in Emacs
       ;vterm             ; another terminals in Emacs

       :checkers
       syntax
       ;spell
       grammar

       :tools
       ;;ansible
       ;debugger          ; FIXME stepping through code, to help you add bugs
       ;;direnv
       ;docker
       ;editorconfig      ; let someone else argue about tabs vs spaces
       ;;ein               ; tame Jupyter notebooks with emacs
       eval              ; run code, run (also, repls)
       gist              ; interacting with github gists
       (lookup +dictionary)           ; helps you navigate your code and documentation
       lsp
       ;;macos             ; MacOS-specific commands
       magit             ; a git porcelain for Emacs
       make              ; run make tasks from Emacs
       ;;pass              ; password manager for nerds
       pdf               ; pdf enhancements
       ;;prodigy           ; FIXME managing external services & code builders
       rgb               ; creating color strings
       ;;terraform         ; infrastructure as code
       ;;tmux              ; an API for interacting with tmux
       upload            ; map local to remote projects via ssh/ftp
       ;wakatime

       :lang
       ;;agda              ; types of types of types of types...
       assembly          ; assembly for fun or debugging
       (cc +lsp)                ; C/C++/Obj-C madness
       ;clojure           ; java with a lisp
       ;; common-lisp       ; if you've seen one lisp, you've seen them all
       ;;coq               ; proofs-as-programs
       ;;crystal           ; ruby at the speed of c
       ;;csharp            ; unity, .NET, and mono shenanigans
       data              ; config/data formats
       ;; erlang            ; an elegant language for a more civilized age
       ;; elixir            ; erlang done right
       ;;elm               ; care for a cup of TEA?
       emacs-lisp        ; drown in parentheses
       ;;ess               ; emacs speaks statistics
       ;;fsharp           ; ML stands for Microsoft's Language
       ;go                ; the hipster dialect
       haskell ; a language that's lazier than I am
       ;;hy                ; readability of scheme w/ speed of python
       ;;idris             ;
       ;;(java +meghanada) ; the poster child for carpal tunnel syndrome
       javascript        ; all(hope(abandon(ye(who(enter(here))))))
       ;;julia             ; a better, faster MATLAB
       ;;kotlin            ; a better, slicker Java(Script)
       latex             ; writing papers in Emacs has never been so fun
       ;;ledger            ; an accounting system in Emacs
       ;lua               ; one-based indices? one-based indices
       markdown          ; writing docs for people to ignore
       ;;nim               ; python + lisp at the speed of c
       nix               ; I hereby declare "nix geht mehr!"
       ;;ocaml             ; an objective camel
       (org              ; organize your plain life in plain text
        +dragndrop       ; file drag & drop support
        +ipython         ; ipython support for babel
        +pandoc          ; pandoc integration into org's exporter
        +present)        ; using Emacs for presentations
       ;;perl              ; write code no one else can comprehend
       ;;php               ; perl's insecure younger brother
       ;;plantuml          ; diagrams for confusing people more
       ;;purescript        ; javascript, but functional
       python            ; beautiful is better than ugly
       ;;qt                ; the 'cutest' gui framework ever
       racket            ; a DSL for DSLs
       ;;rest              ; Emacs as a REST client
       ;; ruby              ; 1.step {|i| p "Ruby is #{i.even? ? 'love' : 'life'}"}
       (rust +lsp)             ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
       ;;scala             ; java, but good
       scheme            ; a fully conniving family of lisps
       sh                ; she sells {ba,z,fi}sh shells on the C xor
       ;;solidity          ; do you need a blockchain? No.
       ;;swift             ; who asked for emoji variables?
       ;;terra             ; Earth and Moon in alignment for performance.
       web               ; the tubes
       ;;vala              ; GObjective-C

       :email
       (mu4e +gmail)       ; WIP
       ;;notmuch             ; WIP
       ;;(wanderlust +gmail) ; WIP

       ;; Applications are complex and opinionated modules that transform Emacs
       ;; toward a specific purpose. They may have additional dependencies and
       ;; should be loaded late.
       :app
       calendar
       ;;irc              ; how neckbeards socialize
       ;(rss +org)        ; emacs as an RSS reader
       ;;twitter           ; twitter client https://twitter.com/vnought

       :collab
       ;;floobits          ; peer programming for a price
       ;impatient-mode    ; show off code over HTTP

       :config
       ;; For literate config users. This will tangle+compile a config.org
       ;; literate config in your `doom-private-dir' whenever it changes.
       ;;literate

       ;; The default module sets reasonable defaults for Emacs. It also
       ;; provides a Spacemacs-inspired keybinding scheme and a smartparens
       ;; config. Use it as a reference for your own modules.
       (default +bindings +smartparens +snippets +evil-commands))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("2f5034120826e047160aca97575c21e692e7ec7ec23c53d9832006fbeb7a91d8" "34c99997eaa73d64b1aaa95caca9f0d64229871c200c5254526d0062f8074693" "427fa665823299f8258d8e27c80a1481edbb8f5463a6fb2665261e9076626710" "9c27124b3a653d43b3ffa088cd092c34f3f82296cf0d5d4f719c0c0817e1afa6" "155a5de9192c2f6d53efcc9c554892a0d87d87f99ad8cc14b330f4f4be204445" "b0fd04a1b4b614840073a82a53e88fe2abc3d731462d6fde4e541807825af342" "e3c87e869f94af65d358aa279945a3daf46f8185f1a5756ca1c90759024593dd" "d0c943c37d6f5450c6823103544e06783204342430a36ac20f6beb5c2a48abe3" "d8dc153c58354d612b2576fea87fe676a3a5d43bcc71170c62ddde4a1ad9e1fb" default)))
 '(doom-modeline-major-mode-icon t)
 '(doom-modeline-mode t)
 '(doom-modeline-persp-name t)
 '(elcord-mode-icon-alist
   (quote
    ((c-mode . "c-mode_icon")
     (c++-mode . "cpp-mode_icon")
     (clojure-mode . "clojure-mode_icon")
     (csharp-mode . "csharp-mode_icon")
     (comint-mode . "comint-mode_icon")
     (cperl-mode . "cperl-mode_icon")
     (emacs-lisp-mode . "emacs_icon")
     (enh-ruby-mode . "ruby-mode_icon")
     (erc-mode . "irc-mode_icon")
     (forth-mode . "forth-mode_icon")
     (fsharp-mode . "fsharp-mode_icon")
     (haskell-mode . "haskell-mode_icon")
     (java-mode . "java-mode_icon")
     (js-mode . "javascript-mode_icon")
     (kotlin-mode . "kotlin-mode_icon")
     (go-mode . "go-mode_icon")
     (latex-mode . "latex-mode_icon")
     (lisp-mode . "lisp-mode_icon")
     (magit-mode . "magit-mode_icon")
     (markdown-mode . "markdown-mode_icon")
     (nix-mode . "nix-mode_icon")
     (org-mode . "org-mode_icon")
     (racket-mode . "racket-mode_icon")
     (ruby-mode . "ruby-mode_icon")
     (rustic-mode . "rust-mode_icon")
     (slime-repl-mode . "lisp-mode_icon")
     (sly-mrepl-mode . "lisp-mode_icon")
     (php-mode . "php-mode_icon")
     (python-mode . "python-mode_icon"))))
 '(elcord-mode-text-alist
   (quote
    ((c-mode . "C  ")
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
     (php-mode "PHP"))))
 '(elcord-use-major-mode-as-main-icon t)
 '(mu4e-confirm-quit nil)
 '(mu4e-get-mail-command "offlineimap -c /home/arskiy/etc/config.d/offlineimaprc -o" t)
 '(mu4e-use-fancy-chars t t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
