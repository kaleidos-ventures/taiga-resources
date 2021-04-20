---
slug: "license" # Unique
title: "What's Taiga's Open Source License?" # Is the question
date: 2021-01-05T00:27:17+02:00
draft: false
type: "faq"
main: true
order: 1

# taxonomies
categories: null
---
There are important considerations governing the [Affero GPL license](http://www.gnu.org/licenses/agpl-3.0.html) in use by Taiga. Please be sure you are familiar with your rights and obligations before starting to work on the Taiga code.

Since the open source license covering Taiga is AGPL, you can freely clone/fork the repo and make any modifications you want. Just remember the basic condition that the Affero GPL brings to the table: any Taiga instance must easily provide to all users a link to the source code that is running that particular Taiga service.

If you don't make any changes to the code, the link is pretty simple, it's just a link to [Taiga's github page](https://github.com/kaleidos-ventures). But if you intend to make adaptations or changes, you must provide a (de-facto) zero-cost way to obtain the complete modified source code. The easiest way would be to fork the repo on github and point your users to that forked repo (you can place that link in the documentation somewhere).

Our repo is quickly evolving so we suggest you keep careful track of our changes, that way you can easily benefit from our own improvements "for free". Some users have decided to use our Taiga cloud instance together with our public API and only develop a separate integration layer that effectively lives outside the Taiga source code. By doing this you can "forget" about changes taking place at the Taiga source code.

Your needs will dictate which option suits you better.

Please read the [AGPL 3.0 license](http://www.gnu.org/licenses/agpl-3.0.html) covering Taiga.

If you would like to discuss specific dual-licensing with us, contact us a support@taiga.io.
