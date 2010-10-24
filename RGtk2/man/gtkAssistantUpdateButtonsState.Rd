\alias{gtkAssistantUpdateButtonsState}
\name{gtkAssistantUpdateButtonsState}
\title{gtkAssistantUpdateButtonsState}
\description{Forces \code{assistant} to recompute the buttons state.}
\usage{gtkAssistantUpdateButtonsState(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkAssistant}}}}
\details{GTK+ automatically takes care of this in most situations, 
e.g. when the user goes to a different page, or when the
visibility or completeness of a page changes.
  
One situation where it can be necessary to call this
function is when changing a value on the current page
affects the future page flow of the assistant.
  Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
