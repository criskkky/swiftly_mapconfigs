  <h3 align="center">[Swiftly] MapConfigs</h3>

  <p align="center">
    Make individualized configuration files for each map, or connect them all to a common prefix configuration.
    <br/>
    <a href="https://github.com/criskkky/swiftly_mapconfigs/issues">Report Bug</a>
    -
    <a href="https://github.com/criskkky/swiftly_mapconfigs/issues">Request Feature</a>
    -
    <a href="https://github.com/criskkky/swiftly_mapconfigs/pulls">Contribute Code</a>
  </p>
</p>
  <p align="center">
  <img alt="Downloads" src="https://img.shields.io/github/downloads/criskkky/swiftly_mapconfigs/total?style=for-the-badge&color=cyan">
  <img alt="Contributors" src="https://img.shields.io/github/contributors/criskkky/swiftly_mapconfigs?color=cyan&style=for-the-badge">
  <img alt="Issues" src="https://img.shields.io/github/issues/criskkky/swiftly_mapconfigs?style=for-the-badge&color=cyan">
<br>
<sub>Made by: <a href="https://github.com/criskkky" target="_blank">@criskkky</a> (Me 🤪) ✦ Special thanks to: <a href="https://github.com/skuzzis" target="_blank">@skuzzis</a> (API teaching 💜)</sub>
  </p>

### How it works? 🤨
This CS2 plugin applies configurations to the current map, initiating the search from longer configurations to shorter ones. This approach allows you to set up specific map configurations or connect them all using a common prefix.

Your specific map configurations must be located in `/game/csgo/cfg/MapConfigs/HERE.cfg` where HERE is the map name or prefix.

**For example, given the following maplist:**
> `aim_deagle_lego` :: `aim_redline_s2` :: `aim_awp_lego` :: `aim_headshot_kill` :: `de_dust2` :: `de_mirage`

**And assuming your configuration files are named:**

> `aim_deagle.cfg` :: `aim_awp.cfg` :: `aim_.cfg` :: `de_dust2.cfg`

**The plugin will operate as follows:**
- ✔ If the current map is `aim_deagle_lego`, it will execute `aim_deagle.cfg`.
- ✔ If the current map is `aim_awp_lego`, it will execute `aim_awp.cfg`.
- ✔ If the current map is `aim_redline_s2`, it will execute `aim_.cfg`.
- ✔ If the current map is `aim_headshot_kill`, it will execute `aim_.cfg`.
- ✔ If the current map is `de_dust2`, it will execute `de_dust2.cfg`.
- ❌ If the current map is `de_mirage`, it will execute nothing 'cos you don't made a `de_.cfg` or `de_mirage.cfg`.

### Requeriments 📄
1. CS2 Server 🤡
2. [Metamod 2.X](https://www.sourcemm.net/downloads.php/?branch=master)
3. [Swiftly](https://github.com/swiftly-solution/swiftly/releases/latest)

### Installation 📦
1. Download [latest release](https://github.com/criskkky/swiftly_mapconfigs/releases/latest).
2. Everything is drag & drop, so i think you can do it!
3. Do an initial plugin load to generate the necessary files or manually create the `/game/csgo/cfg/MapConfigs/` directory.
4. Setup your configurations per map inside the generated directory ensuring that the file name matches the map name or prefix.
5. Ready!

### Example 👨🏻‍🏫
```cfg
// Config for de_.cfg
mp_freezetime 3
mp_autoteambalance 0
mp_autokick 0
exec otherconfigmaybe.cfg
```
👀 Don't forget to set the correct filename; for example, in this case, the file must be named `de_.cfg`.

### Configuring the plugin 👨🏻‍💻
- Doesn't need additional config than the one explained above ✅

### Todo List 🎯
- Fix [issues](https://github.com/criskkky/swiftly_mapconfigs/issues) if there's any

### Problems using this? 😔
If you really need help with something that isn't explained here reach me through:
1. @crisky [Discord](<https://discord.com/users/404372759028957231>) / [GitHub](<https://github.com/criskkky>)
2. Opening an [issue](https://github.com/criskkky/swiftly_mapconfigs/issues)
