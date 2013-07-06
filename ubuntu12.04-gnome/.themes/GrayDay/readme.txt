Author: Rafa Cobreros
Original theme in: http://gnome-look.org/content/show.php/GrayDay?content=149310

Customization tips:
	1.- Select style for nautilus
	2.- Select style for Unity panel
	3.- Select style for TABS 
	4.- Select prseset highligh colors
	5.- Style for titlebar buttons

---------------------------------
* 1.- Select style for nautilus *
---------------------------------
Edit (gedit) the file ../GrayDay/gtk-3.0/gtk.css 

go to the last line of the file, there are five options for nautilus:

	1.- "gnome-applications-gray-light.css" (nautilus sidebar gray and toolbar light)
	2.- "gnome-applications-gray.css"  		(nautilus sidebar and toolbar gray )
	3.- "gnome-applications-light.css" 		(nautilus sidebar and toolbar light leopard style)
	4.- "gnome-applications-unity.css" 		(nautilus sidebar gray and toolbar light for UNITY)
	5.- "gnome-applications-unity.css" 		(nautilus sidebar and toolbar gray for UNITY)
	
edit (please carefully) the corresponding line "@import" according to the style of nautilus you want,
to make it ONE of the five (not all)

@import url("gnome-applications-gray-light.css");

OR

@import url("gnome-applications-gray.css");

OR 

@import url("gnome-applications-light.css");

OR

@import url("gnome-applications-unity.css");

OR

@import url("gnome-applications-unity-gray.css");


------------------------------------
* 2.- Select style for Unity panel *
------------------------------------
Edit (gedit) the file ../GrayDay/gtk-3.0/gtk.css 

there are 3 options for unity panel:
Go to the line where it says
@import url("unity.css");

and modify it according to the option you want

1.- If you prefer the white panel "Unity" Mac Style
@import url("unity-white.css");

2.- If you prefer darkest panel
@import url("unity-darkest.css");

3.- If you prefer the default
@import url("unity.css");


-----------------------------
* 3.- Select style for TABS *
-----------------------------
Edit (gedit) the file ../GrayDay/gtk-3.0/gtk.css

Go to the line where it says
@import url("tabs-themed.css");

and modify it according to the option you want

1.- tabs default theme
@import url("tabs-themed.css");

2.- tabs default theme-light
@import url("tabs-themed-light.css");

3.- tabs dark gray
@import url("tabs-dark.css");

4.- tabs gray
@import url("tabs-gray.css");

5.- More traditional style tabs
@import url("tabs-classic.css");


(Be careful to leave only ONE of the five)

-------------------------------------
* 4.- Select prseset highligh colors
-------------------------------------
Edit file  ../GrayDay/gtk-3.0/gtk.css

Go to the line where it says 
@import url("colors/gtk3-colors-default.css");

Chose presets
---------------------------------------
- Default:			@import url("colors/gtk3-colors-default.css");
- Fedora (blue): 	@import url("colors/gtk3-colors-fedora.css");
- Ubuntu (orange): 	@import url("colors/gtk3-colors-ubuntu.css");
- Mint (green): 	@import url("colors/gtk3-colors-mint.css");
- Graphite:			@import url("colors/gtk3-colors-graphite.css");  (recomended with tabs-gray.css)
- Red (try it!):	@import url("colors/gtk3-colors-red.css");

and similar for gtk2
Edit file  ../GrayDay/gtk-2.0/gtkrc
Find and edit
include "colors/gtk2-colors-default.rc"  

you can learn from the existing presets and create your own! ;)

----------------------------------------------------
* 5.- Select style for titlebar buttons (metacity) *
----------------------------------------------------
two options
1. - Normal Buttons (initial style)
2. - Rounded buttons (new style)

To use one style or another, copy file content of metacity_buttons_normal.tar.gz OR metacity_buttons_rounded.tar.gz in the folder:
../GrayDay/metacity-1/

If you are using unity, copy the contents of unity-buttons-normal.tar.gz OR unity-buttons-rounded.tar.gz in folder:
../GrayDay/unity/


NOTE:
	- should close and open session after the changes
