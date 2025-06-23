# Real Estate Rental and Tenant Management System - Property Plus

Property Plus is a real estate rental and tenant management system.t.

1.Back-end (server/) — built with Node.js and Express; handles authentication (JWT), user roles (owner vs tenant), property listings, rent payments, contracts, chat, email notifications, etc.
2.Front-end (client/) — a React/Vite app where:

-Property owners can list and manage properties, tenants, contracts, and payments.

-Tenants can browse/filter listings, view details, message owners, and send emails.


Steps to Build and Run application in Docker

1. Create a Docker file

    Sample Docker file is available in this repo

 2.Build a Docker Image

 To build the Docker image, run the following command in your terminal:
 
     docker build -t real-estate-full .

 3. Run Application

To run the Docker image, use the following command:

     docker run -p 5000:5000 real-estate-full

Navigate to http://localhost 
