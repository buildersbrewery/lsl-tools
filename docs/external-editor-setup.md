# Using an External Editor with the Second Life Viewer

Many scripters prefer writing LSL in a full editor (Sublime Text, VS Code, etc.) instead of the built-in script editor.

## Basic Setup

1. In the Second Life viewer go to **Me → Preferences → Advanced**.
2. Enable **Show Advanced Menu** if it is not already visible.
3. Go to **Advanced → Show Debug Settings**.
4. Search for `ExternalEditor` (or `ExternalEditorCommand` / related keys depending on viewer).
5. Set the value to the full path of your editor executable plus any flags needed so the viewer can open a file and optionally jump to a line.

Example patterns (adjust for your OS and editor):

**Sublime Text (Windows example)**  
`"C:\Program Files\Sublime Text\sublime_text.exe" "%s:%l"`

**VS Code**  
`"C:\Users\YourName\AppData\Local\Programs\Microsoft VS Code\Code.exe" -g "%s:%l"`

**macOS / Linux** — use the appropriate full path and quoting.

Exact key names and supported placeholders (`%s` = file, `%l` = line) vary slightly between official Linden viewer and third-party viewers (Firestorm, etc.). Check your viewer’s documentation or debug settings list.

## Recommended Workflow

1. Create or open the script in inventory or in a prim.
2. Use the viewer’s “Edit” → external editor button / menu item so the file opens in your IDE.
3. Make changes, save in the external editor.
4. Return to the viewer; most setups will detect the change or you can use “Save” / “Apply” in the script window.
5. Test in-world.

## Tips

- Keep a consistent project folder structure if you work on multi-script objects.
- Use the example scripts in this repository as starting points.
- Enable any available syntax highlighting / linting in your editor so errors are caught before you upload.
- For large projects, consider a simple local version-control habit (even just dated copies) so you can roll back.

## Builders Brewery Specific Notes

Once the rebuilt Sublime package is installed, opening any `.lsl` file should give you completions and tooltips that reflect current language features (after the definition generator has been completed and run).
