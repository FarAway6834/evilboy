;;; evilboy.el --- Evil mode and related packages configuration

;;; Commentary:
;; This package configures Evil mode with various extensions.

;;; Code:

(require 'package)

;; pkgs
(setq package-list
      '(evil
        evil-mc
        evil-surround
        evil-visualstar
        evil-iedit-state
        evil-multiedit
        evil-args
        evil-matchit
        evil-exchange
        evil-escape
        evil-collection
        evil-goggles
        evil-lion
        evil-quickscope))

;; init pkg
(defun evilboy-install-packages ()
  "Install Evil and related packages."
  (unless (package-installed-p 'package)
    (package-refresh-contents))
  (dolist (pkg package-list)
    (unless (package-installed-p pkg)
      (package-install pkg))))

(evilboy-install-packages)

(provide 'evilboy)
;;; evilboy.el ends here
