(princ)
(PROMPT "\nLoading Costum LISP Routines..............")(princ)
(princ)

;; Added one line of commeints

(defun c:ccb ()(command "change" "all" "" "p" "c" "bylayer" "")) 
(defun c:c ()(command "copy"))
(defun c:ci ()(command "circle"))

(defun c:d8 () (command "qleader" pause pause pause "8\"" ""))
(defun c:d6 () (command "qleader" pause pause pause "6\"" ""))
(defun c:d4 ()(command "qleader"  pause pause pause "4\"" ""))
(defun c:d3 () (command "qleader" pause pause pause "3\"" ""))
(defun c:d3v () (command "qleader" pause pause pause "3\"VTR" ""))
(defun c:d2 () (command "qleader" pause pause pause "2\"" ""))
(defun c:d2tb ()(command "qleader" pause pause pause "2\"TB" ""))
(defun c:d2l () (command "qleader" pause pause pause "2\"L" ""))
(defun c:d3wc ()(command "qleader" pause pause pause "3\"WC" ""))
(defun c:d2ks () (command "qleader" pause pause pause "2\"L" ""))
(defun c:d3wc ()(command "qleader" pause pause pause "3\"WC" ""))
(defun c:d2ks () (command "qleader" pause pause pause "2\"KS" ""))
(defun c:d2v ()(command "qleader" pause pause pause "2\"V" ""))
(defun c:d1d ()(command "qleader" pause pause pause "1\"" ""))
(defun c:d1H ()(command "qleader" pause pause pause "1-1/2\"" ""))
(defun c:d1Q ()(command "qleader" pause pause pause "1-1/4\"" ""))
(defun c:d3Q ()(command "qleader" pause pause pause "3/4\"" ""))
(defun c:dhh ()	(command "qleader" pause pause pause "1/2\"" ""))
(defun c:WW ()(command "qleader" pause pause pause "WALL NOT WIDE ENOUGH" ""))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;			Chamffer Commands			;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun c:cf0 ()(command  "chamfera" "0" "chamferb" "0" "._chamfer" pause pause))
(defun c:cf1 ()(command  "chamfera" "30" "chamferb" "30" "._chamfer" pause pause))
(defun c:cf2 ()(command  "chamfera" "2" "chamferb" "2" "._chamfer" pause pause))
(defun c:cf3 ()(command  "chamfera" "3" "chamferb" "3" "._chamfer" pause pause))
(defun c:cf4 ()(command  "chamfera" "4" "chamferb" "4" "._chamfer" pause pause))
(defun c:cf6 ()(command  "chamfera" "6" "chamferb" "6" "._chamfer" pause pause))
(defun c:cf8 ()(command  "chamfera" "8" "chamferb" "8" "._chamfer" pause pause))
(defun c:cf15 ()(command  "chamfera" "15" "chamferb" "15" "._chamfer" pause pause))
(defun c:cf20 ()(command  "chamfera" "20" "chamferb" "20" "._chamfer" pause pause))


(defun c:oms (/ osm1)
(setq osm1 (setvar "osmode" 183))
(Prompt "\nOsnap set...")(princ)
)


(defun c:cb ()(command "copybase"))
(defun C:cb0 ()(command "copybase" "0,0" pause))
(defun c:pc () (command "pasteclip"))
(defun c:pc0 ()(command "pasteclip" "0,0"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Zoom Functions 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun c:ZD	() (command "'zoom" "d")(princ))
(defun c:ZE	() (command "'zoom" "e")(princ))
(defun c:ZP	() (command "'zoom" "p")(princ))
(defun c:ZW	() (command "'zoom" "w")(princ))
(defun c:ZX	() (command "zoom" "p"))
(defun c:ZZ	() (command "zoom" ".5x"))
(defun c:ZZZ	() (command "zoom" ".33x"))
(defun c:ZZZZ	() (command "zoom" ".1x"))

(defun c:t1 ()(command "tilemode" "1"))
(defun c:t0 ()(command "tilemode" "0"))



(princ)

(princ)
(PROMPT "\nCostum LISP Routines Loaded..............")(princ)
(princ)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
