;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;
;;;;;				This Files contains a variety of routines I've created or collected from other
;;;;;				sources to automate, customize and speed up working in AutoCAD (c).
;;;;;
;;;;;				Though I've been customizing my routines for several years this is the first
;;;;;				time that I've decided to posted to a online Repository.				
;;;;;
;;;;;				This routines can be used by anybody. I only requet that proper recognition is given
;;;;;				to any thing that is taken from this routine.				
;;;;;
;;;;;
;;;;;				LANGUAGE:		AutoLISP
;;;;;				Creator:			Roberto Zenteno
;;;;;				Version:			1.1
;;;;;				Date:				10-16-2012
;;;;;				GitHub Info:		Updated file with latest routines.
;;;;;				Github Repo:		rvzenteno/rz_autolisp
;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;; $(edtime, 0, MON DD"," YYYY - H:MMam/pm) $(getvar,dwgprefix)$(getvar,dwgname), XREFs:$(xrefs,2 )
(princ)
(PROMPT "\nLoading Costum LISP Routines..............")(princ)
(princ)
(setvar "layereval" 0)
(setvar "layernotify" 0)


(defun c:ccb ()(command "change" "all" "" "p" "c" "bylayer" "")) 
(defun c:c ()(command "copy"))
(defun c:ci ()(command "circle"))
(defun c:ps0 ()
				(command "psltscale" "0")
				(command "regenall")
				)

(DEFUN C:ISS ()
			 (entdel (handent "d3e"))
			 ( COMMAND "-xref" "a" "Z:\\Engineering\\Projects\\F\\FNB\\AP-SEAL.dwg" "0,0" "" "" ""))

(DEFUN C:2is ()(command "-insert" "2x2-PVC-SS" pause "" "" "" "" ""))
(DEFUN C:3is ()(command "-insert" "3x3-PVC-SS" pause "" "" "" "" ""))
(DEFUN C:4is ()(command "-insert" "4x4-PVC-SS" pause "" "" "" "" ""))
(DEFUN C:6is ()(command "-insert" "6x6-PVC-SS" pause "" "" "" "" ""))
(DEFUN C:wcis ()(command "-insert" "3-PVC-W_CLOSET" pause "" "" "" "" ""))
(DEFUN C:tbis ()(command "-insert" "TUB_BOX-PVC" pause "" "" "" "" ""))
(defun c:dls () (command "qleader" pause pause pause "LINESET" ""))
(defun c:d8 () (command "qleader" pause pause pause "8\"" ""))
(defun c:d6 () (command "qleader" pause pause pause "6\"" ""))
(defun c:d4 ()(command "qleader"  pause pause pause "4\"" ""))
(defun c:d3 () (command "qleader" pause pause pause "3\"" ""))
(defun c:d3v () (command "qleader" pause pause pause "3\"VTR" ""))
(defun c:d2 () (command "qleader" pause pause pause "2\"" ""))
(defun c:d2tb ()(command "qleader" pause pause pause "2\"TB" ""))
(defun c:d2l () (command "qleader" pause pause pause "2\"L" ""))
(defun c:d3wc ()(command "qleader" pause pause pause "3\"WC" ""))
(defun c:d3fd ()(command "qleader" pause pause pause "3\"FD" ""))
(defun c:d4wc ()(command "qleader" pause pause pause "4\"WC" ""))
(defun c:d4s ()(command "qleader" pause pause pause "4\"S" ""))
(defun c:d2s () (command "qleader" pause pause pause "2\"S" ""))
(defun c:d2ks () (command "qleader" pause pause pause "2\"KS" ""))
(defun c:d2v ()(command "qleader" pause pause pause "2\"V" ""))
(defun c:d3v ()(command "qleader" pause pause pause "3\"V" ""))
(defun c:d3SH ()(command "qleader" pause pause pause "3\"SH" ""))
(defun c:d4v ()(command "qleader" pause pause pause "4\"V" ""))
(defun c:d3rd ()(command "qleader" pause pause pause "3\"RD" ""))
(defun c:d4rd ()(command "qleader" pause pause pause "4\"RD" ""))
(defun c:d5rd ()(command "qleader" pause pause pause "5\"RD" ""))
(defun c:d1d ()(command "qleader" pause pause pause "1\"" ""))
(defun c:d1H ()(command "qleader" pause pause pause "1-1/2\"" ""))
(defun c:d1Q ()(command "qleader" pause pause pause "1-1/4\"" ""))
(defun c:d3Q ()(command "qleader" pause pause pause "3/4\"" ""))
(defun c:dhh ()	(command "qleader" pause pause pause "1/2\"" ""))
(defun c:WW ()(command "qleader" pause pause pause "WALL NOT WIDE ENOUGH" ""))
(defun c:ssc ()(command "qleader" pause pause pause "SCUPPER" ""))

(defun c:djs () (command "qleader" pause pause pause "JOIST" ""))

(defun c:epl ()(
(setq ss (ssget "_X" '(0 . "line")))
(sssetfirst nil ss)
(command "erase")
))

(defun c:epl ()(
(c:ssx pause)
(command "erase" "P")
	)
)






;; (defun c:dd2 ()(command "qleader" pause "@12\"<180" "" "2\"" ""))
;; (defun c:dd2d ()(command "qleader" pause "@12\"<0" "" "2\"" ""))
;; (defun c:dd2da ()(command "qleader" pause "@12\"<270" "@6\"<0" "2\"" ""))
;; (defun c:dd3 ()(command "qleader" pause "@12\"<180" "" "3\"" ""))
;; (defun c:dd3d ()(command "qleader" pause "@12\"<0" "" "3\"" ""))
;; (defun c:dd3da ()(command "qleader" pause "@12\"<270" "@6\"<0" "3\"" ""))
;; (defun c:dd4 ()(command "qleader" pause "@12\"<180" "" "4\"" ""))
;; (defun c:dd4d ()(command "qleader" pause "@12\"<0" "" "4\"" ""))
;; (defun c:dd4da ()(command "qleader" pause "@12\"<270" "@6\"<0" "4\"" ""))
;; (defun c:dd6 ()(command "qleader" pause "@12\"<180" "" "6\"" ""))
;; (defun c:dd6d ()(command "qleader" pause "@12\"<0" "" "6\"" ""))
;; (defun c:dd6da ()(command "qleader" pause "@12\"<270" "@6\"<0" "6\"" ""))

;; UNICODES FOR FRACTION
;; 1/2" = \U+00BD
;; 1/4" = \U+00BC
;; 3/4" = \U+00BE

(setq dimRight "@6\"<0")	 		;; leader with text to the RIGHT
(setq dimTop "@6\"<90") 	 		;; Leader with text going UP and the RIGHT	
(setq dimleft "@6\"<180")	 	    	;; Leader with text going LEFT
(setq dimDown "@6\"<270")			;; Leader with text going down and then RIGHT
(setq dimRight2  "@4\"<0")			;; 2nd part of the leader going right




;; LABELS FOR 1/2" PIPES
(defun c:dh0  ()(command "qleader" pause "@6\"<0" "" "\U+00BD" ""))
(defun c:dh1  ()(command "qleader" pause "@6\"<90" "@4\"<0" "\U+00BD" ""))
(defun c:dh2  ()(command "qleader" pause "@6\"<180" "" "\U+00BD" ""))
(defun c:dh3  ()(command "qleader" pause "@6\"<270" "@4\"<0" "\U+00BD" ""))


;; LABELS FOR 3/4" PIPES
(defun c:d3Q0  ()(command "qleader" pause "@6\"<0" "" "\U+00BE" ""))
(defun c:d3Q1  ()(command "qleader" pause "@6\"<90" "@4\"<0" "\U+00BE" ""))
(defun c:d3Q2  ()(command "qleader" pause "@6\"<180" "" "\U+00BE" ""))
(defun c:d3Q3  ()(command "qleader" pause "@6\"<270" "@4\"<0" "\U+00BE" ""))

;; LABELS FOR 1" PIPES
(defun c:dh2  ()(command "qleader" pause dimLeft "" "\U+00BD" ""))
(defun c:dh3  ()(command "qleader" pause dimDown dimRight2 "\U+00BD" ""))


;; LABELS FOR 3/4" PIPES
(defun c:d3Q0  ()(command "qleader" pause dimRight "" "\U+00BE" ""))
(defun c:d3Q1  ()(command "qleader" pause dimTop dimRight2 "\U+00BE" ""))
(defun c:d3Q2  ()(command "qleader" pause dimLeft "" "\U+00BE" ""))
(defun c:d3Q3  ()(command "qleader" pause dimDown dimRight2 "\U+00BE" ""))

;; LABELS FOR 1" PIPES
(defun c:d10  ()(command "qleader" pause dimRight "" "1\"" ""))
(defun c:d11  ()(command "qleader" pause dimtop dimright2 "1\"" ""))
(defun c:d12  ()(command "qleader" pause dimLeft "" "1\"" ""))
(defun c:d13  ()(command "qleader" pause dimDown dimRight2 "1\"" ""))

;; LABELS FOR 1-1/4" PIPES
(defun c:d1q0  ()(command "qleader" pause dimRight "" "1\U+00BC\"" ""))
(defun c:d1q1  ()(command "qleader" pause dimtop dimright2 "1\U+00BC\"" ""))
(defun c:d1q2  ()(command "qleader" pause dimLeft "" "1\U+00BC\"" ""))
(defun c:d1q3  ()(command "qleader" pause dimDown dimRight2 "1\U+00BC\"" ""))

;; LABELS FOR 1-1/2" PIPES
(defun c:d1h0  ()(command "qleader" pause dimRight "" "1\U+00BD\"" ""))
(defun c:d1H1  ()(command "qleader" pause dimtop dimright2 "1\U+00BD\"" ""))
(defun c:d1H2  ()(command "qleader" pause dimLeft "" "1\U+00BD\"" ""))
(defun c:d1H3  ()(command "qleader" pause dimDown dimRight2 "1\U+00BD\"" ""))

;; LABELS FOR 2" PIPES
(defun c:d20  ()(command "qleader" pause dimRight "" "2\"" ""))
(defun c:d21  ()(command "qleader" pause dimtop dimright2 "2\"" ""))
(defun c:d22  ()(command "qleader" pause dimLeft "" "2\"" ""))
(defun c:d23  ()(command "qleader" pause dimDown dimRight2 "2\"" ""))

;; LABELS FOR 2-1/2" PIPES
(defun c:d2h0  ()(command "qleader" pause dimRight "" "2\U+00BD\"" ""))
(defun c:d2H1  ()(command "qleader" pause dimtop dimright2 "2\U+00BD\"" ""))
(defun c:d2H2  ()(command "qleader" pause dimLeft "" "2\U+00BD\"" ""))
(defun c:d2H3  ()(command "qleader" pause dimDown dimRight2 "2\U+00BD\"" ""))

;; LABELS FOR 3" PIPES
(defun c:d30  ()(command "qleader" pause dimRight "" "3\"" ""))
(defun c:d31  ()(command "qleader" pause dimtop dimright2 "3\"" ""))
(defun c:d32  ()(command "qleader" pause dimLeft "" "3\"" ""))
(defun c:d33  ()(command "qleader" pause dimDown dimRight2 "3\"" ""))

;; LABELS FOR 4" PIPES
(defun c:d40  ()(command "qleader" pause dimRight "" "4\"" ""))
(defun c:d41  ()(command "qleader" pause dimtop dimright2 "4\"" ""))
(defun c:d42  ()(command "qleader" pause dimLeft "" "4\"" ""))
(defun c:d43  ()(command "qleader" pause dimDown dimRight2 "4\"" ""))

;; LABELS FOR 6" PIPES
(defun c:d60  ()(command "qleader" pause dimRight "" "6\"" ""))
(defun c:d61  ()(command "qleader" pause dimtop dimright2 "6\"" ""))
(defun c:d62  ()(command "qleader" pause dimLeft "" "6\"" ""))
(defun c:d63  ()(command "qleader" pause dimDown dimRight2 "6\"" ""))

;; LABELS FOR 8" PIPES
(defun c:d80  ()(command "qleader" pause dimRight "" "8\"" ""))
(defun c:d81  ()(command "qleader" pause dimtop dimright2 "8\"" ""))
(defun c:d82  ()(command "qleader" pause dimLeft "" "8\"" ""))
(defun c:d83  ()(command "qleader" pause dimDown dimRight2 "8\"" ""))

(defun c:pwd		()(command "-text" pause  "" "0" "W/D"))
(defun c:pwc		()(command "-text" pause  "" "0" "WC"))
(defun c:pla		()(command "-text" pause  "" "0" "LAV"))
(defun c:ptb		()(command "-text" pause  "" "0" "TUB"))
(defun c:pks		()(command "-text" pause  "" "0" "KS"))

(defun c:ct1 ()(command ".change" pause "" "p" "la" "PDIM-48" "")	)
(defun c:cts ()(command ".change" pause "" "p" "la" "LEADER-SLV-48" "")	)
(defun c:ct4()	(command ".change" pause "" "p" "la" "PLUM-48" ""))
(defun c:ct9()	(command ".change" pause "" "p" "la" "PLUM-96" ""))
	
(defun c:LUP ()(command "qleader" pause pause pause "UP" ""))
(defun c:LDN ()(command "qleader" pause pause pause "DN" ""))
(defun c:lwc ()(command "qleader" pause pause pause "WC" ""))
(defun c:llv ()(command "qleader" pause pause pause "LV" ""))
(defun c:ltb ()(command "qleader" pause pause pause "TUB" ""))
(defun c:lsh ()(command "qleader" pause pause pause "SH" ""))

(defun c:rr1 ()(command "ucs" "z" "15"))
(defun c:rb1 ()(command "ucs" "z" "-15"))
(defun c:rr2 ()(command "ucs" "z" "22"))
(defun c:rb2 ()(command "ucs" "z" "-22"))
(defun c:rr ()(command "ucs" "z" "45"))
(defun c:rb ()(command "ucs" "z" "-45"))
(defun c:rr9 ()(command "ucs" "z" "90"))
(defun c:rb9 ()(command "ucs" "z" "-90"))
(defun c:r1d ()(command "ucs" "z" "1"))
(defun c:r1b ()(command "ucs" "z" "-1"))
(defun c:ep ()(command "erase" "p" ""))
(defun c:ucb ()(command "ucs" "z" pause pause ""))
(defun c:ucbb ()(command "ucs" "z" "-10" ""))
(defun c:cp ()(command "copy" "p" pause))
(defun c:mw ()(command "move" "window"))
(defun c:xrr ()(command "-xref" "reload" "*"))
(defun c:xru ()(command "-xref" "unload" "*"))
(defun c:BL ()(command "-insert" "RZBRKLINE" pause "" "" pause))
(defun c:l2m ()(command "line" "m2p" pause pause))
(DEFUN C:EP ()(COMMAND "ERASE" "P" ""))
(defun c:c4s ()(command "circle" "m2p" pause pause "d" "4"))
(defun c:cbl ()(command "change" "all" "" "P" "c" "bylayer" "" ""))

(defun c:bl1 ()(command "circle" "int" pause "d" "1")
			  (command "trim" "last" "" pause "")
			  (command "erase" "p" "")
			  )

(defun c:bl2 ()(command "circle" "int" pause "d" "3")
			  (command "trim" "last" "" pause "")
			  (command "erase" "p" "")
			  )
(defun c:bl3 ()(command "circle" "int" pause "d" "6")
			  (command "trim" "last" "" pause "")
			  (command "erase" "P" "")
			  )
(defun c:bl6 ()(command "circle" "int" pause "d" "10")
			  (command "trim" "last" "" pause "")
			  (command "erase" "P" "")
			  )
(DEFUN C:I1 ()(SETVAR "SNAPSTYL" 1))
(DEFUN C:I0 ()(SETVAR "SNAPSTYL" 0))

(defun c:rc ()
	(command "rectangle" pause pause)
	(command "revcloud" "a" "1" "1" "" "L"  "")
	)
(defun c:rcc ()
	(command "rectangle" pause pause)
	(command "revcloud" "a" ".25" ".25" "" "L"  "")
	(command "-insert" "C:\\acltwin\\Roberto\\REVBLOCK.dwg" pause "" "" "" "6")
	;;(command "-xref" "attach" "Z:\\Engineering\\Projects\\F\\FNB\\Architectural\\30x42Titleblock_consultants-Sheet.dwg" "0,0" "" "" "") 
	)

(defun c:mp ()(command "move" "p" pause))

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


(defun c:cle ()
	(command "-layer" "c" "210" "*" "")
	(command "change" "all" "" "P" "c" "bylayer" "" "")
	)
(defun c:clm ()
	(command "-layer" "c" "160" "*" "")
	(command "change" "all" "" "P" "c" "bylayer" "" "")
	)
(defun c:clp ()
	(command "-layer" "c" "10" "*" "")
	(command "change" "all" "" "P" "c" "bylayer" "" "")
	)
(defun c:clf ()
	(command "-layer" "c" "90" "*" "")
	(command "change" "all" "" "P" "c" "bylayer" "" "")
	)

(defun c:cl8 ()
	(command "-layer" "c" "8" "*" "")
	(command "change" "all" "" "P" "c" "bylayer" "" "")
	)

(defun c:cl9 ()
	(command "-layer" "c" "9" "*" "")
	(command "change" "all" "" "P" "c" "bylayer" "" "")
	)
(defun c:cd(/ ss)
	; (setq oldlay(getvar "clayer")) ; Saves the current layer it is in
	; (if (null (tblsearch "layer" "NEWLAYER")) ; conditional if search of the layer table for specific layer
		; (command ".layer" "make" "NEWLAYER" "c" "30" "" "l" "Continuous" "" "") ; if not available then create it with the specific configurations
	; (setvar "clayer" "NEWLAYER") ; after new layer is created it sets it as the current layer
	; )
	(princ "\nSelect object to move to NEWLAYER Layer:")
	(setq ss (ssget))
	(command "_.chprop" ss "" "la" "defpoints" "")
		; (setvar "clayer" oldlay)
	(princ))

(defun c:c2s(/ ss)
	(princ "\nSelect object to move to NEWLAYER Layer:")
	(setq ss (ssget))
	(command "_.chprop" ss "" "la" "SAN-AG" "")
		; (setvar "clayer" oldlay)
	(princ))
		
;(defun c:xrd ()			(command "-xref" "d" "*" ""))

(defun c:dl ()(command "_dimlinear" pause pause pause))
(defun c:dll ()(command "_dimlinear" "quadrant" pause "per"))
(defun c:dcp ()(command "_dimlinear" "center" pause "per"))
(defun c:dlcc ()
(setq oldlay(getvar "clayer"))
	(if (null (tblsearch "layer" "DIM-SLV-48"))
		(command ".layer" "make" "DIM-SLV-48" "c" "130" "" "l" "Continuous" "" "")
	(setvar "clayer" "DIM-SLV-48")
	)
	(command "_dimlinear" "center" pause "per" pause)
	(setvar "clayer" oldlay)
)

(defun c:dlm ()
(setq oldlay(getvar "clayer"))
	(if (null (tblsearch "layer" "DIM-SLV-48"))
		(command ".layer" "make" "DIM-SLV-48" "c" "130" "" "l" "Continuous" "" "")
	(setvar "clayer" "DIM-SLV-48")
	)
	(command "_dimlinear" "near" pause "per" pause)
	(setvar "clayer" oldlay)
)


(defun c:oms (/ osm1)
(setq osm1 (setvar "osmode" 183))
(Prompt "\nOsnap set...")(princ)
)

(defun c:lc ()(command "line" "center"))

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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Set Current Layer to 0
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun c:l0 ()(command "-layer" "s" "0" ""))
;;--------------------------------------------------------

(defun c:chc		()(command "circle" "cen" pause "d" "0.5"))
(defun c:chi		()(command "circle" "int" pause "d" "0.5"))
(defun c:c1c		()(command "circle" "cen" pause "d" "1"))
(defun c:c1i		()(command "circle" "int" pause "d" "1"))
(defun c:c1n		()(command "circle" "near" pause "d" "1"))
(defun c:c1m	()(command "circle" "mid" pause "d" "1"))
(defun c:c2c		()(command "circle" "cen" pause "d" "2"))
(defun c:c2i		()(command "circle" "int" pause "d" "2"))
(defun c:c2mm	()(command "circle" "mid" pause "d" "2"))
(defun c:c3c		()(command "circle" "cen" pause "d" "3"))
(defun c:c3i		()(command "circle" "int" pause "d" "3"))
(defun c:c3m	()(command "circle" "mid" pause "d" "3"))
(defun c:c4c		()(command "circle" "cen" pause "d" "4"))
(defun c:c4i		()(command "circle" "int" pause "d" "4"))
(defun c:c4m	()(command "circle" "mid" pause "d" "4"))
(defun c:c5c		()(command "circle" "cen" pause "d" "5"))
(defun c:c5i		()(command "circle" "int" pause "d" "5"))
(defun c:c5m	()(command "circle" "mid" pause "d" "5"))
(defun c:c6c		()(command "circle" "cen" pause "d" "6"))
(defun c:c6i		()(command "circle" "int" pause "d" "6"))
(defun c:c6m	()(command "circle" "mid" pause "d" "6"))
(defun c:c8c		()(command "circle" "cen" pause "d" "8"))
(defun c:c8i		()(command "circle" "int" pause "d" "8"))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; End of Functions
;; Add any new functions above this comments.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;<------Beginning of File
;EDIT TEXT OBJECT, ATTRIBUTE, DIMENSION TEXT OR ATTRIBUTE 
;DEFINITION
;ED.LSP   (C)1998, By Peter Thomson.
;
;
(defun C:ED (/ E ETYPE)
(prompt "\nPick text object or attributed block to edit: ")
(setq E (car (entsel)))
(setq ETYPE (cdr (assoc 0 (entget E))))
(cond
     ((or (eq ETYPE "TEXT")(eq ETYPE "MTEXT")(eq ETYPE 
"DIMENSION")(eq ETYPE
"ATTDEF"))
     (COMMAND "DDEDIT" E)
     )
     ((eq ETYPE "INSERT")
     (command "ddatte" E)
     )
)
 (princ)
)
;End of progam
 (princ)


(defun c:o12 ()(command "offset" "12" pause))
(defun c:o6 ()(command "offset" "6" pause))
(defun c:o4 ()(command "offset" "4" pause))

(defun c:ew () (command "erase" "w" pause pause ""))

(defun c:vl ()	(command "mview" "L" "on" pause ""))
(defun c:vu ()	(command "mview" "L" "of" pause ""))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;Change object to "0" Layer 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun c:cl0 (/ enam obj )
	(vl-load-com)
	(setq enam (car (entsel "\nSelect graphic object: "))
	obj (vlax-ename->vla-object enam)
	)
	(vla-put-layer obj "0")
	)
(defun c:cla (/ enam obj )
	(vl-load-com)
	(setq enam (car (entsel "\nSelect graphic object: "))
	obj (vlax-ename->vla-object enam)
	)
	(vla-put-layer obj "x-arch")
	)
	
 (defun c:dFL ()
(vl-load-com)
 (command "-layer" "set" "0" "Lock" "*" "")
(vlax-for each(vla-get-layers (vla-get-activedocument (vlax-get-acad-object)))
(if (= (vlax-get-property each "freeze") :vlax-true)(vla-put-layeron each :vlax-false)
);;end if
(if (= (vlax-get-property each "freeze") :vlax-true)(vla-put-freeze each :vlax-false)
);;end if
(if (= (vlax-get-property each "layeron") :vlax-false)(vla-put-lock each :vlax-false)
);;end if
);;end vlax
(COMMAND "ERASE" "ALL" "" "-LAYER" "ON" "*" "UNLOCK" "*" "")
(COMMAND "PURGE" "A" "" "N")
(COMMAND "PURGE" "A" "" "N")
)

(DEFUN C:VP2 () (COMMAND "-VPORTS" "2" "V"))
(DEFUN C:VPH () (COMMAND "-VPORTS" "2" "H"))
(DEFUN C:VPS () (COMMAND "-VPORTS" "SI" ""))
(defun c:ucp () (command  "ucs" "p"))
(defun c:vpz ()(command "_-view" "_swiso" "vpoint" "r" "235" ""))


 (defun C:PPA ()
 (command "purge" "a" "*" "n")
(command "purge" "a" "*" "n")
(command "purge" "a" "*" "n")
(command "audit" "y")
(command "purge" "a" "*" "n")
(command "qsave"))

(defun c:iad () (c:insertalldirectory))
(defun c:insertalldirectory (/ pth filens)
(setq pth (getstring "\nSpecify directory path where are *.dwg for insertation stored (ex. C:/.../.../) : "))
(setq filens (vl-directory-files pth "*.dwg"))
(foreach file filens
(command "-INSERT" file '(0 0 0) "" "" "")
)
(princ)
)
(princ "\nType \"iad\" for shortcut of defined command function c:insertalldirectory")
(princ)

(princ)

(princ)
(PROMPT "\nCostum LISP Routines Loaded..............")(princ)
(princ)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
