\alias{gdkUnicodeToKeyval}
\name{gdkUnicodeToKeyval}
\title{gdkUnicodeToKeyval}
\description{Convert from a ISO10646 character to a key symbol.}
\usage{gdkUnicodeToKeyval(wc)}
\arguments{\item{\verb{wc}}{a ISO10646 encoded character}}
\value{[numeric] the corresponding GDK key symbol, if one exists.
or, if there is no corresponding symbol,
wc | 0x01000000}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
