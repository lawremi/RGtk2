\alias{pangoLayoutSetSingleParagraphMode}
\name{pangoLayoutSetSingleParagraphMode}
\title{pangoLayoutSetSingleParagraphMode}
\description{If \code{setting} is \code{TRUE}, do not treat newlines and similar characters
as paragraph separators; instead, keep all text in a single paragraph,
and display a glyph for paragraph separator characters. Used when
you want to allow editing of newlines on a single text line.}
\usage{pangoLayoutSetSingleParagraphMode(object, setting)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}
\item{\verb{setting}}{[logical]  new setting}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
