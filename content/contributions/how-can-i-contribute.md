---
title: "How Can I Contribute"
slug: how-can-i-contribute
date: 2020-10-05T11:22:38+02:00
draft: false
image: ""
thumbnail: ""

---

There are many different ways to contribute to Taiga's development, just find the one that best fits with your skills. Examples of contributions we would love to receive include:

- **Bug reports**
- **Code patches, enhancements**
- **Contrib Plugins**
- **Documentation improvements**
- **Translations**
- **UI enhancements**

All of these ways may affect the API, the UI, language localization... or other parts of Taiga. There isn't a single way to contribute, and we'll be happy to help you with your contributions.

Big features are also welcome but if you want to see your contributions included in Taiga codebase we strongly recommend you start by initiating a chat through our [mailing list](https://groups.google.co.uk/d/forum/taigaio).


## Developer Certificate of Origin + License

> Contributing to Taiga by adding code to its repositories (typically a Pull Request) implies acceptance of the DCO and License terms.

By contributing to Taiga Agile LLC., You accept and agree to the following terms and conditions for Your present and future Contributions submitted to Taiga Agile LLC. Except for the license granted herein to Taiga Agile LLC. and recipients of software distributed by Taiga Agile LLC., You reserve all right, title, and interest in and to Your Contributions.

All Contributions are subject to the following [DCO + License terms](https://github.com/taigaio/taiga-back/blob/master/DCOLICENSE).

## Bug reports

Bugs are about code, but **not only about code**. You can find a bug in the UX, the design, the translations, the documentation. If you **find a bug** in Taiga you can always report it:

- in [Taiga issues](https://tree.taiga.io/project/taiga/issues). **This is the preferred way**
- in GitHub we have different projects with issues as well; you can create an issue in the corresponding repository:

  - taiga-back: [taiga-back github issues](https://github.com/taigaio/taiga-back/issues)
  - taiga-front: [taiga-front github issues](https://github.com/taigaio/taiga-front/issues)
  - taiga-front-dist: [taiga-front-dist github issues](https://github.com/taigaio/taiga-front-dist/issues)
  - taiga-events: [taiga-events github issues](https://github.com/taigaio/taiga-events/issues)
  - taiga-protected: [taiga-protected github issues](https://github.com/taigaio/taiga-protected/issues)
  - taiga-docker: [taiga-docker github issues](https://github.com/taigaio/taiga-docker/issues)
  - taiga-doc: [taiga-doc github issues](https://github.com/taigaio/taiga-doc/issues)
  - taiga-resources: [taiga-resources github issues](https://github.com/taigaio/taiga-resources/issues), which is the repository for this web.
- send us an email to support@taiga.io if is a bug related to [tree.taiga.io](https://tree.taiga.io)
- send us an email to security@taiga.io if is a **security bug**.

One of our fellow Taiga developers will search, find and hunt it as soon as possible.

**Reporting a bug**: Please, before reporting a bug, take time to write down as much detail as possible: explain why this is a bug for you and how can we reproduce it. It'll be useful as well to know your Operating System and your browser and version. If it's possible, attach a screenshot to give more context to the bug.

Usually, it takes less time to fix a bug if the developer knows how to find it. Thanks to that information, we'll be faster fixing any bug.

**Localization Bugs**: Taiga use Transifex to manage the i18n files so don't submit a pull request to those files (except -en.json). To fix a translation, just access our team of translators, set up an account in the [Taiga Transifex project](https://www.transifex.com/organization/taiga-agile-llc/) and start contributing.

## Code patches, enhacements

Taiga will always be glad to receive code patches to update, fix or improve its code.

If you know how to improve our code base or you found a bug, a security vulnerability or a performance issue and you think you can solve it, we will be very happy to accept your pull-request. If your code requires considerable changes, we recommend you first  talk to us directly. We will find the best way to help. If you would like to implement it by yourself consider if it's a small or a big change.

Besides, you'd probably like to make yourself confortable with the [development environment](http://taigaio.github.io/taiga-doc/dist/setup-development.html). If you find some problems, please let us know in our [mailing list](https://groups.google.co.uk/d/forum/taigaio).

### Small Changes

They can be crafted and submited to the [Github repositories](https://github.com/taigaio) as a _Pull Request_.

### Major Changes

Before contributing with a major change to Taiga, it should be discussed first with the Taiga Team so that we can better coordinate our efforts, prevent duplication of work, and help you to craft the change so that it is successfully accepted into the project. Please, contact us in the [mailing list](https://groups.google.co.uk/d/forum/taigaio) or via [support@taiga.io](Support email).

We have defined a concrete workflow for these changes:

1. **User Story**: Send us a complete description of the functionality you'd like to develop, how it should work, for which profiles, as if you were writing a User Story. Please include some ideas of what would be a definition of Done of the User Story. The team will review it, decide whether or not it could make it into Taiga Core. If not, you can always write a plugin.
2. **Mentorship**: If accepted, Taiga team will help you, and a person from the team will be your contact in the development process. The Story will be visible in the [Taiga Kanban](https://tree.taiga.io/project/taiga/kanban).
3. **User Experience**: The functionality will require some wireframes or ideas to be developed correctly. A good UX its an essential part of Taiga success. You should create a user experience proposal and the Taiga UX team will help you.
4. **Design**: The design should respect the Taiga style. Try to reproduce other areas of the site. The taiga design team will review this proposal as well.
5. **Development**: The next step is the development. Remember to add unit, integration and e2d tests as well as the new code. We have the API well documented too in [taiga-doc](http://taigaio.github.io/taiga-doc/dist/api.html).
6. **Pull request**: The last step it to create the Pull Reuqest. Remember to add a good description and screenshots are welcome too. Once the pull request is done, someone else from the team will review the code to ensure that it fits with the good practices and styles. If it does, the PR will be merged and will be on the next Taiga release.

> Don't forget to add your name to `AUTHORS.rst` file!

If you think you are not able to do one or more of the parts of the process, your contribution is still welcome, but we cannot ensure that it will make it soon into the Taiga core anytime soon. It will depend on our priority backlog.

Thanks a lot! It is really great that we could make Taiga better with the help of the community.

## Contrib Plugins

Taiga supports contrib plugins to add or overwrite some functionalities. You can create your own contribs and share the the community or use any of the [contrib plugins]({{< ref "contributions" >}}).

## Documentation improvements

Currently, we have authored three main documentation hubs:

- **[API](https://taigaio.github.io/taiga-doc/dist/api.html)**: Our API documentation and reference for developing from Taiga API.
- **[Documentation](https://taigaio.github.io/taiga-doc/dist/)**: If you need to install Taiga on your own server, this is the place to find some guides.
- **[Taiga Resources](https://resources.taiga.io)**: This page is intended to be the support reference page for the users.

If you find some errors, or want to propose changes to improve readability, you can create issues or submit code changes to these repositories:
- [Taiga documentation](https://github.com/taigaio/taiga-doc)
- [Taiga resources](https://github.com/taigaio/taiga-resources)

## Translations

We are ready now to accept your help translating Taiga. It's easy (and fun!): just access our team of translators with the link below, set up an account in Transifex and start contributing. Join us to make sure your language is covered! **[Help Taiga to translate content](https://www.transifex.com/taiga-agile-llc/taiga-back/ "Help Taiga to trasnlatecontent")**

**Localization Bugs**: Taiga use Transifex to manage the i18n files so don't submit a pull request to those files (except -en.json). To fix a translation, just access our team of translators, set up an account in the [Taiga Transifex project](https://www.transifex.com/organization/taiga-agile-llc/) and start contributing.

## UI enhancements

Taiga is made for developers and designers. We care enormously about UI because usability and design are both critical aspects of the Taiga experience.

If you have some ideas to make Taiga UI better, we will love to receive your feedback. Please send us your enhancement, with the reason and, if possible, an example. Our design and UX team will review your proposal as soon as possible. We recommend you to use our [mailing list](https://groups.google.co.uk/d/forum/taigaio) so we can have a lot of different opinions and debate.
