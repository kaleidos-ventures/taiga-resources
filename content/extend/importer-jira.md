---
title: "Jira Importer"
date: 2020-10-05T11:27:09+02:00
draft: false
categories:
  - "Extend Taiga"
thumbnail: "images/import-jira.png"
thumbnail_home: "images/import-jira.png"
---

***Disclaimer: Some Taiga product screenshots might refer to older Taiga or Jira releases. When in doubt, please follow the written instructions.***

### Suggested step before importing your project. Read this first!

**Summary:** if you want to import team members too, make sure those team members are Taiga users already. A nice workaround is creating a dummy project and inviting them to it. taiga will take care of sending invites and you'll be able to track how many users are now part of Taiga before actually importing the project itself.

When you import your project, you often want to also import your users and keep all the relations between the work items and the team members. Taiga's import project will first look for its team members, add them to the project and then proceed with the content itself.

**If those users don't exist on that particular Taiga instance** (tree.taiga.io or your self-managed Taiga instance), the import process will still go ahead but **the link between content and users will be lost** and it won't be recovered even if you add those users *afterwards*.

**If you need to keep the relationships between content and team members** (for example, such team member was assigned to that task or such comment was made by that team member), you need to make sure those team members already exist on that Taiga platform. You can achieve this by asking them to sign up themselves (using the same email address that identifies them on the source platform) or **creating a dummy project and invite them to it**. 

On the top of your Taiga screen you have the "Projects" button. After you have created/selected a project, to invite a new team member go to SETTINGS>MEMBERS (on the sidebar). On the top there is the NEW MEMBER button. You can do this in batches of five team members each. You probably can ignore the different ROLES option here since this project is temporary.

Taiga will send invites to all users that are not yet part of the platform and you will be able to track how many invites have been accepted. You can resend invites as much as you want.

**Whenever you are happy with the number of people that were part of Taiga**, either by signing up or accepting your invitation, **you can proceed with a project import**. This way, you will be able to seamlessly start working on Taiga. After this, you can safely remove the dummy project since it probably doesn't provide any value any more.

For more project customisation options, be sure to check [The Project Customisation Guide]({{< ref "/features/customisation.md" >}})


### Important notice about Jira releases and Taiga compatibility

  * Taiga support Jira releases up to 8.3.5. It has been tested and should work out of the box.
  * Taiga might support Jira releases from 8.3.5 to 8.5.x. Most probably it works.
  * Taiga does not support Jira releases from 8.6.

If you encounter any issues with the Jira to Taiga importer please write to support@taiga.io. We are always happy to find challenging Jira projects to polish our importer.
It is important that you always use the latest Taiga release to perform Jira projects imports so we can more easily reproduce the issue you might be facing.

### What I need to import from Jira?

1. You need to configure in your Jira the access from Taiga that allows you to give access with the rights of your users. To do this, you have to go to the applications settings in your Jira server.

{{< figure src="/images/import-jr-cert-step1.png" caption="New project creation" alt="New project creation" class="articlefigure" >}}

2. Then, select "Application links" configuration.

{{< figure src="/images/import-jr-cert-step2.png" caption="New project creation" alt="New project creation" class="articlefigure" >}}

3. And create a new application link that points to "https://tree.taiga.io" (or your taiga instance url).

{{< figure src="/images/import-jr-cert-step3.png" caption="New project creation" alt="New project creation" class="articlefigure" width="100%" >}}

4. You may be asked to confirm the url in some cases, you simply have to confirm the url.

{{< figure src="/images/import-jr-cert-step4.png" caption="New project creation" alt="New project creation" class="articlefigure" >}}

5. Then, you have to create the new application link called "Taiga" as a "Generic Application" type, and check the "Create incomming link".

{{< figure src="/images/import-jr-cert-step5.png" caption="New project creation" alt="New project creation" class="articlefigure" >}}

6. In the incomming link configuration, you have to set the consumer key to "taiga", the consumer name to "Taiga", and in the public key you have to copy and paste the text below:

    <pre class="white">-----BEGIN PUBLIC KEY-----
    MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA6HMNth/OevwEmvUJb2wP
    TftjP2PBwiVqNGvrWnjypZHT6KixDd9av1NlG3ldQJDn7ZdZ0tJmZ/bfeUlV8LX2
    QuL5StU6LAP1T3665HZTlzvfsfiC+52eIUi+eXWStZmQ7jhok4e6kIHgddKHSVgQ
    rZ/xL5eBOprmCoQ2YoScpSt7p2dPuB3TRht2paF0ppd+w8zKkghojPK0H9yZfEIT
    V/+H/bOllcf/1Qs42cUn4Im3bASoXy17fCtwF4IYGx2OAAy58T4GHnKuuqRukGdP
    HYs8qDBl4Nq6bJaUOy7zwRFxpR4WQqsAL0v/RR5Eu6N8std2NPeK4dgj/SYoVXVC
    zwIDAQAB
    -----END PUBLIC KEY-----</pre>

{{< figure src="/images/import-jr-cert-step6.png" caption="New project creation" alt="New project creation" class="articlefigure" >}}

7. Finally, you get the confirmation of your "Application link" creation. Now you can import projects from this Jira instance.

{{< figure src="/images/import-jr-cert-step7.png" caption="New project creation" alt="New project creation" class="articlefigure" width="100%" >}}

### How do I import a project from Jira?

1. To start the importation project, you have to got to your project menu, and click on "New Project" button.

{{< figure src="/images/import-jr-step1.png" caption="New project creation" alt="New project creation" class="articlefigure" >}}

2. After that, you can select how to create the project, in this case we want to "Import project".

{{< figure src="/images/import-jr-step2.png" caption="Start import process" alt="Start import process" class="articlefigure" width="100%" >}}

3. You can select which importer do you want to use, in this case, you have to select the "Jira" importer and fill the URL field with your Jira URL and click access.

{{< figure src="/images/import-jr-step3.png" caption="Select importer" alt="Select importer" class="articlefigure" width="100%" >}}

4. As soon as you click access, you will be redirected to the Jira authorization page, to allow Taiga to access to your projects (during the next day). You have to click "Allow", to continue the process.

{{< figure src="/images/import-jr-step4.png" caption="Authorize access to Jira" alt="Authorize access to Jira" class="articlefigure" >}}

5. Then you have to select which jira project want to import.

{{< figure src="/images/import-jr-step5.png" caption="Select Jira project" alt="Select Jira project" class="articlefigure" width="100%" >}}

6. Once you have selected the project you have to define how you want to import the project. This include:

  * The title of the project.
  * The description of the project.
  * If the project is public or private
  * Which kind of project do you want to create (If you are not importing Jira Agile Board, in this case, is automatically detected).
  * If you want to keep a link from your taiga User Stories to the original jira issues.

{{< figure src="/images/import-jr-step6.png" caption="Fill new project information" alt="Fill new project information" class="articlefigure" width="100%" >}}

7. Before finish the import process you have to match your Jira users with your Taiga users, this allow us to keep assignation, creation and comments author information correctly.

{{< figure src="/images/import-jr-step7.png" caption="Select users" alt="Select users" class="articlefigure" width="100%" >}}

8. Finally, you only have to click "Import" button to start the import process, this can take a while, so be patient.

{{< figure src="/images/import-jr-step8.png" caption="Confirm users selection" alt="Confirm users selection" class="articlefigure" width="100%" >}}

9. After the import process, you can access to your new created project that will looks like this.

{{< figure src="/images/import-jr-step9.png" caption="Imported project" alt="Imported project" class="articlefigure" >}}

### Wich data is imported, and how?

  - Jira Project or Jira Board as Taiga Scrum/Kanban/Issues Project.
  - Statuses.
  - Issues as User Story/Epics/Issues.
  - Subtasks as User Story tasks or Epic User Stories.
  - Jira Agile sprints as Taiga Sprints
  - Jira members as Project members.
  - Labels as tags.
  - Due Date field as Taiga custom field "Due date".
  - Priority field as Taiga custom field "Priority".
  - Resolution field as Taiga custom field "Resolution".
  - Resolution date field as Taiga custom field "Resolution date".
  - Environment as Taiga custom field "Environment".
  - Component field as Taiga custom field "Components".
  - Affected versions field as Taiga custom field "Affected version/s".
  - Fix versions field as Taiga custom field "Fix version/s".
  - Links as Taiga custom field "Links".
  - Custom fields.
  - Comments.
  - Attachments.
  - Changes in title, description, attachments, labels, sprints, story points, custom fields and state.
  - Issue assignations as User Story/Task/Issue assignation for the first, and User Story/Task/Issue watchers for the rest.
