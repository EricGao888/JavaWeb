# JavaWeb
## Configuration
- Add the JDBC driver for MySQL under the WEB-INF folder.
- Add the content.xml under the META-INF to config JDBC.
- The @Resource is assocated with the name in the context.xml.

## Trouble Shooting
- Modifying the 'Server' folder automatically created by Eclipse will cause problem, you can delete the hidden '.metadata' folder to repair the bug.

## Development Diary

### MVC
- In StudentServletController, ```init()``` method is called by the server when the Servlet is initialized. 
- Run Servlet instead of JSP to test.
- Use ```Inspect``` in Chrome to help debug the front-end.
- Not all pages need back-end.
- Visiting the front-end page directly(jsp file), you will see a web page formed of HTML and CSS only. To view the page with data, you'd better visit the back-end file(Servlet file) to see the entire dynamic page.
- Back-end servlet achieve the user's request through ```request``` and acquire the specific information through ```request.getAttribute()``` method.
- Use ```@Resource(name = "xxx")``` to perform injection for **database connection pool**.
- The container call the ```service()``` method which calls ```doGet()``` or ```doPost()``` automatically.

### Eclipse Tricks
- Manage imports.
- Create undefined method.
- Locate the definition.