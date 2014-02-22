.First.lib <-
function(lib, pkg)
{
 tmp <- paste(".", system.file("python", package="GtkAutoBindingGen"), sep=":")
 path <- Sys.getenv("PYTHONPATH")
 if(path != "") {
  #XXX fix the separator
  path <- paste(path, tmp, sep=":") 
 } else
  path <- tmp

 Sys.setenv("PYTHONPATH"=path)
}  
