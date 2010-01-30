\alias{gtkTextViewGetTabs}
\name{gtkTextViewGetTabs}
\title{gtkTextViewGetTabs}
\description{Gets the default tabs for \code{text.view}. Tags in the buffer may
override the defaults. The returned list will be \code{NULL} if
"standard" (8-space) tabs are used.}
\usage{gtkTextViewGetTabs(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkTextView}}]  a \verb{\link{GtkTextView}}}}
\value{[\verb{\link{PangoTabArray}}]  copy of default tab list.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
