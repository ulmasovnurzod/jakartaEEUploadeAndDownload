package com.example.downloadanduploade;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;

@WebServlet("/upload")
@MultipartConfig(location = "/Users/abdurashidov/Documents/upload")
public class Upload extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/upload.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Part part = req.getPart("file");
        String fileName = part.getSubmittedFileName();
        part.write(fileName);

        String fileSaqla = java.util.UUID.randomUUID() + " , " + fileName.substring(fileName.lastIndexOf("."));

        resp.setContentType("text/html");
        resp.getWriter().println("<h2>✅ Fayl yuklandi: " + fileSaqla + "</h2>");

    }
}
