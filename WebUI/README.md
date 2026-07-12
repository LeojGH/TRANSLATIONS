> [!IMPORTANT]
> The final step is to register your new language in the language selector.
>
> 1. Open the `index.html` file.
> 2. Search for:
>    ```html
>    <option value="en">English</option>
>    ```
>
>    You'll find it inside the language dropdown:
>
>    ```html
>    <select id="lang-dropdown" onchange="localStorage.setItem('ibLang',this.value);broadcastLangChange(this.value);location.reload()">
>      <option value="en">English</option>
>    </select>
>    ```
>
> 3. Add a new `<option>` for your language using the **same language key** you chose earlier.
>
>    **Example:** If your language key is `hi`, add:
>
>    ```html
>    <select id="lang-dropdown" onchange="localStorage.setItem('ibLang',this.value);broadcastLangChange(this.value);location.reload()">
>      <option value="en">English</option>
>      <option value="hi">Hindi</option>
>    </select>
>    ```
>
>    The `value` attribute must match your language key exactly (without the `.js` extension), and the visible text should be the language's name.
>
> That's all! Save the file, and your translation will appear in the language selection menu.
