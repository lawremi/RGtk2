\alias{GtkRadioButton}
\alias{gtkRadioButton}
\name{GtkRadioButton}
\title{GtkRadioButton}
\description{A choice from multiple check buttons}
\section{Methods and Functions}{
\code{\link{gtkRadioButtonNew}(group = NULL, show = TRUE)}\cr
\code{\link{gtkRadioButtonNewFromWidget}(group = NULL, show = TRUE)}\cr
\code{\link{gtkRadioButtonNewWithLabel}(group = NULL, label, show = TRUE)}\cr
\code{\link{gtkRadioButtonNewWithLabelFromWidget}(group = NULL, label, show = TRUE)}\cr
\code{\link{gtkRadioButtonNewWithMnemonic}(group, label, show = TRUE)}\cr
\code{\link{gtkRadioButtonNewWithMnemonicFromWidget}(group = NULL, label, show = TRUE)}\cr
\code{\link{gtkRadioButtonSetGroup}(object, group)}\cr
\code{\link{gtkRadioButtonGetGroup}(object)}\cr
\code{gtkRadioButton(group = NULL, label, show = TRUE)}
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
\section{Interfaces}{GtkRadioButton implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkActivatable}}.}
\section{Detailed Description}{A single radio button performs the same basic function as a \code{\link{GtkCheckButton}},
as its position in the object hierarchy reflects. It is only when multiple
radio buttons are grouped together that they become a different user
interface component in their own right.  
Every radio button is a member of some group of radio buttons. When one is selected, all other
radio buttons in the same group are deselected. A \code{\link{GtkRadioButton}} is one way
of giving the user a choice from many options.
  
Radio button widgets are created with \code{\link{gtkRadioButtonNew}}, passing NULL
as the argument if this is the first radio button in a group. In subsequent
calls, the group you wish to add this button to should be passed as an
argument. Optionally, \code{\link{gtkRadioButtonNewWithLabel}} can be used if you
want a text label on the radio button.
  
Alternatively, when adding widgets to an existing group of radio buttons,
use \code{\link{gtkRadioButtonNewFromWidget}} with a \code{\link{GtkRadioButton}} that already
has a group assigned to it. The convenience function
\code{\link{gtkRadioButtonNewWithLabelFromWidget}} is also provided.
  
To retrieve the group a \code{\link{GtkRadioButton}} is assigned to, use
\code{\link{gtkRadioButtonGetGroup}}.
  
To remove a \code{\link{GtkRadioButton}} from one group and make it part of a new one, use \code{\link{gtkRadioButtonSetGroup}}.
  
The group list does not need to be freed, as each \code{\link{GtkRadioButton}} will remove
itself and its list item when it is destroyed.
  
 \emph{How to create a group of two radio buttons.}
\preformatted{
# Creating two radio buttons
create_radio_buttons <- function() {
  
  window <- gtkWindow("toplevel", show = F)
  box <- gtkVBoxNew(TRUE, 2)
  
  ## Create a radio button with a GtkEntry widget 
  radio1 <- gtkRadioButton()
  entry <- gtkEntry()
  radio1$add(entry)
   
  ## Create a radio button with a label
  radio2 <- gtkRadioButtonNewWithLabelFromWidget(radio1,
                                                 "I'm the second radio button.")
  
  ## Pack them into a box, then show all the widgets
  box$packStart(radio1, TRUE, TRUE, 2)
  box$packStart(radio2, TRUE, TRUE, 2)
  window$add(box)
  window$showAll()
}
}  
When an unselected button in the group is clicked the clicked button
receives the "toggled" signal, as does the previously selected button.
Inside the "toggled" handler, \code{\link{gtkToggleButtonGetActive}} can be used
to determine if the button has been selected or deselected.}
\section{Structures}{\describe{\item{\verb{GtkRadioButton}}{
Contains only private data that should be read and manipulated using the
functions below.

}}}
\section{Convenient Construction}{\code{gtkRadioButton} is the result of collapsing the constructors of \code{GtkRadioButton} (\code{\link{gtkRadioButtonNew}}, \code{\link{gtkRadioButtonNewFromWidget}}, \code{\link{gtkRadioButtonNewWithLabel}}, \code{\link{gtkRadioButtonNewWithLabelFromWidget}}, \code{\link{gtkRadioButtonNewWithMnemonic}}, \code{\link{gtkRadioButtonNewWithMnemonicFromWidget}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Signals}{\describe{\item{\code{group-changed(style, user.data)}}{
Emitted when the group of radio buttons that a radio button belongs
to changes. This is emitted when a radio button switches from
being alone to being part of a group of 2 or more buttons, or
vice-versa, and when a button is moved from one group of 2 or
more buttons to a different one, but not when the composition
of the group that a button belongs to changes.
  Since 2.4

\describe{
\item{\code{style}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{\item{\verb{group} [\code{\link{GtkRadioButton}} : *       : Write]}{

Sets a new group for a radio button.

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkRadioButton.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
