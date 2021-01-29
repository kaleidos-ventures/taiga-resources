---
title: "Taiga Markdown Sytax"
date: 2020-10-05T11:22:38+02:00
draft: false
title: Taiga Markdown Syntax
---

### Phrase Emphasis

```
**bold** __bold__
```
**bold** __bold__

```
_italic_   *italic*
```
_italic_ *italic*

```
~~strike~~
```
~~strike~~

### Links

**Inline**

```
An [example](http://url.com/ "Title")
```
An [example](http://url.com/ "Title")

**Reference-style labels**

```
An [example][id]. Then, anywhere else in the doc, define the link:

  [id]: http://example.com/  "Title"
```

An [example][id]. Then, anywhere else in the doc, define the link:

  [id]: http://example.com/  "Title"

**URL autolinking**

```
Go to http://example.com
```

Go to http://example.com


**Taiga user mentions**

Use `@<username>`, for example

```
Hello, my name is @imontoya. You killed my father.
```

Hello, my name is [@imontoya](https://tree.taiga.io/profile/imontoya "Íñigo Montoya"). You killed my father.


**Taiga USs, Tasks and Issues references**

Use ` #<ref>`, for example:
```
The user story #9.
The task #13.
The issue #42.
```

The user story [#9](https://tree.taiga.io/example-project/us/9 "Example user story 9").
The task [#13](https://tree.taiga.io/example-project/tasks/13 "Example task 13").
The issue [#42](https://tree.taiga.io/example-project/issue/42 "Example issue 42").

**Taiga Wiki links**

```
An [example](wiki-page-name-in-slug-format "Page") of wiki link.
```
An [example](https://tree.taiga.io/example-project/wiki/wiki-page-name-in-slug-format "Page") of wiki link.

Other option will be:
```
An [[example-one]] or [[example-two|Example 2]] of wiki links.
```
An [example-one](https://tree.taiga.io/example-project/wiki/example-one "example-one") or [Example 2](https://tree.taiga.io/example-project/wiki/example-two "Example 2") of wiki links.


### Images

**Inline**

```
![alt text](circle1.svg "Title")
```
![alt text](circle1.svg "Title")

**Reference-style**

```
![alt text][id]

[id]: /static/images/circle1.svg "Title"
```
![alt text][id]

[id]: circle1.svg "Title"

**Emoticons**

```
An example emoticon :smile:
```
An example emoticon ![:smile:](smile.png ":smile:")

See a complete list of emoticons at this [Emoji Cheatsheet](http://www.emoji-cheat-sheet.com/).

### Headers

**Setext-style**

```
    Header 1
    ========

    Header 2
     --------
```

**atx-style (closing #'s are optional)**

```
# Header 1 #

## Header 2 ##

### Header 3 ###

#### Header 4 ####

##### Header 5 #####

###### Header 6 ######
```

### Lists

**Ordered, without paragraphs**

```
1.  Foo
2.  Bar
```

1.  Foo
2.  Bar

**Unordered, with paragraphs**

```
*   A list item.

    With multiple paragraphs (extra line break between the list and paragraph).

*   Bar
```

*   A list item.

    With multiple paragraphs.

*   Bar

**You can nest them**

```
*   Abacus
    * answer
*   Bubbles
    1.  bunk
    2.  bupkis
        * BELITTLER
    3. burper
*   Cunning
```

*   Abacus
    * answer
*   Bubbles
    1.  bunk
    2.  bupkis
        * BELITTLER
    3. burper
*   Cunning

### Tables

This is a table:

```
 Header 1  | Header 2
---------- | ----------
Cell 1.1   | Cell 1.2
Cell 2.1   | Cell 2.2
```

 Header 1  | Header 2
---------- | ----------
Cell 1.1   | Cell 1.2
Cell 2.1   | Cell 2.2

Another example with extra pipes on the ends:

```
| Header 1  | Header 2  |
|---------- | ----------|
| Cell 1.1  | Cell 1.2  |
| Cell 2.1  | Cell 2.2  |
```

| Header 1  | Header 2  |
|---------- | ----------|
| Cell 1.1  | Cell 1.2  |
| Cell 2.1  | Cell 2.2  |

An example with inline Markdown:

```
| Header 1    | Header 2          |
|------------ | ----------------- |
| *Cell 1.1*  | http://cell12.com |
| Cell 2.1    | ~~Cell 2.2~~      |
```

| Header 1    | Header 2          |
|------------ | ----------------- |
| *Cell 1.1*  | http://cell12.com |
| Cell 2.1    | ~~Cell 2.2~~      |

### Blockquotes

```
> Email-style angle brackets
> are used for blockquotes.

> > And, they can be nested.

```

> Email-style angle brackets
> are used for blockquotes.

> > And, they can be nested.


```
> * You can quote a list.
> * Etc.
```

> * You can quote a list.
> * Etc.


### Code Spans

```
`<code>` spans are delimited
by backticks.

You can include literal backticks
like `` `this` ``.
```

`<code>` spans are delimited
by backticks.

You can include literal backticks
like `` `this` ``.


### Preformatted Code Blocks

**Auto highlight code block**

using backticks (```)

```
    ` ` `
    This is
    a text example
    ` ` `
```

```
This is
a text example
```

**Specific highlight code block**

```
    ```python
    def hello(world):
       pass
    ```
```

```python
def hello(world):
    pass
```

### Horizontal Rules

Three or more dashes or asterisks:

```
-------

* * *

- - - -
```

-------

* * *

- - - -
