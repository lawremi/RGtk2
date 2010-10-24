\alias{gdkWindowSetBackground}
\name{gdkWindowSetBackground}
\title{gdkWindowSetBackground}
\description{Sets the background color of \code{window}. (However, when using GTK+,
set the background of a widget with \code{\link{gtkWidgetModifyBg}} - if
you're an application - or \code{\link{gtkStyleSetBackground}} - if you're
implementing a custom widget.)}
\usage{gdkWindowSetBackground(object, color)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkWindow}}}
\item{\verb{color}}{an allocated \code{\link{GdkColor}}}
}
\details{The \code{color} must be allocated; \code{\link{gdkRgbFindColor}} is the best way
to allocate a color.
  
See also \code{\link{gdkWindowSetBackPixmap}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
