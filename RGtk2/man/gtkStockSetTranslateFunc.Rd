\alias{gtkStockSetTranslateFunc}
\name{gtkStockSetTranslateFunc}
\title{gtkStockSetTranslateFunc}
\description{Sets a function to be used for translating the \code{label} of 
a stock item.}
\usage{gtkStockSetTranslateFunc(domain, func, data)}
\arguments{
\item{\verb{domain}}{the translation domain for which \code{func} shall be used}
\item{\verb{func}}{a \code{\link{GtkTranslateFunc}}}
\item{\verb{data}}{data to pass to \code{func}}
}
\details{If no function is registered for a translation domain,
\code{gDgettext()} is used.
  
The function is used for all stock items whose
\code{translation.domain} matches \code{domain}. Note that it is possible
to use strings different from the actual gettext translation domain
of your application for this, as long as your \code{\link{GtkTranslateFunc}} uses
the correct domain when calling \code{dgettext()}. This can be useful, e.g.
when dealing with message contexts:
  \preformatted{GtkStockItem items[] = { 
 { MY_ITEM1, NC_("odd items", "Item 1"), 0, 0, "odd-item-domain" },
 { MY_ITEM2, NC_("even items", "Item 2"), 0, 0, "even-item-domain" },
};

gchar *
my_translate_func (const gchar *msgid,
                   gpointer     data)
{
  gchar *msgctxt = data;

  return (gchar*)g_dpgettext2 (GETTEXT_PACKAGE, msgctxt, msgid);
}

/* ... */

gtk_stock_add (items, G_N_ELEMENTS (items));
gtk_stock_set_translate_func ("odd-item-domain", my_translate_func, "odd items"); 
gtk_stock_set_translate_func ("even-item-domain", my_translate_func, "even items"); 
}  Since 2.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
