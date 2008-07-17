\alias{gtkDialogSetAlternativeButtonOrderFromArray}
\name{gtkDialogSetAlternativeButtonOrderFromArray}
\title{gtkDialogSetAlternativeButtonOrderFromArray}
\description{Sets an alternative button order. If the 
\code{"gtk-alternative-button-order"} setting is set to \code{TRUE}, 
the dialog buttons are reordered according to the order of the 
response ids in \code{new.order}.}
\usage{gtkDialogSetAlternativeButtonOrderFromArray(object, new.order)}
\arguments{
\item{\code{object}}{[\code{\link{GtkDialog}}]  a \code{\link{GtkDialog}}}
\item{\code{new.order}}{[integer]  a list of response ids of \code{dialog}'s buttons}
}
\details{See \code{\link{gtkDialogSetAlternativeButtonOrder}} for more information.
  
This function is for use by language bindings.  

  Since  2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
