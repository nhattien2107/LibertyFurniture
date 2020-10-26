/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.g4furnitureshop.controller;

import com.g4furnitureshop.dao.productlistDAO;
import com.g4furnitureshop.model.productlist;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Admin
 */
@MultipartConfig
public class addproductServlet extends HttpServlet {

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
            productlist pro = new productlist();
            
            pro.setProduct_name(request.getParameter("product_name"));
            pro.setProduct_detail(request.getParameter("product_detail"));
            pro.setPrice(Integer.parseInt(request.getParameter("price")));
            pro.setBrand_id(request.getParameter("brand_id") );
            pro.setProducttype_id(request.getParameter("producttype_id") );
            //pro.setImages(request.getParameter("images"));
            
            Part part=request.getPart("images");
            String dirUrl = request.getServletContext().getRealPath("")+"images\\product\\" + part.getSubmittedFileName();
            part.write(dirUrl);
            pro.setImages(part.getSubmittedFileName());
            
            productlistDAO proDAO= new productlistDAO();
            if(proDAO.addNew(pro))
               response.sendRedirect("Admin/adminproduct.jsp");
            else out.print("<!DOCTYPE html>");
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
