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

#### A. Activate the Root Attributes (LFS)

The repository root contains a file named `Unreal.gitattributes`. This contains rules for Large File Storage (LFS) for Unreal assets.

1.  Locate `Unreal.gitattributes` in the repository root.
2.  **RENAME** it to `.gitattributes`.

> [!NOTE]  
> This file must stay in the root folder to work.  
> It is named `Unreal.gitattributes` in the template because GitHub restricts active LFS triggers on template repositories; renaming it "activates" tracking for your project.
> 

#### B. The Unreal Project Ignore Rules
1.  Locate the `Unreal.gitignore` file (also in the root folder).
2.  **MOVE** this file into your `ProjectName-Unreal` folder.
3.  **RENAME** it from `Unreal.gitignore` to `.gitignore`.

> [!WARNING]  
> This file must live **inside the Unreal project folder**, not the root.  
> It handles the engine-specific junk like `Binaries/`, `Intermediate/`, and `Saved/` folders, which can be very large.

> [!NOTE]  
> Inside the root folder, there is another `.gitignore` file. **Leave this here.**  
> It ignores IDE-specific folders (VS Code, Rider, Visual Studio), system logs, and general files outside of the Unreal folder.


---

### 3. Commit and Push Your Work

Before moving on:

- Verify:
  - Unreal project opens correctly
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

