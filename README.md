
### Requirements: 
- SkyrimNet Plugin for UDNG integration, requires the following
- [Devious Devices NG](https://www.loverslab.com/files/file/29779-devious-devices-ng/)
- [Papyrus MessageBox](https://www.nexusmods.com/skyrimspecialedition/mods/83578)
- [JContainers](https://www.nexusmods.com/skyrimspecialedition/mods/16495)
- [SkyUI SE](https://www.nexusmods.com/skyrimspecialedition/mods/12604)
  [UIExtensions](https://www.nexusmods.com/skyrimspecialedition/mods/17561)

 ### Optional
- [Unforgiving Devices](https://www.loverslab.com/files/file/41829-unforgiving-devices/)

## Development
- https://github.com/MinLL/SkyrimNet-GamePlugin
- SkyrimNet with C++ API Version 2

To add descriptions to the devices, add the following to the bottom of `overwrite\SKSE\Plugins\SkyrimNet\config\ItemCustomization.yaml`
~~~
  0x1200435d:
    name: Steel Chastity Belt (Padded)
    description: A lockable chastity belt made out of metal with a soft inner padding.
  0x1200435e:
    name: Iron Chastity Belt
    description: A lockable chastity belt made out of sturdy iron.
  0x120048c7:
    name: Plug (Iron) (Set)
    description: A set of iron plugs for female orifices meant to be used with a chastity belt to hold them in.
  0x120048c8:
    name: Plug (Primitive) (Set)
    description: A set of primitive plugs for female orifices meant to be used with a chastity belt to hold them in.
  0x120048c9:
    name: Plug (Inflatable) (Set)
    description: A set of inflatable plugs for female orifices meant to be used with a chastity belt to hold them in.
  0x120048ca:
    name: Plug (Soulgem) (Set)
    description: A set of common soul gem plugs for female orifices meant to be used with a chastity belt to hold them in. Powered by the magic in soul gems, the plugs have the ability to vibrate and giving off a gentle buzz.
  0x120048c2:
    name: Steel Chastity Bra (Padded)
    description: A lockable chastity bra made out of metal with a soft inner padding. It block sexual stimulation of the breasts.
  0x120048c3:
    name: Steel Cuffs (Padded) (Arms)
    description: A set of metal arm and wrist cuffs with soft leather padding.
  0x120048c5:
    name: Steel Cuffs (Padded) (Legs)
    description: A set of metal leg and ankle cuffs with soft leather padding.
  0x120048c6:
    name: Steel Collar (Padded)
    description: A metal collar with soft leather padding.
  0x120048c4:
    name: Steel Cuffs (Padded) (Set)
    description: A complete set of padded metal cuffs for all extremities.
  0x120048c1:
    name: Steel Collar (Padded) (Posture)
    description: A steel collar meant to ensure proper posture by covering the whole neck.
  0x1200ca38:
    name: Black Leather Armbinder
    description: A lockable armbinder made out of leather, with sturdy reinforcing straps.
  0x1200f564:
    name: Black Leather Gag (Ball) (Harness)
    description: A lockable head harness that forces a wooden ball between the wearer's lips and makes speaking impossible.
  0x1200f566:
    name: Black Leather Gag (Panel) (Harness)
    description: A lockable head harness that covers the wearer's lips with a leather panel and makes speaking impossible.
  0x1200f565:
    name: Black Leather Gag (Ring) (Harness)
    description: A lockable head harness that forces a metal ring between the wearer's teeth and makes speaking impossible, while leaving the mouth and tongue available for oral sex. 
  0x1201614d:
    name: Black Leather Gag (Ball) (Simple)
    description: A lockable gag that forces a wooden ball between the wearer's lips and makes speaking impossible.
  0x12016154:
    name: Black Leather Gag (Ring) (Simple)
    description: A lockable gag that forces a metal ring between the wearer's teeth and makes speaking impossible.
  0x12011b1e:
    name: Black Leather Blindfold
    description: A leather blindfold that covers the eyes, plunges the wearer into darkness, and making it impossible to do activities that require sight.
  0x1201c7f0:
    name: Black Leather Cuffs (Arms)
    description: A set of leather arm cuffs.
  0x1201c7f3:
    name: Black Leather Cuffs (Legs)
    description: A set of leather leg cuffs.
  0x1201c7f1:
    name: Black Leather Collar
    description: A leather collar with metal studs and rings.
  0x12017c44:
    name: Black Leather Slave Harness
    description: An intricate harness made up of multiple metal rings and leather straps. This variant leaves the subject's private areas exposed for display and ease of access.
  0x12016155:
    name: Black Leather Collar (Harness)
    description: A sturdy leather collar with a metal ring attached at the front.
  0x1202b508:
    name: Black Leather Collar (Posture)
    description: A leather collar meant to ensure proper posture by covering the whole neck.
  0x12018c7c:
    name: Plug (Iron) (Vaginal)
    description: An iron vaginal plug capable of providing a moderate amount of sexual stimulation to the wearer.
  0x12018c7b:
    name: Plug (Iron) (Anal)
    description: An iron anal plug that fills the wearer with a profound sense of fullness.
  0x12018c7e:
    name: Plug (Primitive) (Vaginal)
    description: A primitive vaginal plug capable of providing a decent amount of sexual stimulation to the wearer.
  0x12018c7d:
    name: Plug (Primitive) (Anal)
    description: A primitive anal plug that fills the wearer with a profound sense of fullness.
  0x12018c83:
    name: Plug (Soulgem) (Vaginal)
    description: A soul gem vaginal plug capable of providing a great amount of sexual stimulation to the wearer. Powered by the magic in the gem, the plug has the ability to vibrate creating sexual stimulation and a gentle buzzing sound.
  0x12018c82:
    name: Plug (Soulgem) (Anal)
    description: A soul gem anal plug that fills the wearer with a profound sense of fullness.  Powered by the magic in the gem, the plug has the ability to vibrate creating sexual stimulation and a gentale buzzing sound.
  0x12018c81:
    name: Plug (Inflatable) (Vaginal)
    description: An inflatable vaginal plug capable of providing a great amount of sexual stimulation to the wearer.
  0x12018c80:
    name: Plug (Inflatable) (Anal)
    description: An inflatable anal plug that fills the wearer with a profound sense of fullness.
  0x12012083:
    name: Steel Chastity Belt (Padded) (Open)
    description: A lockable chastity belt made out of metal with a soft inner padding. A hole at the rear makes long term wear possible.
  0x1202afa5:
    name: Black Leather Restrictive Collar
    description: A stiff and rigid leather collar intended to severely restrict head movement once secured around the wearer's neck.
  0x12028f53:
    name: Black Leather Restrictive Corset
    description: A tight leather corset that hugs the wearer's waist while leaving the breasts exposed.
  0x12027f27:
    name: Black Leather Restrictive Gloves
    description: A pair of long leather gloves with locks and metal restraints.
  0x12026991:
    name: Iron Yoke
    description:  A heavy iron bar with hole for the head in its center and two at each end for the arms. A person in such a device can not use their arms in anyway. Its weight and the angle of the arms makes it painful over time.
  0x120243d6:
    name: Genital Piercing (Soul Gem)
    description: A delicate piercing with a soul gem fragment attached.  Powered by the magic in the gem, the plug has the ability to vibrate creating sexual stimulation and a gentale buzzing sound.
  0x12023e71:
    name: Jeweled Piercings (Nipples) (Soulgem)
    description: A pair of delicate nipple piercings with soul gem fragments attached.  Powered by the magic in the gem, the plug has the ability to vibrate creating sexual stimulation and a gentle buzzing sound.
~~~

