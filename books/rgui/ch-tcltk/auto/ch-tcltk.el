(TeX-add-style-hook "ch-tcltk"
 (lambda ()
    (LaTeX-add-labels
     "sec:tcltk:overview"
     "sec:tcltk:basic-containers"
     "sec:tcltk:widgets"
     "sec:tcltk:dialogs")
    (TeX-add-symbols
     '("VirtualEvent" 1)
     '("Event" 1))))

