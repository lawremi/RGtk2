\alias{GtkWidget}
\alias{GtkWidgetClass}
\alias{GtkRequisition}
\alias{GtkAllocation}
\alias{GtkSelectionData}
\alias{gtkWidget}
\alias{GtkCallback}
\alias{GtkWidgetFlags}
\alias{GtkWidgetHelpType}
\alias{GtkTextDirection}
\name{GtkWidget}
\title{GtkWidget}
\description{Base class for all widgets}
\section{Methods and Functions}{
\code{\link{gtkWidgetNew}(type, ..., show = TRUE)}\cr
\code{\link{gtkWidgetDestroy}(object, ...)}\cr
\code{\link{gtkWidgetSet}(obj, ...)}\cr
\code{\link{gtkWidgetUnparent}(object)}\cr
\code{\link{gtkWidgetShow}(object)}\cr
\code{\link{gtkWidgetShowNow}(object)}\cr
\code{\link{gtkWidgetHide}(object)}\cr
\code{\link{gtkWidgetShowAll}(object)}\cr
\code{\link{gtkWidgetHideAll}(object)}\cr
\code{\link{gtkWidgetMap}(object)}\cr
\code{\link{gtkWidgetUnmap}(object)}\cr
\code{\link{gtkWidgetRealize}(object)}\cr
\code{\link{gtkWidgetUnrealize}(object)}\cr
\code{\link{gtkWidgetQueueDraw}(object)}\cr
\code{\link{gtkWidgetQueueResize}(object)}\cr
\code{\link{gtkWidgetQueueResizeNoRedraw}(object)}\cr
\code{\link{gtkWidgetDraw}(object, area)}\cr
\code{\link{gtkWidgetSizeRequest}(object)}\cr
\code{\link{gtkWidgetGetChildRequisition}(object)}\cr
\code{\link{gtkWidgetSizeAllocate}(object, allocation)}\cr
\code{\link{gtkWidgetAddAccelerator}(object, accel.signal, accel.group, accel.key, accel.mods, accel.flags)}\cr
\code{\link{gtkWidgetRemoveAccelerator}(object, accel.group, accel.key, accel.mods)}\cr
\code{\link{gtkWidgetSetAccelPath}(object, accel.path, accel.group)}\cr
\code{\link{gtkWidgetListAccelClosures}(object)}\cr
\code{\link{gtkWidgetCanActivateAccel}(object, signal.id)}\cr
\code{\link{gtkWidgetEvent}(object, event)}\cr
\code{\link{gtkWidgetActivate}(object)}\cr
\code{\link{gtkWidgetReparent}(object, new.parent)}\cr
\code{\link{gtkWidgetIntersect}(object, area, intersection)}\cr
\code{\link{gtkWidgetIsFocus}(object)}\cr
\code{\link{gtkWidgetGrabFocus}(object)}\cr
\code{\link{gtkWidgetGrabDefault}(object)}\cr
\code{\link{gtkWidgetSetName}(object, name)}\cr
\code{\link{gtkWidgetGetName}(object)}\cr
\code{\link{gtkWidgetSetState}(object, state)}\cr
\code{\link{gtkWidgetSetSensitive}(object, sensitive)}\cr
\code{\link{gtkWidgetSetParent}(object, parent)}\cr
\code{\link{gtkWidgetSetParentWindow}(object, parent.window)}\cr
\code{\link{gtkWidgetGetParentWindow}(object)}\cr
\code{\link{gtkWidgetSetUposition}(object, x, y)}\cr
\code{\link{gtkWidgetSetUsize}(object, width, height)}\cr
\code{\link{gtkWidgetSetEvents}(object, events)}\cr
\code{\link{gtkWidgetAddEvents}(object, events)}\cr
\code{\link{gtkWidgetSetExtensionEvents}(object, mode)}\cr
\code{\link{gtkWidgetGetExtensionEvents}(object)}\cr
\code{\link{gtkWidgetGetToplevel}(object)}\cr
\code{\link{gtkWidgetGetAncestor}(object, widget.type)}\cr
\code{\link{gtkWidgetGetColormap}(object)}\cr
\code{\link{gtkWidgetSetColormap}(object, colormap)}\cr
\code{\link{gtkWidgetGetVisual}(object)}\cr
\code{\link{gtkWidgetGetEvents}(object)}\cr
\code{\link{gtkWidgetGetPointer}(object)}\cr
\code{\link{gtkWidgetIsAncestor}(object, ancestor)}\cr
\code{\link{gtkWidgetTranslateCoordinates}(object, dest.widget, src.x, src.y)}\cr
\code{\link{gtkWidgetHideOnDelete}(object)}\cr
\code{\link{gtkWidgetSetStyle}(object, style = NULL)}\cr
\code{\link{gtkWidgetEnsureStyle}(object)}\cr
\code{\link{gtkWidgetGetStyle}(object)}\cr
\code{\link{gtkWidgetResetRcStyles}(object)}\cr
\code{\link{gtkWidgetPushColormap}(cmap)}\cr
\code{\link{gtkWidgetPopColormap}()}\cr
\code{\link{gtkWidgetSetDefaultColormap}(colormap)}\cr
\code{\link{gtkWidgetGetDefaultStyle}()}\cr
\code{\link{gtkWidgetGetDefaultColormap}()}\cr
\code{\link{gtkWidgetGetDefaultVisual}()}\cr
\code{\link{gtkWidgetSetDirection}(object, dir)}\cr
\code{\link{gtkWidgetGetDirection}(object)}\cr
\code{\link{gtkWidgetSetDefaultDirection}(dir)}\cr
\code{\link{gtkWidgetGetDefaultDirection}()}\cr
\code{\link{gtkWidgetShapeCombineMask}(object, shape.mask, offset.x, offset.y)}\cr
\code{\link{gtkWidgetInputShapeCombineMask}(object, shape.mask = NULL, offset.x, offset.y)}\cr
\code{\link{gtkWidgetPath}(object)}\cr
\code{\link{gtkWidgetClassPath}(object)}\cr
\code{\link{gtkWidgetGetCompositeName}(object)}\cr
\code{\link{gtkWidgetModifyStyle}(object, style)}\cr
\code{\link{gtkWidgetGetModifierStyle}(object)}\cr
\code{\link{gtkWidgetModifyFg}(object, state, color = NULL)}\cr
\code{\link{gtkWidgetModifyBg}(object, state, color = NULL)}\cr
\code{\link{gtkWidgetModifyText}(object, state, color = NULL)}\cr
\code{\link{gtkWidgetModifyBase}(object, state, color = NULL)}\cr
\code{\link{gtkWidgetModifyFont}(object, font.desc = NULL)}\cr
\code{\link{gtkWidgetModifyCursor}(object, primary, secondary)}\cr
\code{\link{gtkWidgetCreatePangoContext}(object)}\cr
\code{\link{gtkWidgetGetPangoContext}(object)}\cr
\code{\link{gtkWidgetCreatePangoLayout}(object, text)}\cr
\code{\link{gtkWidgetRenderIcon}(object, stock.id, size, detail = NULL)}\cr
\code{\link{gtkWidgetPopCompositeChild}()}\cr
\code{\link{gtkWidgetPushCompositeChild}()}\cr
\code{\link{gtkWidgetQueueClear}(object)}\cr
\code{\link{gtkWidgetQueueClearArea}(object, x, y, width, height)}\cr
\code{\link{gtkWidgetQueueDrawArea}(object, x, y, width, height)}\cr
\code{\link{gtkWidgetResetShapes}(object)}\cr
\code{\link{gtkWidgetSetAppPaintable}(object, app.paintable)}\cr
\code{\link{gtkWidgetSetDoubleBuffered}(object, double.buffered)}\cr
\code{\link{gtkWidgetSetRedrawOnAllocate}(object, redraw.on.allocate)}\cr
\code{\link{gtkWidgetSetCompositeName}(object, name)}\cr
\code{\link{gtkWidgetSetScrollAdjustments}(object, hadjustment = NULL, vadjustment = NULL)}\cr
\code{\link{gtkWidgetMnemonicActivate}(object, group.cycling)}\cr
\code{\link{gtkWidgetClassInstallStyleProperty}(klass, pspec)}\cr
\code{\link{gtkWidgetClassInstallStylePropertyParser}(klass, pspec, parser)}\cr
\code{\link{gtkWidgetClassFindStyleProperty}(klass, property.name)}\cr
\code{\link{gtkWidgetClassListStyleProperties}(klass)}\cr
\code{\link{gtkWidgetRegionIntersect}(object, region)}\cr
\code{\link{gtkWidgetSendExpose}(object, event)}\cr
\code{\link{gtkWidgetStyleGet}(object, ...)}\cr
\code{\link{gtkWidgetStyleGetProperty}(object, property.name)}\cr
\code{\link{gtkWidgetStyleAttach}(object)}\cr
\code{\link{gtkWidgetGetAccessible}(object)}\cr
\code{\link{gtkWidgetChildFocus}(object, direction)}\cr
\code{\link{gtkWidgetChildNotify}(object, child.property)}\cr
\code{\link{gtkWidgetFreezeChildNotify}(object)}\cr
\code{\link{gtkWidgetGetChildVisible}(object)}\cr
\code{\link{gtkWidgetGetParent}(object)}\cr
\code{\link{gtkWidgetGetSettings}(object)}\cr
\code{\link{gtkWidgetGetClipboard}(object, selection)}\cr
\code{\link{gtkWidgetGetDisplay}(object)}\cr
\code{\link{gtkWidgetGetRootWindow}(object)}\cr
\code{\link{gtkWidgetGetScreen}(object)}\cr
\code{\link{gtkWidgetHasScreen}(object)}\cr
\code{\link{gtkWidgetGetSizeRequest}(object)}\cr
\code{\link{gtkWidgetSetChildVisible}(object, is.visible)}\cr
\code{\link{gtkWidgetSetSizeRequest}(object, width, height)}\cr
\code{\link{gtkWidgetThawChildNotify}(object)}\cr
\code{\link{gtkWidgetSetNoShowAll}(object, no.show.all)}\cr
\code{\link{gtkWidgetGetNoShowAll}(object)}\cr
\code{\link{gtkWidgetListMnemonicLabels}(object)}\cr
\code{\link{gtkWidgetAddMnemonicLabel}(object, label)}\cr
\code{\link{gtkWidgetRemoveMnemonicLabel}(object, label)}\cr
\code{\link{gtkWidgetGetAction}(object)}\cr
\code{\link{gtkWidgetGetAction}(object)}\cr
\code{\link{gtkWidgetIsComposited}(object)}\cr
\code{\link{gtkWidgetErrorBell}(object)}\cr
\code{\link{gtkWidgetKeynavFailed}(object, direction)}\cr
\code{\link{gtkWidgetGetTooltipMarkup}(object)}\cr
\code{\link{gtkWidgetSetTooltipMarkup}(object, markup)}\cr
\code{\link{gtkWidgetGetTooltipText}(object)}\cr
\code{\link{gtkWidgetSetTooltipText}(object, text)}\cr
\code{\link{gtkWidgetGetTooltipWindow}(object)}\cr
\code{\link{gtkWidgetSetTooltipWindow}(object, custom.window)}\cr
\code{\link{gtkWidgetGetHasTooltip}(object)}\cr
\code{\link{gtkWidgetSetHasTooltip}(object, has.tooltip)}\cr
\code{\link{gtkWidgetTriggerTooltipQuery}(object)}\cr
\code{\link{gtkWidgetGetSnapshot}(object, clip.rect = NULL)}\cr
\code{\link{gtkWidgetGetWindow}(object)}\cr
\code{\link{gtkWidgetGetAllocation}(object)}\cr
\code{\link{gtkWidgetSetAllocation}(object, allocation)}\cr
\code{\link{gtkWidgetGetAppPaintable}(object)}\cr
\code{\link{gtkWidgetGetCanDefault}(object)}\cr
\code{\link{gtkWidgetSetCanDefault}(object, can.default)}\cr
\code{\link{gtkWidgetGetCanFocus}(object)}\cr
\code{\link{gtkWidgetSetCanFocus}(object, can.focus)}\cr
\code{\link{gtkWidgetGetDoubleBuffered}(object)}\cr
\code{\link{gtkWidgetGetHasWindow}(object)}\cr
\code{\link{gtkWidgetSetHasWindow}(object, has.window)}\cr
\code{\link{gtkWidgetGetSensitive}(object)}\cr
\code{\link{gtkWidgetIsSensitive}(object)}\cr
\code{\link{gtkWidgetGetState}(object)}\cr
\code{\link{gtkWidgetGetVisible}(object)}\cr
\code{\link{gtkWidgetSetVisible}(object, visible)}\cr
\code{\link{gtkWidgetHasDefault}(object)}\cr
\code{\link{gtkWidgetHasFocus}(object)}\cr
\code{\link{gtkWidgetHasGrab}(object)}\cr
\code{\link{gtkWidgetHasRcStyle}(object)}\cr
\code{\link{gtkWidgetIsDrawable}(object)}\cr
\code{\link{gtkWidgetIsToplevel}(object)}\cr
\code{\link{gtkWidgetSetWindow}(object, window)}\cr
\code{\link{gtkWidgetSetReceivesDefault}(object, receives.default)}\cr
\code{\link{gtkWidgetGetReceivesDefault}(object)}\cr
\code{\link{gtkWidgetSetRealized}(object, realized)}\cr
\code{\link{gtkWidgetGetRealized}(object)}\cr
\code{\link{gtkWidgetSetMapped}(object, mapped)}\cr
\code{\link{gtkWidgetGetMapped}(object)}\cr
\code{\link{gtkWidgetGetRequisition}(object)}\cr
\code{\link{gtkRequisitionCopy}(object)}\cr
\code{gtkWidget(type, ..., show = TRUE)}
}
\section{Hierarchy}{\preformatted{
GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                     +----GtkMisc
                     +----GtkCalendar
                     +----GtkCellView
                     +----GtkDrawingArea
                     +----GtkEntry
                     +----GtkRuler
                     +----GtkRange
                     +----GtkSeparator
                     +----GtkHSV
                     +----GtkInvisible
                     +----GtkOldEditable
                     +----GtkPreview
                     +----GtkProgress
GBoxed
   +----GtkRequisition
GBoxed
   +----GtkSelectionData
}}
\section{Interfaces}{GtkWidget implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Interface Derivations}{GtkWidget is required by
 \code{\link{GtkCellEditable}},  \code{\link{GtkFileChooser}} and  \code{\link{GtkToolShell}}.}
\section{Detailed Description}{GtkWidget is the base class all widgets in GTK+ derive from. It manages the
widget lifecycle, states and style.
  \code{GtkWidget} introduces \dfn{style
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
\code{gtkWidgetStyleGetValist()} to obtain the value of a style property.

 \emph{GtkWidget as GtkBuildable}
The GtkWidget implementation of the GtkBuildable interface supports a
custom <accelerator> element, which has attributes named key,
modifiers and signal and allows to specify accelerators.

 \emph{A UI definition fragment specifying an accelerator}\preformatted{<object class="GtkButton">
  <accelerator key="q" modifiers="GDK_CONTROL_MASK" signal="clicked"/>
</object>
}
In addition to accelerators, \code{GtkWidget} also support a
custom <accessible> element, which supports actions and relations.
Properties on the accessible implementation of an object can be set by accessing the
internal child "accessible" of a \code{GtkWidget}.

 \emph{A UI definition fragment specifying an accessible}\preformatted{<object class="GtkButton" id="label1"/>
  <property name="label">I am a Label for a Button</property>
</object>
<object class="GtkButton" id="button1">
  <accessibility>
    <action action_name="click" translatable="yes">Click the button.</action>
    <relation target="label1" type="labelled-by"/>
  </accessibility>
  <child internal-child="accessible">
    <object class="AtkObject" id="a11y-button1">
      <property name="AtkObject::name">Clickable Button</property>
    </object>
  </child>
</object>
}}
\section{Structures}{\describe{
\item{\verb{GtkWidget}}{
\emph{undocumented
}

\describe{
\item{\verb{style}}{[\code{\link{GtkStyle}}] }
\item{\verb{requisition}}{[\code{\link{GtkRequisition}}] }
\item{\verb{allocation}}{[\code{\link{GtkAllocation}}] }
\item{\verb{window}}{[\code{\link{GdkWindow}}] }
\item{\verb{parent}}{[\code{\link{GtkWidget}}] }
}

}
\item{\verb{GtkWidgetClass}}{
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
\item{\verb{GtkRequisition}}{
A \code{GtkRequisition} represents the desired size of a widget. See
 for more information.

\describe{
\item{\verb{width}}{[integer] the widget's desired width}
\item{\verb{height}}{[integer] the widget's desired height}
}

}
\item{\verb{GtkAllocation}}{
A \code{GtkAllocation} of a widget represents region which has been allocated to the
widget by its parent. It is a subregion of its parents allocation. See
 for more information.
\strong{\verb{GtkAllocation} is a \link{transparent-type}.}

\describe{
\item{\code{x}}{the X position of the widget's area relative to its parents allocation.}
\item{\code{y}}{the Y position of the widget's area relative to its parents allocation.}
\item{\code{width}}{the width of the widget's allocated area.}
\item{\code{height}}{the height of the widget's allocated area.}
}

}
\item{\verb{GtkSelectionData}}{
\emph{undocumented
}

\describe{
\item{\verb{selection}}{[\code{\link{GdkAtom}}] }
\item{\verb{target}}{[\code{\link{GdkAtom}}] }
\item{\verb{type}}{[\code{\link{GdkAtom}}] }
\item{\verb{format}}{[integer] }
\item{\verb{data}}{[raw] }
}

}
}}
\section{Convenient Construction}{\code{gtkWidget} is the equivalent of \code{\link{gtkWidgetNew}}.}
\section{Enums and Flags}{\describe{
\item{\verb{GtkWidgetFlags}}{
Tells about certain properties of the widget.

\describe{
\item{\verb{toplevel}}{widgets without a real parent, as there are \code{\link{GtkWindow}}s and
 \code{\link{GtkMenu}}s have this flag set throughout their lifetime.
 Toplevel widgets always contain their own \code{\link{GdkWindow}}.}
\item{\verb{no-window}}{Indicative for a widget that does not provide its own \code{\link{GdkWindow}}.
 Visible action (e.g. drawing) is performed on the parent's \code{\link{GdkWindow}}.}
\item{\verb{realized}}{Set by \code{\link{gtkWidgetRealize}}, unset by \code{\link{gtkWidgetUnrealize}}.
 A realized widget has an associated \code{\link{GdkWindow}}.}
\item{\verb{mapped}}{Set by \code{\link{gtkWidgetMap}}, unset by \code{\link{gtkWidgetUnmap}}.
 Only realized widgets can be mapped. It means that \code{\link{gdkWindowShow}}
 has been called on the widgets window(s).}
\item{\verb{visible}}{Set by \code{\link{gtkWidgetShow}}, unset by \code{\link{gtkWidgetHide}}. Implies that a
 widget will be mapped as soon as its parent is mapped.}
\item{\verb{sensitive}}{Set and unset by \code{\link{gtkWidgetSetSensitive}}.
 The sensitivity of a widget determines whether it will receive
 certain events (e.g. button or key presses). One premise for
 the widget's sensitivity is to have this flag set.}
\item{\verb{parent-sensitive}}{Set and unset by \code{\link{gtkWidgetSetSensitive}} operations on the
 parents of the widget.
 This is the second premise for the widget's sensitivity. Once
 it has \code{GTK_SENSITIVE} and \code{GTK_PARENT_SENSITIVE} set, its state is
 effectively sensitive. This is expressed (and can be examined) by
 the \verb{GTK_WIDGET_IS_SENSITIVE} function.}
\item{\verb{can-focus}}{Determines whether a widget is able to handle focus grabs.}
\item{\verb{has-focus}}{Set by \code{\link{gtkWidgetGrabFocus}} for widgets that also
 have \code{GTK_CAN_FOCUS} set. The flag will be unset once another widget
 grabs the focus.}
\item{\verb{can-default}}{The widget is allowed to receive the default action via
 \code{\link{gtkWidgetGrabDefault}} and will reserve space to draw the default if possible}
\item{\verb{has-default}}{The widget currently is receiving the default action and
 should be drawn appropriately if possible}
\item{\verb{has-grab}}{Set by \code{\link{gtkGrabAdd}}, unset by \code{\link{gtkGrabRemove}}. It means that the
 widget is in the grab_widgets stack, and will be the preferred one for
 receiving events other than ones of cosmetic value.}
\item{\verb{rc-style}}{Indicates that the widget's style has been looked up through the rc
 mechanism. It does not imply that the widget actually had a style
 defined through the rc mechanism.}
\item{\verb{composite-child}}{Indicates that the widget is a composite child of its parent; see
 \code{\link{gtkWidgetPushCompositeChild}}, \code{\link{gtkWidgetPopCompositeChild}}.}
\item{\verb{no-reparent}}{Unused since before GTK+ 1.2, will be removed in a future version.}
\item{\verb{app-paintable}}{Set and unset by \code{\link{gtkWidgetSetAppPaintable}}.
 Must be set on widgets whose window the application directly draws on,
 in order to keep GTK+ from overwriting the drawn stuff.  See
  for a detailed
 description of this flag.}
\item{\verb{receives-default}}{The widget when focused will receive the default action and have
 \code{GTK_HAS_DEFAULT} set even if there is a different widget set as default.}
\item{\verb{double-buffered}}{Set and unset by \code{\link{gtkWidgetSetDoubleBuffered}}.
 Indicates that exposes done on the widget should be
 double-buffered.  See  for a
 detailed discussion of how double-buffering works in GTK+ and
 why you may want to disable it for special cases.}
\item{\verb{no-show-all}}{\emph{undocumented
}}
}

}
\item{\verb{GtkWidgetHelpType}}{
\emph{undocumented
}

\describe{
\item{\verb{tooltip}}{\emph{undocumented
}}
\item{\verb{whats-this}}{\emph{undocumented
}}
}

}
\item{\verb{GtkTextDirection}}{
\emph{undocumented
}

\describe{
\item{\verb{none}}{\emph{undocumented
}}
\item{\verb{ltr}}{\emph{undocumented
}}
\item{\verb{rtl}}{\emph{undocumented
}}
}

}
}}
\section{User Functions}{\describe{\item{\code{GtkCallback(widget, data)}}{
The type of the callback functions used for e.g. iterating over
the children of a container, see \code{\link{gtkContainerForeach}}.

\describe{
\item{\code{widget}}{the widget to operate on}
\item{\code{data}}{user-supplied data}
}


}}}
\section{Signals}{\describe{
\item{\code{accel-closures-changed(widget, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{button-press-event(widget, event, user.data)}}{
The ::button-press-event signal will be emitted when a button
(typically from a mouse) is pressed.
  
To receive this signal, the \code{\link{GdkWindow}} associated to the
widget needs to enable the \verb{GDK_BUTTON_PRESS_MASK} mask.
  
This signal will be sent to the grab widget if there is one.

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{event}}{the \code{\link{GdkEventButton}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{button-release-event(widget, event, user.data)}}{
The ::button-release-event signal will be emitted when a button
(typically from a mouse) is released.
  
To receive this signal, the \code{\link{GdkWindow}} associated to the
widget needs to enable the \verb{GDK_BUTTON_RELEASE_MASK} mask.
  
This signal will be sent to the grab widget if there is one.

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{event}}{the \code{\link{GdkEventButton}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{can-activate-accel(widget, signal.id, user.data)}}{
Determines whether an accelerator that activates the signal
identified by \code{signal.id} can currently be activated.
This signal is present to allow applications and derived
widgets to override the default \code{\link{GtkWidget}} handling
for determining whether an accelerator can be activated.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{signal.id}}{the ID of a signal installed on \code{widget}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} if the signal can be activated.

}
\item{\code{child-notify(widget, pspec, user.data)}}{
The ::child-notify signal is emitted for each
child property  that has
changed on an object. The signal's detail holds the property name.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{pspec}}{the \code{\link{GParamSpec}} of the changed child property}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{client-event(widget, event, user.data)}}{
The ::client-event will be emitted when the \code{widget}'s window
receives a message (via a ClientMessage event) from another
application.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{event}}{the \code{\link{GdkEventClient}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for
the event. \code{FALSE} to propagate the event further.

}
\item{\code{composited-changed(widget, user.data)}}{
The ::composited-changed signal is emitted when the composited
status of \code{widget}s screen changes.
See \code{\link{gdkScreenIsComposited}}.

\describe{
\item{\code{widget}}{the object on which the signal is emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{configure-event(widget, event, user.data)}}{
The ::configure-event signal will be emitted when the size, position or
stacking of the \code{widget}'s window has changed.
  
To receive this signal, the \code{\link{GdkWindow}} associated to the widget needs
to enable the \verb{GDK_STRUCTURE_MASK} mask. GDK will enable this mask
automatically for all new windows.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{event}}{the \code{\link{GdkEventConfigure}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{damage-event(widget, event, user.data)}}{
Emitted when a redirected window belonging to \code{widget} gets drawn into.
The region/area members of the event shows what area of the redirected
drawable was drawn into.
  Since 2.14

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{event}}{the \code{\link{GdkEventExpose}} event}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{delete-event(widget, event, user.data)}}{
The ::delete-event signal is emitted if a user requests that
a toplevel window is closed. The default handler for this signal
destroys the window. Connecting \code{\link{gtkWidgetHideOnDelete}} to
this signal will cause the window to be hidden instead, so that
it can later be shown again without reconstructing it.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{event}}{the event which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{destroy-event(widget, event, user.data)}}{
The ::destroy-event signal is emitted when a \code{\link{GdkWindow}} is destroyed.
You rarely get this signal, because most widgets disconnect themselves
from their window before they destroy it, so no widget owns the
window at destroy time.
  
To receive this signal, the \code{\link{GdkWindow}} associated to the widget needs
to enable the \verb{GDK_STRUCTURE_MASK} mask. GDK will enable this mask
automatically for all new windows.

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{event}}{the event which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{direction-changed(widget, previous.direction, user.data)}}{
The ::direction-changed signal is emitted when the text direction
of a widget changes.

\describe{
\item{\code{widget}}{the object on which the signal is emitted}
\item{\code{previous.direction}}{the previous text direction of \code{widget}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{drag-begin(widget, drag.context, user.data)}}{
The ::drag-begin signal is emitted on the drag source when a drag is
started. A typical reason to connect to this signal is to set up a
custom drag icon with \code{\link{gtkDragSourceSetIcon}}.
  
Note that some widgets set up a drag icon in the default handler of
this signal, so you may have to use \code{gSignalConnectAfter()} to
override what the default handler did.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{drag.context}}{the drag context}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{drag-data-delete(widget, drag.context, user.data)}}{
The ::drag-data-delete signal is emitted on the drag source when a drag
with the action \code{GDK_ACTION_MOVE} is successfully completed. The signal
handler is responsible for deleting the data that has been dropped. What
"delete" means depends on the context of the drag operation.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{drag.context}}{the drag context}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{drag-data-get(widget, drag.context, data, info, time, user.data)}}{
The ::drag-data-get signal is emitted on the drag source when the drop
site requests the data which is dragged. It is the responsibility of
the signal handler to fill \code{data} with the data in the format which
is indicated by \code{info}. See \code{\link{gtkSelectionDataSet}} and
\code{\link{gtkSelectionDataSetText}}.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{drag.context}}{the drag context}
\item{\code{data}}{the \code{\link{GtkSelectionData}} to be filled with the dragged data}
\item{\code{info}}{the info that has been registered with the target in the
\code{\link{GtkTargetList}}}
\item{\code{time}}{the timestamp at which the data was requested}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{drag-data-received(widget, drag.context, x, y, data, info, time, user.data)}}{
The ::drag-data-received signal is emitted on the drop site when the
dragged data has been received. If the data was received in order to
determine whether the drop will be accepted, the handler is expected
to call \code{\link{gdkDragStatus}} and \emph{not} finish the drag.
If the data was received in response to a \verb{"drag-drop"} signal
(and this is the last target to be received), the handler for this
signal is expected to process the received data and then call
\code{\link{gtkDragFinish}}, setting the \code{success} parameter depending on whether
the data was processed successfully.
  
The handler may inspect and modify \code{drag.context->action} before calling
\code{\link{gtkDragFinish}}, e.g. to implement \code{GDK_ACTION_ASK} as shown in the
following example:
\preformatted{
drag_data_received <- function(widget, drag_context, x, y, data, info, time)
{
  if (data$getLength() > 0L)
    {
      if (drag_context$getAction() == "ask")
        {
          dialog <- gtkMessageDialog(NULL,
                                     c("modal", "destroy-with-parent"),
                                     "info", "yes-no", "Move the data ?\n")
          response <- dialog$run()
          dialog$destroy()

### FIXME: setAction() not yet supported
          if (response == GtkResponseType["yes"])
            drag_context$setAction("move")
          else
            drag_context$setAction("copy")
        }

      gtkDragFinish(drag_context, TRUE, FALSE, time)
    }

  gtkDragFinish (drag_context, FALSE, FALSE, time)
}
}

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{drag.context}}{the drag context}
\item{\code{x}}{where the drop happened}
\item{\code{y}}{where the drop happened}
\item{\code{data}}{the received data}
\item{\code{info}}{the info that has been registered with the target in the
\code{\link{GtkTargetList}}}
\item{\code{time}}{the timestamp at which the data was received}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{drag-drop(widget, drag.context, x, y, time, returns, user.data)}}{
The ::drag-drop signal is emitted on the drop site when the user drops
the data onto the widget. The signal handler must determine whether
the cursor position is in a drop zone or not. If it is not in a drop
zone, it returns \code{FALSE} and no further processing is necessary.
Otherwise, the handler returns \code{TRUE}. In this case, the handler must
ensure that \code{\link{gtkDragFinish}} is called to let the source know that
the drop is done. The call to \code{\link{gtkDragFinish}} can be done either
directly or in a \verb{"drag-data-received"} handler which gets
triggered by calling \code{\link{gtkDragGetData}} to receive the data for one
or more of the supported targets.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{drag.context}}{the drag context}
\item{\code{x}}{the x coordinate of the current cursor position}
\item{\code{y}}{the y coordinate of the current cursor position}
\item{\code{time}}{the timestamp of the motion event}
\item{\code{returns}}{whether the cursor position is in a drop zone}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{drag-end(widget, drag.context, user.data)}}{
The ::drag-end signal is emitted on the drag source when a drag is
finished.  A typical reason to connect to this signal is to undo
things done in \verb{"drag-begin"}.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{drag.context}}{the drag context}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{drag-failed(widget, drag.context, result, user.data)}}{
The ::drag-failed signal is emitted on the drag source when a drag has
failed. The signal handler may hook custom code to handle a failed DND
operation based on the type of error, it returns \code{TRUE} is the failure has
been already handled (not showing the default "drag operation failed"
animation), otherwise it returns \code{FALSE}.
  Since 2.12

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{drag.context}}{the drag context}
\item{\code{result}}{the result of the drag operation}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} if the failed drag operation has been already handled.

}
\item{\code{drag-leave(widget, drag.context, time, user.data)}}{
The ::drag-leave signal is emitted on the drop site when the cursor
leaves the widget. A typical reason to connect to this signal is to
undo things done in \verb{"drag-motion"}, e.g. undo highlighting
with \code{\link{gtkDragUnhighlight}}

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{drag.context}}{the drag context}
\item{\code{time}}{the timestamp of the motion event}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{drag-motion(widget, drag.context, x, y, time, returns, user.data)}}{
The drag-motion signal is emitted on the drop site when the user
moves the cursor over the widget during a drag. The signal handler
must determine whether the cursor position is in a drop zone or not.
If it is not in a drop zone, it returns \code{FALSE} and no further processing
is necessary. Otherwise, the handler returns \code{TRUE}. In this case, the
handler is responsible for providing the necessary information for
displaying feedback to the user, by calling \code{\link{gdkDragStatus}}.
  
If the decision whether the drop will be accepted or rejected can't be
made based solely on the cursor position and the type of the data, the
handler may inspect the dragged data by calling \code{\link{gtkDragGetData}} and
defer the \code{\link{gdkDragStatus}} call to the \verb{"drag-data-received"}
handler. Note that you cannot not pass \verb{GTK_DEST_DEFAULT_DROP},
\verb{GTK_DEST_DEFAULT_MOTION} or \verb{GTK_DEST_DEFAULT_ALL} to \code{\link{gtkDragDestSet}}
when using the drag-motion signal that way.
  
Also note that there is no drag-enter signal. The drag receiver has to
keep track of whether he has received any drag-motion signals since the
last \verb{"drag-leave"} and if not, treat the drag-motion signal as
an "enter" signal. Upon an "enter", the handler will typically highlight
the drop site with \code{\link{gtkDragHighlight}}.
\preformatted{
drag_motion <- function(widget, context, x, y, time)
{
  state <- widget$getData("drag-state")
  
  if (!state$drag_highlight) {
    state$drag_highlight <- T
    gtkDragHighlight(widget)
  }
  
  target <- gtkDragDestFindTarget(widget, context, NULL)
  if (target == 0)
    gdkDragStatus(context, 0, time)
  else {
    state$pending_status <- context[["suggestedAction"]]
    gtkDragGetData(widget, context, target, time)
  }
  
  widget$setData("drag-state", state)
  
  return(TRUE)
}

drag_data_received <- function(widget, context, x, y, selection_data, info,
                               time)
{
  state <- widget$getData("drag-state")
  
  if (state$pending_status) { 
    ## We are getting this data due to a request in drag_motion,
    ## rather than due to a request in drag_drop, so we are just
    ## supposed to call gdk_drag_status(), not actually paste in the data.

    str <- gtkSelectionDataGetText(selection_data)
    if (!data_is_acceptable (str)) 
      gdkDragStatus(context, 0, time)
    else
      gdkDragStatus(context, state$pending_status, time)
    
    state$pending_status <- 0
  }
  else {
    ## accept the drop
  }
  
  widget$setData("drag-state", state)
}
}

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{drag.context}}{the drag context}
\item{\code{x}}{the x coordinate of the current cursor position}
\item{\code{y}}{the y coordinate of the current cursor position}
\item{\code{time}}{the timestamp of the motion event}
\item{\code{returns}}{whether the cursor position is in a drop zone}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{enter-notify-event(widget, event, user.data)}}{
The ::enter-notify-event will be emitted when the pointer enters
the \code{widget}'s window.
  
To receive this signal, the \code{\link{GdkWindow}} associated to the widget needs
to enable the \verb{GDK_ENTER_NOTIFY_MASK} mask.
  
This signal will be sent to the grab widget if there is one.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{event}}{the \code{\link{GdkEventCrossing}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{event(widget, event, user.data)}}{
The GTK+ main loop will emit three signals for each GDK event delivered
to a widget: one generic ::event signal, another, more specific,
signal that matches the type of event delivered (e.g.
\verb{"key-press-event"}) and finally a generic
\verb{"event-after"} signal.

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{event}}{the \code{\link{GdkEvent}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event
and to cancel the emission of the second specific ::event signal.
\code{FALSE} to propagate the event further and to allow the emission of
the second signal. The ::event-after signal is emitted regardless of
the return value.

}
\item{\code{event-after(widget, event, user.data)}}{
After the emission of the \code{\link{gtkWidgetEvent}} signal and (optionally)
the second more specific signal, ::event-after will be emitted
regardless of the previous two signals handlers return values.

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{event}}{the \code{\link{GdkEvent}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{expose-event(widget, event, user.data)}}{
The ::expose-event signal is emitted when an area of a previously
obscured \code{\link{GdkWindow}} is made visible and needs to be redrawn.
\verb{GTK_NO_WINDOW} widgets will get a synthesized event from their parent
widget.
  
To receive this signal, the \code{\link{GdkWindow}} associated to the widget needs
to enable the \verb{GDK_EXPOSURE_MASK} mask.

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{event}}{the \code{\link{GdkEventExpose}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{focus(widget, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event. \code{FALSE} to propagate the event further.

}
\item{\code{focus-in-event(widget, event, user.data)}}{
The ::focus-in-event signal will be emitted when the keyboard focus
enters the \code{widget}'s window.
  
To receive this signal, the \code{\link{GdkWindow}} associated to the widget needs
to enable the \verb{GDK_FOCUS_CHANGE_MASK} mask.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{event}}{the \code{\link{GdkEventFocus}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{focus-out-event(widget, event, user.data)}}{
The ::focus-out-event signal will be emitted when the keyboard focus
leaves the \code{widget}'s window.
  
To receive this signal, the \code{\link{GdkWindow}} associated to the widget needs
to enable the \verb{GDK_FOCUS_CHANGE_MASK} mask.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{event}}{the \code{\link{GdkEventFocus}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{grab-broken-event(widget, event, user.data)}}{
Emitted when a pointer or keyboard grab on a window belonging
to \code{widget} gets broken.
  
On X11, this happens when the grab window becomes unviewable
(i.e. it or one of its ancestors is unmapped), or if the same
application grabs the pointer or keyboard again.
  Since 2.8

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{event}}{the \code{\link{GdkEventGrabBroken}} event}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for
the event. \code{FALSE} to propagate the event further.

}
\item{\code{grab-focus(widget, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{grab-notify(widget, was.grabbed, user.data)}}{
The ::grab-notify signal is emitted when a widget becomes
shadowed by a GTK+ grab (not a pointer or keyboard grab) on
another widget, or when it becomes unshadowed due to a grab
being removed.
  
A widget is shadowed by a \code{\link{gtkGrabAdd}} when the topmost
grab widget in the grab stack of its window group is not
its ancestor.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{was.grabbed}}{\code{FALSE} if the widget becomes shadowed, \code{TRUE}
if it becomes unshadowed}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{hide(widget, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{hierarchy-changed(widget, previous.toplevel, user.data)}}{
The ::hierarchy-changed signal is emitted when the
anchored state of a widget changes. A widget is
\dfn{anchored} when its toplevel
ancestor is a \code{\link{GtkWindow}}. This signal is emitted when
a widget changes from un-anchored to anchored or vice-versa.

\describe{
\item{\code{widget}}{the object on which the signal is emitted}
\item{\code{previous.toplevel}}{the previous toplevel ancestor, or \code{NULL}
if the widget was previously unanchored. \emph{[  \acronym{allow-none}  ]}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{key-press-event(widget, event, user.data)}}{
The ::key-press-event signal is emitted when a key is pressed.
  
To receive this signal, the \code{\link{GdkWindow}} associated to the widget needs
to enable the \verb{GDK_KEY_PRESS_MASK} mask.
  
This signal will be sent to the grab widget if there is one.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{event}}{the \code{\link{GdkEventKey}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{key-release-event(widget, event, user.data)}}{
The ::key-release-event signal is emitted when a key is pressed.
  
To receive this signal, the \code{\link{GdkWindow}} associated to the widget needs
to enable the \verb{GDK_KEY_RELEASE_MASK} mask.
  
This signal will be sent to the grab widget if there is one.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{event}}{the \code{\link{GdkEventKey}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{keynav-failed(widget, direction, user.data)}}{
Gets emitted if keyboard navigation fails.
See \code{\link{gtkWidgetKeynavFailed}} for details.
  Since 2.12

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{direction}}{the direction of movement}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} if stopping keyboard navigation is fine, \code{FALSE}
if the emitting widget should try to handle the keyboard
navigation attempt in its parent container(s).

}
\item{\code{leave-notify-event(widget, event, user.data)}}{
The ::leave-notify-event will be emitted when the pointer leaves
the \code{widget}'s window.
  
To receive this signal, the \code{\link{GdkWindow}} associated to the widget needs
to enable the \verb{GDK_LEAVE_NOTIFY_MASK} mask.
  
This signal will be sent to the grab widget if there is one.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{event}}{the \code{\link{GdkEventCrossing}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{map(widget, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{map-event(widget, event, user.data)}}{
The ::map-event signal will be emitted when the \code{widget}'s window is
mapped. A window is mapped when it becomes visible on the screen.
  
To receive this signal, the \code{\link{GdkWindow}} associated to the widget needs
to enable the \verb{GDK_STRUCTURE_MASK} mask. GDK will enable this mask
automatically for all new windows.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{event}}{the \code{\link{GdkEventAny}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{mnemonic-activate(widget, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{motion-notify-event(widget, event, user.data)}}{
The ::motion-notify-event signal is emitted when the pointer moves
over the widget's \code{\link{GdkWindow}}.
  
To receive this signal, the \code{\link{GdkWindow}} associated to the widget
needs to enable the \verb{GDK_POINTER_MOTION_MASK} mask.
  
This signal will be sent to the grab widget if there is one.

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{event}}{the \code{\link{GdkEventMotion}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{move-focus(widget, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{no-expose-event(widget, event, user.data)}}{
The ::no-expose-event will be emitted when the \code{widget}'s window is
drawn as a copy of another \code{\link{GdkDrawable}} (with \code{\link{gdkDrawDrawable}} or
\code{gdkWindowCopyArea()}) which was completely unobscured. If the source
window was partially obscured \code{\link{GdkEventExpose}} events will be generated
for those areas.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{event}}{the \code{\link{GdkEventNoExpose}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{parent-set(widget, old.parent, user.data)}}{
The ::parent-set signal is emitted when a new parent
has been set on a widget.

\describe{
\item{\code{widget}}{the object on which the signal is emitted}
\item{\code{old.parent}}{the previous parent, or \code{NULL} if the widget
just got its initial parent. \emph{[  \acronym{allow-none}  ]}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{popup-menu(widget, user.data)}}{
This signal gets emitted whenever a widget should pop up a context
menu. This usually happens through the standard key binding mechanism;
by pressing a certain key while a widget is focused, the user can cause
the widget to pop up a menu.  For example, the \code{\link{GtkEntry}} widget creates
a menu with clipboard commands. See 
for an example of how to use this signal.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} if a menu was activated

}
\item{\code{property-notify-event(widget, event, user.data)}}{
The ::property-notify-event signal will be emitted when a property on
the \code{widget}'s window has been changed or deleted.
  
To receive this signal, the \code{\link{GdkWindow}} associated to the widget needs
to enable the \verb{GDK_PROPERTY_CHANGE_MASK} mask.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{event}}{the \code{\link{GdkEventProperty}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{proximity-in-event(widget, event, user.data)}}{
To receive this signal the \code{\link{GdkWindow}} associated to the widget needs
to enable the \verb{GDK_PROXIMITY_IN_MASK} mask.
  
This signal will be sent to the grab widget if there is one.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{event}}{the \code{\link{GdkEventProximity}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{proximity-out-event(widget, event, user.data)}}{
To receive this signal the \code{\link{GdkWindow}} associated to the widget needs
to enable the \verb{GDK_PROXIMITY_OUT_MASK} mask.
  
This signal will be sent to the grab widget if there is one.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{event}}{the \code{\link{GdkEventProximity}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{query-tooltip(widget, x, y, keyboard.mode, tooltip, user.data)}}{
Emitted when \verb{"has-tooltip"} is \code{TRUE} and the \verb{"gtk-tooltip-timeout"}
has expired with the cursor hovering "above" \code{widget}; or emitted when \code{widget} got
focus in keyboard mode.
  
Using the given coordinates, the signal handler should determine
whether a tooltip should be shown for \code{widget}. If this is the case
\code{TRUE} should be returned, \code{FALSE} otherwise.  Note that if
\code{keyboard.mode} is \code{TRUE}, the values of \code{x} and \code{y} are undefined and
should not be used.
  
The signal handler is free to manipulate \code{tooltip} with the therefore
destined function calls.
  Since 2.12

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{x}}{the x coordinate of the cursor position where the request has
been emitted, relative to \code{widget->window}}
\item{\code{y}}{the y coordinate of the cursor position where the request has
been emitted, relative to \code{widget->window}}
\item{\code{keyboard.mode}}{\code{TRUE} if the tooltip was trigged using the keyboard}
\item{\code{tooltip}}{a \code{\link{GtkTooltip}}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} if \code{tooltip} should be shown right now, \code{FALSE} otherwise.

}
\item{\code{realize(widget, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{screen-changed(widget, previous.screen, user.data)}}{
The ::screen-changed signal gets emitted when the
screen of a widget has changed.

\describe{
\item{\code{widget}}{the object on which the signal is emitted}
\item{\code{previous.screen}}{the previous screen, or \code{NULL} if the
widget was not associated with a screen before. \emph{[  \acronym{allow-none}  ]}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{scroll-event(widget, event, user.data)}}{
The ::scroll-event signal is emitted when a button in the 4 to 7
range is pressed. Wheel mice are usually configured to generate
button press events for buttons 4 and 5 when the wheel is turned.
  
To receive this signal, the \code{\link{GdkWindow}} associated to the widget needs
to enable the \verb{GDK_BUTTON_PRESS_MASK} mask.
  
This signal will be sent to the grab widget if there is one.

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{event}}{the \code{\link{GdkEventScroll}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{selection-clear-event(widget, event, user.data)}}{
The ::selection-clear-event signal will be emitted when the
the \code{widget}'s window has lost ownership of a selection.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{event}}{the \code{\link{GdkEventSelection}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{selection-get(widget, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{selection-notify-event(widget, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event. \code{FALSE} to propagate the event further.

}
\item{\code{selection-received(widget, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{selection-request-event(widget, event, user.data)}}{
The ::selection-request-event signal will be emitted when
another client requests ownership of the selection owned by
the \code{widget}'s window.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{event}}{the \code{\link{GdkEventSelection}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{show(widget, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{show-help(widget, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{size-allocate(widget, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{size-request(widget, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{state-changed(widget, state, user.data)}}{
The ::state-changed signal is emitted when the widget state changes.
See \code{\link{gtkWidgetGetState}}.

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{state}}{the previous state}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{style-set(widget, previous.style, user.data)}}{
The ::style-set signal is emitted when a new style has been set
on a widget. Note that style-modifying functions like
\code{\link{gtkWidgetModifyBase}} also cause this signal to be emitted.

\describe{
\item{\code{widget}}{the object on which the signal is emitted}
\item{\code{previous.style}}{the previous style, or \code{NULL} if the widget
just got its initial style. \emph{[  \acronym{allow-none}  ]}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{unmap(widget, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{unmap-event(widget, event, user.data)}}{
The ::unmap-event signal will be emitted when the \code{widget}'s window is
unmapped. A window is unmapped when it becomes invisible on the screen.
  
To receive this signal, the \code{\link{GdkWindow}} associated to the widget needs
to enable the \verb{GDK_STRUCTURE_MASK} mask. GDK will enable this mask
automatically for all new windows.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{event}}{the \code{\link{GdkEventAny}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{unrealize(widget, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{visibility-notify-event(widget, event, user.data)}}{
The ::visibility-notify-event will be emitted when the \code{widget}'s window
is obscured or unobscured.
  
To receive this signal the \code{\link{GdkWindow}} associated to the widget needs
to enable the \verb{GDK_VISIBILITY_NOTIFY_MASK} mask.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{event}}{the \code{\link{GdkEventVisibility}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{window-state-event(widget, event, user.data)}}{
The ::window-state-event will be emitted when the state of the
toplevel window associated to the \code{widget} changes.
  
To receive this signal the \code{\link{GdkWindow}} associated to the widget
needs to enable the \verb{GDK_STRUCTURE_MASK} mask. GDK will enable
this mask automatically for all new windows.

\describe{
\item{\code{widget}}{the object which received the signal}
\item{\code{event}}{the \code{\link{GdkEventWindowState}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the
event. \code{FALSE} to propagate the event further.

}
}}
\section{Properties}{\describe{
\item{\verb{app-paintable} [logical : Read / Write]}{

Whether the application will paint directly on the widget.  Default value: FALSE

}
\item{\verb{can-default} [logical : Read / Write]}{

Whether the widget can be the default widget.  Default value: FALSE

}
\item{\verb{can-focus} [logical : Read / Write]}{

Whether the widget can accept the input focus.  Default value: FALSE

}
\item{\verb{composite-child} [logical : Read]}{

Whether the widget is part of a composite widget.  Default value: FALSE

}
\item{\verb{double-buffered} [logical : Read / Write]}{

Whether or not the widget is double buffered.
  Default value: TRUE  Since 2.18

}
\item{\verb{events} [\code{\link{GdkEventMask}} : Read / Write]}{

The event mask that decides what kind of GdkEvents this widget gets.  Default value: GDK_STRUCTURE_MASK

}
\item{\verb{extension-events} [\code{\link{GdkExtensionMode}} : Read / Write]}{

The mask that decides what kind of extension events this widget gets.  Default value: GDK_EXTENSION_EVENTS_NONE

}
\item{\verb{has-default} [logical : Read / Write]}{

Whether the widget is the default widget.  Default value: FALSE

}
\item{\verb{has-focus} [logical : Read / Write]}{

Whether the widget has the input focus.  Default value: FALSE

}
\item{\verb{has-tooltip} [logical : Read / Write]}{

Enables or disables the emission of \verb{"query-tooltip"} on \code{widget}.
A value of \code{TRUE} indicates that \code{widget} can have a tooltip, in this case
the widget will be queried using \verb{"query-tooltip"} to determine
whether it will provide a tooltip or not.
  
Note that setting this property to \code{TRUE} for the first time will change
the event masks of the GdkWindows of this widget to include leave-notify
and motion-notify events.  This cannot and will not be undone when the
property is set to \code{FALSE} again.
  Default value: FALSE  Since 2.12

}
\item{\verb{height-request} [integer : Read / Write]}{

Override for height request of the widget, or -1 if natural request should be used.  Allowed values: >= -1  Default value: -1

}
\item{\verb{is-focus} [logical : Read / Write]}{

Whether the widget is the focus widget within the toplevel.  Default value: FALSE

}
\item{\verb{name} [character : *                : Read / Write]}{

The name of the widget.  Default value: NULL

}
\item{\verb{no-show-all} [logical : Read / Write]}{

Whether gtk_widget_show_all() should not affect this widget.  Default value: FALSE

}
\item{\verb{parent} [\code{\link{GtkContainer}} : *         : Read / Write]}{

The parent widget of this widget. Must be a Container widget.

}
\item{\verb{receives-default} [logical : Read / Write]}{

If TRUE, the widget will receive the default action when it is focused.  Default value: FALSE

}
\item{\verb{sensitive} [logical : Read / Write]}{

Whether the widget responds to input.  Default value: TRUE

}
\item{\verb{style} [\code{\link{GtkStyle}} : *             : Read / Write]}{

The style of the widget, which contains information about how it will look (colors etc).

}
\item{\verb{tooltip-markup} [character : *                : Read / Write]}{

Sets the text of tooltip to be the given string, which is marked up
with the Pango text markup language.
Also see \code{\link{gtkTooltipSetMarkup}}.
  
This is a convenience property which will take care of getting the
tooltip shown if the given string is not \code{NULL}: \verb{"has-tooltip"}
will automatically be set to \code{TRUE} and there will be taken care of
\verb{"query-tooltip"} in the default signal handler.
  Default value: NULL  Since 2.12

}
\item{\verb{tooltip-text} [character : *                : Read / Write]}{

Sets the text of tooltip to be the given string.
  
Also see \code{\link{gtkTooltipSetText}}.
  
This is a convenience property which will take care of getting the
tooltip shown if the given string is not \code{NULL}: \verb{"has-tooltip"}
will automatically be set to \code{TRUE} and there will be taken care of
\verb{"query-tooltip"} in the default signal handler.
  Default value: NULL  Since 2.12

}
\item{\verb{visible} [logical : Read / Write]}{

Whether the widget is visible.  Default value: FALSE

}
\item{\verb{width-request} [integer : Read / Write]}{

Override for width request of the widget, or -1 if natural request should be used.  Allowed values: >= -1  Default value: -1

}
\item{\verb{window} [\code{\link{GdkWindow}} : *            : Read]}{

The widget's window if it is realized, \code{NULL} otherwise.
  Since 2.14

}
}}
\section{Style Properties}{\describe{
\item{\verb{cursor-aspect-ratio} [numeric : Read]}{

Aspect ratio with which to draw insertion cursor.  Allowed values: [0,1]  Default value: 0.04

}
\item{\verb{cursor-color} [\code{\link{GdkColor}} : *             : Read]}{

Color with which to draw insertion cursor.

}
\item{\verb{draw-border} [\code{\link{GtkBorder}} : *            : Read]}{

The "draw-border" style property defines the size of areas outside
the widget's allocation to draw.
  Since 2.8

}
\item{\verb{focus-line-pattern} [character : *                : Read]}{

Dash pattern used to draw the focus indicator.  Default value: "\\001\\001"

}
\item{\verb{focus-line-width} [integer : Read]}{

Width, in pixels, of the focus indicator line.  Allowed values: >= 0  Default value: 1

}
\item{\verb{focus-padding} [integer : Read]}{

Width, in pixels, between focus indicator and the widget 'box'.  Allowed values: >= 0  Default value: 1

}
\item{\verb{interior-focus} [logical : Read]}{

Whether to draw the focus indicator inside widgets.  Default value: TRUE

}
\item{\verb{link-color} [\code{\link{GdkColor}} : *             : Read]}{

The "link-color" style property defines the color of unvisited links.
  Since 2.10

}
\item{\verb{scroll-arrow-hlength} [integer : Read]}{

The "scroll-arrow-hlength" style property defines the length of
horizontal scroll arrows.
  Allowed values: >= 1  Default value: 16  Since 2.10

}
\item{\verb{scroll-arrow-vlength} [integer : Read]}{

The "scroll-arrow-vlength" style property defines the length of
vertical scroll arrows.
  Allowed values: >= 1  Default value: 16  Since 2.10

}
\item{\verb{secondary-cursor-color} [\code{\link{GdkColor}} : *             : Read]}{

Color with which to draw the secondary insertion cursor when editing mixed right-to-left and left-to-right text.

}
\item{\verb{separator-height} [integer : Read]}{

The "separator-height" style property defines the height of separators.
This property only takes effect if \verb{"wide-separators"} is \code{TRUE}.
  Allowed values: >= 0  Default value: 0  Since 2.10

}
\item{\verb{separator-width} [integer : Read]}{

The "separator-width" style property defines the width of separators.
This property only takes effect if \verb{"wide-separators"} is \code{TRUE}.
  Allowed values: >= 0  Default value: 0  Since 2.10

}
\item{\verb{visited-link-color} [\code{\link{GdkColor}} : *             : Read]}{

The "visited-link-color" style property defines the color of visited links.
  Since 2.10

}
\item{\verb{wide-separators} [logical : Read]}{

The "wide-separators" style property defines whether separators have
configurable width and should be drawn using a box instead of a line.
  Default value: FALSE  Since 2.10

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkWidget.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
