# Nginx Load Balancer with Dockerized Express Servers  

This project demonstrates a load balancing setup using **NGINX** as a reverse proxy and load balancer for multiple **Node.js Express** servers running in **Docker containers**. The load balancer distributes incoming traffic to the backend servers using the **Round Robin** algorithm.  

---

## **Features**  
- Load balancing using **NGINX**  
- Multiple backend servers running **Node.js Express**  
- Dockerized environment for easy deployment  
- Round-robin request distribution  

---

## **Getting Started**  

### **Prerequisites**  
Ensure you have the following installed on your system:  
- [Docker](https://www.docker.com/)  
- [Node.js](https://nodejs.org/)  
- [NGINX](https://nginx.org/)  

---

## **Setup Instructions**  

Build the Docker Image: docker build . -t myserver

## **Run Multiple Backend Servers in Docker Containers**
docker run -p 3001:3000 -d myserver<br>
docker run -p 3002:3000 -d myserver<br>
docker run -p 3003:3000 -d myserver<br>
docker run -p 3004:3000 -d myserver

## Verify Running Containers
docker ps<br>
You should see multiple containers running with different port mappings.

## Testing the Load Balancer
Start NGINX: nginx <br>
Ensure that NGINX is installed and configured correctly. <br>
Use the provided nginx.conf configuration file to set up the load balancer.<br>
If you need to reload NGINX after making changes to the configuration file: nginx -s reload

## Make Requests to the Load Balancer
Send multiple requests to NGINX (running on port 8082) using cURL or a browser: curl http://localhost:8082/<br>
Each request should be handled by a different backend server, confirming the Round Robin balancing strategy.

## **Stopping and Restarting the Containers**

To restart the containers after stopping:<br>
docker run -p 3001:3000 -d myserver<br>
docker run -p 3002:3000 -d myserver<br>
docker run -p 3003:3000 -d myserver<br>
docker run -p 3004:3000 -d myserver<br>

## **Folder Structure**
/mysite<br>
│── /server<br>
│   ├── Dockerfile<br>
│   ├── index.js<br>
│   ├── package.json<br>
│── /nginx<br>
│   ├── nginx.conf<br>

## **Contributing**
Feel free to fork this repository and submit pull requests. Contributions are welcome!

## License
This project is licensed under the MIT License.

This README provides a **clear structure** and **step-by-step instructions** to replicate what you have in the image. Let me know if you'd like any changes! 🚀
