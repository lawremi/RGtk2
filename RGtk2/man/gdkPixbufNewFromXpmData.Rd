\alias{gdkPixbufNewFromXpmData}
\name{gdkPixbufNewFromXpmData}
\title{gdkPixbufNewFromXpmData}
\description{Creates a new pixbuf by parsing XPM data in memory.  This data is commonly
the result of including an XPM file into a program's C source.}
\usage{gdkPixbufNewFromXpmData(data)}
\arguments{\item{\verb{data}}{Pointer to inline XPM data.}}
\value{[\code{\link{GdkPixbuf}}] A newly-created pixbuf with a reference count of 1.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
