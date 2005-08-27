as.enum <-
function(val, type)
{
  if(inherits(val, type))
    return(val)
  .Call("R_asEnum", val, type)
}
as.flag <-
function(val, type)
{
  if(inherits(val, type))
    return(val)
  .Call("R_asFlag", val, type)
}

as.struct <-
function(x, type, fields)
{
    if (is.null(x))
		stop("Cannot coerce NULL struct")
	
	struct <- vector(mode="list", length(fields))
    names(struct) <- fields

    if (length(names(x)) > 0) {
        w <- which(fields %in% names(x))
        if (length(w) < length(x))
            stop(paste("Invalid keys for transparent type", type))
        struct[fields[w]] <- x[fields[w]]
    } else struct[1:length(x)] <- x

    class(struct) <- type

    struct
}
