## Purpose
This is the official location for the recipe repo of group 7.
The app we would like to create is a website for user to post, to search and to comment on different recipes all over the world.
<br/><br/>
## Group 7
|Member|Responsibilities|
|----------------------|---------------------------------------|
| Hristina Dokic| Credential related entities under security folder |
| Craig Terry| Tag related entities under tags folder |
| Huanjia Wang| Recipe, Comment |

## Conflict Resolutions
1. Primarily vote (because of odd number of members).  If a member feels strongly about an issue/area, then they take charge and/or instruct.
2. Another option to resolve the conflict could be: everyone is required to clone the repo from the GitHub location. instead of directly committing changes to the main branch, we are required to create PRs, and these PRs are not supposed to be merged into the original branch unless everyone 

## Adopted technology
| #|Area|Decision|Alternatives|Rationale|
|--|---------------|----------|-----------|--------------------|
| 1| IDE| Vs Code | IntelliJ | Easier to use, Team familiarity by most members|
| 2| Dependency Management| Maven| Gradle| Familiarity|
| 3| Communication avenue| Teams| Discord| Every DePaul student has a Teams account, it doesn’t require extra registration |
||||||



| Tool | Used for | commands 
| ----------- | ----------- |------
| *[Terminal](https://www.microsoft.com/en-us/p/windows-terminal/9n0dx20hk701) | Real Terminal for Windows 
| [SDKMan](https://sdkman.io/) | Simplifies switching between JDKs and SDKs | sdk install java 17.0.6-tem<br/>sdk install gradle 
| [VS Code](https://code.visualstudio.com) | Code Editor  
| [Teams](https://www.microsoft.com/en-us/microsoft-teams/group-chat-software) | Communication avenue 

## VSCode extensions
**<i>Be sure to install it on WSL</I> if using WSL
| Extension | Used for 
| ----------- | ----------- 
| [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) | To work with WSL
| [Java IDE Pack](https://marketplace.visualstudio.com/items?itemName=pverest.java-ide-pack) | To work with Java
| [Lombok Annotation Support](https://marketplace.visualstudio.com/items?itemName=GabrielBB.vscode-lombok) | Lombok support
| [Gradle for Java](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-gradle) | Gradle command
| [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) | To work with Docker

 
## For [Github setup](https://help.github.com/articles/set-up-git)

## Meeting journal
- Apr 4: Every team member made a self-introduction. We talked about when we should meet, what kind of features each of us might be responsible for.
- Apr 15: Instead of creating tables by using schema.sql, we adopt JPA to manage the table creation.
- Apr 30: Had a discussion over the pros and cons between Maven and Gradle and finally made the decision to move from Maven to Gradle.
- May 3: Discussion on how we are going to divide the responsibility since we kind of had some misunderstanding on the rubrics of this class.  The meeting ended with the decision of restructuring the folders to better show responsibility.
- May 9: Transfer the code base to a new repo location under a newly created organization so that members could all be granted permission to add secrets to the repo.


## Decisions made
1. We agreed on using Teams as your team communication software, since as a DPU student we’ve already registered automatically, and since the chat and meeting features provided by Teams are both of good quality and simple to use.
2. We agreed on meeting every Tuesday at 8.00 p.m. where each team member will make a simple presentation of what they completed for that week, any ideas or the issues they might be facing at that time.
3. We first pick Maven because we are more familiar with it. Later we transferred to Gradle since the demo, the example and the teaching are all about Gradle. Using Gradle to manage our project would just make our life much easier.
4. We decided to restructure the folders to map our responsibilities, which could also ease the difficulty to identify indivision contributions and make our commits less conflict-prone.
5. Transfer the code base to a new repo location under a newly created organization so that members could all be granted permission to add secrets to the repo

## Project Progress:
1. Tables have been added to the project:
- Recipe
- Tags
- TagsInfo
- RecipeTags
- Comment
2. Added Services for these entities and corresponding service tests.
3. Added log and swagger integration.
4. Added GitHub actions to build jar file, build Docker image and push to Docker Hub.
5. Plan to add UI in the future.

## Appendex