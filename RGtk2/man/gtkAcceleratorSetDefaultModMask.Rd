\alias{gtkAcceleratorSetDefaultModMask}
\name{gtkAcceleratorSetDefaultModMask}
\title{gtkAcceleratorSetDefaultModMask}
\description{Sets the modifiers that will be considered significant for keyboard
accelerators. The default mod mask is \code{GDK_CONTROL_MASK} |
\code{GDK_SHIFT_MASK} | \code{GDK_MOD1_MASK}, that is, Control, Shift, and Alt.
Other modifiers will by default be ignored by \code{\link{GtkAccelGroup}}.
You must include at least the three default modifiers in any
value you pass to this function.}
\usage{gtkAcceleratorSetDefaultModMask(default.mod.mask)}
\arguments{\item{\code{default.mod.mask}}{[\code{\link{GdkModifierType}}]  accelerator modifier mask}}
\details{The default mod mask should be changed on application startup,
before using any accelerator groups.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
