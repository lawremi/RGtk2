\alias{gtkLabelSetAttributes}
\name{gtkLabelSetAttributes}
\title{gtkLabelSetAttributes}
\description{Sets a \verb{\link{PangoAttrList}}; the attributes in the list are applied to the
label text. The attributes set with this function will be ignored
if the \verb{"use-underline"}" or \verb{"use-markup"} properties
are set to \code{TRUE}.}
\usage{gtkLabelSetAttributes(object, attrs)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkLabel}}]  a \verb{\link{GtkLabel}}}
\item{\verb{attrs}}{[\verb{\link{PangoAttrList}}]  a \verb{\link{PangoAttrList}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
