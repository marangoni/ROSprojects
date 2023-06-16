
(cl:in-package :asdf)

(defsystem "jkprobot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Ardubot" :depends-on ("_package_Ardubot"))
    (:file "_package_Ardubot" :depends-on ("_package"))
  ))