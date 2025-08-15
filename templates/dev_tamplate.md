# PROMPT  TEMPLATE FOR DEVELOPERS AND ARCHITECTS

1. ROLE:

   Act as an expert Full-Stack Software Architect and Senior Developer.

2. OBJECTIVE:

   Generate the foundational code, file structure, and setup instructions for a [Specify Type: e.g., Web, Mobile, Desktop, API] application. The goal is to create a functional starting point that adheres to best practices for the chosen technology stack.

3. APPLICATION CONCEPT:

   - Name: [Your Application Name (Optional)]

   - Core Purpose: Clearly describe the application's primary goal in 1-2 sentences. What problem does it solve? [e.g., A web application to track personal reading habits and manage a book wishlist.]

   - Target Audience: Who are the primary users? [e.g., Casual readers, students, book club members.]

4. CORE FEATURES (Functional Requirements):

   List the essential features needed for the initial version. Be specific about inputs, processes, and outputs for each.

   - Feature 1: [e.g., User Authentication: Users must be able to sign up with email/password, log in, and log out. Implement basic session management.]

   - Feature 2: [e.g., Book Logging: Logged-in users should be able to add a book they've read, including title, author, rating (1-5 stars), and a short review.]

   - Feature 3: [e.g., Reading List Display: Logged-in users should see a list of books they've logged, sortable by title, author, or rating.]

   - Feature 4: [e.g., Wishlist Management: Logged-in users should be able to add books (title, author) to a wishlist and remove them.]

   - [Add more features as needed]

5. TECHNOLOGY STACK:

   - Frontend: [e.g., React, Vue, Angular, Vanilla HTML/CSS/JavaScript, Swift (for iOS), Kotlin (for Android)]

   - Backend: [e.g., Python (Flask/Django), Node.js (Express), Java (Spring Boot), Ruby on Rails, Go]

   - Database: [e.g., PostgreSQL, MySQL, MongoDB, SQLite, Firebase Realtime Database]

   - API Style (if applicable): [e.g., RESTful, GraphQL]

   - Key Libraries/Frameworks: [e.g., Tailwind CSS for styling, Axios for HTTP requests, Mongoose for MongoDB ODM, SQLAlchemy for SQL ORM]

   - Deployment Environment (Consideration): [e.g., Docker containerization planned]

6. ARCHITECTURE & STRUCTURE:

   - Overall Architecture: [e.g., Monolithic, Microservices (specify services if known), Client-Server]

   - Directory Structure: Propose a logical folder structure. [e.g., /app, /models, /views or /controllers, /routes, /static, /templates, /database]

   - Code Style: [e.g., Follow PEP 8 for Python, use Prettier for formatting JS/CSS/HTML]

7. USER INTERFACE (UI) / USER EXPERIENCE (UX) GUIDELINES (Optional but helpful):

   - General Style: [e.g., Minimalist, Modern, Data-driven]

   - Key Screens/Views: Briefly describe the main views corresponding to the features. [e.g., Login Page, Signup Page, Dashboard (showing reading list), Add Book Form, Wishlist Page]

   - Component Library (if any): [e.g., Use Material UI components, Bootstrap classes]

8. DATA MODEL (Initial Schema):

   Define the basic structure for database tables or collections.

   - Users Table/Collection: [e.g., user_id (PK), email (unique), password_hash, created_at]

   - Books Table/Collection: [e.g., book_id (PK), user_id (FK), title, author, rating, review_text, date_added]

   - Wishlist Table/Collection: [e.g., wishlist_item_id (PK), user_id (FK), title, author, date_added]

   - [Add more models as needed]

9. DELIVERABLES:

   - Generate the necessary code files based on the specified structure and stack.

   - Include basic error handling.

   - Include comments in the code explaining key sections.

   - Provide a README.md file with:

     - Clear setup instructions (dependencies, database setup, running the app).

     - A brief overview of the generated structure.

     - Instructions on how to run basic functions (e.g., create a user, add a book).

   - Provide a requirements file (e.g., requirements.txt for Python, package.json for Node.js).

10. CONSTRAINTS & CONSIDERATIONS:

    - [e.g., Prioritize clarity and maintainability over micro-optimizations.]

    - [e.g., Ensure basic input validation for forms.]

    - [e.g., Do not include actual deployment scripts, just the application code.]

    - [e.g., Use environment variables for configuration like database connection strings.]

--- END OF PROMPT ---
