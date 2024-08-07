# Instalando no Linux

Tradução: [english](LINUX.md), [русский](LINUX.ru.md), [中文](LINUX.zh-CN.md), [español](LINUX.es.md), [العربية](LINUX.ar.md), [bahasa](LINUX.id.md), [türkçe](LINUX.tr.md), [български](LINUX.bg.md), [esperanto](LINUX.eo.md)

---

Não sou especialista em instalação de layouts de teclado; essas instruções podem não funcionar para todos os usuários do Linux.

## Siga estas instruções

**1.** Primeiro, faça backup de alguns arquivos executando estes comandos:

```bash
cp /usr/share/X11/xkb/symbols/ru /usr/share/X11/xkb/symbols/ru.old
cp /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.old
```

Se você receber um erro, primeiro execute este comando: `su root`, tente executar os comandos novamente ou substitua `cp` por `sudo cp`.

**2.** Abrir arquivo `/usr/share/X11/xkb/symbols/ru` e anexe o seguinte bloco de texto no final do arquivo:

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

**3.** Abrir arquivo `/usr/share/X11/xkb/rules/evdev.xml` e insira o seguinte bloco de texto após a variante `Russian (typewriter)`:

```xml
<variant>
  <configItem>
    <name>colemak_ru</name>
    <description>Russian (Colemak)</description>
  </configItem>
</variant>
```

**4.** Em seguida, adicione `Russian (Colemak)` através das configurações do seu ambiente de trabalho.

## Desinstalando

Para desinstalar, restaure os arquivos antigos ou desfaça tudo o que você fez:

```bash
mv /usr/share/X11/xkb/symbols/ru.old /usr/share/X11/xkb/symbols/ru
mv /usr/share/X11/xkb/rules/evdev.xml.old /usr/share/X11/xkb/rules/evdev.xml
```

## Atualizando

Desinstale a versão antiga e instale a nova versão.

---

Esta página contém texto traduzido automaticamente

---

[← Voltar](./README.pt.md)
