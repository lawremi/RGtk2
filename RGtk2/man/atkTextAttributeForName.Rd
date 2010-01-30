\alias{atkTextAttributeForName}
\name{atkTextAttributeForName}
\title{atkTextAttributeForName}
\description{Get the \code{\link{AtkTextAttribute}} type corresponding to a text attribute name.}
\usage{atkTextAttributeForName(name)}
\arguments{\item{\verb{name}}{[character]  a string which is the (non-localized) name of an ATK text attribute.}}
\value{[\code{\link{AtkTextAttribute}}]  the \code{\link{AtkTextAttribute}} enumerated type corresponding to the specified
name,
         or \verb{ATK_TEXT_ATTRIBUTE_INVALID} if no matching text attribute is found.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
