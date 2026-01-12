
# TFPB Project

TFPB is an acronym for "Time For Pickleball".

## Overview 

TimeForPickleball.com is a website that provides information about pickleball 
relevant to Seattle and the surrounding area.  The website is a comprehensive 
resource for open play times and locations used by pickleball enthusiasts to find 
games and places to play.  

The TimeForPickleball.com website was designed and developed by Miguel de Campos.  
He is also one of the original founders of the Seattle Metro Pickleball Association.

The TimeForPickleball.com website is a static HTML website requiring technical 
understanding of HTML, CSS, and Javascript to update the data presented on the 
website. Miguel maintains the data presented on the website by hand editing the 
HTML pages and manually deploying the changes to the web hosting provider.

The intent of this project is to build a web application that allows the efficient 
and productive management of the data without the need to understand HTML, CSS, 
Javascript, web hosting, and deployment practices.  

The end result will allow Miguel to easily update the information on the website, 
easily search for open play locations and times, and open the possibility 
for Miguel to delegate the responsibility of data updates to other individuals 
and organizations.


## Project Phases and Deliverables

The TFPB project consists of following 5 core project phases and deliverables.

- Web Scraper
- Database
- Web Application
- Systems Infrastructure
- PDF Scraper

### Web Scraper
The development of a simple web scraper using available libraries to extract 
the relevant data from the TimeForPickleball.com website.

The following are some of the technologies used to build the web scraper.

- Headless Chrome Browser
- Chrome DevTools Protocol aka CDP

### Database
The design and development of a database to store the information from the 
TimeForPickleball.com website in a structured normalized manner used by the web 
application to retrieve and update records in the database.

The following are some of the items created during the design and development 
of the database.

- Entity Relationship Diagram
- Schema Migration Scripts
- Data Migration Scripts
- Seed Data Scripts

### Web Application
The development of a web application that retrieves and updates information stored 
in the database.  The information is rendered as HTML views for general public, 
users, and administrators.

The following are some of the features created as part of the development of 
the web application.

- Authentication and Authorization
- Public Facing Section
- User Facing Section
- Administrative Facing Section
- Search

### Systems Infrastructure
The development of scripts to provision, configure, and deploy the database and web 
application to the hosting providers infrastructure.

THe following are some of the items developed for the the systems infrastructure.

- Provisioning Scripts
- Configuration Scripts
- Deployment Scripts

### PDF Scraper
The development of a PDF scraper using available libriaries to extract the 
relevant data from PDFs from Seattle Parks and Recreation websites.


