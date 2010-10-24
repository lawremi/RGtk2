\alias{gtkLabelSetAttributes}
\name{gtkLabelSetAttributes}
\title{gtkLabelSetAttributes}
\description{Sets a \code{\link{PangoAttrList}}; the attributes in the list are applied to the
label text. }
\usage{gtkLabelSetAttributes(object, attrs)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkLabel}}}
\item{\verb{attrs}}{a \code{\link{PangoAttrList}}}
}
\details{\strong{PLEASE NOTE:} The attributes set with this function will be applied
and merged with any other attributes previously effected by way
of the \verb{"use-underline"} or \verb{"use-markup"} properties.
While it is not recommended to mix markup strings with manually set
attributes, if you must; know that the attributes will be applied
to the label after the markup string is parsed.}
\note{The attributes set with this function will be applied
and merged with any other attributes previously effected by way
of the \verb{"use-underline"} or \verb{"use-markup"} properties.
While it is not recommended to mix markup strings with manually set
attributes, if you must; know that the attributes will be applied
to the label after the markup string is parsed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
