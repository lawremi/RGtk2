\alias{gtkToolButtonSetIconName}
\name{gtkToolButtonSetIconName}
\title{gtkToolButtonSetIconName}
\description{Sets the icon for the tool button from a named themed icon.
See the docs for \code{\link{GtkIconTheme}} for more details.
The "icon_name" property only has an effect if not
overridden by non-\code{NULL} "label", "icon_widget" and "stock_id"
properties.}
\usage{gtkToolButtonSetIconName(object, icon.name)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkToolButton}}}
\item{\verb{icon.name}}{the name of the themed icon. \emph{[  \acronym{allow-none}  ]}}
}
\details{Since 2.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
