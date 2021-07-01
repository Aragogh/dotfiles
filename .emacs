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
   '("melpa" . "http://melpa.org/packages/") 
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
 '(TeX-engine 'default)
 '(TeX-view-program-selection
   '(((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "Okular")
     (output-html "xdg-open")))
 '(custom-safe-themes
   '("2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-mode t)
 '(display-time-world-list nil)
 '(elfeed-search-filter "@1-weeks-ago +unread")
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-remove-import-lines t)
 '(ivy-use-virtual-buffers 'recentf)
 '(ledger-accounts-file nil)
 '(ledger-reports
   '(("bal" "ledger [[ledger-mode-flags]] -f /home/cheddles/accounts.ledger bal")
     ("bal" "%(binary) -f %(ledger-file) bal")
     ("reg" "%(binary) -f %(ledger-file) reg")
     ("payee" "%(binary) -f %(ledger-file) reg @%(payee)")
     ("account" "%(binary) -f %(ledger-file) reg %(account)")))
 '(org-agenda-files
   '("~/storage/Nextcloud/Notes/Org/todo.org" "~/storage/Nextcloud/Notes/Org/notes.org"))
 '(org-babel-load-languages '((emacs-lisp . t) (latex . t)))
 '(org-caldav-delete-org-entries 'ask)
 '(org-capture-templates
   '(("t" "TODO" entry
      (file "~/storage/Nextcloud/Notes/Org/todo.org")
      "* TODO %?
" :prepend t :empty-lines 1)
     ("n" "Notes" entry
      (file "~/storage/Nextcloud/Notes/Org/notes.org")
      "* %^{Title} %^g 
:PROPERTIES:
:Created: %U
:Linked: %a
:END: 
%i
Brief description:
%?" :prepend t :empty-lines 1 :created t)
     ("j" "jot" entry
      (file "~/storage/Nextcloud/Notes/Org/notes.org")
      "* %?" :empty-lines 1)))
 '(org-export-with-latex t)
 '(org-format-latex-options
   '(:foreground default :background default :scale 1.3 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
		 ("begin" "$1" "$" "$$" "\\(" "\\[")))
 '(org-html-with-latex 'mathjax)
 '(org-latex-packages-alist '(("" "tikz-cd" t)))
 '(org-latex-pdf-process
   '("%latex -interaction nonstopmode -output-directory %o %f" "%latex -interaction nonstopmode -output-directory %o %f" "%latex -interaction nonstopmode -output-directory %o %f"))
 '(org-preview-latex-default-process 'dvisvgm)
 '(org-preview-latex-process-alist
   '((dvipng :programs
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
		  ("convert -density %D -trim -antialias %f -quality 100 %O"))))
 '(org-ref-get-pdf-filename-function 'org-ref-get-pdf-filename-helm-bibtex)
 '(org-refile-targets '((org-agenda-files :maxlevel . 2)))
 '(org-refile-use-outline-path t)
 '(org-todo-keywords
   '((sequence "TODO(t)" "ONGOING(o)" "WAITING(w@/!)" "ON HOLD(h@)" "|" "DONE(d!)" "CANCELLED(c!)")))
 '(org-use-fast-todo-selection t)
 '(package-selected-packages
   '(elfeed-org elfeed org-agenda-property org-caldav ivy-bibtex org-ref org-noter-pdftools org-noter dklrt ledger-mode openwith pdf-tools znc counsel ivy ctable proof-general company-coq ess ess-R-data-view ess-smart-underscore function-args cdlatex auctex auctex-latexmk auctex-lua org-bullets org-brain org solarized-theme haskell-mode))
 '(safe-local-variable-values
   '((eval let
	   ((unimath-topdir
	     (expand-file-name
	      (locate-dominating-file buffer-file-name "UniMath"))))
	   (setq fill-column 100)
	   (make-local-variable 'coq-use-project-file)
	   (setq coq-use-project-file nil)
	   (make-local-variable 'coq-prog-args)
	   (setq coq-prog-args
		 `("-emacs" "-noinit" "-indices-matter" "-type-in-type" "-w" "-notation-overridden" "-Q" ,(concat unimath-topdir "UniMath")
		   "UniMath"))
	   (make-local-variable 'coq-prog-name)
	   (setq coq-prog-name
		 (concat unimath-topdir "sub/coq/bin/coqtop"))
	   (make-local-variable 'before-save-hook)
	   (add-hook 'before-save-hook 'delete-trailing-whitespace)
	   (modify-syntax-entry 39 "w")
	   (modify-syntax-entry 95 "w")
	   (if
	       (not
		(memq 'agda-input features))
	       (load
		(concat unimath-topdir "emacs/agda/agda-input")))
	   (if
	       (not
		(member
		 '("chimney" "╝")
		 agda-input-user-translations))
	       (progn
		 (setq agda-input-user-translations
		       (cons
			'("chimney" "╝")
			agda-input-user-translations))
		 (setq agda-input-user-translations
		       (cons
			'("==>" "⟹")
			agda-input-user-translations))
		 (agda-input-setup)))
	   (set-input-method "Agda")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-calendar-event ((t (:foreground "light goldenrod"))))
 '(org-agenda-date ((t (:foreground "#409090" :underline t))))
 '(org-agenda-date-today ((t (:foreground "#cd8b00" :underline t :weight bold))))
 '(org-agenda-date-weekend ((t (:foreground "#8b8bcd" :underline t))))
 '(org-special-keyword ((t (:foreground "dark goldenrod"))))
 '(org-time-grid ((t (:inherit default))))
 '(org-warning ((t (:foreground "indian red" :underline nil))))
 '(widget-field ((t (:extend t :background "LightSteelBlue1" :foreground "gray26")))))

(load-theme 'inkpot)

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
(global-set-key (kbd "C-c g o") (lambda () (interactive) (dired "~/storage/Nextcloud/Notes/Org")))

(setq org-agenda-files (list  "~/storage/Nextcloud/Notes/Org/todo.org" "~/storage/Nextcloud/Notes/Org/notes.org" "~/storage/Nextcloud/Notes/Org/caldav.org"))

(find-file "~/storage/Nextcloud/Notes/Org/todo.org") 

(setq org-directory "~/storage/Nextcloud/Notes/Org")
(setq org-default-notes-files "~/storage/Nextcloud/Notes/Org/notes.org")
(setq org-agenda-inhibit-startup t)
(setq org-capture-templates
      '(("t" "todo" entry (file "~/storage/Nextcloud/Notes/Org/todo.org")
         "* TODO %?\n")
        ("n"               ; key
	 "Notes"         ; name
	 entry             ; type
	 (file "~/storage/Nextcloud/Notes/Org/notes.org")  ; target
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

(setq ledger-schedule-file "~/storage/Nextcloud/Notes/Ledger/ledger-schedule.ledger")

(setq org-ref-bibliography-notes "~/storage/Nextcloud/Notes/references/references.org"
      org-ref-default-bibliography '("~/storage/Nextcloud/Notes/references/references.bib"))

(setq bibtex-completion-bibliography '("~/storage/Nextcloud/Notes/references/references.bib"))
(setq bibtex-completion-pdf-field "file")
(setq bibtex-completion-notes-path "~/storage/Nextcloud/Notes/MyNotes")


(setq org-todo-keywords
      '((sequence "TODO(t)" "ONGOING(o)" "WAITING(w@!)" "ON HOLD(h@)" "|" "DONE(d!)" "CANCELLED(c!)")))

(add-to-list 'org-latex-packages-alist
             '("" "tikz-cd" t))

(eval-after-load "preview"
  '(add-to-list 'preview-default-preamble "\\PreviewEnvironment{tikzcd}" t))

(setq org-agenda-default-appointment-duration 60)

(setq org-caldav-files org-agenda-files)
(setq org-caldav-inbox "~/storage/Nextcloud/Notes/Org/caldav.org")
(setq org-caldav-url "https://petraia.itihas.review/remote.php/dav/calendars/aragogh/")

;; Actual calendar configuration edit this to meet your specific needs
(setq org-caldav-calendars
      '((:calendar-id "work-1"
		      :select-tags ("work"))
	(:calendar-id "life"
		      :select-tags ("life"))
	(:calendar-id "self"
		      :select-tags ("self"))
	))

(setq org-icalendar-alarm-time 1)
;; This makes sure to-do items as a category can show up on the calendar
(setq org-icalendar-include-todo t)
;; This ensures all org "deadlines" show up, and show up as due dates
(setq org-icalendar-use-deadline '(event-if-todo event-if-not-todo todo-due))
;; This ensures "scheduled" org items show up, and show up as start times
(setq org-icalendar-use-scheduled '(todo-start event-if-todo event-if-not-todo))
;; Add the delayed save hook with a five minute idle timer

(setq org-agenda-property-list '("TIMEZONE"))

(org-agenda-list)
(org-caldav-sync)

;; This is the delayed sync function; it waits until emacs has been idle for 
;; "secs" seconds before syncing.  The delay is important because the caldav-sync
;; can take five or ten seconds, which would be painful if it did that right at save.  
;; This way it just waits until you've been idle for a while to avoid disturbing 
;; the user.
(defvar org-caldav-sync-timer nil
  "Timer that `org-caldav-push-timer' used to reschedule itself, or nil.")
(defun org-caldav-sync-with-delay (secs)
  (when org-caldav-sync-timer
    (cancel-timer org-caldav-sync-timer))
  (setq org-caldav-sync-timer
	      (run-with-idle-timer
	       (* 1 secs) nil 'org-caldav-sync)))


;; Add the delayed save hook with a five minute idle timer
(add-hook 'after-save-hook
	        (lambda ()
	          (when (eq major-mode 'org-mode)
		    (org-caldav-sync-with-delay 300))))

(setq org-agenda-hide-tags-regexp "work\\|life\\|self")

(setq elfeed-feeds
      '(("http://www.youtube.com/feeds/videos.xml?channel_id=UCG1h-Wqjtwz7uUANw6gazRw" youtube)
	("http://www.youtube.com/feeds/videos.xml?channel_id=UCNvsIonJdJ5E4EXMa65VYpA" youtube)
	("https://www.youtube.com/feeds/videos.xml?channel_id=UCYRR0SgbYH59htIHkwTbqMw" youtube)
	("http://www.youtube.com/feeds/videos.xml?channel_id=UC2PA-AKmVpU6NKCGtZq_rKQ" youtube)
	("https://www.youtube.com/feeds/videos.xml?user=yacobg42" youtube)
	("http://feeds.feedburner.com/FutilityCloset" misc)
	("https://gwern.substack.com/feed" misc)
	("https://www.blogger.com/feeds/4748060798655400108/posts/default" misc)
	("https://www.overcomingbias.com/feed" misc)
	("https://astralcodexten.substack.com/feed" misc)
	("https://www.motherjones.com/politics/feed/" news)
	("https://api.quantamagazine.org/feed/" news)
	("https://theintercept.com/feed/?lang=en" news)
	("https://theatlantic.com/feed/all" news)
	("https://mathbabe.org/feed/" math)
	("https://www.galoisrepresentations.com/feed/" math)
	("https://terrytao.wordpress.com/feed/" math)
	("https://golem.ph.utexas.edu/category/atom10.xml" math)
	("https://xenaproject.wordpress.com/feed/" math)
	("https://johncarlosbaez.wordpress.com/feed/" math)
	("https://mathematicswithoutapologies.wordpress.com/feed/" math)))

(setq ivy-read-action-function 'ivy-hydra-read-action)
