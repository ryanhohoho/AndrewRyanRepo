//teleports to brother portal
if teleport {
	brotherTP = instance_find(oTeleporter, brother-1)
	oPlayer.x = brotherTP.x
	oPlayer.y = brotherTP.y
	teleport = -1
}