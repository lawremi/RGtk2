\alias{GtkActivatable}
\name{GtkActivatable}
\title{GtkActivatable}
\description{An interface for activatable widgets}
\section{Methods and Functions}{
\code{\link{gtkActivatableDoSetRelatedAction}(object, action)}\cr
\code{\link{gtkActivatableGetRelatedAction}(object)}\cr
\code{\link{gtkActivatableGetUseActionAppearance}(object)}\cr
\code{\link{gtkActivatableSyncActionProperties}(object, action = NULL)}\cr
\code{\link{gtkActivatableSetRelatedAction}(object, action)}\cr
\code{\link{gtkActivatableSetUseActionAppearance}(object, use.appearance)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----GtkActivatable}}
\section{Implementations}{GtkActivatable is implemented by
 \code{\link{GtkButton}},  \code{\link{GtkCheckButton}},  \code{\link{GtkCheckMenuItem}},  \code{\link{GtkColorButton}},  \code{\link{GtkFontButton}},  \code{\link{GtkImageMenuItem}},  \code{\link{GtkLinkButton}},  \code{\link{GtkMenuItem}},  \code{\link{GtkMenuToolButton}},  \code{\link{GtkOptionMenu}},  \code{\link{GtkRadioButton}},  \code{\link{GtkRadioMenuItem}},  \code{\link{GtkRadioToolButton}},  \code{\link{GtkRecentChooserMenu}},  \code{\link{GtkScaleButton}},  \code{\link{GtkSeparatorMenuItem}},  \code{\link{GtkSeparatorToolItem}},  \code{\link{GtkTearoffMenuItem}},  \code{\link{GtkToggleButton}},  \code{\link{GtkToggleToolButton}},  \code{\link{GtkToolButton}},  \code{\link{GtkToolItem}} and  \code{\link{GtkVolumeButton}}.}
\section{Detailed Description}{Activatable widgets can be connected to a \code{\link{GtkAction}} and reflects
the state of its action. A \code{\link{GtkActivatable}} can also provide feedback
through its action, as they are responsible for activating their
related actions.}
\section{Implementing GtkActivatable}{When extending a class that is already \code{\link{GtkActivatable}}; it is only
necessary to implement the \code{\link{GtkActivatable}}->\code{syncActionProperties()}
and \code{\link{GtkActivatable}}->\code{update()} methods and chain up to the parent
implementation, however when introducing
a new \code{\link{GtkActivatable}} class; the \verb{"related-action"} and
\verb{"use-action-appearance"} properties need to be handled by
the implementor. Handling these properties is mostly a matter of installing
the action pointer and boolean flag on your instance, and calling
\code{\link{gtkActivatableDoSetRelatedAction}} and
\code{\link{gtkActivatableSyncActionProperties}} at the appropriate times.
  
 \emph{A class fragment implementing   \code{\link{GtkActivatable}}}\preformatted{enum {
...

PROP_ACTIVATABLE_RELATED_ACTION,
PROP_ACTIVATABLE_USE_ACTION_APPEARANCE
}

struct _FooBarPrivate
{

  ...

  GtkAction      *action;
  gboolean        use_action_appearance;
};

...

static void foo_bar_activatable_interface_init         (GtkActivatableIface  *iface);
static void foo_bar_activatable_update                 (GtkActivatable       *activatable,
						           GtkAction            *action,
						           const gchar          *property_name);
static void foo_bar_activatable_sync_action_properties (GtkActivatable       *activatable,
						           GtkAction            *action);
...


static void
foo_bar_class_init (FooBarClass *klass)
{

  ...

  g_object_class_override_property (gobject_class, PROP_ACTIVATABLE_RELATED_ACTION, "related-action");
  g_object_class_override_property (gobject_class, PROP_ACTIVATABLE_USE_ACTION_APPEARANCE, "use-action-appearance");

  ...
}


static void
foo_bar_activatable_interface_init (GtkActivatableIface  *iface)
{
  iface->update = foo_bar_activatable_update;
  iface->sync_action_properties = foo_bar_activatable_sync_action_properties;
}

... Break the reference using gtk_activatable_do_set_related_action()...

static void 
foo_bar_dispose (GObject *object)
{
  FooBar *bar = FOO_BAR (object);
  FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);

  ...

  if (priv->action)
    {
      gtk_activatable_do_set_related_action (GTK_ACTIVATABLE (bar), NULL);
      priv->action = NULL;
    }
  G_OBJECT_CLASS (foo_bar_parent_class)->dispose (object);
}

... Handle the "related-action" and "use-action-appearance" properties ...

static void
foo_bar_set_property (GObject         *object,
                      guint            prop_id,
                      const GValue    *value,
                      GParamSpec      *pspec)
{
  FooBar *bar = FOO_BAR (object);
  FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);

  switch (prop_id)
    {

      ...

    case PROP_ACTIVATABLE_RELATED_ACTION:
      foo_bar_set_related_action (bar, g_value_get_object (value));
      break;
    case PROP_ACTIVATABLE_USE_ACTION_APPEARANCE:
      foo_bar_set_use_action_appearance (bar, g_value_get_boolean (value));
      break;
    default:
      G_OBJECT_WARN_INVALID_PROPERTY_ID (object, prop_id, pspec);
      break;
    }
}

static void
foo_bar_get_property (GObject         *object,
                         guint            prop_id,
                         GValue          *value,
                         GParamSpec      *pspec)
{
  FooBar *bar = FOO_BAR (object);
  FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);

  switch (prop_id)
    { 

      ...

    case PROP_ACTIVATABLE_RELATED_ACTION:
      g_value_set_object (value, priv->action);
      break;
    case PROP_ACTIVATABLE_USE_ACTION_APPEARANCE:
      g_value_set_boolean (value, priv->use_action_appearance);
      break;
    default:
      G_OBJECT_WARN_INVALID_PROPERTY_ID (object, prop_id, pspec);
      break;
    }
}


static void
foo_bar_set_use_action_appearance (FooBar   *bar, 
				   gboolean  use_appearance)
{
  FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);

  if (priv->use_action_appearance != use_appearance)
    {
      priv->use_action_appearance = use_appearance;
      
      gtk_activatable_sync_action_properties (GTK_ACTIVATABLE (bar), priv->action);
    }
}

... call gtk_activatable_do_set_related_action() and then assign the action pointer, 
no need to reference the action here since gtk_activatable_do_set_related_action() already 
holds a reference here for you...
static void
foo_bar_set_related_action (FooBar    *bar, 
			    GtkAction *action)
{
  FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);

  if (priv->action == action)
    return;

  gtk_activatable_do_set_related_action (GTK_ACTIVATABLE (bar), action);

  priv->action = action;
}

... Selectively reset and update activatable depending on the use-action-appearance property ...
static void
gtk_button_activatable_sync_action_properties (GtkActivatable       *activatable,
		                                  GtkAction            *action)
{
  GtkButtonPrivate *priv = GTK_BUTTON_GET_PRIVATE (activatable);

  if (!action)
    return;

  if (gtk_action_is_visible (action))
    gtk_widget_show (GTK_WIDGET (activatable));
  else
    gtk_widget_hide (GTK_WIDGET (activatable));
  
  gtk_widget_set_sensitive (GTK_WIDGET (activatable), gtk_action_is_sensitive (action));

  ...
  
  if (priv->use_action_appearance)
    {
      if (gtk_action_get_stock_id (action))
	foo_bar_set_stock (button, gtk_action_get_stock_id (action));
      else if (gtk_action_get_label (action))
	foo_bar_set_label (button, gtk_action_get_label (action));

      ...

    }
}

static void 
foo_bar_activatable_update (GtkActivatable       *activatable,
			       GtkAction            *action,
			       const gchar          *property_name)
{
  FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (activatable);

  if (strcmp (property_name, "visible") == 0)
    {
      if (gtk_action_is_visible (action))
	gtk_widget_show (GTK_WIDGET (activatable));
      else
	gtk_widget_hide (GTK_WIDGET (activatable));
    }
  else if (strcmp (property_name, "sensitive") == 0)
    gtk_widget_set_sensitive (GTK_WIDGET (activatable), gtk_action_is_sensitive (action));

  ...

  if (!priv->use_action_appearance)
    return;

  if (strcmp (property_name, "stock-id") == 0)
    foo_bar_set_stock (button, gtk_action_get_stock_id (action));
  else if (strcmp (property_name, "label") == 0)
    foo_bar_set_label (button, gtk_action_get_label (action));

  ...
}
}}
\section{Structures}{\describe{\item{\verb{GtkActivatable}}{
\emph{undocumented
}

}}}
\section{Properties}{\describe{
\item{\verb{related-action} [\code{\link{GtkAction}} : *            : Read / Write]}{

The action that this activatable will activate and receive
updates from for various states and possibly appearance.
  \strong{PLEASE NOTE:} \code{\link{GtkActivatable}} implementors need to handle the this property and
call \code{\link{gtkActivatableDoSetRelatedAction}} when it changes.  Since 2.16

}
\item{\verb{use-action-appearance} [logical : Read / Write]}{

Whether this activatable should reset its layout
and appearance when setting the related action or when
the action changes appearance.
  
See the \code{\link{GtkAction}} documentation directly to find which properties
should be ignored by the \code{\link{GtkActivatable}} when this property is \code{FALSE}.
  \strong{PLEASE NOTE:} \code{\link{GtkActivatable}} implementors need to handle this property
and call \code{\link{gtkActivatableSyncActionProperties}} on the activatable
widget when it changes.  Default value: TRUE  Since 2.16

}
}}
\references{\url{http://library.gnome.org/devel//gtk/GtkActivatable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
