# Pepper: Before the Hero

*A 2D fantasy action-platformer about protecting a hero without ever being seen.*

## Game Overview

Pepper has fallen in love with a hero on a quest to defeat the Demon King. Worried that he may be seriously hurt—or never return—she ventures ahead of him and secretly confronts the bosses guarding his path. She fights to leave each enemy vulnerable enough for the hero to finish the encounter, then slips away before he discovers who helped him.

The game is inspired by the responsive platforming and combat of **Hollow Knight** and the distinct, challenging boss encounters of **Cuphead**. Its central twist is a **countdown**: Pepper must complete her objective before the hero arrives.

> **Project status:** Week 2 movement prototype completed. Boss fights, countdowns, and stealth/escape objectives are planned features, not yet implemented.

## Genre and Tools

- **Genre:** 2D action platformer / timed boss rush
- **Engine:** Godot 4 (2D)
- **Language:** GDScript
- **Version control:** Git and GitHub
- **Course:** CS-5105N Game Development

## Gameplay

### Currently Implemented — Week 2

- Left and right movement using keyboard input
- Jumping with gravity-based movement
- Ground collision using Godot's 2D physics
- Character facing direction changes with movement
- **Coyote time**: a brief window to jump after leaving a platform, improving responsiveness
- Basic playable testing arena with a ground platform

### Planned Features

- Sword attacks and evasive dashing
- Bosses with individual attack patterns and mechanics
- Timed encounters tracking the hero's arrival
- A goal to weaken bosses and leave without being discovered
- Multiple arenas and progressively more difficult encounters
- Health, timer, menus, audio, animation, and visual feedback
- Save/load support and performance polishing

## Controls

| Action | Keyboard |
| --- | --- |
| Move left | `A` or `Left Arrow` |
| Move right | `D` or `Right Arrow` |
| Jump | `Space` |

Additional combat controls will be documented as those features are developed.

## How to Run

1. Install **Godot 4** from [godotengine.org](https://godotengine.org/download).
2. Clone the project, or download the repository as a ZIP:

   ```bash
   git clone https://github.com/KKYuuki/Pepper-Before-The-Hero.git
   ```

3. Open **Godot Project Manager**, choose **Import**, and select the project's `project.godot` file.
4. Open the project and press **F5** to run the main scene.
5. Use the controls above to test Pepper's movement.

## Project Structure

```text
res://
├── assets/
│   ├── audio/
│   ├── backgrounds/
│   ├── bosses/
│   ├── characters/
│   │   ├── hero/
│   │   └── pepper/
│   └── ui/
├── scenes/
│   └── main.tscn
├── scripts/
│   └── player.gd
├── icon.svg
└── project.godot
```

`README.md` and `.gitignore` live at the repository root. Asset folders will be populated as development continues.

## Weekly Development Log

| Week | Focus | Progress |
| --- | --- | --- |
| 1 | Godot project, initial scene, and Git setup | Completed |
| 2 | Player movement, physics, collision, and game feel | Completed |
| 3 | Two levels, TileMaps, hazards, and transitions | Planned |
| 4 | Character animation, particles, and documented AI asset | Planned |
| 5 | UI, audio, accessibility, and peer playtest | Planned |
| 6 | To be specified by the Week 6 activity sheet | Pending |
| 7 | Polish, save/load, profiling, and second playtest | Planned |

## Development Notes

**Week 2 core mechanic:** Pepper runs and jumps across platforming spaces using a `CharacterBody2D` controller. Her movement is processed during the physics update, with gravity applied while airborne and `move_and_slide()` handling collisions.

**Game feel:** Coyote time makes jumps more forgiving by allowing input to register briefly after Pepper steps off a ledge. This is the Week 2 feedback improvement.

**Testing checklist:** Verify movement in both directions, jumping, landing on the platform, sprite facing direction, and the coyote-time behavior.

![Pepper's Movement and Jumping](week2.png)

## Asset Credits and AI Disclosure

Temporary prototype graphics may be used while final sprites are being selected. Third-party sprite, music, and sound licenses—and any AI-generated assets, tools, prompts, and edits—will be documented here as they are incorporated. Do not assume that a free download permits redistribution or commercial use; check each asset's license.

## Repository

[KKYuuki / Pepper-Before-The-Hero](https://github.com/KKYuuki/Pepper-Before-The-Hero)

---

*An individual game development class project. Inspired by genre mechanics; not affiliated with the creators of Hollow Knight or Cuphead.*
