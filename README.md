# CSG Repository Template

This repository serves as a **template** for game development projects.  
It is intentionally **empty** and designed to help you practice setting up a clean, professional project structure using GitHub and Unity.

You are responsible for creating and configuring the Unity project **inside this repository** before beginning any assignment work.

---

## 📁 Repository Structure Overview

The **root of this repository** is **not** the Unity project itself.

Instead:

- The **root folder** is for:
  - Documentation
  - Design notes
  - References
  - Planning files
  - README and other supporting materials

- The **Unity project** will live inside its own subfolder within this repo.

> [!NOTE]  
> This template is built using **Unity 6.3** and will serve as the base for all future Unity assignments in this course.


---

## 🛠️ Setup Instructions

Follow these steps **in order** before starting the assignment.

---

### 1. Create the Unity Project
1. Open **Unity Hub**
2. Click the **+ New Project** button
3. Choose the **Core Universal 3D** template (_unless otherwise instructed_)
4. Set the **location** to this repository’s root folder
5. Name the Unity project folder: `ProjectName-Unity`

>[!NOTE]
> **ProjectName** is the name of your project, typically the name of the repository.
>

---
### 2. Configure Ignore & Attribute Rules
We use a layered configuration to manage files. You must manually "activate" these rules by renaming files.

#### A. Activate the Root Attributes (LFS & SmartMerge)
The repository root contains a file named `Unity.gitattributes`. This contains the rules for Large File Storage (LFS) and the SmartMerge logic you just configured.
1.  Locate `Unity.gitattributes` in the repository root.
2.  RENAME it to `.gitattributes`.
    
> [!NOTE]
> This file must stay in the root folder to work.
> It is named `Unity.gitattributes` in the template because GitHub restricts active LFS triggers on template repositories; renaming it "activates" the tracking for your project.
> 

#### B. The Unity Project Ignore Rules
1.  Locate the `Unity.gitignore` file (also in the root folder).
2.  **MOVE** this file into your `ProjectName-Unity` folder.
3.  **RENAME** it from `Unity.gitignore` to `.gitignore`.
    
> [!WARNING]
> This file must live **inside the Unity project folder**, not the root.
> It handles the engine-specific junk like the `Library/` folder, which can be several gigabytes of generated data.

> [!NOTE]
> Inside the root folder, there is another`.gitignore` file. **Leave this here.**
> It ignores IDE-specific folders (VS Code/Visual Studio), system logs, and build outputs that happen outside of the Unity folder.
> 

---
### 3. Run the Automation Script
This repository template includes a setup script designed to automate your environment. It handles three critical tasks:
-   Git Automation (Commit Rules): Installs a linter that ensures your commit messages follow the project's categorization (e.g., `feat:`, `fix:`, `refactor:`).
-   Branch Protection & Naming (Pre-Push): Installs a "gatekeeper" that prevents you from pushing to the wrong branch (`main`/`release`) and ensures your branch name follows the `type/description` format.
-   Unity YAML Merge: Configures Unity's "SmartMerge" tool on your machine to automatically resolve conflicts in Scenes and Prefabs.

#    

1. **Open** Git Bash
2. Use the **`cd`** command to change to the repo directory 

Example:
```bash
cd D/Students/YourName/CSG3023/26sp-csg3023-sandbox-YourGitHubUserName
```
> [!NOTE]
> If you set up or cloned this repository using an **IDE** (Rider, VS Code, etc.),  
> you do **not** need to open Git Bash separately.
> You can instead:
> 1. Open the **Terminal inside your IDE**
> 2. Ensure the terminal shell is set to **Git Bash**
> 3. The terminal will already be **pointing at your project directory**
> 
> In this case, you can skip the `cd` step and run the setup command directly.

3. **Run** the setup script
```bash
./automation/setup-unity-repo.sh
```
4.  Follow the Prompts:
    -   **Drive Letter:** Type the letter where Unity is installed (usually `C`) and hit Enter.
    -   **Unity Version:** Type your exact Unity version (e.g., `6000.3.6f1`). You can find this in the Unity Hub under the "Installs" tab.

#### What to look for:
-   The script will display `✅ SUCCESS` for both the **Git Automation** and **Unity YAML Merge** sections.
-   A final verification check will run at the end. If it says `VERIFIED`, your setup is complete.

> [!IMPORTANT]
> This setup is LOCAL to your computer. Git hooks and Unity SmartMerge settings are stored in the hidden `.git` folder, which is not synced to GitHub for security reasons.
> 
> You MUST run the automation script every time you:
> -   Clone the project onto a new computer (e.g., switching from a lab PC to a laptop).
> -   Re-clone the project after deleting your local folder.
> -   Update Unity to a newer version (to ensure the SmartMerge path remains valid).
> -   
> If you don't run the script, your branch/commit rules won't work, and your Unity Scenes will likely break during merges!
>
---

### 4. Import Required Unity Package
To keep our Unity hierarchy organized, we will be using the **Simple Unity Hierarchy Folder** package.
This package helps maintain a clean and readable hierarchy in Unity. 
Use the steps below to install the package: 

#### Package Source
🔗 https://github.com/ProfessorAkram/SimpleUnityHierarchyFolder

#### How to Import
1. Open your Unity project
2. Open **Package Manager**
3. Click **➕** → *Add package from Git URL*
4. Paste the repository URL
5. Import the package

> [!IMPORTANT]
>  All projects in this course require that this package be implemented and that the scene hierarchies be organized with folders.
> 

---

### 5. Commit and Push Your Work

Before moving on:

- Verify:
  - Unity project opens correctly
  - `.gitignore` and `.gitattributes` are present
  - Required package is installed
  - Git hooks are installed
 
>[!IMPORTANT]
> **All setup work must be committed and pushed before beginning the assignment.**
>

---

## ✅ Ready to Begin

Once everything above is complete and pushed to GitHub, your project repo and Unity project are ready.

From this point forward:
- Follow assignment instructions
- Commit frequently
- Keep your repository organized and professional

