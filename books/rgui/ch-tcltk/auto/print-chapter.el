(TeX-add-style-hook "print-chapter"
 (lambda ()
    (TeX-run-style-hooks
     "latex2e"
     "bk12"
     "book"
     "12pt"
     "../setup"
     "../setup2"
     "ch-tcltk")))

