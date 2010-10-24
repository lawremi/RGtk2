\alias{gtkAcceleratorSetDefaultModMask}
\name{gtkAcceleratorSetDefaultModMask}
\title{gtkAcceleratorSetDefaultModMask}
\description{Sets the modifiers that will be considered significant for keyboard
accelerators. The default mod mask is \verb{GDK_CONTROL_MASK} |
\verb{GDK_SHIFT_MASK} | \verb{GDK_MOD1_MASK} | \verb{GDK_SUPER_MASK} | 
\verb{GDK_HYPER_MASK} | \verb{GDK_META_MASK}, that is, Control, Shift, Alt, 
Super, Hyper and Meta. Other modifiers will by default be ignored 
by \code{\link{GtkAccelGroup}}.
You must include at least the three modifiers Control, Shift
and Alt in any value you pass to this function.}
\usage{gtkAcceleratorSetDefaultModMask(default.mod.mask)}
\arguments{\item{\verb{default.mod.mask}}{accelerator modifier mask}}
\details{The default mod mask should be changed on application startup,
before using any accelerator groups.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
