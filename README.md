# eLibrary Management System  

## Overview  
The **eLibrary Management System** is a web application built using **ASP.NET** for managing digital libraries. It provides features to manage books, users, borrowing records, and other library-related activities. The system aims to simplify library operations and enhance the user experience for librarians and users.

## Screenshots  
![image](https://github.com/user-attachments/assets/c73c5192-172e-447a-88ee-1c030f82f096)
  
![image](https://github.com/user-attachments/assets/e68e81f5-55b8-44af-9066-8f55b84b5220)

## Features  

### For Librarians/Admin  
- Add, edit, and delete book records.  
- Manage user accounts (add, edit, delete).  
- Track book borrow and return activities.  
- Generate reports on library usage and inventory.  

### For Users  
- Search for books by title, author, or category.  
- View book availability and details.  
- Borrow and return books online.  
- View borrowing history.  

## Tech Stack  
- **Frontend:** HTML, CSS, Bootstrap  
- **Backend:** ASP.NET (C#), Entity Framework  
- **Database:** SQL Server  
- **Version Control:** Git and GitHub  

## Prerequisites  
To run the project, ensure the following are installed:  
- Visual Studio 2022 (or later)  
- .NET 6.0 SDK (or appropriate version)  
- SQL Server  

## Installation  

1. Clone the repository:  
   ```bash  
   git clone https://github.com/yourusername/elibrary-management.git  
   ```  

2. Open the project in Visual Studio.  

3. Set up the database:  
   - Update the `appsettings.json` file with your SQL Server connection string.  
   - Run the migrations to create the database schema:  
     ```bash  
     Update-Database  
     ```  

4. Build and run the project:  
   - Press `Ctrl + F5` in Visual Studio to start the application.  

## Usage  
1. Open the application in your browser.  
2. Log in as an admin or register as a user.  
3. Use the admin panel to manage library resources or borrow books as a user.  

## Contribution  
Contributions are welcome! To contribute:  
1. Fork the repository.  
2. Create a new branch:  
   ```bash  
   git checkout -b feature/your-feature-name  
   ```  
3. Commit your changes:  
   ```bash  
   git commit -m "Add your feature description"  
   ```  
4. Push to the branch:  
   ```bash  
   git push origin feature/your-feature-name  
   ```  
5. Open a pull request.  

## License  
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.  

## Contact  
For questions or support, please contact:  
- **Your Name**  
- Email: [son2522004@gmail.com](mailto:son2522004@gmail.com)  
- GitHub: [dobason](https://github.com/dobason)  

---

This version uses precise Markdown syntax with headings, lists, code blocks, and links for readability and professional appearance in your `README.md` file.
