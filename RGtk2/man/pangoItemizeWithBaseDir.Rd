\alias{pangoItemizeWithBaseDir}
\name{pangoItemizeWithBaseDir}
\title{pangoItemizeWithBaseDir}
\description{Like \code{\link{pangoItemize}}, but the base direction to use when
computing bidirectional levels (see \code{\link{pangoContextSetBaseDir}}),
is specified explicitly rather than gotten from the \code{\link{PangoContext}}.}
\usage{pangoItemizeWithBaseDir(context, base.dir, text, start.index, length, attrs, cached.iter = NULL)}
\arguments{
\item{\verb{context}}{a structure holding information that affects
	       the itemization process.}
\item{\verb{base.dir}}{base direction to use for bidirectional processing}
\item{\verb{text}}{the text to itemize.}
\item{\verb{start.index}}{first byte in \code{text} to process}
\item{\verb{length}}{the number of bytes (not characters) to process
            after \code{start.index}.
            This must be >= 0.}
\item{\verb{attrs}}{the set of attributes that apply to \code{text}.}
\item{\verb{cached.iter}}{Cached attribute iterator, or \code{NULL}}
}
\details{Since 1.4}
\value{[list]  a \verb{list} of \code{\link{PangoItem}} structures.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
