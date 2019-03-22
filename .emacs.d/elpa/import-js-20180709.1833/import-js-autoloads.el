;;; import-js-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "import-js" "import-js.el" (23701 28412 878573
;;;;;;  815000))
;;; Generated autoloads from import-js.el

(autoload 'import-js-import "import-js" "\
Run import-js on a particular module

\(fn)" t nil)

(autoload 'import-js-fix "import-js" "\
Run import-js on an entire file, importing or fixing as necessary

\(fn)" t nil)

(autoload 'import-js-goto "import-js" "\
Run import-js goto function, which returns a path to the specified module

\(fn)" t nil)

(autoload 'run-import-js "import-js" "\
Start the import-js daemon

\(fn)" t nil)

(autoload 'kill-import-js "import-js" "\
Kill the currently running import-js daemon process

\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; import-js-autoloads.el ends here
