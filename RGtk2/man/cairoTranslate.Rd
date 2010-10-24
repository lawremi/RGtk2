\alias{cairoTranslate}
\name{cairoTranslate}
\title{cairoTranslate}
\description{Modifies the current transformation matrix (CTM) by translating the
user-space origin by (\code{tx}, \code{ty}). This offset is interpreted as a
user-space coordinate according to the CTM in place before the new
call to \code{\link{cairoTranslate}}. In other words, the translation of the
user-space origin takes place after any existing transformation.}
\usage{cairoTranslate(cr, tx, ty)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{tx}}{[numeric]  amount to translate in the X direction}
\item{\verb{ty}}{[numeric]  amount to translate in the Y direction}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
