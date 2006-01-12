\alias{GtkWidget}
\alias{GtkWidgetClass}
\alias{GtkRequisition}
\alias{GtkSelectionData}
\alias{gtkWidget}
\alias{GtkCallback}
\alias{GtkWidgetFlags}
\alias{GtkWidgetHelpType}
\alias{GtkTextDirection}
\name{GtkWidget}
\title{GtkWidget}
\description{Base class for all widgets}
\usage{
\link{gtkWidgetNew}(type, ..., show = TRUE)
\link{gtkWidgetDestroy}(object)
\link{gtkWidgetSet}(obj, ...)
\link{gtkWidgetUnparent}(object)
\link{gtkWidgetShow}(object)
\link{gtkWidgetShowNow}(object)
\link{gtkWidgetHide}(object)
\link{gtkWidgetShowAll}(object)
\link{gtkWidgetHideAll}(object)
\link{gtkWidgetMap}(object)
\link{gtkWidgetUnmap}(object)
\link{gtkWidgetRealize}(object)
\link{gtkWidgetUnrealize}(object)
\link{gtkWidgetQueueDraw}(object)
\link{gtkWidgetQueueResize}(object)
\link{gtkWidgetQueueResizeNoRedraw}(object)
\link{gtkWidgetDraw}(object, area)
\link{gtkWidgetSizeRequest}(object)
\link{gtkWidgetGetChildRequisition}(object)
\link{gtkWidgetSizeAllocate}(object, allocation)
\link{gtkWidgetAddAccelerator}(object, accel.signal, accel.group, accel.key, accel.mods, accel.flags)
\link{gtkWidgetRemoveAccelerator}(object, accel.group, accel.key, accel.mods)
\link{gtkWidgetSetAccelPath}(object, accel.path, accel.group)
\link{gtkWidgetListAccelClosures}(object)
\link{gtkWidgetCanActivateAccel}(object, signal.id)
\link{gtkWidgetEvent}(object, event)
\link{gtkWidgetActivate}(object)
\link{gtkWidgetReparent}(object, new.parent)
\link{gtkWidgetIntersect}(object, area, intersection)
\link{gtkWidgetIsFocus}(object)
\link{gtkWidgetGrabFocus}(object)
\link{gtkWidgetGrabDefault}(object)
\link{gtkWidgetSetName}(object, name)
\link{gtkWidgetGetName}(object)
\link{gtkWidgetSetState}(object, state)
\link{gtkWidgetSetSensitive}(object, sensitive)
\link{gtkWidgetSetParent}(object, parent)
\link{gtkWidgetSetParentWindow}(object, parent.window)
\link{gtkWidgetGetParentWindow}(object)
\link{gtkWidgetSetUposition}(object, x, y)
\link{gtkWidgetSetUsize}(object, width, height)
\link{gtkWidgetSetEvents}(object, events)
\link{gtkWidgetAddEvents}(object, events)
\link{gtkWidgetSetExtensionEvents}(object, mode)
\link{gtkWidgetGetExtensionEvents}(object)
\link{gtkWidgetGetToplevel}(object)
\link{gtkWidgetGetAncestor}(object, widget.type)
\link{gtkWidgetGetColormap}(object)
\link{gtkWidgetSetColormap}(object, colormap)
\link{gtkWidgetGetVisual}(object)
\link{gtkWidgetGetEvents}(object)
\link{gtkWidgetGetPointer}(object)
\link{gtkWidgetIsAncestor}(object, ancestor)
\link{gtkWidgetTranslateCoordinates}(object, dest.widget, src.x, src.y)
\link{gtkWidgetHideOnDelete}(object)
\link{gtkWidgetSetStyle}(object, style = NULL)
\link{gtkWidgetEnsureStyle}(object)
\link{gtkWidgetGetStyle}(object)
\link{gtkWidgetResetRcStyles}(object)
\link{gtkWidgetPushColormap}(cmap)
\link{gtkWidgetPopColormap}()
\link{gtkWidgetSetDefaultColormap}(colormap)
\link{gtkWidgetGetDefaultStyle}()
\link{gtkWidgetGetDefaultColormap}()
\link{gtkWidgetGetDefaultVisual}()
\link{gtkWidgetSetDirection}(object, dir)
\link{gtkWidgetGetDirection}(object)
\link{gtkWidgetSetDefaultDirection}(dir)
\link{gtkWidgetGetDefaultDirection}()
\link{gtkWidgetShapeCombineMask}(object, shape.mask, offset.x, offset.y)
\link{gtkWidgetPath}(object)
\link{gtkWidgetClassPath}(object)
\link{gtkWidgetGetCompositeName}(object)
\link{gtkWidgetModifyStyle}(object, style)
\link{gtkWidgetGetModifierStyle}(object)
\link{gtkWidgetModifyFg}(object, state, color = NULL)
\link{gtkWidgetModifyBg}(object, state, color = NULL)
\link{gtkWidgetModifyText}(object, state, color = NULL)
\link{gtkWidgetModifyBase}(object, state, color = NULL)
\link{gtkWidgetModifyFont}(object, font.desc = NULL)
\link{gtkWidgetCreatePangoContext}(object)
\link{gtkWidgetGetPangoContext}(object)
\link{gtkWidgetCreatePangoLayout}(object, text)
\link{gtkWidgetRenderIcon}(object, stock.id, size, detail = NULL)
\link{gtkWidgetPopCompositeChild}()
\link{gtkWidgetPushCompositeChild}()
\link{gtkWidgetQueueClear}(object)
\link{gtkWidgetQueueClearArea}(object, x, y, width, height)
\link{gtkWidgetQueueDrawArea}(object, x, y, width, height)
\link{gtkWidgetResetShapes}(object)
\link{gtkWidgetSetAppPaintable}(object, app.paintable)
\link{gtkWidgetSetDoubleBuffered}(object, double.buffered)
\link{gtkWidgetSetRedrawOnAllocate}(object, redraw.on.allocate)
\link{gtkWidgetSetCompositeName}(object, name)
\link{gtkWidgetSetScrollAdjustments}(object, hadjustment = NULL, vadjustment = NULL)
\link{gtkWidgetMnemonicActivate}(object, group.cycling)
\link{gtkWidgetClassInstallStyleProperty}(klass, pspec)
\link{gtkWidgetClassInstallStylePropertyParser}(klass, pspec, parser)
\link{gtkWidgetClassFindStyleProperty}(klass, property.name)
\link{gtkWidgetClassListStyleProperties}(klass)
\link{gtkWidgetRegionIntersect}(object, region)
\link{gtkWidgetSendExpose}(object, event)
\link{gtkWidgetStyleGet}(object, ...)
\link{gtkWidgetStyleGetProperty}(object, property.name)
\link{gtkWidgetGetAccessible}(object)
\link{gtkWidgetChildFocus}(object, direction)
\link{gtkWidgetChildNotify}(object, child.property)
\link{gtkWidgetFreezeChildNotify}(object)
\link{gtkWidgetGetChildVisible}(object)
\link{gtkWidgetGetParent}(object)
\link{gtkWidgetGetSettings}(object)
\link{gtkWidgetGetClipboard}(object, selection)
\link{gtkWidgetGetDisplay}(object)
\link{gtkWidgetGetRootWindow}(object)
\link{gtkWidgetGetScreen}(object)
\link{gtkWidgetHasScreen}(object)
\link{gtkWidgetGetSizeRequest}(object)
\link{gtkWidgetSetChildVisible}(object, is.visible)
\link{gtkWidgetSetSizeRequest}(object, width, height)
\link{gtkWidgetThawChildNotify}(object)
\link{gtkWidgetSetNoShowAll}(object, no.show.all)
\link{gtkWidgetGetNoShowAll}(object)
\link{gtkWidgetListMnemonicLabels}(object)
\link{gtkWidgetAddMnemonicLabel}(object, label)
\link{gtkWidgetRemoveMnemonicLabel}(object, label)
\link{gtkRequisitionCopy}(object)
gtkWidget(type, ..., show = TRUE)
}
\details{\code{GtkWidget} introduces \dfn{style 
properties} - these are basically object properties that are stored
not on the object, but in the style object associated to the widget. Style
properties are set in resource files.
This mechanism is used for configuring such things as the location of the
scrollbar arrows through the theme, giving theme authors more control over the
look of applications without the need to write a theme engine in C.
  
Use \code{\link{gtkWidgetClassInstallStyleProperty}} to install style properties for 
a widget class, \code{\link{gtkWidgetClassFindStyleProperty}} or
\code{\link{gtkWidgetClassListStyleProperties}} to get information about existing
style properties and \code{\link{gtkWidgetStyleGetProperty}}, \code{\link{gtkWidgetStyleGet}} or
\code{gtkWidgetStyleGetValist()} to obtain the value of a style property.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----GtkWidget
               +----\link{GtkContainer}
               +----\link{GtkMisc}
               +----\link{GtkCalendar}
               +----\link{GtkCellView}
               +----\link{GtkDrawingArea}
               +----\link{GtkEntry}
               +----\link{GtkRuler}
               +----\link{GtkRange}
               +----\link{GtkSeparator}
               +----\link{GtkInvisible}
               +----\link{GtkOldEditable}
               +----\link{GtkPreview}
               +----\link{GtkProgress}}}
\section{Structures}{\describe{
\item{\code{GtkWidget}}{


\describe{
\item{\code{style}}{[\code{\link{GtkStyle}}] The style for the widget. The style contains the colors the widget should be 
 drawn in for each state along with graphics contexts used to draw with and the font 
 to use for text.}
\item{\code{requisition}}{[\code{\link{GtkRequisition}}] The widget's desired size.}
\item{\code{allocation}}{[\code{\link{GtkAllocation}}] The widget's allocated size.}
\item{\code{window}}{[\code{\link{GdkWindow}}] The widget's window or its parent window if it does not have a window. (Which 
 will be indicated by the \code{GTK_NO_WINDOW} flag being set).}
\item{\code{parent}}{[\code{\link{GtkWidget}}] }
}

}
\item{\code{GtkWidgetClass}}{
\code{activate_signal}
The signal to emit when a widget of this class is activated,
\code{\link{gtkWidgetActivate}} handles the emission. Implementation of this
signal is optional. 
  
\code{set_scroll_adjustment_signal}
This signal is emitted  when a widget of this class is added
to a scrolling aware parent, \code{\link{gtkWidgetSetScrollAdjustments}}
handles the emission.
Implementation of this signal is optional.

}
\item{\code{GtkRequisition}}{
A \code{GtkRequisition} represents the desired size of a widget. See 
 for more information.

\describe{
\item{\code{width}}{[integer] the widget's desired width}
\item{\code{height}}{[integer] the widget's desired height}
}

}
\item{\code{GtkSelectionData}}{\emph{undocumented
}}
}}
\section{Convenient Construction}{\code{gtkWidget} is the equivalent of \code{\link{gtkWidgetNew}}.}
\section{Enums and Flags}{\describe{
\item{\code{enum GtkWidgetFlags}}{
Tells about certain properties of the widget.

\describe{
\item{\code{GTK_TOPLEVEL (toplevel)}}{        widgets without a real parent, as there are \code{\link{GtkWindow}}s and
        \code{\link{GtkMenu}}s have this flag set throughout their lifetime.
        Toplevel widgets always contain their own \code{\link{GdkWindow}}.}
\item{\code{GTK_NO_WINDOW (no-window)}}{        Indicative for a widget that does not provide its own \code{\link{GdkWindow}}. 
        Visible action (e.g. drawing) is performed on the parent's \code{\link{GdkWindow}}.}
\item{\code{GTK_REALIZED (realized)}}{        Set by \code{\link{gtkWidgetRealize}}, unset by \code{\link{gtkWidgetUnrealize}}.
        A realized widget has an associated \code{\link{GdkWindow}}.}
\item{\code{GTK_MAPPED (mapped)}}{        Set by \code{\link{gtkWidgetMap}}, unset by \code{\link{gtkWidgetUnmap}}.
        Only realized widgets can be mapped. It means that \code{\link{gdkWindowShow}} 
        has been called on the widgets window(s).}
\item{\code{GTK_VISIBLE (visible)}}{        Set by \code{\link{gtkWidgetShow}}, unset by \code{\link{gtkWidgetHide}}. Implies that a 
        widget will be mapped as soon as its parent is mapped.}
\item{\code{GTK_SENSITIVE (sensitive)}}{        Set and unset by \code{\link{gtkWidgetSetSensitive}}.
        The sensitivity of a widget determines whether it will receive
        certain events (e.g. button or key presses). One premise for
        the widget's sensitivity is to have this flag set.}
\item{\code{GTK_PARENT_SENSITIVE (parent-sensitive)}}{        Set and unset by \code{\link{gtkWidgetSetSensitive}} operations on the
        parents of the widget.
        This is the second premise for the widget's sensitivity. Once
        it has \code{GTK_SENSITIVE} and \code{GTK_PARENT_SENSITIVE} set, its state is
        effectively sensitive. This is expressed (and can be examined) by
        the \code{GTK_WIDGET_IS_SENSITIVE} function.}
\item{\code{GTK_CAN_FOCUS (can-focus)}}{        Determines whether a widget is able to handle focus grabs.}
\item{\code{GTK_HAS_FOCUS (has-focus)}}{        Set by \code{\link{gtkWidgetGrabFocus}} for widgets that also
        have \code{GTK_CAN_FOCUS} set. The flag will be unset once another widget
        grabs the focus.}
\item{\code{GTK_CAN_DEFAULT (can-default)}}{        The widget is allowed to receive the default action via 
        \code{\link{gtkWidgetGrabDefault}}.}
\item{\code{GTK_HAS_DEFAULT (has-default)}}{        The widget currently is receiving the default action.}
\item{\code{GTK_HAS_GRAB (has-grab)}}{        Set by \code{\link{gtkGrabAdd}}, unset by \code{\link{gtkGrabRemove}}. It means that the 
        widget is in the grab_widgets stack, and will be the preferred one for 
        receiving events other than ones of cosmetic value.}
\item{\code{GTK_RC_STYLE (rc-style)}}{        Indicates that the widget's style has been looked up through the rc 
        mechanism. It does not imply that the widget actually had a style 
        defined through the rc mechanism.}
\item{\code{GTK_COMPOSITE_CHILD (composite-child)}}{        Indicates that the widget is a composite child of its parent; see 
        \code{\link{gtkWidgetPushCompositeChild}}, \code{\link{gtkWidgetPopCompositeChild}}.}
\item{\code{GTK_NO_REPARENT (no-reparent)}}{	Unused since before GTK+ 1.2, will be removed in a future version.}
\item{\code{GTK_APP_PAINTABLE (app-paintable)}}{        Set and unset by \code{\link{gtkWidgetSetAppPaintable}}.
        Must be set on widgets whose window the application directly draws on, 
	in order to keep GTK+ from overwriting the drawn stuff.}
\item{\code{GTK_RECEIVES_DEFAULT (receives-default)}}{        The widget when focused will receive the default action and have 
        \code{GTK_HAS_DEFAULT} set even if there is a different widget set as default.}
\item{\code{GTK_DOUBLE_BUFFERED (double-buffered)}}{        Set and unset by \code{\link{gtkWidgetSetDoubleBuffered}}.
        Indicates that exposes done on the widget should be double-buffered.}
\item{\code{GTK_NO_SHOW_ALL (no-show-all)}}{\emph{undocumented
}}
}

}
\item{\code{enum GtkWidgetHelpType}}{


\describe{
\item{\code{GTK_WIDGET_HELP_TOOLTIP (tooltip)}}{\emph{undocumented
}}
\item{\code{GTK_WIDGET_HELP_WHATS_THIS (whats-this)}}{\emph{undocumented
}}
}

}
\item{\code{enum GtkTextDirection}}{


\describe{
\item{\code{GTK_TEXT_DIR_NONE (none)}}{\emph{undocumented
}}
\item{\code{GTK_TEXT_DIR_LTR (ltr)}}{\emph{undocumented
}}
\item{\code{GTK_TEXT_DIR_RTL (rtl)}}{\emph{undocumented
}}
}

}
}}
\section{User Functions}{\describe{\item{\code{GtkCallback(widget, data)}}{
The type of the callback functions used for e.g. iterating over
the children of a container, see \code{\link{gtkContainerForeach}}. 

\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the widget to operate on}
\item{\code{data}}{[R object] user-supplied data}
}

}}}
\section{Interfaces}{GtkWidget implements
 AtkImplementorIface.}
\section{Interface Derivations}{GtkWidget is required by
 \code{\link{GtkFileChooser}} and  \code{\link{GtkCellEditable}}.}
\section{Signals}{\describe{
\item{\code{accel-closures-changed(widget, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{button-press-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEventButton}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{button-release-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEventButton}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{can-activate-accel(widget, signal.id, returns, user.data)}}{
Determines whether an accelerator that activates the signal
identified by \code{signal.id} can currently be activated.
This signal is present to allow applications and derived
widgets to override the default \code{\link{GtkWidget}} handling
for determining whether an accelerator can be activated.  

\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the object which received the signal}
\item{\code{signal.id}}{[numeric]  the ID of a signal installed on \code{widget}}
\item{\code{returns}}{[R object]  \code{TRUE} if the signal can be activated.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

}
\item{\code{child-notify(widget, pspec, user.data)}}{
The ::child-notify signal is emitted for each child property that has 
changed on an object. The signal's detail holds the property name.  

\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the object which received the signal.}
\item{\code{pspec}}{[\code{\link{GParamSpec}}]  the \code{\link{GParamSpec}} of the changed child property.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{client-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEventClient}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{configure-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEventConfigure}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{delete-event(widget, event, user.data)}}{
The ::delete-event signal is emitted if a user requests that
a toplevel window is closed. The default handler for this signal
destroys the window. Connecting \code{\link{gtkWidgetHideOnDelete}} to
this signal will cause the window to be hidden instead, so that
it can later be shown again without reconstructing it.  

\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEvent}}]  the event which triggered this signal}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{destroy-event(widget, event, user.data)}}{
The ::destroy-event signal is emitted when a \code{\link{GdkWindow}} is destroyed.
You rarely get this signal, because most widgets disconnect themselves 
from their window before they destroy it, so no widget owns the 
window at destroy time.  

\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEvent}}]  the event which triggered this signal}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{direction-changed(widget, arg1, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTextDirection}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{drag-begin(widget, drag.context, user.data)}}{
The ::drag-begin signal is emitted on the drag source when a drag is started. 
A typical reason to connect to this signal is to set up a custom drag icon with
\code{\link{gtkDragSourceSetIcon}}.  

\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the object which received the signal.}
\item{\code{drag.context}}{[\code{\link{GdkDragContext}}]  the drag context}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{drag-data-delete(widget, drag.context, user.data)}}{
The ::drag-data-delete signal is emitted on the drag source when a drag with the action
\code{GDK_ACTION_MOVE} is successfully completed. The signal handler is responsible for deleting
the data that has been dropped. What "delete" means, depends on the context of the drag
operation.  

\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the object which received the signal.}
\item{\code{drag.context}}{[\code{\link{GdkDragContext}}]  the drag context}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{drag-data-get(widget, drag.context, data, info, time, user.data)}}{
The ::drag-data-get signal is emitted on the drag source when the drop site requests
the data which is dragged. It is the responsibility of the signal handler to fill \code{data}
with the data in the format which is indicated by \code{info}. See \code{\link{gtkSelectionDataSet}} and 
\code{\link{gtkSelectionDataSetText}}.  

\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the object which received the signal.}
\item{\code{drag.context}}{[\code{\link{GdkDragContext}}]  the drag context}
\item{\code{data}}{[\code{\link{GtkSelectionData}}]  the \code{\link{GtkSelectionData}} to be filled with the dragged data}
\item{\code{info}}{[numeric]  the info that has been registered with the target in the \code{\link{GtkTargetList}}.}
\item{\code{time}}{[numeric]  the timestamp at which the data was requested}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{drag-data-received(widget, drag.context, x, y, data, info, time, user.data)}}{
The ::drag-data-received signal is emitted on the drop site when the dragged data has been 
received. If the data was received in order to determine whether the drop will be accepted, 
the handler is expected to call \code{\link{gdkDragStatus}} and \emph{not} finish the drag. 
If the data was received in response to a ::drag-drop signal (and this is the last target to be 
received), the handler for this signal is expected to process the received data and then call 
\code{\link{gtkDragFinish}}, setting the \code{success} parameter depending on whether the data was processed 
successfully. 
  
The handler may inspect and modify \code{drag.context->action} before calling \code{\link{gtkDragFinish}}, 
e.g. to implement \code{GDK_ACTION_ASK} as shown in the following example:
\preformatted{
drag_data_received <- function(widget, drag_context, x, y, data, info, time)
{
  if ((data[["length"]] >= 0) && (data[["format"]] == 8))
    {
      if (drag_context[["action"]] == "ask") 
        {
          dialog <- gtkMessageDialog(NULL, c("modal", "destroy-with-parent"),
          				"info", "yes-no", "Move the data ?")
          response <- dialog$run()
          dialog$destroy()
		  
		  gtkDragFinish(drag_context, TRUE, response == "yes", time)
    } else gtkDragFinish(drag_context, FALSE, FALSE, time)
 }

}  

\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the object which received the signal.}
\item{\code{drag.context}}{[\code{\link{GdkDragContext}}]  the drag context}
\item{\code{x}}{[integer]  where the drop happened}
\item{\code{y}}{[integer]  where the drop happened}
\item{\code{data}}{[\code{\link{GtkSelectionData}}]  the received data}
\item{\code{info}}{[numeric]  the info that has been registered with the target in the \code{\link{GtkTargetList}}.}
\item{\code{time}}{[numeric]  the timestamp at which the data was received}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{drag-drop(widget, drag.context, x, y, time, returns, user.data)}}{
The ::drag-drop signal is emitted on the drop site when the user drops the data
onto the widget. The signal handler must determine whether the cursor position is in 
a drop zone or not. If it is not in a drop zone, it returns \code{FALSE} and no further 
processing is necessary. Otherwise, the handler returns \code{TRUE}. In this case, the handler 
must ensure that \code{\link{gtkDragFinish}} is called to let the source know that the drop is done.
The call to \code{\link{gtkDragFinish}} can be done either directly or in a ::drag-data-received handler
which gets triggered by calling \code{gtkDropGetData()} to receive the data for one or more of the 
supported targets.  

\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the object which received the signal.}
\item{\code{drag.context}}{[\code{\link{GdkDragContext}}]  the drag context}
\item{\code{x}}{[integer]  the x coordinate of the current cursor position}
\item{\code{y}}{[integer]  the y coordinate of the current cursor position}
\item{\code{time}}{[numeric]  the timestamp of the motion event}
\item{\code{returns}}{[R object]  whether the cursor position is in a drop zone}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

}
\item{\code{drag-end(widget, drag.context, user.data)}}{
The ::drag-end signal is emitted on the drag source when a drag is finished. 
A typical reason to connect to this signal is to undo things done in ::drag-begin.  

\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the object which received the signal.}
\item{\code{drag.context}}{[\code{\link{GdkDragContext}}]  the drag context}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{drag-leave(widget, drag.context, time, user.data)}}{
The ::drag-leave signal is emitted on the drop site when the cursor leaves the widget.
A typical reason to connect to this signal is to undo things done in ::drag-motion, e.g.
undo highlighting with \code{\link{gtkDragUnhighlight}}  

\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the object which received the signal.}
\item{\code{drag.context}}{[\code{\link{GdkDragContext}}]  the drag context}
\item{\code{time}}{[numeric]  the timestamp of the motion event}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{drag-motion(widget, drag.context, x, y, time, returns, user.data)}}{
The ::drag-motion signal is emitted on the drop site when the user moves the cursor over
the widget during a drag. The signal handler must determine whether the cursor position is in 
a drop zone or not. If it is not in a drop zone, it returns \code{FALSE} and no further processing is
necessary. Otherwise, the handler returns \code{TRUE}. In this case, the handler is responsible for
providing the necessary information for displaying feedback to the user, by calling
\code{\link{gdkDragStatus}}. If the decision whether the drop will be accepted or rejected can't be made
based solely on the cursor position and the type of the data, the handler may inspect the dragged 
data by calling \code{\link{gtkDragGetData}} and defer the \code{\link{gdkDragStatus}} call to the ::drag-data-received 
handler. 
  
Note that there is no ::drag-enter signal. The drag receiver has to keep track of whether
he has received any ::drag-motion signals since the last ::drag-leave and if not, treat the
::drag-motion signal as an "enter" signal. Upon an "enter", the handler will typically highlight 
the drop site with \code{\link{gtkDragHighlight}}.
  
\preformatted{
drag_motion <- function(widget, context, x, y, time)
{
  state <- widget$getData("drag-state")
  
  if (!state$drag_highlight) 
   {
     state$drag_highlight <- T
     gtkDragHighlight(widget)
   }
 
  target <- gtkDragDestFindTarget(widget, context, NULL)
  if (target == 0)
    gdkDragStatus(context, 0, time)
  else 
   {
     state$pending_status <- context[["suggestedAction"]]
     gtkDragGetData(widget, context, target, time)
   }
 
  widget$setData("drag-state", state)
  
  return(TRUE)
}
  
drag_data_received <- function(widget, context, x, y, selection_data, info, time)
{
  state <- widget$getData("drag-state")
  
  if (state$pending_status) 
   { 
     # We are getting this data due to a request in drag_motion,
     # rather than due to a request in drag_drop, so we are just
     # supposed to call gdk_drag_status(), not actually paste in the data.

     str <- gtkSelectionDataGetText(selection_data)
     if (!data_is_acceptable (str)) 
       gdkDragStatus(context, 0, time)
     else
       gdkDragStatus(context, state$pending_status, time)
	 
	 state$pending_status <- 0
   }
  else
   {
     # accept the drop
   }
   
   widget$setData("drag-state", state)
}
}  

\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the object which received the signal.}
\item{\code{drag.context}}{[\code{\link{GdkDragContext}}]  the drag context}
\item{\code{x}}{[integer]  the x coordinate of the current cursor position}
\item{\code{y}}{[integer]  the y coordinate of the current cursor position}
\item{\code{time}}{[numeric]  the timestamp of the motion event}
\item{\code{returns}}{[R object]  whether the cursor position is in a drop zone}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

}
\item{\code{enter-notify-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEventCrossing}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEvent}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{event-after(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEvent}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{expose-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEventExpose}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{focus(widget, arg1, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkDirectionType}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{focus-in-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEventFocus}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{focus-out-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEventFocus}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{grab-broken-event(widget, event, user.data)}}{
Emitted when a pointer or keyboard grab on a window belonging 
to \code{widget} gets broken. 
  
On X11, this happens when the grab window becomes unviewable 
(i.e. it or one of its ancestors is unmapped), or if the same 
application grabs the pointer or keyboard again.  

  Since  2.8

\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the object which received the signal}
\item{\code{event}}{[\code{\link{GdkEvent}}]  the \code{\link{GdkEventGrabBroken}} event}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{grab-focus(widget, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{grab-notify(widget, arg1, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{arg1}}{[logical] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{hide(widget, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{hierarchy-changed(widget, widget2, user.data)}}{
Emitted when there is a chance in the hierarchy to
which a widget belong. More precisely, a widget is
\dfn{anchored} when its toplevel
ancestor is a \code{\link{GtkWindow}}. This signal is emitted when 
a widget changes from un-anchored to anchored or vice-versa.

\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{widget2}}{[\code{\link{GtkWidget}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{key-press-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEventKey}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{key-release-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEventKey}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{leave-notify-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEventCrossing}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{map(widget, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{map-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEvent}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{mnemonic-activate(widget, arg1, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{arg1}}{[logical] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{motion-notify-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEventMotion}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{no-expose-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEventNoExpose}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{parent-set(widget, old.parent, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{old.parent}}{[\code{\link{GtkObject}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{popup-menu(widget, returns, user.data)}}{
This signal gets emitted whenever a widget should pop up a context-sensitive
menu.  This usually happens through the standard key binding mechanism; by
pressing a certain key while a widget is focused, the user can cause the
widget to pop up a menu.  For example, the \code{\link{GtkEntry}} widget creates a menu
with clipboard commands.  See  for an
example of how to use this signal.  

\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the object which received the signal}
\item{\code{returns}}{[R object]  TRUE if a menu was activated}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

}
\item{\code{property-notify-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEventProperty}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{proximity-in-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEventProximity}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{proximity-out-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEventProximity}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{realize(widget, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{screen-changed(widget, arg1, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GdkScreen}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{scroll-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEventScroll}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{selection-clear-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEventSelection}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{selection-get(widget, data, info, time, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{data}}{[\code{\link{GtkSelectionData}}] }
\item{\code{info}}{[numeric] }
\item{\code{time}}{[numeric] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{selection-notify-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEventSelection}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{selection-received(widget, data, time, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{data}}{[\code{\link{GtkSelectionData}}] }
\item{\code{time}}{[numeric] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{selection-request-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEventSelection}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{show(widget, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{show-help(widget, arg1, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkWidgetHelpType}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{size-allocate(widget, allocation, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{allocation}}{[\code{\link{GtkAllocation}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{size-request(widget, requisition, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{requisition}}{[\code{\link{GtkRequisition}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{state-changed(widget, state, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{state}}{[\code{\link{GtkStateType}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{style-set(widget, previous.style, user.data)}}{
The style-set signal is emitted when a new style has been set 
on a widget. Note that style-modifying functions like 
\code{\link{gtkWidgetModifyBase}} also cause this signal to be emitted.  

\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the object on which the signal is emitted}
\item{\code{previous.style}}{[\code{\link{GtkStyle}}]  the previous style, or \code{NULL} if the widget 
  just got its initial style }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{unmap(widget, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{unmap-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEvent}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{unrealize(widget, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{visibility-notify-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEventVisibility}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{window-state-event(widget, event, user.data)}}{


\describe{
\item{\code{widget}}{[\code{\link{GtkWidget}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEventWindowState}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\section{Properties}{\describe{
\item{\code{app-paintable} [logical : Read / Write]}{

Whether the application will paint directly on the widget.  Default value: FALSE

}
\item{\code{can-default} [logical : Read / Write]}{

Whether the widget can be the default widget.  Default value: FALSE

}
\item{\code{can-focus} [logical : Read / Write]}{

Whether the widget can accept the input focus.  Default value: FALSE

}
\item{\code{composite-child} [logical : Read]}{

Whether the widget is part of a composite widget.  Default value: FALSE

}
\item{\code{events} [\code{\link{GdkEventMask}} : Read / Write]}{

The event mask that decides what kind of GdkEvents this widget gets.  Default value: GDK_STRUCTURE_MASK

}
\item{\code{extension-events} [\code{\link{GdkExtensionMode}} : Read / Write]}{

The mask that decides what kind of extension events this widget gets.  Default value: GDK_EXTENSION_EVENTS_NONE

}
\item{\code{has-default} [logical : Read / Write]}{

Whether the widget is the default widget.  Default value: FALSE

}
\item{\code{has-focus} [logical : Read / Write]}{

Whether the widget has the input focus.  Default value: FALSE

}
\item{\code{height-request} [integer : Read / Write]}{

Override for height request of the widget, or -1 if natural request should be used.  Allowed values: >= -1  Default value: -1

}
\item{\code{is-focus} [logical : Read / Write]}{

Whether the widget is the focus widget within the toplevel.  Default value: FALSE

}
\item{\code{name} [character : Read / Write]}{

The name of the widget.  Default value: NULL

}
\item{\code{no-show-all} [logical : Read / Write]}{

Whether gtk_widget_show_all() should not affect this widget.  Default value: FALSE

}
\item{\code{parent} [\code{\link{GtkContainer}} : Read / Write]}{

The parent widget of this widget. Must be a Container widget.

}
\item{\code{receives-default} [logical : Read / Write]}{

If TRUE, the widget will receive the default action when it is focused.  Default value: FALSE

}
\item{\code{sensitive} [logical : Read / Write]}{

Whether the widget responds to input.  Default value: TRUE

}
\item{\code{style} [\code{\link{GtkStyle}} : Read / Write]}{

The style of the widget, which contains information about how it will look (colors etc).

}
\item{\code{visible} [logical : Read / Write]}{

Whether the widget is visible.  Default value: FALSE

}
\item{\code{width-request} [integer : Read / Write]}{

Override for width request of the widget, or -1 if natural request should be used.  Allowed values: >= -1  Default value: -1

}
}}
\section{Style Properties}{\describe{
\item{\code{cursor-aspect-ratio} [numeric : Read]}{

Aspect ratio with which to draw insertion cursor.  Allowed values: [0,1]  Default value: 0.04

}
\item{\code{cursor-color} [\code{\link{GdkColor}} : Read]}{

Color with which to draw insertion cursor.

}
\item{\code{draw-border} [\code{\link{GtkBorder}} : Read]}{

Size of areas outside the widget's allocation to draw.

}
\item{\code{focus-line-pattern} [character : Read]}{

Dash pattern used to draw the focus indicator.  Default value: "\001\001"

}
\item{\code{focus-line-width} [integer : Read]}{

Width, in pixels, of the focus indicator line.  Allowed values: >= 0  Default value: 1

}
\item{\code{focus-padding} [integer : Read]}{

Width, in pixels, between focus indicator and the widget 'box'.  Allowed values: >= 0  Default value: 1

}
\item{\code{interior-focus} [logical : Read]}{

Whether to draw the focus indicator inside widgets.  Default value: TRUE

}
\item{\code{secondary-cursor-color} [\code{\link{GdkColor}} : Read]}{

Color with which to draw the secondary insertion cursor when editing mixed right-to-left and left-to-right text.

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkWidget.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
