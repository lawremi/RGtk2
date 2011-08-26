\alias{gtkTextViewNew}
\name{gtkTextViewNew}
\title{gtkTextViewNew}
\description{Creates a new \code{\link{GtkTextView}}. If you don't call \code{\link{gtkTextViewSetBuffer}}
before using the text view, an empty default buffer will be created
for you. Get the buffer with \code{\link{gtkTextViewGetBuffer}}. If you want
to specify your own buffer, consider \code{\link{gtkTextViewNewWithBuffer}}.}
\usage{gtkTextViewNew(show = TRUE)}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkTextView}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
