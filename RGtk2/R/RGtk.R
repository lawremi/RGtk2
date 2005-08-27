.GtkInitArgs <- c("R")
gtkInitCheck <-
function(args=.GtkInitArgs)
{
 invisible(.C("R_gtkInit", length(args), x=args)$x)
}
gtkInit <- gtkInitCheck
