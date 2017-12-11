import XMonad
import XMonad.Config.Desktop
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.SetWMName
import XMonad.Layout.NoBorders
import XMonad.Util.EZConfig
baseConfig = desktopConfig
main = do
         xmonad $ baseConfig
           { terminal           = "xterm"
           , startupHook = spawn "~/.hello.sh" >> setWMName "LG3D"  
           , modMask            = mod4Mask
           , handleEventHook    = fullscreenEventHook
           , normalBorderColor  = "black"
           , focusedBorderColor = "#25383C"
           }
           `additionalKeysP` myKeys
myKeys = [ ("M-<Return>"    , spawn "xterm"                     )
         , ("M-<Escape>"    , kill                              )
         , ("M-r"           , spawn "xmonad --restart"          )
         , ("C-M1-<Delete>" , spawn "sudo shutdown -r now"      )
         , ("M-x"           , spawn "/home/d/.xmonad/batery.sh" ) 
         , ("M-e"           , spawn "xterm -e ranger"           )
         , ("M-S-e"         , spawn "xterm -e sudo ranger"      )     
         , ("M-S-w"         , spawn "xterm -e rtorrent"         )  
         , ("M-w"           , spawn "qupzilla"                  )
         , ("M-c"           , spawn "kodi"                      )
         ]


