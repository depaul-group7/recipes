## Purpose
This is sample code associated with [DePaul SE452](http://www.cdm.depaul.edu/academics/pages/courseinfo.aspx?Subject=SE&CatalogNbr=452) by yours truely.
<br/><br/>
## Group 7
|Member|Responsibilities|
|----------------------|---------------------------------------|
| Hristina Dokic| Spring API implementation |
| Craig Terry| Database schema design |
| Huanjia Wang| The presentation layer |

## Conflict Resolutions
| #|Area|Decision|Alternatives|Rationale|
|--|---------------|----------|-----------|--------------------|
| 1| IDE| Vs Code | IntelliJ | Easier to use, Team familiarity by most members|
| 2| Dependency Management| Maven| Gradle| Familiarity|
| 3| Communication avenue| Teams| Discord| Every DePaul student has a Teams account, it doesn’t require extra registration |
||||||



| Tool | Used for | commands 
| ----------- | ----------- |------
| *[WSL2](https://docs.microsoft.com/en-us/windows/wsl/install-win10) | To enable Linux toolset on Windows 
| *[Ubuntu](https://www.microsoft.com/en-us/p/ubuntu/9nblggh4msv6) | Linux environment to keep Windows and Mac with similar tools 
| *[Terminal](https://www.microsoft.com/en-us/p/windows-terminal/9n0dx20hk701) | Real Terminal for Windows 
| [SDKMan](https://sdkman.io/) | Simplifies switching between JDKs and SDKs | sdk install java 17.0.6-tem<br/>sdk install gradle 
| [VS Code](https://code.visualstudio.com) | Code Editor  
| [Teams](https://www.microsoft.com/en-us/microsoft-teams/group-chat-software) | Communication avenue 

*recommended for Windows only.  However you can install JDK and VSCode without WSL<br/><br/>
## VSCode extensions
**<i>Be sure to install it on WSL</I> if using WSL
| Extension | Used for 
| ----------- | ----------- 
| [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) | To work with WSL
| [Java IDE Pack](https://marketplace.visualstudio.com/items?itemName=pverest.java-ide-pack) | To work with Java
| [Lombok Annotation Support](https://marketplace.visualstudio.com/items?itemName=GabrielBB.vscode-lombok) | Lombok support

 
## For [Github setup](https://help.github.com/articles/set-up-git)

## Resolved issues and corresponding PRs

| #|Issues|PRs|
|--|----------------------|---------------------------------------|
| 1| [persistence#1](https://github.com/crgtrry/Group7/issues/9)| [persistence#1 created schema.sql...](https://github.com/crgtrry/Group7/pull/10) |
| 2| [persistence#2](https://github.com/crgtrry/Group7/issues/11) | [persistence#1 created schema.sql...](https://github.com/crgtrry/Group7/pull/10) |
| 3| [persistence#3](https://github.com/crgtrry/Group7/issues/12)| [persistence#2 add crud&test for Recipe and Tag](https://github.com/crgtrry/Group7/pull/13) |

## TODO list
1.Update the .gitignore file with a more detailed version<br/>
2.Add the models for all the tables in our project<br/>
3.Add corresponding repository and unit tests for item 2 in the TODO list<br/>
4.Figure out how to deal with models with create clause like CREATE TABLE "RECIPES"."recipe", since that would integrate the table into a RECIPES folder.<br/>