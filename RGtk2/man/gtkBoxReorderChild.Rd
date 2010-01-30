\alias{gtkBoxReorderChild}
\name{gtkBoxReorderChild}
\title{gtkBoxReorderChild}
\description{Moves \code{child} to a new \code{position} in the list of \code{box} children.  
The list is the \code{children} field of
\verb{\link{GtkBox}}, and contains both widgets packed \verb{GTK_PACK_START} 
as well as widgets packed \verb{GTK_PACK_END}, in the order that these 
widgets were added to \code{box}.}
\usage{gtkBoxReorderChild(object, child, position)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkBox}}]  a \verb{\link{GtkBox}}}
\item{\verb{child}}{[\verb{\link{GtkWidget}}]  the \verb{\link{GtkWidget}} to move}
\item{\verb{position}}{[integer]  the new position for \code{child} in the list of children 
  of \code{box}, starting from 0. If negative, indicates the end of 
  the list}
}
\details{A widget's position in the \code{box} children list determines where 
the widget is packed into \code{box}.  A child widget at some position 
in the list will be packed just after all other widgets of the 
same packing type that appear earlier in the list.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
