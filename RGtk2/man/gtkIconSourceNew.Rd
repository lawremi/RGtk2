\alias{gtkIconSourceNew}
\name{gtkIconSourceNew}
\title{gtkIconSourceNew}
\description{Creates a new \code{\link{GtkIconSource}}. A \code{\link{GtkIconSource}} contains a \code{\link{GdkPixbuf}} (or
image filename) that serves as the base image for one or more of the
icons in a \code{\link{GtkIconSet}}, along with a specification for which icons in the
icon set will be based on that pixbuf or image file. An icon set contains
a set of icons that represent "the same" logical concept in different states,
different global text directions, and different sizes.}
\usage{gtkIconSourceNew()}
\details{So for example a web browser's "Back to Previous Page" icon might
point in a different direction in Hebrew and in English; it might
look different when insensitive; and it might change size depending
on toolbar mode (small/large icons). So a single icon set would
contain all those variants of the icon. \code{\link{GtkIconSet}} contains a list
of \code{\link{GtkIconSource}} from which it can derive specific icon variants in
the set.
  
In the simplest case, \code{\link{GtkIconSet}} contains one source pixbuf from
which it derives all variants. The convenience function
\code{\link{gtkIconSetNewFromPixbuf}} handles this case; if you only have
one source pixbuf, just use that function.
  
If you want to use a different base pixbuf for different icon
variants, you create multiple icon sources, mark which variants
they'll be used to create, and add them to the icon set with
\code{\link{gtkIconSetAddSource}}.
  
By default, the icon source has all parameters wildcarded. That is,
the icon source will be used as the base icon for any desired text
direction, widget state, or icon size.}
\value{[\code{\link{GtkIconSource}}] a new \code{\link{GtkIconSource}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
