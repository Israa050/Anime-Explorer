# 🌸 Anime Explorer App  

A beautifully designed **Flutter mobile app** to explore your favorite **Animes and Characters** 🎌.  
This project focuses on **UI implementation** (no backend logic yet) with a strong emphasis on **clean architecture, modularity, and scalability**.  

---

## ✨ Overview  

- 📱 **Home Page**: Browse a list of animes and characters with smooth bottom navigation.  
- 🎬 **Details Page**: Dive deeper into anime details with a poster, logo, and custom navigation (Preview & Watch).  
- 💎 **Upgrade Plan Page**: Choose between **Monthly** and **Annual** subscription plans.  

This project demonstrates **Clean Architecture** principles and reusable UI components, making it easier to maintain, scale, and add features in the future.  

---

## 🏛️ Architecture  

The project follows **Clean Architecture** principles:  

- **Separation of concerns** → Each layer has a clear responsibility.  
- **Scalability & testability** → Logic and UI are decoupled.  
- **Reusability** → Shared widgets and models can be easily reused.  

### Why Clean Architecture?  
Because it ensures:  
✔ Maintainable codebase  
✔ Modular feature organization  
✔ Easy testing & refactoring  
✔ Professional development standards  

Additionally, I applied **Object-Oriented Design Principles** inspired by *“The OOP Thought Process”* 📘 to structure classes and achieve better **abstraction, encapsulation, and reusability**.  

---

## 📂 Folder Structure  

```
lib/
└── core/
    ├── networking
    ├── helpers
    ├── theming
    ├── widgets
    └── utils
features/
├── home/
│   ├── data/
│   │   ├── models/
│   │   └── repos
│   ├── logic/
│   └── presentation/
│       ├── screens
│       └── widgets
├── details/
│   ├── data/
│   │   ├── models/
│   │   └── repos
│   ├── logic/
│   └── presentation/
│       ├── screens
│       └── widgets
└── upgrade/
    ├── data/
    │   ├── models/
    │   └── repos
    ├── logic/
    └── presentation/
        ├── screens
        └── widgets
```
---
📌 **Visual Representation**  

🌟 Feature  
 ┣ 📂 Data → Models & Repositories  
 ┣ ⚙️ Logic → Cubit (Business Logic)  
 ┗ 🎨 Presentation  
      ┣ 🖥️ Screens  
      ┗ 🧩 Widgets  
---


---

## 📸 Screenshots  

| Home Page | Details Page | Upgrade Plan |
|-----------|--------------|--------------|
| ![Home](screenshots/home.png) | ![Details](screenshots/details.png) | ![Upgrade](screenshots/upgrade.png) |

---

## 🎥 Demo Video  

👉 [Watch the Demo](https://drive.google.com/file/d/1Zv5eHqcPZt3ES_R53lFO_7db9-NplVLI/view?usp=sharing)  

---

## 🤝 Contribution  

Contributions are always welcome! 💡  

1. Fork the repo 🍴  
2. Create a feature branch 🌱  
3. Commit your changes 💬  
4. Push and create a PR 🚀  

Please make sure your code follows the existing **architecture** and **naming conventions**.  

---

## 👨‍💻 Author  

**Your Name**  
💼 Flutter Developer | 📚 Exploring OOP & Clean Architecture  
🌐 Portfolio: [yourwebsite.com]  
💻 GitHub: [yourusername]  

---

## 🌟 Extra Highlights  

- ✅ **Clean Architecture** (feature-based modularization)  
- ✅ **Cubit State Management**  
- ✅ **Reusable Widgets**  
- ✅ **Object-Oriented Principles** (*from The OOP Thought Process*)  
- ✅ **UI-first Approach** (logic to be integrated later)  


The app is organized **by feature**, making each module independent and reusable.  

