\alias{gtkDialogSetAlternativeButtonOrderFromArray}
\name{gtkDialogSetAlternativeButtonOrderFromArray}
\title{gtkDialogSetAlternativeButtonOrderFromArray}
\description{Sets an alternative button order. If the 
\verb{"gtk-alternative-button-order"} setting is set to \code{TRUE}, 
the dialog buttons are reordered according to the order of the 
response ids in \code{new.order}.}
\usage{gtkDialogSetAlternativeButtonOrderFromArray(object, new.order)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkDialog}}}
\item{\verb{new.order}}{a list of response ids of \code{dialog}'s buttons}
}
\details{See \code{\link{gtkDialogSetAlternativeButtonOrder}} for more information.
  
This function is for use by language bindings.
  Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
