// Shell scripts can be defined here
// Method names must start with sh_, but will not include that when being invoked
// For example, to invoke sh_test_method from an rt-shell, you would simply type test_method
// 
// If a method returns a value, it will be displayed in the shell

function sh_get_bgspeed() {
	var bgHspeed = obj_test_room.bgHspeed;
	var bgVspeed = obj_test_room.bgVspeed;
	return "hspeed: " + string(bgHspeed) + ", vspeed: " + string(bgVspeed);
}

function sh_set_bg_hspeed(args) {
	var newHspeed = args[1];
	try {
		obj_test_room.bgHspeed = real(newHspeed);
	} catch (e) {
		return e.message;
	}
}

function sh_set_bg_vspeed(args) {
	var newVspeed = args[1];
	try {
		obj_test_room.bgVspeed = real(newVspeed);
	} catch (e) {
		return e.message;
	}
}

function sh_version() {
	return version;
}