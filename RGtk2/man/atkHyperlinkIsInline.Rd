\alias{atkHyperlinkIsInline}
\name{atkHyperlinkIsInline}
\title{atkHyperlinkIsInline}
\description{Indicates whether the link currently displays some or all of its
          content inline.  Ordinary HTML links will usually return
          \code{FALSE}, but an inline &lt;src&gt; HTML element will return
          \code{TRUE}.
a *}
\usage{atkHyperlinkIsInline(object)}
\arguments{\item{\verb{object}}{[\code{\link{AtkHyperlink}}]  an \code{\link{AtkHyperlink}}}}
\value{[logical]  whether or not this link displays its content inline.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
