# XXX Don't do this XXX
if (state$keyval == accel_keyval &&
 (flag(event[["state"]]) & !flag(state$consumed) & all_accel_mask) == 
  accel_mods & !flag(state$consumed))
 	print("Accellerator was pressed")
