\alias{pangoLayoutGetLogAttrs}
\name{pangoLayoutGetLogAttrs}
\title{pangoLayoutGetLogAttrs}
\description{Retrieves a list of logical attributes for each character in
the \code{layout}.}
\usage{pangoLayoutGetLogAttrs(object)}
\arguments{\item{\verb{object}}{[\verb{\link{PangoLayout}}]  a \verb{\link{PangoLayout}}}}
\value{
A list containing the following elements:
\item{\verb{attrs}}{[\verb{\link{PangoLogAttr}}]  location to store a pointer to a list of logical attributes
        This value must be freed with \code{gFree()}.}
\item{\verb{n.attrs}}{[integer]  location to store the number of the attributes in the
          list. (The stored value will be one more than the total number
          of characters in the layout, since there need to be attributes
          corresponding to both the position before the first character
          and the position after the last character.)}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
