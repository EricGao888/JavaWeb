# JavaWeb
## Configuration
- Add the JDBC driver for MySQL under the WEB-INF folder.
- Add the content.xml under the META-INF to config JDBC.
- The @Resource is assocated with the name in the context.xml.

## Trouble Shooting
- Modifying the 'Server' folder automatically created by Eclipse will cause problem, you can delete the hidden '.metadata' folder to repair the bug.

## Development Diary
- In StudentServletController, ```init()``` method is called by the server when the Servlet is initialized. 
- Run Servlet instead of JSP to test.
- Use ```Inspect``` in Chrome to help debug the front-end.
