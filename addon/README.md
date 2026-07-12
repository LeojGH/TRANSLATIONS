## Translate `meow.js` Fragments

Inside `meow.js`, add a new language block immediately after the existing:

```js
} else if (LANG === 'placeholder') {
```

Paste this template below it:

```js
} else if (LANG === '$$') {
  FRAG = {
    "Analyzing user apps... (": "#…(",
    "Checking risky apps... (": "#…(",
    " installed packages, ": " #, ",
    "Found ": "# ",
    " user apps": " #",
    "Active: ": " #: ",
    "Loaded: ": " #: ",
    "Mapped ": "# ",
    "Activating ": "# ",
    "Applying ": "# ",
    " profile...": " #…",
    " profile activated": " #",
    "...": "…"
  };
}
```

### What to change

1. Replace `$$` with your language code (for example: `fr`, `es`, `hi`, `de`).
2. Replace every `#` with the correct translation in your language.
3. Leave the English text on the **left** exactly as it is.

### Example

```js
} else if (LANG === 'hi') {
  FRAG = {
    "Analyzing user apps... (": "उपयोगकर्ता ऐप्स का विश्लेषण... (",
    "Checking risky apps... (": "जोखिमपूर्ण ऐप्स की जाँच... (",
    " installed packages, ": " इंस्टॉल किए गए पैकेज, ",
    "Found ": "मिले ",
    " user apps": " उपयोगकर्ता ऐप्स",
    "Active: ": "सक्रिय: ",
    "Loaded: ": "लोड किया गया: ",
    "Mapped ": "मैप किया गया ",
    "Activating ": "सक्रिय किया जा रहा है ",
    "Applying ": "लागू किया जा रहा है ",
    " profile...": " प्रोफ़ाइल...",
    " profile activated": " प्रोफ़ाइल सक्रिय हुई",
    "...": "…"
  };
}
```

> [!IMPORTANT]
>
> - **Do not modify the English keys** (the text on the left). Only translate the values (the text on the right).
> - Keep all punctuation, spaces, and placeholders exactly as shown unless your language requires a different natural placement.
> - Preserve leading and trailing spaces inside the strings. They are intentional and required for correct formatting.
> - Use the same language code here that you used everywhere else in the project.
> - The `...` entry should normally be translated to the single Unicode ellipsis (`…`).
