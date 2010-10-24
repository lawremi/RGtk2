\alias{gdkWindowSetTitle}
\name{gdkWindowSetTitle}
\title{gdkWindowSetTitle}
\description{Sets the title of a toplevel window, to be displayed in the titlebar.
If you haven't explicitly set the icon name for the window
(using \code{\link{gdkWindowSetIconName}}), the icon name will be set to
\code{title} as well. \code{title} must be in UTF-8 encoding (as with all
user-readable strings in GDK/GTK+). \code{title} may not be \code{NULL}.}
\usage{gdkWindowSetTitle(object, title)}
\arguments{
\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}
\item{\verb{title}}{title of \code{window}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
