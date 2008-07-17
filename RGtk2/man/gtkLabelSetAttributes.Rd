\alias{gtkLabelSetAttributes}
\name{gtkLabelSetAttributes}
\title{gtkLabelSetAttributes}
\description{Sets a \code{\link{PangoAttrList}}; the attributes in the list are applied to the
label text. The attributes set with this function will be ignored
if the \code{"use-underline"}" or \code{"use-markup"} properties
are set to \code{TRUE}.}
\usage{gtkLabelSetAttributes(object, attrs)}
\arguments{
\item{\code{object}}{[\code{\link{GtkLabel}}]  a \code{\link{GtkLabel}}}
\item{\code{attrs}}{[\code{\link{PangoAttrList}}]  a \code{\link{PangoAttrList}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
