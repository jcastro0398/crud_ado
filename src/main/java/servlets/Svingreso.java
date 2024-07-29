package servlets;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Svingreso")
public class Svingreso extends HttpServlet {

    private static final String USUARIO_VALIDO = "admin";
    private static final String CLAVE_VALIDA = "1703";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("ingreso.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");
    if (USUARIO_VALIDO.equals(usuario) && CLAVE_VALIDA.equals(clave)) {
                // Autenticación exitosa
                System.out.println("Ingreso exitoso");
                request.getSession().setAttribute("usuario", usuario);
                response.sendRedirect("prebienvenida.jsp"); // Redirige a la página de bienvenida
            } else {
                // Autenticación fallida
                System.out.println("Error de ingreso: Usuario o clave incorrectos");
                response.sendRedirect("ingreso.jsp?error=1"); // Redirige a la página de ingreso con un parámetro de error
                }
        }
}