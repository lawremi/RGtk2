\alias{gtkOldEditableClaimSelection}
\name{gtkOldEditableClaimSelection}
\title{gtkOldEditableClaimSelection}
\description{
Claims or gives up ownership of the selection.
\strong{WARNING: \code{gtk_old_editable_claim_selection} is deprecated and should not be used in newly-written code.}
}
\usage{gtkOldEditableClaimSelection(object, claim, time = "GDK_CURRENT_TIME")}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkOldEditable}}]  a \verb{\link{GtkOldEditable}}}
\item{\verb{claim}}{[logical]  if \code{TRUE}, claim ownership of the selection, if \code{FALSE}, give
  up ownership}
\item{\verb{time}}{[numeric]  timestamp for this operation}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
