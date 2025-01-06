# `present.nvim`

This is plugin for presenting markdown files.

# Features

Can execute code in lua blocks, when you have them in the slide

```lua
print('Hello', 10)
```

# Features

Can execute code in javascript blocks, when you have them in the slide

```javascript
console.log({myfield: true, other: false})
```

# Features

Can execute code in python blocks, when you have them in the slide

```python
print("works")
```

# Usage

```lua
require("present").start_presentation {}
```

Use `n`, `p` to navigate markdown slides.
Or use `:PresentStart` on a markdown file.

# Credits

teej_dv

