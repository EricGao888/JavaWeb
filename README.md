# JavaWeb
## Configuration
- Add the JDBC driver for MySQL under the WEB-INF folder.
- Add the JSTL JAR and JSTL-API JAR under the WEB-INF folder.
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
- Use ```@Resource(name = "xxx")``` along with the ***xml*** file to perform injection for **database connection pool**.
- The container call the ```service()``` method which calls ```doGet()``` or ```doPost()``` automatically.

### Eclipse Tricks
- Manage imports.
- Create undefined method.
- Locate the definition.
- Auto-generate ```toString()``` for debugging.


### Deploy App on Tomcat Server
1. In Eclipse, stop Tomcat
2. Right-click your project and select Export > WAR File
3. In the Destination field, enter: <any-directory>/mycoolapp.war
4. Outside of Eclipse, start Tomcat
5. Make sure Tomcat is up and running by visiting: http://localhost:8080
6. Deploy your new WAR file by copying it to <tomcat-install-directory>\webapps, Give it about 10-15 seconds to make the deployment. You'll know the deployment is over because you'll see a new folder created in webapps ... with your WAR file name.
7. Visit your new app. If your war file was: mycoolapp.war then you can access it with:  http://localhost:8080/mycoolapp/