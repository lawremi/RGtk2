\alias{GtkScrollbar}
\name{GtkScrollbar}
\title{GtkScrollbar}
\description{Base class for GtkHScrollbar and GtkVScrollbar}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkRange
                           +----GtkScrollbar
                                 +----GtkHScrollbar
                                 +----GtkVScrollbar}}
\section{Interfaces}{GtkScrollbar implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkOrientable}}.}
\section{Detailed Description}{The \code{\link{GtkScrollbar}} widget is an abstract base class for \code{\link{GtkHScrollbar}} and
\code{\link{GtkVScrollbar}}. It is not very useful in itself.
  
The position of the thumb in a scrollbar is controlled by the scroll
adjustments. See \code{\link{GtkAdjustment}} for the fields in an adjustment - for
\code{\link{GtkScrollbar}}, the "value" field represents the position of the
scrollbar, which must be between the "lower" field and "upper -
page_size." The "page_size" field represents the size of the visible
scrollable area. The "step_increment" and "page_increment" fields are
used when the user asks to step down (using the small stepper arrows)
or page down (using for example the PageDown key).}
\section{Structures}{\describe{\item{\verb{GtkScrollbar}}{
The \code{\link{GtkScrollbar}} struct does not contain any public data.

}}}
\section{Style Properties}{\describe{
\item{\verb{fixed-slider-length} [logical : Read]}{

Don't change slider size, just lock it to the minimum length.  Default value: FALSE

}
\item{\verb{has-backward-stepper} [logical : Read]}{

Display the standard backward arrow button.  Default value: TRUE

}
\item{\verb{has-forward-stepper} [logical : Read]}{

Display the standard forward arrow button.  Default value: TRUE

}
\item{\verb{has-secondary-backward-stepper} [logical : Read]}{

Display a second backward arrow button on the opposite end of the scrollbar.  Default value: FALSE

}
\item{\verb{has-secondary-forward-stepper} [logical : Read]}{

Display a second forward arrow button on the opposite end of the scrollbar.  Default value: FALSE

}
\item{\verb{min-slider-length} [integer : Read]}{

Minimum length of scrollbar slider.  Allowed values: >= 0  Default value: 21

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkScrollbar.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
