# „:Installing on Linux“

„:Translation:“ „:---“

---

„:I am not an expert in installing keyboard layouts, these instructions may not work for all Linux users“.

## „:Follow these instructions“

**1.** „:First, backup some files by running these commands“:

```bash
cp /usr/share/X11/xkb/symbols/ru /usr/share/X11/xkb/symbols/ru.old
cp /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.old
```

„:If you get an error, first run this command:“ `su root`, „:then try running the commands again, or replace `cp` with `sudo cp`“.

**2.** „:Open file“ `/usr/share/X11/xkb/symbols/ru` „:and append the following text block at the end of the file“:

```
// github.com/salif/colemak-ru
partial alphanumeric_keys
xkb_symbols "colemak_ru" {

  include "ru(common)"
  include "level3(ralt_switch)"

  name[Group1]="Russian (Colemak)";

  key <TLDE> {[ semicolon,         colon,             grave,          asciitilde ]};
  key <AE01> {[ 1,                 exclam      ]};
  key <AE02> {[ 2,                 at          ]};
  key <AE03> {[ 3,                 numbersign  ]};
  key <AE04> {[ 4,                 dollar      ]};
  key <AE05> {[ 5,                 percent     ]};
  key <AE06> {[ 6,                 asciicircum ]};
  key <AE07> {[ 7,                 ampersand   ]};
  key <AE08> {[ 8,                 asterisk    ]};
  key <AE09> {[ 9,                 parenleft   ]};
  key <AE10> {[ 0,                 parenright  ]};
  key <AE11> {[ minus,             underscore  ]};
  key <AE12> {[ equal,             plus        ]};

  key <AD01> {[ Cyrillic_ya,       Cyrillic_YA     ]};
  key <AD02> {[ Cyrillic_sha,      Cyrillic_SHA    ]};
  key <AD03> {[ Cyrillic_ef,       Cyrillic_EF     ]};
  key <AD04> {[ Cyrillic_pe,       Cyrillic_PE     ]};
  key <AD05> {[ Cyrillic_ghe,      Cyrillic_GHE    ]};
  key <AD06> {[ Cyrillic_zhe,      Cyrillic_ZHE    ]};
  key <AD07> {[ Cyrillic_el,       Cyrillic_EL     ]};
  key <AD08> {[ Cyrillic_u,        Cyrillic_U      ]};
  key <AD09> {[ Cyrillic_shorti,   Cyrillic_SHORTI ]};
  key <AD10> {[ Cyrillic_shcha,    Cyrillic_SHCHA  ]};
  key <AD11> {[ Cyrillic_yu,       Cyrillic_YU,       bracketleft,       braceleft  ]};
  key <AD12> {[ Cyrillic_e,        Cyrillic_E,        bracketright,      braceright ]};

  key <AC01> {[ Cyrillic_a,        Cyrillic_A  ]};
  key <AC02> {[ Cyrillic_er,       Cyrillic_ER ]};
  key <AC03> {[ Cyrillic_es,       Cyrillic_ES ]};
  key <AC04> {[ Cyrillic_te,       Cyrillic_TE ]};
  key <AC05> {[ Cyrillic_de,       Cyrillic_DE ]};
  key <AC06> {[ Cyrillic_ha,       Cyrillic_HA ]};
  key <AC07> {[ Cyrillic_en,       Cyrillic_EN ]};
  key <AC08> {[ Cyrillic_ie,       Cyrillic_IE ]};
  key <AC09> {[ Cyrillic_i,        Cyrillic_I  ]};
  key <AC10> {[ Cyrillic_o,        Cyrillic_O  ]};
  key <AC11> {[ Cyrillic_yeru,     Cyrillic_YERU,     Cyrillic_softsign, Cyrillic_SOFTSIGN ]};
  key <BKSL> {[ apostrophe,        quotedbl,          backslash,         bar ]};

  key <LSGT> {[ U045D,             U040D        ]};
  key <AB01> {[ Cyrillic_ze,       Cyrillic_ZE  ]};
  key <AB02> {[ Cyrillic_che,      Cyrillic_CHE ]};
  key <AB03> {[ Cyrillic_tse,      Cyrillic_TSE ]};
  key <AB04> {[ Cyrillic_ve,       Cyrillic_VE  ]};
  key <AB05> {[ Cyrillic_be,       Cyrillic_BE  ]};
  key <AB06> {[ Cyrillic_ka,       Cyrillic_KA  ]};
  key <AB07> {[ Cyrillic_em,       Cyrillic_EM  ]};
  key <AB08> {[ comma,             less         ]};
  key <AB09> {[ period,            greater      ]};
  key <AB10> {[ slash,             question     ]};

};
```

**3.** „:Open file“ `/usr/share/X11/xkb/rules/evdev.xml` „:and insert the following text block after the variant“ `Russian (typewriter)`:

```xml
<variant>
  <configItem>
    <name>colemak_ru</name>
    <description>Russian (Colemak)</description>
  </configItem>
</variant>
```

**4.** „:Then add“ `Russian (Colemak)` „:via the settings of your desktop environment“.

## „:Uninstalling“

„:To uninstall restore the old files or undo everything you did“:

```bash
mv /usr/share/X11/xkb/symbols/ru.old /usr/share/X11/xkb/symbols/ru
mv /usr/share/X11/xkb/rules/evdev.xml.old /usr/share/X11/xkb/rules/evdev.xml
```

## „:Updating“

„:Uninstall the old version and install the new version“.

---

„:This page contains automatically translated text“

---

[„:← Back“](./README„:--“)
