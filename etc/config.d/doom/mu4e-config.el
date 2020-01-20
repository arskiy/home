;;; ~/etc/config.d/doom/mu4e-config.el -*- lexical-binding: t; -*-
(setq mail-user-agent 'mu4e-user-agent)

(setq mu4e-maildir "/home/arskiy/usr/mail")

(setq mu4e-sent-folder   "/E-mails enviados"
      mu4e-drafts-folder "/Rascunhos"
      mu4e-trash-folder  "/Lixeira")

(setq mu4e-user-mail-address-list '("lucas.michelonidesouza@gmail.com" "lucas.micheloni.satelite@gmail.com"))

(setq mu4e-get-mail-command "offlineimap -c /home/arskiy/etc/config.d/offlineimaprc")

(setq user-mail-address "lucas.michelonidesouza@gmail.com"
      user-full-name  "Lucas M. de Souza")

(setq message-kill-buffer-on-exit t)

(setq message-send-mail-function 'smtpmail-send-it
     smtpmail-stream-type 'tls
     smtpmail-default-smtp-server "smtp.gmail.com"
     smtpmail-auth-credentials '(expand-file-name "~/.authinfo.gpg")
     smtpmail-smtp-server "smtp.gmail.com"
     smtpmail-smtp-service 587)

(setq mu4e-sent-messages-behavior 'delete)
