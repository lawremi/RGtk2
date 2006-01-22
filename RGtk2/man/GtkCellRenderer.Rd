\alias{GtkCellRenderer}
\alias{GtkCellRendererState}
\alias{GtkCellRendererMode}
\name{GtkCellRenderer}
\title{GtkCellRenderer}
\description{An object for rendering a single cell on a }
\section{Methods and Functions}{
\link{gtkCellRendererGetSize}(object, widget, cell.area = NULL)
\link{gtkCellRendererRender}(object, window, widget, background.area, cell.area, expose.area, flags)
\link{gtkCellRendererActivate}(object, event, widget, path, background.area, cell.area, flags)
\link{gtkCellRendererStartEditing}(object, event, widget, path, background.area, cell.area, flags)
\link{gtkCellRendererEditingCanceled}(object)
\link{gtkCellRendererStopEditing}(object, canceled)
\link{gtkCellRendererGetFixedSize}(object)
\link{gtkCellRendererSetFixedSize}(object, width, height)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----GtkCellRenderer
               +----\link{GtkCellRendererText}
               +----\link{GtkCellRendererPixbuf}
               +----\link{GtkCellRendererProgress}
               +----\link{GtkCellRendererToggle}}}
\section{Detailed Description}{The \code{\link{GtkCellRenderer}} is a base class of a set of objects used for
rendering a cell to a \code{\link{GdkDrawable}}.  These objects are used primarily by
the \code{\link{GtkTreeView}} widget, though they aren't tied to them in any
specific way.  It is worth noting that \code{\link{GtkCellRenderer}} is not a
\code{\link{GtkWidget}} and cannot be treated as such.
  
The primary use of a \code{\link{GtkCellRenderer}} is for drawing a certain graphical
elements on a \code{\link{GdkDrawable}}.  Typically, one cell renderer is used to
draw many cells on the screen.  To this extent, it isn't expected that a
CellRenderer keep any permanent state around.  Instead, any state is set
just prior to use using \code{\link{GObject}}s property system.  Then, the
cell is measured using \code{\link{gtkCellRendererGetSize}}.  Finally, the cell
is rendered in the correct location using \code{\link{gtkCellRendererRender}}.
  
There are a number of rules that must be followed when writing a new
\code{\link{GtkCellRenderer}}.  First and formost, it's important that a certain set
of properties will always yield a cell renderer of the same size,
barring a \code{\link{GtkStyle}} change.  The \code{\link{GtkCellRenderer}} also has a number of
generic properties that are expected to be honored by all children.
  
Beyond merely rendering a cell, cell renderers can optionally 
provide active user interface elements. A cell renderer can be 
\dfn{activatable} like \code{\link{GtkCellRendererToggle}}, 
which toggles when it gets activated by a mouse click, or it can be 
\dfn{editable} like \code{\link{GtkCellRendererText}}, which 
allows the user to edit the text using a \code{\link{GtkEntry}}.
To make a cell renderer activatable or editable, you have to 
implement the \code{activate} or \code{start.editing} virtual functions, 
respectively.}
\section{Structures}{\describe{\item{\code{GtkCellRenderer}}{\emph{undocumented
}}}}
\section{Enums and Flags}{\describe{
\item{\code{enum GtkCellRendererState}}{
Tells how a cell is to be rendererd.

\describe{
\item{\code{GTK_CELL_RENDERER_SELECTED (selected)}}{The cell is currently selected, and
probably has a selection colored background to render to.}
\item{\code{GTK_CELL_RENDERER_PRELIT (prelit)}}{The mouse is hovering over the cell.}
\item{\code{GTK_CELL_RENDERER_INSENSITIVE (insensitive)}}{The cell is drawn in an insensitive manner}
\item{\code{GTK_CELL_RENDERER_SORTED (sorted)}}{The cell is in a sorted row}
\item{\code{GTK_CELL_RENDERER_FOCUSED (focused)}}{\emph{undocumented
}}
}

}
\item{\code{enum GtkCellRendererMode}}{
Identifies how the user can interact with a particular cell.

\describe{
\item{\code{GTK_CELL_RENDERER_MODE_INERT (inert)}}{The cell is just for display
and cannot be interacted with.  Note that this doesn't mean that eg. the
row being drawn can't be selected -- just that a particular element of
it cannot be individually modified.}
\item{\code{GTK_CELL_RENDERER_MODE_ACTIVATABLE (activatable)}}{The cell can be clicked.}
\item{\code{GTK_CELL_RENDERER_MODE_EDITABLE (editable)}}{The cell can be edited or otherwise modified.}
}

}
}}
\section{Signals}{\describe{
\item{\code{editing-canceled(renderer, user.data)}}{
This signal gets emitted when the user cancels the process of editing a
cell.  For example, an editable cell renderer could be written to cancel
editing when the user presses Escape. 
  
See also: \code{\link{gtkCellRendererEditingCanceled}}  

  Since  2.4

\describe{
\item{\code{renderer}}{[\code{\link{GtkCellRenderer}}]  the object which received the signal}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{editing-started(renderer, editable, path, user.data)}}{
This signal gets emitted when a cell starts to be edited.
The indended use of this signal is to do special setup
on \code{editable}, e.g. adding a \code{\link{GtkEntryCompletion}} or setting
up additional columns in a \code{\link{GtkComboBox}}.
  
Note that GTK+ doesn't guarantee that cell renderers will
continue to use the same kind of widget for editing in future
releases, therefore you should check the type of \code{editable}
before doing any specific setup, as in the following example:
  
\preformatted{
text_editing_started <- function(cell, editable, path, data)
{
	checkPtrType(editable, "GtkEntry")
    # ... create a GtkEntryCompletion
    editable$setCompletion(completion)
}

}  

  Since  2.6

\describe{
\item{\code{renderer}}{[\code{\link{GtkCellRenderer}}]  the object which received the signal}
\item{\code{editable}}{[\code{\link{GtkCellEditable}}]  the \code{\link{GtkCellEditable}}}
\item{\code{path}}{[character]  the path identifying the edited cell}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\section{Properties}{\describe{
\item{\code{cell-background} [character : Write]}{

Cell background color as a string.  Default value: NULL

}
\item{\code{cell-background-gdk} [\code{\link{GdkColor}} : Read / Write]}{

Cell background color as a GdkColor.

}
\item{\code{cell-background-set} [logical : Read / Write]}{

Whether this tag affects the cell background color.  Default value: FALSE

}
\item{\code{height} [integer : Read / Write]}{

The fixed height.  Allowed values: >= -1  Default value: -1

}
\item{\code{is-expanded} [logical : Read / Write]}{

Row is an expander row, and is expanded.  Default value: FALSE

}
\item{\code{is-expander} [logical : Read / Write]}{

Row has children.  Default value: FALSE

}
\item{\code{mode} [\code{\link{GtkCellRendererMode}} : Read / Write]}{

Editable mode of the CellRenderer.  Default value: GTK_CELL_RENDERER_MODE_INERT

}
\item{\code{sensitive} [logical : Read / Write]}{

Display the cell sensitive.  Default value: TRUE

}
\item{\code{visible} [logical : Read / Write]}{

Display the cell.  Default value: TRUE

}
\item{\code{width} [integer : Read / Write]}{

The fixed width.  Allowed values: >= -1  Default value: -1

}
\item{\code{xalign} [numeric : Read / Write]}{

The x-align.  Allowed values: [0,1]  Default value: 0.5

}
\item{\code{xpad} [numeric : Read / Write]}{

The xpad.  Default value: 0

}
\item{\code{yalign} [numeric : Read / Write]}{

The y-align.  Allowed values: [0,1]  Default value: 0.5

}
\item{\code{ypad} [numeric : Read / Write]}{

The ypad.  Default value: 0

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkCellRenderer.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkCellRendererText}}
\code{\link{GtkCellRendererPixbuf}}
\code{\link{GtkCellRendererToggle}}
}
\keyword{internal}
