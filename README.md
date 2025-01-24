Deployed My Spotify Clone App Using Docker: A Step-by-Step Guide for Seamless Deployment



![image](https://github.com/user-attachments/assets/75a02c47-adcf-4efc-ab95-af43dfa554f6)




<img width="960" alt="2025-01-24 (12)" src="https://github.com/user-attachments/assets/67b13038-9925-4ab1-bc81-561d3c08fa66" />




**Tech Stack and Tools**
- Here’s the stack that powered my deployment:
 Frontend: React
- API Integration: Spotify API
- Containerization: Docker
- Server: Nginx
- Deployment Workflow
- Here’s a step-by-step breakdown of how I deployed the app:

**💻 1. Setting Up the Project**
- Developed the Spotify Clone App using React.
- Integrated the Spotify API for fetching music data using my unique API key.
- 🐳 2. Dockerizing the Application

**Created a Dockerfile to containerize the app**
- dockerfile
- FROM node:18 AS build
- WORKDIR /app
- COPY package*.json ./
- RUN npm install
- COPY . .
- RUN npm run build

- FROM nginx:alpine
- COPY — from=build /app/build /usr/share/nginx/html
- EXPOSE 80
- CMD [“nginx”, “-g”, “daemon off;”]

**Configured environment variables securely:**
- REACT_APP_SPOTIFY_API_KEY=(use your api-key)
- REACT_APP_SPOTIFY_API_KEY=
- 🚀 3. Running the Container

- Built and ran the Docker image:
- docker build -t spotify-clone . docker run -d -p 3000:3000 --name spotify-clone-container \ -e REACT_APP_SPOTIFY_API_KEY=f5ada84e2b584c3dbf47c31e87e01979 \ spotify-clone


<img width="960" alt="2025-01-24 (13)" src="https://github.com/user-attachments/assets/a7bb05f7-9502-4f4e-af8b-95c44b74c35e" />




**🌐 4. Verifying the Deployment**
- Accessed the app at http://localhost:3000.
- Tested the functionality to ensure everything works perfectly.



<img width="960" alt="2025-01-24 (20)" src="https://github.com/user-attachments/assets/d3f766a3-babc-4635-8817-d742e1cc6724" />



<img width="960" alt="2025-01-24 (21)" src="https://github.com/user-attachments/assets/352f064c-ccf9-4c0b-95cb-91071372ab4d" />




#Docker #React #SpotifyClone #WebDevelopment #DevOps #Containerization





