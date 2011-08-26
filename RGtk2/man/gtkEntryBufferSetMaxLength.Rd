\alias{gtkEntryBufferSetMaxLength}
\name{gtkEntryBufferSetMaxLength}
\title{gtkEntryBufferSetMaxLength}
\description{Sets the maximum allowed length of the contents of the buffer. If
the current contents are longer than the given length, then they
will be truncated to fit.}
\usage{gtkEntryBufferSetMaxLength(object, max.length)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkEntryBuffer}}}
\item{\verb{max.length}}{the maximum length of the entry buffer, or 0 for no maximum.
(other than the maximum length of entries.) The value passed in will
be clamped to the range 0-65536.}
}
\details{Since 2.18}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
