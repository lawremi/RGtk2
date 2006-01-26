\alias{gdkPropertyChange}
\name{gdkPropertyChange}
\title{gdkPropertyChange}
\description{Changes the contents of a property on a window.}
\usage{gdkPropertyChange(object, property, type, format, mode, data)}
\arguments{
\item{\code{object}}{[\code{\link{GdkWindow}}] a \code{\link{GdkWindow}}.}
\item{\code{property}}{[\code{\link{GdkAtom}}] the property to change.}
\item{\code{type}}{[\code{\link{GdkAtom}}] the new type for the property. If \code{mode} is
       \code{GDK_PROP_MODE_PREPEND} or \code{GDK_PROP_MODE_APPEND}, then this 
       must match the existing type or an error will occur.}
\item{\code{format}}{[integer] the new format for the property. If \code{mode} is
         \code{GDK_PROP_MODE_PREPEND} or \code{GDK_PROP_MODE_APPEND}, then this 
         must match the existing format or an error will occur.}
\item{\code{mode}}{[\code{\link{GdkPropMode}}] a value describing how the new data is to be combined
       with the current data.}
\item{\code{data}}{[raw] the data
       (a \code{guchar *}
        \code{gushort *}, or 
        \code{gulong *}, depending on \code{format}), cast to a 
        \code{guchar *}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
