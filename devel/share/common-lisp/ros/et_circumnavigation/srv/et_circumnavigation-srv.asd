
(cl:in-package :asdf)

(defsystem "et_circumnavigation-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Circum" :depends-on ("_package_Circum"))
    (:file "_package_Circum" :depends-on ("_package"))
    (:file "AddAgent" :depends-on ("_package_AddAgent"))
    (:file "_package_AddAgent" :depends-on ("_package"))
    (:file "Topology" :depends-on ("_package_Topology"))
    (:file "_package_Topology" :depends-on ("_package"))
    (:file "RemoveAgent" :depends-on ("_package_RemoveAgent"))
    (:file "_package_RemoveAgent" :depends-on ("_package"))
  ))