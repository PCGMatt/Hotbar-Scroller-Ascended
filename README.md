# Hotbar Scroller Ascended for ARK: Survival (and other games)

**Hotbar Scroller Ascended is an AutoHotKey script designed to add support for using the scroll wheel to change inventory slots instead of relying on the number keys. It works with ARK: Survival Evolved and ARK: Survival Ascended by default, but could theoretically be used with any game that lacks this basic feature by changing one line in the config.** 

> **Disclaimer:** Not affiliated with Studio Wildcard / Snail Games in any way.

## Why Use Hotbar Scroller Ascended

Some games, such as ARK, lack built in scroll support. Many players prefer this method of navigating their hotbar because it is the default in other games. Hotbar Scroller Ascended aims to fix that. 

I made this program because the solutions I found online were outdated or lacked features and configuration options I wanted. Here are a few advantages of this program:
- **NEW:** Ability to pause the program temporarily so you can still use the scroll wheel normally in your inventory or storage.
- Detects when you are tabbed out of the game so it doesn't mess with web browsing or other programs.
- Option to set the max inventory slot number it scrolls to.
- AutoHotKey is incredibly lightweight compared to other scripting languages. It typically uses under 3MB of RAM with near instantaneous response times. 
- Supports inverted scrolling for those who prefer that.
- It is open source and free! You can use this script however you want. You can review the code to confirm it is safe or change it to work with other games.

## Setup and Use

1. Download and install [AutoHotKey](https://www.autohotkey.com/). It is free and open source.
2. Download `Hotbar Scroller Ascended.ahk` from this GitHub repository and put it somewhere convenient.
3. In your game settings, change the keybinds associated with scrolling to something else. By default scrolling changes from 1st person to 3rd person perspective.
4. Simply run the script each time you play the game.

### Tips
- Press [CapsLock] to temporarily disable the script while in an inventory so you can use the scroll as normal. Press it again to re-activate the hotbar scroll. 
- While running, AutoHotKey sits in the system tray. To close the program, open the tray, right click, and select exit.


## Config Options

There is a small config section at the top of the file where you can change settings if you wish. Just open the file with notepad or another text editor. 

**max_scroll_slot** : Sets the max slot number it will scroll to. It is recommended to leave the last few slots for consumables, building items, etc. That do not play nice with scrolling. **Note:** Do not set to 0, as this will cause the program to break. `Default: 7`


**invert _scroll** : Enables inverted scrolling when set to "true" if you prefer this. `Default: false` 

**current_slot** : Sets the slot the program starts on. `Default: 1`

**pause_key** : Controls what key you press to pause the program. `Default: ~CapsLock`

## Support

This software will always be free to use, but if you like this project and feel like you have gotten a good value out of it, please consider leaving a tip. Doing so helps support future development and projects. Thank you!

Donations are handled by Ko-Fi and PayPal. I will never see or process your information directly.

[Buy me a Coffee at Ko-Fi](https://ko-fi.com/pcgmatt)

---

### License
This project is licensed under GPLv3. You may view the entire license at [gnu.org](https://www.gnu.org/licenses/gpl-3.0.html#license-text).

In short, this means you can use, modify, and redistribute this code freely as long as it remains open source and you credit me in the code. 
