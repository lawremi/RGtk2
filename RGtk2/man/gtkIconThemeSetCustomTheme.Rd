\alias{gtkIconThemeSetCustomTheme}
\name{gtkIconThemeSetCustomTheme}
\title{gtkIconThemeSetCustomTheme}
\description{Sets the name of the icon theme that the \code{\link{GtkIconTheme}} object uses
overriding system configuration. This function cannot be called
on the icon theme objects returned from \code{\link{gtkIconThemeGetDefault}}
and \code{\link{gtkIconThemeGetForScreen}}.}
\usage{gtkIconThemeSetCustomTheme(object, theme.name)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkIconTheme}}}
\item{\verb{theme.name}}{name of icon theme to use instead of configured theme,
or \code{NULL} to unset a previously set custom theme}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
