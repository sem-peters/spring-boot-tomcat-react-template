Template for a Spring Boot application, deployable as a WAR file (intended for Tomcat).
Includes:
- Jakarta Server Pages (JSP) support, including JSTL
- Spring Boot
- Basic Vite project that builds into the WAR file
    - To change the framework, simply remove the 'src/main/frontend' directory and run 'npx create-vite' to replace it. Make sure to set 'manifest' to 'true' in the 'vite.config.js' file.