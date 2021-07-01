import XMonad
import XMonad.Actions.SpawnOn
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.UrgencyHook
import XMonad.Hooks.FadeInactive
import XMonad.Hooks.EwmhDesktops
import XMonad.Util.NamedWindows
import XMonad.Util.Run(spawnPipe, safeSpawn)
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Layout.NoBorders
import Data.List 
import System.IO
import Graphics.X11.ExtraTypes.XF86
import XMonad.Prompt
import qualified XMonad.Actions.Search as S
import qualified Data.Map as M
import XMonad.Prompt.Shell

import qualified XMonad.StackSet as W

myXPConfig :: XPConfig
myXPConfig = def {font = "xft: Liberation Mono: size=10:bold:antialias=true", fgColor = "#fdf6e3", bgColor = "black", promptBorderWidth = 0, position = Bottom}


myLogHook :: X ()
myLogHook = fadeInactiveLogHook fadeAmount
	  where fadeAmount = 0.8


main = do
  xmproc <- spawnPipe "xmobar /home/cheddles/.xmobarcc"
  xmonad $ defaultConfig
       { workspaces = ["1","2","3","4","5","6","7","8","9","0","-","="]
       , manageHook = manageDocks <+> manageSpawn <+> manageHook defaultConfig
       , handleEventHook = handleEventHook defaultConfig <+> fullscreenEventHook <+> docksEventHook
       , layoutHook =  smartBorders $ avoidStruts $ layoutHook defaultConfig
       , logHook = -- myLogHook <+>
         dynamicLogWithPP xmobarPP { ppOutput = hPutStrLn xmproc
       	 	                   , ppCurrent = xmobarColor "#b58900" ""
                                   , ppTitle = xmobarColor "#b58900" "" . shorten 100
                                   , ppUrgent = xmobarColor "yellow" "red" . xmobarStrip 
                                   }
       , borderWidth		= 0
       , modMask			= mod4Mask
       , terminal		= "sakura"
       , normalBorderColor	= "#002b36"
       , focusedBorderColor	= "#586e75"} `additionalKeys` [ ((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock")
							      , ((mod4Mask , xK_b), sendMessage ToggleStruts)
							      , ((mod4Mask , xK_i), spawn "firefox")
							      , ((mod4Mask , xK_v), spawn "pavucontrol")
							      , ((mod4Mask , xK_p), spawn "dmenu_run -b")
                                                              , ((mod4Mask , xK_u), spawn "emacs")
							      , ((mod4Mask , xK_o), spawn "zotero")
							      , ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s ~/Screenshots/%Y-%m-%d-%T-screenshot.png")
							      , ((0, xF86XK_Search), S.promptSearch myXPConfig S.multi)
							      , ((mod4Mask .|. shiftMask, xK_s), S.selectSearch S.multi)
							      , ((0, xK_Print), spawn "scrot")
							      , ((0, xF86XK_MonBrightnessUp), spawn "xbacklight -inc 5")
							      , ((0, xF86XK_MonBrightnessDown), spawn "xbacklight -dec 5")
							      , ((0 , xF86XK_AudioRaiseVolume), spawn "amixer -D pulse sset Master 5%+")
							      , ((0 , xF86XK_AudioLowerVolume), spawn "amixer -D pulse sset Master 5%-")
							      , ((0 , xF86XK_AudioMute), spawn "amixer sset Master toggle")
							      , ((0 , xF86XK_AudioPlay), spawn "playerctl play-pause")
							      , ((0 , xF86XK_AudioNext), spawn "playerctl next") 
							      , ((0 , xF86XK_AudioPrev), spawn "playerctl previous")  
                                                              ]
