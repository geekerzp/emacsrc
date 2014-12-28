;;; malabar-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (malabar-mode) "malabar-mode" "malabar-mode.el"
;;;;;;  (21652 27870 0 0))
;;; Generated autoloads from malabar-mode.el

(autoload 'malabar-mode "malabar-mode" "\
Support and integeration for JVM languages

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (malabar-project-sources malabar-project-resources)
;;;;;;  "malabar-project" "malabar-project.el" (21652 27871 0 0))
;;; Generated autoloads from malabar-project.el

(autoload 'malabar-project-resources "malabar-project" "\
SCOPE is either 'test or 'runtime

\(fn PROJECT-INFO SCOPE)" t nil)

(autoload 'malabar-project-sources "malabar-project" "\
SCOPE is either 'test or 'runtime

\(fn PROJECT-INFO SCOPE)" t nil)

;;;***

;;;### (autoloads (malabar-service-call) "malabar-service" "malabar-service.el"
;;;;;;  (21652 27870 0 0))
;;; Generated autoloads from malabar-service.el

(autoload 'malabar-service-call "malabar-service" "\
SERVICE is a known service to the malabat server 

   ARGS-PLIST is a list of '(key val key val ...). If pm is not
  in the list, is is pulled from buffer.  Skip entries with a nil key or value

\(fn SERVICE ARGS-PLIST &optional BUFFER)" nil nil)

;;;***

;;;### (autoloads nil nil ("malabar-abbrevs.el" "malabar-import.el"
;;;;;;  "malabar-mode-pkg.el" "malabar-reflection.el" "malabar-semanticdb.el"
;;;;;;  "malabar-util.el" "malabar-variables.el") (21652 27871 802684
;;;;;;  0))

;;;***

(provide 'malabar-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; malabar-mode-autoloads.el ends here
