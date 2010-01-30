\alias{pangoLayoutSetFontDescription}
\name{pangoLayoutSetFontDescription}
\title{pangoLayoutSetFontDescription}
\description{Sets the default font description for the layout. If no font
description is set on the layout, the font description from
the layout's context is used.}
\usage{pangoLayoutSetFontDescription(object, desc = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{PangoLayout}}]  a \verb{\link{PangoLayout}}}
\item{\verb{desc}}{[\verb{\link{PangoFontDescription}}]  the new \verb{\link{PangoFontDescription}}, or \code{NULL} to unset the
       current font description}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
