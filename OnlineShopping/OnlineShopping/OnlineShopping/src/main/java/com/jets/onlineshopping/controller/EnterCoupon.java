/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jets.onlineshopping.controller;

import com.jets.onlineshopping.dao.DBHandler;
import com.jets.onlineshopping.dto.Coupon;
import com.jets.onlineshopping.dto.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "EnterCoupon", urlPatterns = {"/EnterCoupon"})
public class EnterCoupon extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession session = request.getSession(true);
        User user=(User) session.getAttribute("logged");
   
        Long couponCode=Long.parseLong(request.getParameter("couponCode"));
        Coupon coupon=new DBHandler().getCoupon(couponCode);
        if(coupon!=null){
            //user.setCreditLimit(user.getCreditLimit());
            new DBHandler().increaseCreditLimit(user.getEmail(),coupon.getCredit());
            new DBHandler().removeCoupon(coupon.getRandomNum());
            user.setCreditLimit(user.getCreditLimit() + coupon.getCredit());
            session.setAttribute("logged", user);
            request.setAttribute("success", "Your credit has increased by "+coupon.getCredit());
            request.getRequestDispatcher("HomeServlet").forward(request, response);
            return;
        }else{
            request.setAttribute("errorMsg", "Invalid Coupon");
            request.getRequestDispatcher("HomeServlet").forward(request, response);
            return;
        }
        
       /* try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
         /*   out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EnterCoupon</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EnterCoupon at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }*/
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
