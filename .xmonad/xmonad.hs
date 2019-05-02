import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO
myManageHook = composeAll
    [ title =? "File Operation Progress"    --> doFloat
    ]
main = do
    xmproc <- spawnPipe "/usr/bin/xmobar"
    xmonad $ defaultConfig
        { manageHook = manageDocks <+> myManageHook
                        <+> manageHook defaultConfig
        , layoutHook = avoidStruts  $  layoutHook defaultConfig
        , handleEventHook = mconcat
                        [ docksEventHook
                        , handleEventHook defaultConfig ]
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
        [ ((mod4Mask, xK_f), spawn "firefox")
        , ((mod4Mask, xK_p), spawn "dmenu_run -fn terminus-9:normal*")
        , ((mod4Mask, xK_d), spawn "thunar")
        , ((mod4Mask, xK_g), spawn "gimp")
        , ((mod4Mask, xK_b), spawn "mocp -P")
        , ((mod4Mask .|. shiftMask, xK_b), spawn "mocp -U")
        , ((mod4Mask, xK_v), spawn "mocp -v +25")
        , ((mod4Mask .|. shiftMask, xK_v), spawn "mocp -v -25")
        , ((mod4Mask, xK_x), spawn "mocp -S; mocp -p")
        , ((mod4Mask .|. shiftMask, xK_x), spawn "mocp -x")
        , ((shiftMask, xK_Print), spawn "sleep 0.2; scrot -u poop.png")
        , ((0, xK_Print), spawn "scrot poop.png")
        ]
myNormalBorderColor = "#232323"
myFocusedBorderColor = "#FFFFFF"
myTerminal = "xfce4-terminal"
myWorkspaces = ["1", "2", "3", "4", "5", "6", "7", "8", "min"]