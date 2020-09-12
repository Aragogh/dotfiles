;;; dklrt-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "dklrt" "dklrt.el" (0 0 0 0))
;;; Generated autoloads from dklrt.el

(let ((loads (get 'dklrt 'custom-loads))) (if (member '"dklrt" loads) nil (put 'dklrt 'custom-loads (cons '"dklrt" loads))))

(autoload 'dklrt-SetCcKeys "dklrt" "\
Bind r to `dklrt-AppendRecurring'.
To invoke, add this function to `ledger-mode-hook'.

\(fn)" nil nil)

(autoload 'dklrt-AppendRecurringMaybe "dklrt" "\
Call `dklrt-AppendRecurring', but only if appropriate.

\(fn)" t nil)

(autoload 'dklrt-AppendRecurring "dklrt" "\
Append recurring transactions to the current ledger buffer/file.

\(fn)" t nil)

(autoload 'dklrt-AppendRecurringOk "dklrt" "\
Return non nil if ok to append recurring transactions.
The current buffer must be unmodified, in `ledger-mode', and a
Recurring Transactions Config File must exist for the current
ledger file. If THROW, call error() instead of returning nil.

\(fn &optional THROW)" nil nil)

(autoload 'dklrt-IsLedgerMode "dklrt" "\
Return t if current buffer is a ledger buffer.
If THROW, call `error' instead of returning nil.

\(fn &optional THROW)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dklrt" '("dklrt-")))

;;;***

;;;### (autoloads nil nil ("dklrt-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; dklrt-autoloads.el ends here
