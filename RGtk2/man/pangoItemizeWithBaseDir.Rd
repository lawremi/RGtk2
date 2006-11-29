\alias{pangoItemizeWithBaseDir}
\name{pangoItemizeWithBaseDir}
\title{pangoItemizeWithBaseDir}
\description{Like \code{\link{pangoItemize}}, but the base direction to use when
computing bidirectional levels (see \code{\link{pangoContextSetBaseDir}}),
is specified explicitely rather than gotten from the \code{\link{PangoContext}}.}
\usage{pangoItemizeWithBaseDir(context, base.dir, text, start.index, length, attrs, cached.iter = NULL)}
\arguments{
\item{\code{context}}{[\code{\link{PangoContext}}]    a structure holding information that affects
               the itemization process.}
\item{\code{base.dir}}{[\code{\link{PangoDirection}}]   base direction to use for bidirectional processing}
\item{\code{text}}{[char]       the text to itemize.}
\item{\code{start.index}}{[integer]  first byte in \code{text} to process}
\item{\code{length}}{[integer]     the number of bytes (not characters) to process
            after \code{start.index}.
            This must be >= 0.}
\item{\code{attrs}}{[\code{\link{PangoAttrList}}]      the set of attributes that apply to \code{text}.}
\item{\code{cached.iter}}{[\code{\link{PangoAttrIterator}}]       Cached attribute iterator, or \code{NULL}}
}
\details{  Since  1.4}
\value{[list]  a GList of PangoItem structures.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
