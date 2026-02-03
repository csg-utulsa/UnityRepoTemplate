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
  - READMEs and other supporting materials

- The **Unity project** will live inside its own subfolder within this repo.

> [!NOTE]  
> This template is built using **Unity 6.3** and will serve as the base for all future Unity assignments in this course.


---

## 🛠️ Setup Instructions

Follow these steps **in order** before starting the assignment.

---

### 1. Create the Unity Project

1. Open **Unity Hub**
2. Create a **new Unity project**
3. Set the **location** to this repository’s root folder
4. Name the Unity project folder:**ProjectName-Unity**

---

### 2. Add Unity `.gitignore` and `.gitattributes` 
   - Move the **`.gitignore`** file into the **ProjectName-Unity** folder
   - Rename the **`Unity.gitattributes`** to **`.gitattributes`** and move into the **ProjectName-Unity** folder

These files ensure:
- Temporary and generated files are not committed
- Line endings and file formats are handled correctly

>[!WARNING]
> These files must live **inside the Unity project folder**, not the root repo.

---

### 3. Import Required Unity Package

You must import the **Simple Unity Hierarchy Folder** package.

#### Package Source
🔗 https://github.com/ProfessorAkram/SimpleUnityHierarchyFolder

#### How to Import
1. Open your Unity project
2. Open **Package Manager**
3. Click **➕** → *Add package from Git URL*
4. Paste the repository URL
5. Import the package

This package helps maintain a clean and readable hierarchy in Unity.

---

### 4. Commit and Push Your Work

Before moving on:

- Verify:
  - Unity project opens correctly
  - `.gitignore` and `.gitattributes` are present
  - Required package is installed
  - Script templates are configured
 

>[!IMPORTANT]
> **All setup work must be committed and pushed before beginning the assignment.**

---

## ✅ Ready to Begin

Once everything above is complete and pushed to GitHub, your project repo and Unity project are ready.

From this point forward:

- Follow assignment instructions
- Commit frequently
- Keep your repository organized and professional

