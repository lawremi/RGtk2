\alias{GtkCheckButton}
\alias{gtkCheckButton}
\name{GtkCheckButton}
\title{GtkCheckButton}
\description{Create widgets with a discrete toggle button}
\section{Methods and Functions}{
\code{\link{gtkCheckButtonNew}(show = TRUE)}\cr
\code{\link{gtkCheckButtonNewWithLabel}(label, show = TRUE)}\cr
\code{\link{gtkCheckButtonNewWithMnemonic}(label, show = TRUE)}\cr
\code{gtkCheckButton(label, show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----\link{GtkBin}
                                 +----\link{GtkButton}
                                       +----\link{GtkToggleButton}
                                             +----GtkCheckButton
                                                   +----\link{GtkRadioButton}}}
\section{Interfaces}{GtkCheckButton implements
 AtkImplementorIface.}
\section{Detailed Description}{A \code{\link{GtkCheckButton}} places a discrete \code{\link{GtkToggleButton}} next to a widget, (usually a \code{\link{GtkLabel}}). See the section on \code{\link{GtkToggleButton}} widgets for more information about toggle/check buttons.
  
The important signal ('toggled') is also inherited from \code{\link{GtkToggleButton}}.}
\section{Structures}{\describe{\item{\code{GtkCheckButton}}{
\code{toggle_button} is a \code{\link{GtkToggleButton}} representing the actual toggle button that composes the check button.

}}}
\section{Convenient Construction}{\code{gtkCheckButton} is the result of collapsing the constructors of \code{GtkCheckButton} (\code{\link{gtkCheckButtonNew}}, \code{\link{gtkCheckButtonNewWithLabel}}, \code{\link{gtkCheckButtonNewWithMnemonic}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Style Properties}{\describe{
\item{\code{indicator-size} [integer : Read]}{

Size of check or radio indicator.  Allowed values: >= 0  Default value: 13

}
\item{\code{indicator-spacing} [integer : Read]}{

Spacing around check or radio indicator.  Allowed values: >= 0  Default value: 2

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkCheckButton.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
