;;; package -- Summary
;;; Commentary:
;;; Lisp modules goes here -- load some buffers
;;; Code:

;;; Set up package
(require 'package)
;;(setq package-enable-at-startup nil)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu" . "https://elpa.gnu.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))

(package-initialize)

;;; Bootstrap use-package
;; Install use-package if it's not already installed.
;; use-package is used to configure the rest of the packages.
(require 'use-package)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/my-init.org"))
(if (file-exists-p "~/.emacs.d/work-specific-settings.org")
    (org-babel-load-file (expand-file-name "~/.emacs.d/work-specific-settings.org")))
;;(provide 'init)
;;; init.el ends here