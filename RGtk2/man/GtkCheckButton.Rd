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
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkButton
                                       +----GtkToggleButton
                                             +----GtkCheckButton
                                                   +----GtkRadioButton}}
\section{Interfaces}{GtkCheckButton implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkActivatable}}.}
\section{Detailed Description}{A \code{\link{GtkCheckButton}} places a discrete \code{\link{GtkToggleButton}} next to a widget, (usually a \code{\link{GtkLabel}}). See the section on \code{\link{GtkToggleButton}} widgets for more information about toggle/check buttons.
  
The important signal ('toggled') is also inherited from \code{\link{GtkToggleButton}}.}
\section{Structures}{\describe{\item{\verb{GtkCheckButton}}{
\code{toggle_button} is a \code{\link{GtkToggleButton}} representing the actual toggle button that composes the check button.

}}}
\section{Convenient Construction}{\code{gtkCheckButton} is the result of collapsing the constructors of \code{GtkCheckButton} (\code{\link{gtkCheckButtonNew}}, \code{\link{gtkCheckButtonNewWithLabel}}, \code{\link{gtkCheckButtonNewWithMnemonic}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Style Properties}{\describe{
\item{\verb{indicator-size} [integer : Read]}{

Size of check or radio indicator.  Allowed values: >= 0  Default value: 13

}
\item{\verb{indicator-spacing} [integer : Read]}{

Spacing around check or radio indicator.  Allowed values: >= 0  Default value: 2

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkCheckButton.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
