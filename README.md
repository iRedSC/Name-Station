# Name-Station
A datapack that adds a little station that lets you rename items using Json formatting.
Download the release here: https://github.com/iRedSC/Name-Station/releases
(Click `Source Code (zip)`)

## How to Use
First you need to obtain a `Text Editor`, which you can do by finding it in an end city, simple dungeon, stronghold, or by giving it to yourself with
```mcfunction
function name_station:give
```
![text-editor](https://media.discordapp.net/attachments/759159698921750558/759544926622711838/unknown.png)

Throw the `Text Editor` on a dropper and it will transform into a `Name Station`

![name-station](https://cdn.discordapp.com/attachments/759159698921750558/760157920692011038/unknown.png)

## The GUI
### Type Selection
There are two things you can edit with the name station, the item's `Name` and `Lore`. you can change it by clicking on the icon in the 2nd slot.

![name](https://cdn.discordapp.com/attachments/759159698921750558/760158134948986890/unknown.png)
![lore](https://cdn.discordapp.com/attachments/759159698921750558/760158190976761886/unknown.png)

### Reseting the Name/Lore
You can reset the `Name` or `Lore` by first selecting the correct type (seen above) and then clicking the `tnt minecart` in the 3rd slot

![reset](https://cdn.discordapp.com/attachments/759159698921750558/760158309680152616/unknown.png)

### Setting the Name/Lore
To set the item's `Name` or `Lore`, place a book in the 4th slot and an item in the 6th slot.
**Use a Signed Book for non-formatted text ` Ex. Hello World` and a Book & Quill for formatted text `Ex .{"text":"Hello World","color":"aqua"}`**

![book](https://cdn.discordapp.com/attachments/759159698921750558/760158450667356180/unknown.png)
![item](https://cdn.discordapp.com/attachments/759159698921750558/760158610830917643/unknown.png)

Click the feather in the middle of the GUI to set the `Name`/`Lore`

![set](https://cdn.discordapp.com/attachments/759159698921750558/760158521869598720/unknown.png)

### Prepend, Set, and Append Modifiers
You can add to the beginning or the end of the items name instead of replacing it by changing the option in the 1st slot

![prepend](https://cdn.discordapp.com/attachments/759159698921750558/760158684767846420/unknown.png)
![set](https://cdn.discordapp.com/attachments/759159698921750558/760158756478255134/unknown.png)
![append](https://cdn.discordapp.com/attachments/759159698921750558/760158817966096454/unknown.png)

**Note:** When Appending/Prepend LORE, the new text will be put on a new line, either at the top (prepend) or bottom (append)
