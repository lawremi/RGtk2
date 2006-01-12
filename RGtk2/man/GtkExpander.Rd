\alias{GtkExpander}
\alias{gtkExpander}
\name{GtkExpander}
\title{GtkExpander}
\description{A container which can hide its child}
\usage{
\link{gtkExpanderNew}(label = NULL, show = TRUE)
\link{gtkExpanderNewWithMnemonic}(label = NULL)
\link{gtkExpanderSetExpanded}(object, expanded)
\link{gtkExpanderGetExpanded}(object)
\link{gtkExpanderSetSpacing}(object, spacing)
\link{gtkExpanderGetSpacing}(object)
\link{gtkExpanderSetLabel}(object, label = NULL)
\link{gtkExpanderGetLabel}(object)
\link{gtkExpanderSetUseUnderline}(object, use.underline)
\link{gtkExpanderGetUseUnderline}(object)
\link{gtkExpanderSetUseMarkup}(object, use.markup)
\link{gtkExpanderGetUseMarkup}(object)
\link{gtkExpanderSetLabelWidget}(object, label.widget = NULL)
\link{gtkExpanderGetLabelWidget}(object)
gtkExpander(label = NULL, show = TRUE)
}
\details{A \code{\link{GtkExpander}} allows the user to hide or show its child by clicking on an expander triangle similar to 
the triangles used in a \code{\link{GtkTreeView}}.
  
    Normally you use an expander as you would use any other descendant
    of \code{\link{GtkBin}}; you create the child widget and use
    \code{\link{gtkContainerAdd}} to add it to the expander.  When the expander
    is toggled, it will take care of showing and hiding the child
    automatically.
  }
\section{Special Usage}{      There are situations in which you may prefer to show and
      hide the expanded widget yourself, such as when you want to
      actually create the widget at expansion time.  In this case,
      create a \code{\link{GtkExpander}} but do not add a child to it.  The
      expander widget has an \code{expanded} property
      which can be used to monitor its expansion state.  You should
      watch this property with a signal connection as follows:
      \preformatted{expander = gtk_expander_new_with_mnemonic ("_More Options");
g_signal_connect (expander, "notify::expanded",
                  G_CALLBACK (expander_callback), NULL);

...

static void
expander_callback (GObject    *object,
                   GParamSpec *param_spec,
                   gpointer    user_data)
{
  GtkExpander *expander;

  expander = GTK_EXPANDER (object);

  if (gtk_expander_get_expanded (expander))
    {
      /* Show or create widgets */
    }
  else
    {
      /* Hide or destroy widgets */
    }
}

    }}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBin}
                           +----GtkExpander}}
\section{Structures}{\describe{\item{\code{GtkExpander}}{\emph{undocumented
}}}}
\section{Convenient Construction}{\code{gtkExpander} is the equivalent of \code{\link{gtkExpanderNew}}.}
\section{Interfaces}{GtkExpander implements
 AtkImplementorIface.}
\section{Signals}{\describe{\item{\code{activate(expander, user.data)}}{


\describe{
\item{\code{expander}}{[\code{\link{GtkExpander}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}}}
\section{Properties}{\describe{
\item{\code{expanded} [logical : Read / Write / Construct]}{

Whether the expander has been opened to reveal the child widget.  Default value: FALSE

}
\item{\code{label} [character : Read / Write / Construct]}{

Text of the expander's label.  Default value: NULL

}
\item{\code{label-widget} [\code{\link{GtkWidget}} : Read / Write]}{

A widget to display in place of the usual expander label.

}
\item{\code{spacing} [integer : Read / Write]}{

Space to put between the label and the child.  Allowed values: >= 0  Default value: 0

}
\item{\code{use-markup} [logical : Read / Write / Construct]}{

The text of the label includes XML markup. See pango_parse_markup().  Default value: FALSE

}
\item{\code{use-underline} [logical : Read / Write / Construct]}{

If set, an underline in the text indicates the next character should be used for the mnemonic accelerator key.  Default value: FALSE

}
}}
\section{Style Properties}{\describe{
\item{\code{expander-size} [integer : Read]}{

Size of the expander arrow.  Allowed values: >= 0  Default value: 10

}
\item{\code{expander-spacing} [integer : Read]}{

Spacing around expander arrow.  Allowed values: >= 0  Default value: 2

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkExpander.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
