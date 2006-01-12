\alias{gtkEntrySetMaxLength}
\name{gtkEntrySetMaxLength}
\title{gtkEntrySetMaxLength}
\description{Sets the maximum allowed length of the contents of the widget. If
the current contents are longer than the given length, then they
will be truncated to fit.}
\usage{gtkEntrySetMaxLength(object, max)}
\arguments{
\item{\code{object}}{[\code{\link{GtkEntry}}]  a \code{\link{GtkEntry}}.}
\item{\code{max}}{[integer]  the maximum length of the entry, or 0 for no maximum.
  (other than the maximum length of entries.) The value passed in will
  be clamped to the range 0-65536.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
