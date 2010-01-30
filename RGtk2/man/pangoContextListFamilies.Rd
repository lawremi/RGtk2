\alias{pangoContextListFamilies}
\name{pangoContextListFamilies}
\title{pangoContextListFamilies}
\description{List all families for a context.}
\usage{pangoContextListFamilies(object)}
\arguments{\item{\verb{object}}{[\verb{\link{PangoContext}}]  a \verb{\link{PangoContext}}}}
\value{
A list containing the following elements:
\item{\verb{families}}{[\verb{\link{PangoFontFamily}}]  location to store a pointer to a list of \verb{\link{PangoFontFamily}} *.
           This list should be freed with \code{gFree()}.}
\item{\verb{n.families}}{[integer]  location to store the number of elements in \code{descs}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
