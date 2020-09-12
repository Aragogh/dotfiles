;;; dkmisc-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "dkmisc" "dkmisc.el" (0 0 0 0))
;;; Generated autoloads from dkmisc.el

(let ((loads (get 'dk 'custom-loads))) (if (member '"dkmisc" loads) nil (put 'dk 'custom-loads (cons '"dkmisc" loads))))

(let ((loads (get 'dkmisc 'custom-loads))) (if (member '"dkmisc" loads) nil (put 'dkmisc 'custom-loads (cons '"dkmisc" loads))))

(autoload 'dkmisc-DateToText "dkmisc" "\
Convert the date part of float SECONDS to a string.

\(fn &optional SECONDS UNIVERSAL)" nil nil)

(autoload 'dkmisc-TimeToText "dkmisc" "\
Convert the time part of float SECONDS to a string.

\(fn &optional SECONDS UNIVERSAL)" nil nil)

(autoload 'dkmisc-DateTimeToText "dkmisc" "\
Convert float SECONDS (default current) date/time to a string.
Default format is ISO date and time.

\(fn &optional SECONDS FORMAT UNIVERSAL)" nil nil)

(autoload 'dkmisc-TimeParse "dkmisc" "\
Parse string TIME to seconds (floating point).

\(fn TIME)" nil nil)

(autoload 'dkmisc-TimeCurrent "dkmisc" "\
Return the current time of day as float seconds.

\(fn)" nil nil)

(autoload 'dkmisc-TimeApplyShift "dkmisc" "\
Apply SHIFT to time BASE.
BASE and SHIFT are in text form. Gets expected results for
calendar times by adjusting for daylight savings time if
necessary. If indicated by the shift, BASE is replaced by the
current time. Returns the shifted time in text format with same
length as BASE unless the shift implies more precision is
required.

\(fn BASE SHIFT)" nil nil)

(autoload 'dkmisc-FirstMatch "dkmisc" "\
Return the first element of LIST matching REGEX, or nil.

\(fn REGEX LIST)" nil nil)

(autoload 'dkmisc-Beep "dkmisc" "\
Beep Count times.

\(fn &optional COUNT)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dkmisc" '("dkmisc-")))

;;;***

;;;### (autoloads nil nil ("dkmisc-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; dkmisc-autoloads.el ends here
