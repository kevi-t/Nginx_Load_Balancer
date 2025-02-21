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

### **1. Build the Docker Image**  
```sh
docker build . -t myserver

## **Run Multiple Backend Servers in Docker Containers**
docker run -p 3001:3000 -d myserver
docker run -p 3002:3000 -d myserver
docker run -p 3003:3000 -d myserver
docker run -p 3004:3000 -d myserver

## Verify Running Containers
docker ps

You should see multiple containers running with different port mappings.

## Testing the Load Balancer
Start NGINX
Ensure that NGINX is installed and configured correctly. Use the provided nginx.conf configuration file to set up the load balancer.
If you need to reload NGINX after making changes to the configuration file:

nginx -s reload

## Make Requests to the Load Balancer
Send multiple requests to NGINX (running on port 8082) using cURL or a browser:

curl http://localhost:8082/

Each request should be handled by a different backend server, confirming the Round Robin balancing strategy.
Stopping and Restarting the Containers
If you need to stop and remove the containers:

sh
Copy
Edit
docker ps -q --filter ancestor=myserver | ForEach-Object { docker stop $_; docker rm $_ }
(For Windows PowerShell, replace ForEach-Object with a for loop if necessary.)

Or manually:

sh
Copy
Edit
docker stop <CONTAINER_ID_1> <CONTAINER_ID_2> <CONTAINER_ID_3> <CONTAINER_ID_4>
docker rm <CONTAINER_ID_1> <CONTAINER_ID_2> <CONTAINER_ID_3> <CONTAINER_ID_4>
To restart the containers after stopping:

sh
Copy
Edit
docker run -p 3001:3000 -d myserver
docker run -p 3002:3000 -d myserver
docker run -p 3003:3000 -d myserver
docker run -p 3004:3000 -d myserver
Folder Structure
bash
Copy
Edit
/mysite
│── /server
│   ├── Dockerfile
│   ├── index.js
│   ├── package.json
│── /nginx
│   ├── nginx.conf
Contributing
Feel free to fork this repository and submit pull requests. Contributions are welcome!

## License
This project is licensed under the MIT License.

This README provides a **clear structure** and **step-by-step instructions** to replicate what you have in the image. Let me know if you'd like any changes! 🚀