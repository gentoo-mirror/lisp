;;; site-lisp configuration for slime

(add-to-list 'load-path "@SITELISP@")
(add-to-list 'load-path "@SITELISP@/contrib")
(autoload 'slime-highlight-edits-mode "slime-highlight-edits")

(require 'slime)

(slime-setup '(slime-fancy slime-asdf slime-banner))

;; this allows us not to require dev-lisp/hyperspec
;; (which is non-free) as a hard dependency

(if (file-exists-p "/usr/share/doc/hyperspec/HyperSpec")
    (setq common-lisp-hyperspec-root "file:///usr/share/doc/hyperspec/HyperSpec/")
  (setq common-lisp-hyperspec-root "http://www.lispworks.com/reference/HyperSpec/"))
