## Master - https://github.com/Jilion/useragent

### New feature - 19 October 2011

- [#2](https://github.com/Jilion/useragent/pull/2): Googlebot detection. ([@dblock][])

### Bug fix - 6 April 2011

- [#1](https://github.com/Jilion/useragent/pull/1): Fix chromeframe. ([@noefroidevaux][])

### Improvements - 31 January 2011

Huge refactoring and improvement of the whole gem, see details below. ([@rymai][])

- User Agent strings parsing:
  - Improved the Regexp (based on http://www.texsoft.it/index.php?m=sw.php.useragent) use for the User Agent strings parsing.
  - Strip comments and reject blank comments.
  - Added more platform ans OS detection.

- User Agent platforms detection:
  - Detect following platforms: Nintendo Wii, WebTV, Windows, iPad, iPod, iPhone Simulator, iPhone, SunOS, webOS, Macintosh, Android, FreeBSD, OpenBSD, NetBSD, Linux, Nokia, BlackBerry, OpenSolaris, OS/2, BeOS, AIX and X11.

- User Agent operating systems detection:
  - Detect following operating systems: Windows 7, Windows Vista, Windows Server 2003, Windows XP, Windows 2000, Service Pack 1 (SP1), Windows NT, Windows NT 4.0, Windows NT 4.0, Windows NT, Windows 2000, Windows Me, FreeBSD, OpenBSD, NetBSD, SunOS, BeOS, OS/2, WebTV, Linux, AmigaOS and BlackBerryOS.

- User Agent linux distributions detection:
  - Detect following linux distributions: Debian, Kubuntu, Ubuntu, Fedora, SUSE, Gentoo and Mandriva.

- User Agent languages detection:
  - Detect User Agent languages verified against the ISO-639-2 (languages codes) and ISO-3166-1 (countries codes).
  - Detect User Agent languages formatted "en", "en-US" and "en_US".

- User Agent security detection:
  - Improved detection of User Agent security.

- Gecko-based browsers detection:
  - Detect more Gecko-based browsers: Beonex, BonEcho, Camino, Fennec, Firebird, Flock, Galeon, Iceweasel, Minefield, Netscape, Phoenix, Seamonkey, Sunrise, Thunderbird and Firefox.
  - Detect 'rv:X.Y.Z' in comments as the version for true Mozilla.
  - Detect Gecko version in product and in comments.

- Internet Explorer-based browsers detection:
  - Detect more mobile User Agents.
  - Detect more chromeframe versions (use directly chromeframe_version now instead of chromeframe.version).

- Opera-based browsers detection:
  - Detect more Opera-based browsers: Opera Mini, Opera Mobile and Opera.
  - Detect more mobile User Agents.
  - Detect browser type (:console for the Nintendo Wii).

- Webkit browsers detection:
  - Detect more Webkit-based browsers: Arora, Android, BlackBerry, Chrome, Fluid, NetNewsWire, OmniWeb, Shiira and webOS.
  - Fix wrong Safari version for iOS devices (the iOS version was taken instead of the Safari version).
  - Return pretty version for Mac OS X (e.g. "10.6.6" instead of "10_6_6")
  - Added more Webkit build versions mapping for Safari/Macintosh.
  - Added iOS Webkit build versions mapping for Safari/iOS.
  - Detect more mobile User Agents.

- Other (minors) browsers detection:
  - Detect various minor browsers: ABrowse, Acoo Browser, America Online Browser, AOL, Avant Browser, BlackBerry, Galaxy, Konqueror, Lynx, NetPositive, Playstation 3 and Playstation Portable.

[@dblock]: https://github.com/dblock
[@noefroidevaux]: https://github.com/noefroidevaux
[@rymai]: https://github.com/rymai
