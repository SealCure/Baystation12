/obj/item/stock_parts/circuitboard/tetris
	name = T_BOARD("T.E.T.R.I.S.")
	desc = "A circuit board for the Telemetry Enhanced Testing and Research Informatic Simulator."
	build_path = /obj/machinery/computer/tetris
	origin_tech = list(TECH_MAGNET = 2, TECH_ENGINEERING = 2)

/obj/machinery/computer/tetris
	name = "T.E.T.R.I.S"
	desc = "The Telemetry Enhanced Testing and Research Informatic Simulator - a new method of research designed to maximise fun and engagement in the scientific process!"
	icon = 'icons/obj/computer.dmi'
	icon_state = "arcade"
	icon_screen = "invaders"
	light_color = COLOR_GREEN
	base_type = /obj/machinery/computer/tetris
	machine_name = "T.E.T.R.I.S research console"
	machine_desc = "An engaging replacement for the original and boring destructive analyser."
	req_access = list(access_research)

/obj/machinery/computer/tetris/Topic(href, href_list)
	if(..())
		return 1
	else
		usr.set_machine(src)
		if(href_list["tetrisScore"])
			var/temp_score = text2num(href_list["tetrisScore"])
			var/area/this_area = get_area(src)
			if(!isarea(this_area) || isspace(this_area))
				audible_message(SPAN_WARNING("Unable to process synchronization"))
				return
			var/obj/machinery/computer/rdconsole/rdc = locate() in this_area
			if(!rdc)
				audible_message(SPAN_WARNING("Unable to process synchronization"))
				return
			audible_message(SPAN_NOTICE("YOUR SCORE: [temp_score]!"))
			var/technologiesunlocked = Floor(temp_score/100)
			audible_message(SPAN_NOTICE("Unlocked [technologiesunlocked] new technologies."))
			for(var/i = 1 to technologiesunlocked)
				rdc.GiveRandomResearch()
	return

/obj/machinery/computer/tetris/physical_attack_hand(mob/user)
	add_fingerprint(user)

	if(user.client)
		var/datum/asset/simple/C = new/datum/asset/simple/tetris()
		send_asset_list(user.client, C.assets)

	var/dat = {"
	<!DOCTYPE HTML PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN'>
	<html><head>
	<META NAME='description' content='Tetris is a PC-Game, which is a part of the '7 by one stroke' package, written in HTML and JavaScript'>
	<META NAME='author' content='Lutz Tautenhahn'>
	<META NAME='keywords' content='Game, Tetris, Streich, Stroke, JavaScript'>
	<META HTTP-EQUIV='Content-Type' CONTENT='text/html; charset=iso-8859-1'>
	<title>Telemetry Enhanced Testing and Research Informatic Simulator</title>
	<script language='JavaScript'>
	function submitScore(s){
		window.location.href = 'byond://?src=\ref[src];tetrisScore=' + s;
	}
	</script>
	<script language='JavaScript1.2'>
	if (navigator.appName != 'Microsoft Internet Explorer')
	  document.captureEvents(Event.KEYDOWN)
	document.onkeydown = NetscapeKeyDown;
	function NetscapeKeyDown(key)
	{ KeyDown(key.which);
	}
	</script>
	<script for=document event='onkeydown()' language='JScript'>
	if (window.event) KeyDown(window.event.keyCode);
	</script>
	<script language='JavaScript' src='tetris.js'></script>
	</head>
	<BODY bgcolor=#E0A060>
	<form name='ScoreForm'>
	<DIV ALIGN=center>
	<table noborder><tr><td>
	<script language='JavaScript' src='tetris2.js'></script>
	</td>
	<td>&nbsp;&nbsp;&nbsp;</td>
	<td valign=top>
	<table border=4 cellpadding=4 cellspacing=6  bgcolor=#C0B0A0><tr><td>
	<table noborder cellpadding=2 cellspacing=2>
	<tr><td align=center><input type=button width='70' style='width:70;' value='Pause' onClick='Pause()'></td></tr>
	<tr><td>&nbsp;</td></tr>
	<tr><td align=center><input type=button width='70' style='width:70;' value='New' onClick='New()'></td></tr>
	<tr><td>&nbsp;</td></tr>
	<tr><td align=center>Score:</td></tr>
	<tr><td align=center><input type=button width='70' style='width:70; background-color:#ffffff' name='Score'></td></tr>
	<tr><td align=center>Level:</td></tr>
	<tr><td align=center><input type=button width='70' style='width:70; background-color:#ffffff' name='Level' onClick='IncreaseDifficulty()'></td></tr>
	<tr><td align=center>Lines:</td></tr>
	<tr><td align=center><input type=button width='70' style='width:70; background-color:#ffffff' name='Lines''></td></tr>
	<tr><td align=center><table border=2 cellpadding=0 cellspacing=3><tr><td><img src='tetrisp0.gif' border=0></td></tr></table></td></tr>
	</table></td></tr></table>
	</td></tr></table>
	<script language='JavaScript'>
	Init(true);
	</script>
	</DIV>
	</form>
	</BODY>
	</HTML>
	"}
	show_browser(user, dat, "window=tetris;size=435x550")
	user.set_machine(src)
	onclose(user, "tetris")

/obj/machinery/computer/tetris/emag_act(remaining_charges, mob/user)
	if (!emagged)
		playsound(src.loc, 'sound/effects/sparks4.ogg', 75, 1)
		emagged = TRUE
		req_access.Cut()
		to_chat(user, SPAN_NOTICE("You you disable the security protocols."))
		return 1
	