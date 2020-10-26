/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.g4furnitureshop.controller;

import com.g4furnitureshop.dao.managerDAO;
import com.g4furnitureshop.model.manager;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class addmanagerServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try {
            PrintWriter out = response.getWriter();
            manager ma = new manager();
            ma.setFullname(request.getParameter("fullname"));
            ma.setGender(Integer.parseInt(request.getParameter("gender")) );
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
            ma.setdOB(sdf.parse(request.getParameter("dOB")) );
            ma.setEmail(request.getParameter("email"));
            ma.setPhone(request.getParameter("phone"));
            ma.setSalary(Integer.parseInt(request.getParameter("salary")));
            ma.setPosition(request.getParameter("position"));
            ma.setUsername(request.getParameter("username"));
            ma.setPass(request.getParameter("pass"));
            
            managerDAO maDAO = new managerDAO();
            if(maDAO.addNew(ma)){
                response.sendRedirect("Admin/adminmanager.jsp");
            }
            
        }catch (Exception ex) {}
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
