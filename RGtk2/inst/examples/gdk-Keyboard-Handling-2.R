# XXX Don't do this XXX
if (state$keyval == accel_keyval &&
 (as.flag(event[["state"]]) & !as.flag(state$consumed) & all_accel_mask) == 
  accel_mods & !as.flag(state$consumed))
 	print("Accellerator was pressed")
