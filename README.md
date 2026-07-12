
 You have to modify total 4 files: 
 - `index.html`,
 - `meow.js`,
 - `template.js` (you will create a new file with a different name)
 - `contributors.json`

 > [!IMPORTANT]
 > `sample/template.js` is the **main translation file**.
 > 
 - Open it
 - Copy the text
 - Go to `/languages` directory, read the `README.md` file for instructions
 - Create a new file there, paste the copied text in it
 - Translate & save


> [!CAUTION]
>
> Before you begin translating:
>
> 1. On the second line, replace `$$` in:
>    ```js
>    window.i18nDict.$$ = {
>    ```
>    with the language key you chose. For example, if your language key is `hi`, it should become:
>    ```js
>    window.i18nDict.hi = {
>    ```
>    **Do not include the `.js` extension** keep only the language key.
>

> [!IMPORTANT]
> 2. **Only translate the text inside the quotation marks on the right-hand side.** Do **not** modify the keys, punctuation, formatting, or any other part of the file, as doing so will break the translation.
>
>    **Example:**
>    ```js
>    "Command failed": "#",
>    ```
>    becomes:
>    ```js
>    "Command failed": "आदेश विफल",
>    ```

> [!CAUTION]
> - Prioritize **natural, context-aware translations** over literal word-for-word translations.
> - Your goal is to make the interface feel intuitive to native speakers,
> so choose wording that users in your region or country will easily understand.
>
