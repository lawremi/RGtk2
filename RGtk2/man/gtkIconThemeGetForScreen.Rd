\alias{gtkIconThemeGetForScreen}
\name{gtkIconThemeGetForScreen}
\title{gtkIconThemeGetForScreen}
\description{Gets the icon theme object associated with \code{screen}; if this
function has not previously been called for the given
screen, a new icon theme object will be created and
associated with the screen. Icon theme objects are
fairly expensive to create, so using this function
is usually a better choice than calling than \code{\link{gtkIconThemeNew}}
and setting the screen yourself; by using this function
a single icon theme object will be shared between users.}
\usage{gtkIconThemeGetForScreen(screen)}
\arguments{\item{\verb{screen}}{a \code{\link{GdkScreen}}}}
\details{Since 2.4}
\value{[\code{\link{GtkIconTheme}}] A unique \code{\link{GtkIconTheme}} associated with
the given screen. This icon theme is associated with
the screen and can be used as long as the screen
is open. Do not ref or unref it. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
