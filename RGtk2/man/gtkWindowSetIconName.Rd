\alias{gtkWindowSetIconName}
\name{gtkWindowSetIconName}
\title{gtkWindowSetIconName}
\description{Sets the icon for the window from a named themed icon. See
the docs for \code{\link{GtkIconTheme}} for more details.}
\usage{gtkWindowSetIconName(object, name = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWindow}}}
\item{\verb{name}}{the name of the themed icon. \emph{[  \acronym{allow-none}  ]}}
}
\details{Note that this has nothing to do with the WM_ICON_NAME 
property which is mentioned in the ICCCM.
  Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
