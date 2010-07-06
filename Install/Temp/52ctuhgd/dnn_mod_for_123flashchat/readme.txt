** DotNetNuke: Web Portal System                                        **
** DotNetNuke Chat View Module for 123 Flash Chat software              **
** ==============================================                       **
**                                                                      **
** Copyright (c) by TopCMM 					        **
** Daniel Jiang (support@123flashchat.com)          			**
** http://www.topcmm.com						**
** http://www.123flashchat.com                                          **
**                                                                      **
**                                                                      **
**************************************************************************


####################################################################################################################
## Notes:                                                                                                         ##
##                                                                                                                ##
##     IMPORTANT!!!!                                                                                              ##
##     If you need to use the chat service on a local machine, before installing this module, please              ##
##     download 123 Flash Chat software first from this page:                                                     ##
##     http://www.123flashchat.com/download.html                                                                  ##
##     You may get the latest free demo version of 123 flash chat software there.                                 ##
##                                                                                                                ## 
##     And get professional support from: http://www.123flashchat.com/support.html                                ##
##     We provide email support, online live support, and phone support, etc                                      ##
##                                                                                                                ##
##     Good luck on your business and have a nice day!                                                            ##
##                                                                                                                ##
####################################################################################################################
## Before Adding This MOD To Your DotNetNuke, You Should Back up All The Files Related To This MOD.               ##
####################################################################################################################

Note: This module is named "view_123flashchat". It is used to embed the 123flashchat room in the page rather than open a new page. To use it, you must install 123flashchat module for dotnetnuke because its credentials are stored in this module. As the integration configurations use the configurations for 123flashchat module, when the 123flashchat module is integrated, this module is also integrated at the same time.  

Step 1, Install chat module files to your DotNetNuke:
Log in the system with your host account and click Host-->Module definitions in sequence. Then it will take you to the Module Definition page. On the bottom of it, there is an ¡°Install Module¡± button and click it to finish the installation process according to the prompts

Step 2, Configure chat module's running mode:
After install completion, let¡¯s go back to that page. On the top of it, you will see the module management panel. Please select view_123flashchat in the module dropdown list allocate the position to display this module, and click ¡°add module to page¡±. Then you will see it on the current page.

Click the small icon near its corresponding module to enter the editing mode, then you can modify some settings of that module under the mode.

There are three editions for the module as follows:
1. Standard Ed
Please copy client folder from <123flashchat installed directory> to                  <dotnetnuke installation directory>/DesktopModules\topcmm_view_123flashchat.

Please enter the path of 123flashchat, for example, http://127.0.0.1:35555, and enter the numbers in the width and height textboxes respectively. After that, please click update to finish the process.

Notes: Due to the server's restarting, the integration may not take into effect at once. If the server hasn't been start yet, you can start it manually.

2. Host
Please enter your host address in the content, for example, http://host71200.123flashchat.com/xxx, and enter the numbers in the width and height textboxes respectively. After that, please click update to finish the process.

3. Free
Select Free and enter your room name in the room name textbox. At last, please click update to finish the process.
