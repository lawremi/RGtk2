\alias{gtkIconThemeListIcons}
\name{gtkIconThemeListIcons}
\title{gtkIconThemeListIcons}
\description{Lists the icons in the current icon theme. Only a subset
of the icons can be listed by providing a context string.
The set of values for the context string is system dependent,
but will typically include such values as "Applications" and
"MimeTypes".}
\usage{gtkIconThemeListIcons(object, context = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkIconTheme}}}
\item{\verb{context}}{a string identifying a particular type of icon,
or \code{NULL} to list all icons.}
}
\details{Since 2.4}
\value{[list] a \verb{list} list holding the names of all the
icons in the theme. \emph{[  \acronym{element-type}   utf8][  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
