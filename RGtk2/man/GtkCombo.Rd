\alias{GtkCombo}
\alias{gtkCombo}
\name{GtkCombo}
\title{GtkCombo}
\description{A text entry field with a dropdown list}
\section{Methods and Functions}{
\code{\link{gtkComboNew}(show = TRUE)}\cr
\code{\link{gtkComboSetPopdownStrings}(object, strings)}\cr
\code{\link{gtkComboSetValueInList}(object, val, ok.if.empty)}\cr
\code{\link{gtkComboSetUseArrows}(object, val)}\cr
\code{\link{gtkComboSetUseArrowsAlways}(object, val)}\cr
\code{\link{gtkComboSetCaseSensitive}(object, val)}\cr
\code{\link{gtkComboSetItemString}(object, item, item.value)}\cr
\code{\link{gtkComboDisableActivate}(object)}\cr
\code{gtkCombo(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBox
                                 +----GtkHBox
                                       +----GtkCombo}}
\section{Interfaces}{GtkCombo implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkOrientable}}.}
\section{Detailed Description}{The \code{\link{GtkCombo}} widget consists of a single-line text entry field and a drop-down
list. The drop-down list is displayed when the user clicks on a small arrow
button to the right of the entry field.
  
The drop-down list is a \code{\link{GtkList}} widget and can be accessed using the
\code{list} member of the \code{\link{GtkCombo}}.
List elements can contain arbitrary widgets, but if an element is not a
plain label, then you must use the \code{gtkListSetItemString()} function.
This sets the string which will be placed in the text entry field when the
item is selected.
  
By default, the user can step through the items in the list using the
arrow (cursor) keys, though this behaviour can be turned off with
\code{\link{gtkComboSetUseArrows}}.
  
As of GTK+ 2.4, \code{\link{GtkCombo}} has been deprecated in favor of \code{\link{GtkComboBoxEntry}}.
  
 \emph{Creating a   \code{GtkCombo}   widget with simple text
items.}
\preformatted{
######
# Creating a combobox with simple text items
######

items <- c("First Item", "Second Item", "Third Item", "Fourth Item",
           "Fifth Item")
combo <- gtkCombo()
combo$setPopdownStrings(items)
}  
 \emph{Creating a   \code{GtkCombo}   widget with a complex item.}
\preformatted{
######
# Creating a combobox with a complex item
######
  
combo <- gtkCombo()
item <- gtkListItem()

## You can put almost anything into the GtkListItem widget. Here we will use
##   a horizontal box with an arrow and a label in it.
hbox <- gtkHbox(FALSE, 3)
item$add(hbox)
  
arrow <- gtkArrow("right", "out")
hbox$packStart(arrow, FALSE, FALSE, 0)

label <- gtkLabel("First Item")
hbox$packStart(label, FALSE, FALSE, 0)

## You must set the string to display in the entry field when the item is
##   selected.
combo$setItemString(item, "1st Item")

## Now we simply add the item to the combo's list.
combo[["list"]]$add(item)
}}
\section{Structures}{\describe{\item{\verb{GtkCombo}}{
\strong{WARNING: \code{GtkCombo} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{GtkComboBox}} instead.}
The \code{\link{GtkCombo}} struct contains the following fields.
(These fields should be considered read-only. They should never be set by
an application.)

\describe{
\item{\verb{entry}}{[\code{\link{GtkWidget}}] the text entry field.}
\item{\verb{list}}{[\code{\link{GtkWidget}}] the list shown in the drop-down window.}
}

}}}
\section{Convenient Construction}{\code{gtkCombo} is the equivalent of \code{\link{gtkComboNew}}.}
\section{Properties}{\describe{
\item{\verb{allow-empty} [logical : Read / Write]}{

Whether an empty value may be entered in this field.  Default value: TRUE

}
\item{\verb{case-sensitive} [logical : Read / Write]}{

Whether list item matching is case sensitive.  Default value: FALSE

}
\item{\verb{enable-arrow-keys} [logical : Read / Write]}{

Whether the arrow keys move through the list of items.  Default value: TRUE

}
\item{\verb{enable-arrows-always} [logical : Read / Write]}{

Obsolete property, ignored.  Default value: TRUE

}
\item{\verb{value-in-list} [logical : Read / Write]}{

Whether entered values must already be present in the list.  Default value: FALSE

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkCombo.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
