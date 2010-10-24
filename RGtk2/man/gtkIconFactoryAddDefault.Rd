\alias{gtkIconFactoryAddDefault}
\name{gtkIconFactoryAddDefault}
\title{gtkIconFactoryAddDefault}
\description{Adds an icon factory to the list of icon factories searched by
\code{\link{gtkStyleLookupIconSet}}. This means that, for example,
\code{\link{gtkImageNewFromStock}} will be able to find icons in \code{factory}.
There will normally be an icon factory added for each library or
application that comes with icons. The default icon factories
can be overridden by themes.}
\usage{gtkIconFactoryAddDefault(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkIconFactory}}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
