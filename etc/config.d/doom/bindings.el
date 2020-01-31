;;; ~/etc/config.d/doom/bindings.el -*- lexical-binding: t; -*-
(require 'neotree)

(map!
 "<f1>" #'neotree-toggle)

(with-eval-after-load 'evil-maps
  (defun previous-5-lines ()
    (interactive)
    (cl-loop for i from 1 to 5
             do (evil-previous-visual-line)))

  (defun next-5-lines ()
    (interactive)
    (cl-loop for i from 1 to 5
             do (evil-next-visual-line)))

  (with-eval-after-load 'dired
    (evil-define-key 'normal dired-mode-map
      "h" 'dired-up-directory
      "l" 'dired-find-file
      )
    )

  (map!
   :n "j" #'evil-next-visual-line
   :n "k" #'evil-previous-visual-line
   :n ";" #'evil-ex

   :nv "H" #'evil-first-non-blank-of-visual-line
   :nv "J" #'next-5-lines
   :nv "K" #'previous-5-lines
   :nv "L" #'evil-end-of-line

   :n "M-/" #'comment-or-uncomment-region
   :n "SPC d g" #'dumb-jump-go
   :n "SPC d b" #'dumb-jump-back

   :n "C-c C-o" #'(dired "/home/arskiy/etc/emacs.d")

   ;; :ni "C-h" #'evil-window-left
   ;; :ni "C-j" #'evil-window-down
   ;; :ni "C-k" #'evil-window-up
   ;; :ni "C-l" #'evil-window-right

   :n "SPC r m" #'rust-analyzer-expand-macro
   :n "SPC m r" #'+make/run
   :n "SPC m l" #'+make/run-last

   :n "f" #'avy-goto-char-timer
   :n "C-," #'execute-extended-command))


(add-hook 'evil-collection-setup-hook #'my-hjkl-rotation)
(after! evil-collection
  (evil-collection-translate-key nil 'evil-motion-state-map
    ;; colemak hnei is qwerty hjkl
    "n" "j"
    "e" "k"
    "i" "l"
    ;; add back nei
    "j" "e"
    "k" "n"
    "l" "i"))
