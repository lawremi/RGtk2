\alias{gtk-Orientable}
\alias{GtkOrientable}
\name{gtk-Orientable}
\title{GtkOrientable}
\description{An interface for flippable widgets}
\section{Methods and Functions}{
\code{\link{gtkOrientableGetOrientation}(object)}\cr
\code{\link{gtkOrientableSetOrientation}(object, orientation)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----GtkOrientable}}
\section{Implementations}{GtkOrientable is implemented by
 \code{\link{GtkBox}},  \code{\link{GtkButtonBox}},  \code{\link{GtkColorSelection}},  \code{\link{GtkCombo}},  \code{\link{GtkFileChooserButton}},  \code{\link{GtkFileChooserWidget}},  \code{\link{GtkFontSelection}},  \code{\link{GtkGammaCurve}},  \code{\link{GtkHBox}},  \code{\link{GtkHButtonBox}},  \code{\link{GtkHPaned}},  \code{\link{GtkHRuler}},  \code{\link{GtkHScale}},  \code{\link{GtkHScrollbar}},  \code{\link{GtkHSeparator}},  \code{\link{GtkInfoBar}},  \code{\link{GtkPaned}},  \code{\link{GtkRange}},  \code{\link{GtkRecentChooserWidget}},  \code{\link{GtkRuler}},  \code{\link{GtkScale}},  \code{\link{GtkScaleButton}},  \code{\link{GtkScrollbar}},  \code{\link{GtkSeparator}},  \code{\link{GtkStatusbar}},  \code{\link{GtkToolPalette}},  \code{\link{GtkToolbar}},  \code{\link{GtkVBox}},  \code{\link{GtkVButtonBox}},  \code{\link{GtkVPaned}},  \code{\link{GtkVRuler}},  \code{\link{GtkVScale}},  \code{\link{GtkVScrollbar}},  \code{\link{GtkVSeparator}} and  \code{\link{GtkVolumeButton}}.}
\section{Detailed Description}{The \code{\link{GtkOrientable}} interface is implemented by all widgets that can be
oriented horizontally or vertically. Historically, such widgets have been
realized as subclasses of a common base class (e.g \code{\link{GtkBox}}/\code{\link{GtkHBox}}/\code{\link{GtkVBox}}
and \code{\link{GtkScale}}/\code{\link{GtkHScale}}/\code{\link{GtkVScale}}). GtkOrientable is more flexible in that
it allows the orientation to be changed at runtime, allowing the widgets
to 'flip'.
  
GtkOrientable was introduced in GTK+ 2.16.}
\section{Structures}{\describe{\item{\verb{GtkOrientable}}{
\emph{undocumented
}

}}}
\section{Properties}{\describe{\item{\verb{orientation} [\code{\link{GtkOrientation}} : Read / Write]}{

The orientation of the orientable.
  Default value: GTK_ORIENTATION_HORIZONTAL  Since 2.16

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/gtk2-Orientable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
