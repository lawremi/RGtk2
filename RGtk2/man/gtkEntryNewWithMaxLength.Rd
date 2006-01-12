\alias{gtkEntryNewWithMaxLength}
\name{gtkEntryNewWithMaxLength}
\title{gtkEntryNewWithMaxLength}
\description{
Creates a new \code{\link{GtkEntry}} widget with the given maximum length.
\strong{WARNING: \code{gtk_entry_new_with_max_length} is deprecated and should not be used in newly-written code.}
}
\usage{gtkEntryNewWithMaxLength(max = 0, show = TRUE)}
\arguments{\item{\code{max}}{[integer]  the maximum length of the entry, or 0 for no maximum.
  (other than the maximum length of entries.) The value passed in will
  be clamped to the range 0-65536.}}
\details{Note: the existence of this function is inconsistent
with the rest of the GTK+ API. The normal setup would
be to just require the user to make an extra call
to \code{\link{gtkEntrySetMaxLength}} instead. It is not
expected that this function will be removed, but
it would be better practice not to use it.  }
\value{[\code{\link{GtkWidget}}]  a new \code{\link{GtkEntry}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
