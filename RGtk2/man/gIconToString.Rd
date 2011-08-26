\alias{gIconToString}
\name{gIconToString}
\title{gIconToString}
\description{Generates a textual representation of \code{icon} that can be used for
serialization such as when passing \code{icon} to a different process or
saving it to persistent storage. Use \code{\link{gIconNewForString}} to
get \code{icon} back from the returned string.}
\usage{gIconToString(object)}
\arguments{\item{\verb{object}}{a \code{\link{GIcon}}.}}
\details{The encoding of the returned string is proprietary to \code{\link{GIcon}} except
in the following two cases
  \itemize{
\item     If \code{icon} is a \code{\link{GFileIcon}}, the returned string is a native path
    (such as \code{/path/to/my icon.png}) without escaping
    if the \code{\link{GFile}} for \code{icon} is a native file.  If the file is not
    native, the returned string is the result of \code{\link{gFileGetUri}}
    (such as \code{sftp://path/to/my\%  20icon  .png}).
\item    If \code{icon} is a \code{\link{GThemedIcon}} with exactly one name, the encoding is
   simply the name (such as \code{network-server}).
}  Since 2.20}
\value{[character] An allocated UTF8 string or \code{NULL} if \code{icon} can't
be serialized.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
