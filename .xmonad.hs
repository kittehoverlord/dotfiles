import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO
myManageHook = composeAll
    [ title =? "File Operation Progress"    --> doFloat
    , title =? "VLC media player"    -->doFloat
    , title =? "About Mozilla Firefox"  -->doFloat
    , title =? "Adblock Edge: Blockable items (detached)"   -->doFloat
    , title =? "Add Adblock Edge filter rule"   -->doFloat
    , title =? "Greasemonkey Installation"  -->doFloat
    , title =? "Library"    -->doFloat
    ]
main = do
    xmproc <- spawnPipe "/usr/bin/xmobar"
    xmobar2 <- spawn "/usr/bin/xmobar /home/poop/.xmobarrc2"
    xmonad $ defaultConfig
        { manageHook = manageDocks <+> myManageHook
                        <+> manageHook defaultConfig
        , layoutHook = avoidStruts  $  layoutHook defaultConfig
        , normalBorderColor = myNormalBorderColor
        , focusedBorderColor = myFocusedBorderColor
        , terminal = myTerminal
        , workspaces = myWorkspaces
        , logHook = dynamicLogWithPP xmobarPP
                        { ppOutput = hPutStrLn xmproc
                        , ppTitle = xmobarColor "#e8d174" "". shorten 100
                        , ppCurrent = xmobarColor "#9ed670" "#232323"
                        , ppSep = xmobarColor "#ff9900" "" " ="
                        , ppHiddenNoWindows = \w -> xmobarColor "#4d7358" "" ("" ++ w ++ "")
                        , ppHidden = \w -> xmobarColor "#d64d4d" "" ("" ++ w ++ "")
                        , ppLayout = \x -> case x of
                                            "Tall" -> "t"
                                            "Mirror Tall" -> "m"
                                            "Full" -> "f"
                        }
        , modMask = mod4Mask
        } `additionalKeys`
        [ ((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock")
        , ((mod4Mask, xK_f), spawn "firefox")
        , ((mod4Mask .|. shiftMask, xK_s), spawn "Thunar")
        , ((mod4Mask, xK_p), spawn "dmenu_run -fn -*-terminus-*-*-*-*-12-*-*-*-*-*-*-*")
        , ((mod4Mask, xK_d), spawn "thunar")
        , ((mod4Mask, xK_g), spawn "gimp")
        , ((shiftMask, xK_Print), spawn "sleep 0.2; scrot -u")
        , ((0, xK_Print), spawn "scrot")
        ]
myNormalBorderColor = "#232323"
myFocusedBorderColor = "#666666"
myTerminal = "xfce4-terminal"
myWorkspaces = ["1", "2", "3", "4", "5", "6", "7", "8", "min"]
