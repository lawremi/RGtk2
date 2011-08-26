\alias{gtkEntryNewWithMaxLength}
\name{gtkEntryNewWithMaxLength}
\title{gtkEntryNewWithMaxLength}
\description{
Creates a new \code{\link{GtkEntry}} widget with the given maximum length.
\strong{WARNING: \code{gtk_entry_new_with_max_length} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkEntrySetMaxLength}} instead.}
}
\usage{gtkEntryNewWithMaxLength(max = 0, show = TRUE)}
\arguments{\item{\verb{max}}{the maximum length of the entry, or 0 for no maximum.
(other than the maximum length of entries.) The value passed in will
be clamped to the range 0-65536.}}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkEntry}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
