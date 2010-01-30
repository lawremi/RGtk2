\alias{pangoItemizeWithBaseDir}
\name{pangoItemizeWithBaseDir}
\title{pangoItemizeWithBaseDir}
\description{Like \code{\link{pangoItemize}}, but the base direction to use when
computing bidirectional levels (see \code{\link{pangoContextSetBaseDir}}),
is specified explicitly rather than gotten from the \verb{\link{PangoContext}}.}
\usage{pangoItemizeWithBaseDir(context, base.dir, text, start.index, length, attrs, cached.iter = NULL)}
\arguments{
\item{\verb{context}}{[\verb{\link{PangoContext}}]    a structure holding information that affects
	       the itemization process.}
\item{\verb{base.dir}}{[\code{\link{PangoDirection}}]   base direction to use for bidirectional processing}
\item{\verb{text}}{[char]       the text to itemize.}
\item{\verb{start.index}}{[integer]  first byte in \code{text} to process}
\item{\verb{length}}{[integer]     the number of bytes (not characters) to process
            after \code{start.index}.
            This must be >= 0.}
\item{\verb{attrs}}{[\verb{\link{PangoAttrList}}]      the set of attributes that apply to \code{text}.}
\item{\verb{cached.iter}}{[\verb{\link{PangoAttrIterator}}]       Cached attribute iterator, or \code{NULL}}
}
\details{  Since  1.4}
\value{[list]  a \verb{list} of \verb{\link{PangoItem}} structures.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
