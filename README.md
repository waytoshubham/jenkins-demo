# 🚀 Jenkins CI/CD Java App (Windows Setup)

This project demonstrates a simple Continuous Integration and Continuous Deployment (CI/CD) pipeline using **Jenkins**, **Docker**, and **GitHub** on a **Windows** system.

---

## 🎯 Objective

Automate the process of building and deploying a Java application using a Jenkins pipeline triggered by GitHub code commits.

---

## 🧰 Tools Used

- ✅ Jenkins
- 🐳 Docker Desktop for Windows
- 💻 Java (OpenJDK)
- ☁️ Ngrok (for webhook tunneling)
- 🔗 GitHub

---
🔧 Prerequisites (on Windows)
✅ Java: Ensure Java (JDK) is installed.

🐳 Docker Desktop: Install and run Docker Desktop for Windows.

🧰 Git: Install Git and initialize your repo.

🧪 Jenkins:

Download jenkins.war: https://www.jenkins.io/download

## To Run Jenkins in your Docker Container
docker run -d ^
--name jenkins ^
-p 8080:8080 ^
-p 50000:50000 ^
-u root ^
-v jenkins_home:/var/jenkins_home ^
-v //var/run/docker.sock:/var/run/docker.sock ^
jenkins-docker


# Clone the project
git clone https://github.com/your-username/jenkins-java-app.git
cd jenkins-java-app

# Build Docker manually (optional)
docker build -t my-java-app .

# Push code to GitHub to trigger the pipeline
git add .
git commit -m "Initial commit"
git push origin main


