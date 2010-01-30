\alias{pangoFontMapListFamilies}
\name{pangoFontMapListFamilies}
\title{pangoFontMapListFamilies}
\description{List all families for a fontmap.}
\usage{pangoFontMapListFamilies(object)}
\arguments{\item{\verb{object}}{[\verb{\link{PangoFontMap}}]  a \verb{\link{PangoFontMap}}}}
\value{
A list containing the following elements:
\item{\verb{families}}{[\verb{\link{PangoFontFamily}}]  location to store a pointer to a list of \verb{\link{PangoFontFamily}} *.
           This list should be freed with \code{gFree()}.}
\item{\verb{n.families}}{[integer]  location to store the number of elements in \code{families}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
