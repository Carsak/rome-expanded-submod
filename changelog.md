# Changelog

This file records notable player-facing changes to Rome Expanded Submod. The newest changes are listed first.

## 2026-10-04 — Steam Workshop Release

### Added

- Added a player-only imperial corruption expense that scales from 1,500 denarii at 15 settlements to a maximum of 20,000 denarii at 50 settlements.
- Egyptian settlement revolts now form a civil war led by the Egyptian rebel faction instead of becoming generic rebels. If the rebels defeat the original Egyptian faction, they assume the regular Egyptian identity.
- Settlement revolts in Fabian, Valerian, and Claudian Rome now join a shared Roman rebel faction, allowing one rebel state to fight all three Roman houses.
- Jewish temples from the second tier onward now grant Judean factions +1, +2, +3, and +5 morale to units recruited in their settlement.

### Changed

- Halved the trade value of every campaign resource, rounding odd values down, to reduce land and sea trade income and slow economic snowballing.
- Increased Greek Elite Hoplite upkeep from 210 to 300 denarii and Hypaspist upkeep from 200 to 230 denarii per turn.
- Reduced Pontic Brazen Shield Hoplite recruitment time from two turns to one and increased their recruitment cost from 690 to 800 denarii.
- Judea's short campaign now requires it to outlive Egypt, but no longer the Seleucid Empire.

### Fixed

- Fixed the Colossus of Rhodes balance penalty affecting Nabataea and other unrelated settlements. A unique upkeep building in Rhodes now fully offsets the wonder's faction-wide +40% trade bonus and follows ownership of the city.

## 2026-09-30

### Changed

- Restricted swimming to light infantry and foot javelin skirmishers. Cavalry, elephants, heavy infantry, archers, and slingers can no longer swim.

## 2026-09-26

### Changed

- Restored Rome Expanded's original attack and charge values for seven pike units while reducing their primary pike lethality from 0.55 to 0.3

| Unit type | Previous attack / charge | Restored attack / charge |
|---|---:|---:|
| `egyptian infantry` | 3 / 1 | 8 / 3 |
| `egyptian elite guards` | 4 / 1 | 10 / 4 |
| `greek levy pikemen` | 2 / 1 | 6 / 2 |
| `greek pikemen` | 3 / 1 | 8 / 3 |
| `greek royal pikemen` | 4 / 1 | 10 / 4 |
| `greek silver shield pikemen` | 5 / 1 | 10 / 4 |
| `merc greek pikemen` | 3 / 1 | 8 / 3 |

- Exterminating settlements now give 20% public order bonus.

## 2026-09-24

### Changed

- Temporarily disabled the submod's conversion of captured barracks, stables, and missile ranges because the upstream Rome Expanded mod now provides its own military-building conversion system.
- Restored Rome Expanded's upkeep values for barbarian foot and missile units while retaining the submod's targeted upkeep balance for Naked Fanatics and Chosen Swordsmen. Cavalry upkeep remains unchanged.
- Increased the conversion building's construction time from 3 to 7 turns and its cost from 3,000 to 9,900 denarii because a single conversion affects all eligible buildings in the settlement.

### Fixed

- Fixed overly passive campaign behavior for Carthage by greatly reducing the chance for its AI governors to become immovable.
- Restored 0.55 lethality for every melee weapon after the latest Rome Expanded merge reset several units to higher values.

## 2026-09-23

### Changed

- Increased Town Militia, Town Watch, Iberian Infantry, and Tribal Vigiles unit sizes from 40 to 60 soldiers, with higher recruitment and upkeep costs. This makes Carthage's particularly weak early infantry more viable, as these units were previously too small and ineffective to justify recruiting.
- Reduced Naked Fanatics recruitment time from two turns to one, increased their recruitment cost from 430 to 645 denarii, and raised upkeep from 80 to 200 denarii per turn.
- Increased Mercenary Naked Fanatics upkeep from 160 to 230 denarii per turn.

## 2026-09-22

### Changed

- Increased upkeep for all warhound units to better reflect their battlefield value: Briton, Dacian, and Gaulish units from 40 to 90; Germanic and Scythian units from 60 to 130; and Carthaginian and Roman units from 50 to 100 denarii per turn.

## 2026-09-21

### Changed

- Replaced building weapon upgrades with armour, morale, and law bonuses. The weapon upgrades doubled weapon lethality instead of merely adding +1 attack, causing battles to end much too quickly.
- Added a 20% taxable-income bonus to the player's capital. This supports the difficult early campaign without scaling across the whole empire, so its relative impact decreases as expansion makes the late game easier.

## 2026-09-17

### Added

- Added a localized campaign-start option for early Marian reforms.
- When early reforms are enabled, the reforms begin after the Roman factions collectively control 10 large cities or larger settlements.
- When early reforms are disabled, the standard requirement remains five huge cities controlled by Roman factions.
- Marian reforms still trigger automatically after turn 325 as a late-game fallback.

### Fixed

- Fixed the early Marian reforms prompt appearing again every turn after the player had already answered it.

## 2026-09-16

### Changed

- Increased Barbarian Legionary unit size from 40 to 60 soldiers and reduced recruitment time from two turns to one.
- Barbarian Legionaries now require the Marian reforms before they can be recruited.
- Increased the upkeep of Chosen Swordsmen from 110 to 200 denarii per turn.

## 2026-09-11

### Added

- Added German, Spanish, French, Italian, and Simplified Chinese text for military-building conversion.

### Changed

- Increased the health of every battering ram type to 600 and made rams much harder to ignite.
- Made siege towers more vulnerable to flaming arrows.

## 2026-09-09

### Changed

- Neutralized the Colossus of Rhodes' hardcoded faction-wide 40% trade bonus to prevent it from overwhelming campaign balance.
- Reduced the attack and charge values of several pike units and increased their recruitment cost by 90–100 denarii as part of the ongoing phalanx rebalance.

### Fixed

- Added support for applying the Colossus balance change to existing saved campaigns.

## 2026-09-08

### Changed

- Macedonia must now outlive the Seleucid Empire to complete its short campaign.

### Fixed

- Fixed AI-controlled factions becoming stuck at the first settlement level and failing to upgrade their settlements.

## 2026-09-02

### Added

- All player-controlled factions can now convert captured barracks, stables, and missile ranges into equivalent buildings of their own culture.
- Added culture-appropriate building, construction-queue, and completed-building artwork for military-building conversion.

### Changed

- Governor buildings no longer convert settlement religion automatically. Conversion now depends on temples, stationed generals, and nearby settlements following the same religion.
- Reduced barbarian infantry upkeep to compensate for the technological disadvantage of barbarian factions.

## 2026-09-01

### Changed

- Increased siege-engine upkeep from 110 to 300 denarii per turn.
