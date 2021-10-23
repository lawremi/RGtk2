\alias{GtkToolPalette}
\alias{gtkToolPalette}
\alias{GtkToolPaletteDragTargets}
\name{GtkToolPalette}
\title{GtkToolPalette}
\description{A tool palette with categories}
\section{Methods and Functions}{
\code{\link{gtkToolPaletteNew}(show = TRUE)}\cr
\code{\link{gtkToolPaletteGetExclusive}(object, group)}\cr
\code{\link{gtkToolPaletteSetExclusive}(object, group, exclusive)}\cr
\code{\link{gtkToolPaletteGetExpand}(object, group)}\cr
\code{\link{gtkToolPaletteSetExpand}(object, group, expand)}\cr
\code{\link{gtkToolPaletteGetGroupPosition}(object, group)}\cr
\code{\link{gtkToolPaletteSetGroupPosition}(object, group, position)}\cr
\code{\link{gtkToolPaletteGetIconSize}(object)}\cr
\code{\link{gtkToolPaletteSetIconSize}(object, icon.size)}\cr
\code{\link{gtkToolPaletteUnsetIconSize}(object)}\cr
\code{\link{gtkToolPaletteGetStyle}(object)}\cr
\code{\link{gtkToolPaletteSetStyle}(object, style)}\cr
\code{\link{gtkToolPaletteUnsetStyle}(object)}\cr
\code{\link{gtkToolPaletteAddDragDest}(object, widget, flags, targets, actions)}\cr
\code{\link{gtkToolPaletteGetDragItem}(object, selection)}\cr
\code{\link{gtkToolPaletteGetDragTargetGroup}()}\cr
\code{\link{gtkToolPaletteGetDragTargetItem}()}\cr
\code{\link{gtkToolPaletteGetDropGroup}(object, x, y)}\cr
\code{\link{gtkToolPaletteGetDropItem}(object, x, y)}\cr
\code{\link{gtkToolPaletteSetDragSource}(object, targets)}\cr
\code{\link{gtkToolPaletteGetHadjustment}(object)}\cr
\code{\link{gtkToolPaletteGetVadjustment}(object)}\cr
\code{gtkToolPalette(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkToolPalette}}
\section{Interfaces}{GtkToolPalette implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkOrientable}}.}
\section{Detailed Description}{A \code{\link{GtkToolPalette}} allows you to add \code{\link{GtkToolItem}}s to a palette-like
container with different categories and drag and drop support.
  
A \code{\link{GtkToolPalette}} is created with a call to \code{\link{gtkToolPaletteNew}}.
  \code{\link{GtkToolItem}}s cannot be added directly to a \code{\link{GtkToolPalette}} - 
instead they are added to a \code{\link{GtkToolItemGroup}} which can than be added
to a \code{\link{GtkToolPalette}}. To add a \code{\link{GtkToolItemGroup}} to a \code{\link{GtkToolPalette}},
use \code{\link{gtkContainerAdd}}.
  \preformatted{GtkWidget *palette, *group;
GtkToolItem *item;

palette = gtk_tool_palette_new ();
group = gtk_tool_item_group_new (_("Test Category"));
gtk_container_add (GTK_CONTAINER (palette), group);

item = gtk_tool_button_new_from_stock (GTK_STOCK_OK);
gtk_tool_item_group_insert (GTK_TOOL_ITEM_GROUP (group), item, -1);
}  
The easiest way to use drag and drop with \code{\link{GtkToolPalette}} is to call
\code{\link{gtkToolPaletteAddDragDest}} with the desired drag source \code{palette}
and the desired drag target \code{widget}. Then \code{\link{gtkToolPaletteGetDragItem}}
can be used to get the dragged item in the \verb{"drag-data-received"}
signal handler of the drag target.
  \preformatted{static void
passive_canvas_drag_data_received (GtkWidget        *widget,
                                   GdkDragContext   *context,
                                   gint              x,
                                   gint              y,
                                   GtkSelectionData *selection,
                                   guint             info,
                                   guint             time,
                                   gpointer          data)
{
  GtkWidget *palette;
  GtkWidget *item;

  /    * Get the dragged item *    /
  palette = gtk_widget_get_ancestor (gtk_drag_get_source_widget (context),
                                     GTK_TYPE_TOOL_PALETTE);
  if (palette != NULL)
    item = gtk_tool_palette_get_drag_item (GTK_TOOL_PALETTE (palette),
                                           selection);

  /    * Do something with item *    /
}

GtkWidget *target, palette;

palette = gtk_tool_palette_new ();
target = gtk_drawing_area_new ();

g_signal_connect (G_OBJECT (target), "drag-data-received",
                  G_CALLBACK (passive_canvas_drag_data_received), NULL);
gtk_tool_palette_add_drag_dest (GTK_TOOL_PALETTE (palette), target,
                                GTK_DEST_DEFAULT_ALL,
                                GTK_TOOL_PALETTE_DRAG_ITEMS,
                                GDK_ACTION_COPY);
}}
\section{Structures}{\describe{\item{\verb{GtkToolPalette}}{
This should not be accessed directly. Use the accessor functions below.

}}}
\section{Convenient Construction}{\code{gtkToolPalette} is the equivalent of \code{\link{gtkToolPaletteNew}}.}
\section{Enums and Flags}{\describe{\item{\verb{GtkToolPaletteDragTargets}}{
Flags used to specify the supported drag targets.

\describe{
\item{\verb{items}}{Support drag of items.}
\item{\verb{groups}}{Support drag of groups.}
}

}}}
\section{Signals}{\describe{\item{\code{set-scroll-adjustments(widget, hadjustment, vadjustment, user.data)}}{
Set the scroll adjustments for the viewport.
Usually scrolled containers like GtkScrolledWindow will emit this
signal to connect two instances of GtkScrollbar to the scroll
directions of the GtkToolpalette.
  Since 2.20

\describe{
\item{\code{widget}}{the GtkToolPalette that received the signal}
\item{\code{hadjustment}}{The horizontal adjustment}
\item{\code{vadjustment}}{The vertical adjustment}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\verb{icon-size} [\code{\link{GtkIconSize}} : Read / Write]}{

The size of the icons in a tool palette is normally determined by
the \verb{"toolbar-icon-size"} setting. When this property is set,
it overrides the setting.
  
This should only be used for special-purpose tool palettes, normal
application tool palettes should respect the user preferences for the
size of icons.
  Default value: GTK_ICON_SIZE_SMALL_TOOLBAR  Since 2.20

}
\item{\verb{icon-size-set} [logical : Read / Write]}{

Is \code{TRUE} if the \verb{"icon-size"} property has been set.
  Default value: FALSE  Since 2.20

}
\item{\verb{toolbar-style} [\code{\link{GtkToolbarStyle}} : Read / Write]}{

The style of items in the tool palette.
  Default value: GTK_TOOLBAR_ICONS  Since 2.20

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkToolPalette.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
