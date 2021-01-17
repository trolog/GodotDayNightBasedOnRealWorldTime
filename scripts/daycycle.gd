extends CanvasModulate

export(Gradient) var col : Gradient

func _process(delta):
	
	#get pc clock time
	var system_time = OS.get_time()
	
	# connect our hour and mintue, then convert to a value, min size 0000 max 2400
	var time_value : float = str2var("%02d" % system_time["hour"] + "%02d" % system_time["minute"])
	
	#work out our percentage of day passed
	var time_percent : float = (time_value / 2400)
	
	#col.interpolate(time_percent)
	color = col.interpolate(time_percent)
