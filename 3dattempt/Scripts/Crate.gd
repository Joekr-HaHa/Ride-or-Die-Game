extends StaticBody

func set_parent():
	var new_parent
	if get_parent().name == "Test":
		# Set to player
		new_parent = get_tree().get_node("PlayerGrab")
	else:
		# Set to test 
		new_parent = get_tree().get_node("Test")
	# Remove self from current parent
	get_parent().remove_child(self)
	# Add self to new_parent
	new_parent.add_child(self)
