/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jets.onlineshopping.controller;

import com.jets.onlineshopping.dao.DBHandler;
import com.jets.onlineshopping.dto.User;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Aya
 */
@WebServlet(name = "SignUpServlet", urlPatterns = {"/signup"})
public class SignUpServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String refererUri = request.getParameter("refererUri");

        // Check if request comes from SignUpServlet url
        if (refererUri != null) {
            try {
                String email = request.getParameter("email");
                DBHandler db = new DBHandler();
                if (db.getUser(email) == null) {
                    String name = request.getParameter("name");
                    String password = request.getParameter("password");

                    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
                    Date birthdate = format.parse(request.getParameter("birthdate"));

                    String job = request.getParameter("job");
                    String address = request.getParameter("address");
//                    float creditLimit = Float.parseFloat(request.getParameter("credit_limit"));
                    float creditLimit = 2000;

                    User user = new User(email, name, password, birthdate, job, creditLimit, address, User.getROLE_USER());
                    db.insertUser(user);

                    HttpSession session = request.getSession(true);
                    session.setAttribute("logged", user);

                    refererUri = refererUri.substring(refererUri.lastIndexOf('/') + 1);

                    if (refererUri.equals("") || refererUri == null) {
                        request.setAttribute("success", "Welcome " + user.getName());
                        request.getRequestDispatcher("HomeServlet").forward(request, response);
                        return;
                    }
                    request.setAttribute("success", "Welcome " + user.getName());
                    request.getRequestDispatcher("HomeServlet").forward(request, response);
                    return;
//                    request.getRequestDispatcher(refererUri).forward(request, response);
                } else {
                    request.setAttribute("signup_failed", true);
                    String uri = request.getHeader("Referer");
                    request.setAttribute("refererUri", refererUri);
                    request.getRequestDispatcher(uri.substring(uri.lastIndexOf('/') + 1)).forward(request, response);
                }
            } catch (ParseException ex) {
                ex.printStackTrace();
            }
        } else {
            response.sendRedirect("register.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
