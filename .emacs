;; -*- eval: (git-auto-commit-mode 1) -*-


;; load emacs 24's package system. Add MELPA repository.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/") 
   t)
  (add-to-list
   'package-archives
   '("org" . "http://orgmode.org/elpa/")
   t))


(package-initialize)

;; default behaviours
(setq inhibit-startup-screen t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(set-scroll-bar-mode nil)

(global-set-key (kbd "C-q") 'read-only-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-engine (quote luatex))
 '(custom-safe-themes
   (quote
    ("2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-mode t)
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-remove-import-lines t)
 '(ledger-accounts-file nil)
 '(ledger-reports
   (quote
    (("bal" "ledger [[ledger-mode-flags]] -f /home/cheddles/accounts.ledger bal")
     ("bal" "%(binary) -f %(ledger-file) bal")
     ("reg" "%(binary) -f %(ledger-file) reg")
     ("payee" "%(binary) -f %(ledger-file) reg @%(payee)")
     ("account" "%(binary) -f %(ledger-file) reg %(account)"))))
 '(org-agenda-files (quote ("~/Notes/Org/todo.org" "~/Notes/Org/notes.org")))
 '(org-babel-load-languages (quote ((emacs-lisp . t) (latex . t))))
 '(org-capture-templates
   (quote
    (("t" "TODO" entry
      (file "~/Notes/Org/todo.org")
      "* TODO %?
" :prepend t :empty-lines 1)
     ("n" "Notes" entry
      (file "~/Notes/Org/notes.org")
      "* %^{Title} %^g 
:PROPERTIES:
:Created: %U
:Linked: %a
:END: 
%i
Brief description:
%?" :prepend t :empty-lines 1 :created t)
     ("j" "jot" entry
      (file "~/Notes/Org/notes.org")
      "* %?" :empty-lines 1))) t)
 '(org-export-with-latex t)
 '(org-format-latex-options
   (quote
    (:foreground default :background default :scale 1.3 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
		 ("begin" "$1" "$" "$$" "\\(" "\\["))))
 '(org-html-with-latex (quote mathjax))
 '(org-latex-packages-alist (quote (("" "tikz-cd" t))))
 '(org-latex-pdf-process
   (quote
    ("%latex -interaction nonstopmode -output-directory %o %f" "%latex -interaction nonstopmode -output-directory %o %f" "%latex -interaction nonstopmode -output-directory %o %f")))
 '(org-preview-latex-default-process (quote dvisvgm))
 '(org-preview-latex-process-alist
   (quote
    ((dvipng :programs
	     ("latex" "dvipng")
	     :description "dvi > png" :message "you need to install the programs: latex and dvipng." :image-input-type "dvi" :image-output-type "png" :image-size-adjust
	     (1.0 . 1.0)
	     :latex-compiler
	     ("pdflatex -interaction nonstopmode -output-directory %o %f")
	     :image-converter
	     ("dvipng -fg %F -bg %B -D %D -T tight -o %O %f"))
     (dvisvgm :programs
	      ("latex" "dvisvgm")
	      :description "dvi > svg" :message "you need to install the programs: latex and dvisvgm." :use-xcolor t :image-input-type "dvi" :image-output-type "svg" :image-size-adjust
	      (1.5 . 1.5)
	      :latex-compiler
	      ("latex -interaction nonstopmode -output-directory %o %f")
	      :image-converter
	      ("dvisvgm %f -n -b min -c %S -o %O"))
     (imagemagick :programs
		  ("latex" "convert")
		  :description "pdf > png" :message "you need to install the programs: latex and imagemagick." :use-xcolor t :image-input-type "pdf" :image-output-type "png" :image-size-adjust
		  (1.0 . 1.0)
		  :latex-compiler
		  ("pdflatex -interaction nonstopmode -output-directory %o %f")
		  :image-converter
		  ("convert -density %D -trim -antialias %f -quality 100 %O")))))
 '(org-ref-get-pdf-filename-function (quote org-ref-get-pdf-filename-helm-bibtex))
 '(org-refile-targets (quote ((org-agenda-files :maxlevel . 2))))
 '(org-refile-use-outline-path t)
 '(org-todo-keywords
   (quote
    ((sequence "TODO(t)" "ONGOING(o)" "WAITING(w@/!)" "ON HOLD(h@)" "|" "DONE(d!)" "CANCELLED(c!)"))))
 '(org-use-fast-todo-selection t)
 '(package-selected-packages
   (quote
    (org-noter-pdftools org-ref org-noter dklrt ledger-mode openwith pdf-tools znc counsel ivy ivy-bibtex ctable proof-general company-coq ess ess-R-data-view ess-smart-underscore function-args cdlatex auctex auctex-latexmk auctex-lua org-bullets org-brain org solarized-theme haskell-mode)))
 '(safe-local-variable-values
   (quote
    ((eval let
	   ((unimath-topdir
	     (expand-file-name
	      (locate-dominating-file buffer-file-name "UniMath"))))
	   (setq fill-column 100)
	   (make-local-variable
	    (quote coq-use-project-file))
	   (setq coq-use-project-file nil)
	   (make-local-variable
	    (quote coq-prog-args))
	   (setq coq-prog-args
		 (\`
		  ("-emacs" "-noinit" "-indices-matter" "-type-in-type" "-w" "-notation-overridden" "-Q"
		   (\,
		    (concat unimath-topdir "UniMath"))
		   "UniMath")))
	   (make-local-variable
	    (quote coq-prog-name))
	   (setq coq-prog-name
		 (concat unimath-topdir "sub/coq/bin/coqtop"))
	   (make-local-variable
	    (quote before-save-hook))
	   (add-hook
	    (quote before-save-hook)
	    (quote delete-trailing-whitespace))
	   (modify-syntax-entry 39 "w")
	   (modify-syntax-entry 95 "w")
	   (if
	       (not
		(memq
		 (quote agda-input)
		 features))
	       (load
		(concat unimath-topdir "emacs/agda/agda-input")))
	   (if
	       (not
		(member
		 (quote
		  ("chimney" "╝"))
		 agda-input-user-translations))
	       (progn
		 (setq agda-input-user-translations
		       (cons
			(quote
			 ("chimney" "╝"))
			agda-input-user-translations))
		 (setq agda-input-user-translations
		       (cons
			(quote
			 ("==>" "⟹"))
			agda-input-user-translations))
		 (agda-input-setup)))
	   (set-input-method "Agda"))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'solarized-dark)

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(setq org-bullets-bullet-list '("○" "॰" "◗" "‣" "■" "◾"))
(setq org-startup-indented t)
(setq org-indent-indentation-per-level 1)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(add-hook 'org-mode-hook (lambda () (visual-line-mode 1)))

(add-to-list 'default-frame-alist '(font . "Inconsolata-11" ))
(set-face-attribute 'default t :font "Inconsolata-11" )

(put 'erase-buffer 'disabled nil)

(require 'haskell-interactive-mode)
(require 'haskell-process)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)



(define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
(define-key haskell-mode-map (kbd "C-`") 'haskell-interactive-bring)
(define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
(define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
(define-key haskell-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
(define-key haskell-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
(define-key haskell-mode-map (kbd "C-c c") 'haskell-process-cabal)

(require 'ox-latex)
(unless (boundp 'org-latex-classes)
  (setq org-latex-classes nil))
(add-to-list 'org-latex-classes
             '("article"
               "\\documentclass{article}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

(defun org-export-latex-no-toc (depth)  
    (when depth
      (format "%% Org-mode is exporting headings to %s levels.\n"
              depth)))
  (setq org-export-latex-format-toc-function 'org-export-latex-no-toc)
(put 'upcase-region 'disabled nil)


(add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)   ; with AUCTeX LaTeX mode
(add-hook 'latex-mode-hook 'turn-on-cdlatex)   ; with Emacs latex mode

;; easy keys to split window. Key based on ErgoEmacs keybinding
(global-set-key (kbd "M-4") 'delete-other-windows) ; expand current pane
(global-set-key (kbd "M-3") 'split-window-below) ; split pane top/bottom
(global-set-key (kbd "M-2") 'split-window-right) ; split pane right/left 
(global-set-key (kbd "M-1") 'delete-window) ; close current pane
(global-set-key (kbd "C-z") 'other-window) ; cursor to other pane


(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")


(global-set-key (kbd "C-s") 'swiper-isearch)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "M-y") 'counsel-yank-pop)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "<f2> j") 'counsel-set-variable)
(global-set-key (kbd "C-x b") 'ivy-switch-buffer)
(global-set-key (kbd "C-c v") 'ivy-push-view)
(global-set-key (kbd "C-c V") 'ivy-pop-view)

(pdf-tools-install)

;; org bindings
(global-set-key (kbd "C-c g o") (lambda () (interactive) (dired "~/Notes/Org")))

(setq org-agenda-files (list  "~/Notes/Org/todo.org" "~/Notes/Org/notes.org"))

(find-file "~/Notes/Org/todo.org") 

(setq org-directory "~/Notes/Org")
(setq org-default-notes-files "~/Notes/Org/notes.org")
(setq org-agenda-inhibit-startup t)
(setq org-capture-templates
      '(("t" "todo" entry (file "~/Notes/Org/todo.org")
         "* TODO %?\n")
        ("n"               ; key
	 "Notes"         ; name
	 entry             ; type
	 (file "~/Notes/Org/notes.org")  ; target
	 "* %^{Title} %^g \n:PROPERTIES:\n:Created: %U\n:Linked: %a\n:END: \n%i\nBrief description:\n%?"  ; template
	 :prepend t        ; properties
	 :empty-lines 1    ; properties
	 :created t        ; properties
	)))

      
(global-set-key (kbd "C-c C") 'org-capture)
(add-hook 'ledger-mode-hook
          (lambda ()
            (setq-local tab-always-indent 'complete)
            (setq-local completion-cycle-threshold t)
            (setq-local ledger-complete-in-steps t)))

(setq ledger-schedule-file "~/Notes/Ledger/ledger-schedule.ledger")

(setq org-ref-bibliography-notes "~/Notes/references/references.org"
      org-ref-default-bibliography '("~/Notes/references/references.bib"))

(setq bibtex-completion-bibliography '("~/Notes/references/references.bib"))
(setq bibtex-completion-pdf-field "file")
(setq bibtex-completion-notes-path "~/Notes/MyNotes")


(setq org-todo-keywords
      '((sequence "TODO(t)" "ONGOING(o)" "WAITING(w@!)" "ON HOLD(h@)" "|" "DONE(d!)" "CANCELLED(c!)")))

(add-to-list 'org-latex-packages-alist
             '("" "tikz-cd" t))

(eval-after-load "preview"
  '(add-to-list 'preview-default-preamble "\\PreviewEnvironment{tikzcd}" t))


