oculus-rest
===========

A hacky http server providing head tracking data from the oculus rift hmd.

Runs on port 50000, just point your favourite ajax helper at http://localhost:50000 and fetch the json every 10-20ms or so.

The json contains two objects, one contains a quaternion (axis and rotation) the other one contains euler angles (yaw, pitch and roll):

`{
	quat: {
		x: 0.1138912,
		y: 0.0001915,
		z: 0.0071577,
		w: 0.993507
	},
	euler: {
		y: 0.0020642,
		p: 0.2282781,
		r: 0.0146453
	}
}`

The repository contains an XCode project and an Visual Studio solution, it also contains Mac OSX and Windows binaries, that might even work out of the box, maybe.

There's also an modified three.js minecraft example which uses your oculus coordinates to render a oculus friendly stereo image.
