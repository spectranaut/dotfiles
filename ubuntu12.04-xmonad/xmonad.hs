{- 
 Originally George's conf file (from BUILDS github)
-}

import XMonad
import Data.Monoid
import System.Exit
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO 
import XMonad.Actions.CycleWS

myManageHook = composeAll
    [ className =? "MPlayer"              --> doFloat
    , title     =? "xfce4-notifyd"        --> doIgnore
    , title     =? "Pidgin"               --> doFloat
    , resource  =? "Dialog"               --> doFloat
    , resource 	=? "stalonetray" 	  --> doIgnore    
    ]


spawnterm :: String -> X ()
spawnterm s = spawn $ "xfce4-terminal -x sh -c 'sleep .1; " ++ s ++ "'"

main = do 
  xmproc <- spawnPipe "/home/spectranaut/bin/start_xmobar.sh /home/spectranaut/.xmobarrc"
  xmonad $ defaultConfig
    { terminal          = "xfce4-terminal"
    , focusFollowsMouse = True
    , modMask           = mod4Mask
    , layoutHook        = avoidStruts $ layoutHook defaultConfig
    , manageHook        = myManageHook <+> manageDocks <+> manageHook defaultConfig
    , logHook           = dynamicLogWithPP $ xmobarPP
        { ppOutput = hPutStrLn xmproc
        , ppTitle  = xmobarColor "green" "" . shorten 50
        }
    } `additionalKeys`
-- screen capture (full screen, and just active window. Save to ~/Pictures/Captures)
      [ ((0          , xK_Print), spawn "scrot -e 'mv $f ~/Pictures/Captures/'")
      , ((controlMask, xK_Print), spawn "scrot -u -e 'mv $f ~/Pictures/Captures/'")
-- the following are for common things that I want to do in a terminal
      , ((mod4Mask .|. shiftMask, xK_m  ), spawnterm "evenless")
      , ((mod4Mask .|. shiftMask, xK_F11), spawnterm "emacsclient -nw /home/george/.xmonad/xmonad.hs")
      , ((mod4Mask .|. shiftMask, xK_e  ), spawnterm "emacsclient -nw -e \"(list (eshell \\\"new\\\") (delete-other-windows))\"")
      , ((mod4Mask .|. shiftMask, xK_r  ), spawnterm "sudo -s")
-- applications
      , ((mod4Mask .|. controlMask, xK_f), spawn "firefox")
      , ((mod4Mask .|. controlMask, xK_t), spawn "liferea")
      , ((mod4Mask .|. controlMask, xK_p), spawn "zathura")
-- lock screen
      , ((mod4Mask, xK_x), spawn "xscreensaver-command --lock")
-- switch between workspaces with mod-arrow
      , ((mod4Mask, xK_Left), prevWS)					
      , ((mod4Mask, xK_Right), nextWS)     
      ]
