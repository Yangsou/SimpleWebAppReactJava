/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.google.gson.Gson;
import config.Category;
import config.Order;
import config.Product;
import config.ProductSale;
import config.User;
import database.DBManager;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author wladek
 */
public class api extends HttpServlet {

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
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet api</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet api at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
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
        
        if(request.getParameter("count").toString().equals("get_watches_by_id")){
                String idGet = request.getParameter("id").toString();
                ArrayList<Object> listProductByIdType = new ArrayList<>();
                Product productObject = new Product();

                DBManager DB = new DBManager();
                DB.DBManager();
                ResultSet rs = DB.getWatchesById(idGet);
                try {
                    while(rs.next()){
                        String name = rs.getString("Name");
                        String id = rs.getString("IDProduct");
                        String idType = rs.getString("IDType");
                        String detail = rs.getString("Detail");
                        String brand = rs.getString("Brand");
                        String modelNumber = rs.getString("ModelNumber");
                        String partNumber = rs.getString("PartNumber");
                        String itemShape = rs.getString("ItemShape");
                        String dialWindowMaterialType = rs.getString("DialWindowMaterialType");
                        String displayType = rs.getString("DisplayType");
                        String clasp = rs.getString("Clasp");
                        String caseMaterial = rs.getString("CaseMaterial");
                        String caseDiameter = rs.getString("CaseDiameter");
                        String caseThickness = rs.getString("CaseThickness");
                        String bandMaterial = rs.getString("BandMaterial");
                        String bandLength = rs.getString("BandLength");
                        String bandWidth = rs.getString("BandWidth");
                        String bandColor = rs.getString("BandColor");
                        String dialColor = rs.getString("DialColor");
                        String calendar = rs.getString("Calen");
                        String waterDepth = rs.getString("WaterDepth");
                        Double priceDefault = rs.getDouble("PriceDefault");
                        Double priceCurrent = rs.getDouble("PriceCurrent");
                        String image = rs.getString("images");
        //                
                        productObject = new Product(id, name, idType, detail, brand,modelNumber, partNumber, displayType, itemShape, dialWindowMaterialType, clasp, caseMaterial, caseDiameter, caseThickness, bandMaterial, bandLength, bandWidth,bandColor, dialColor, calendar, waterDepth, priceCurrent, priceDefault, image);
                        listProductByIdType.add(productObject);

                    }
                } catch (Exception e) {
                }
                DB.disconnect();
                String json = new Gson().toJson(productObject);

                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(json);
        }
        if(request.getParameter("count").toString().equals("get_watches_by_name")){
                String name = request.getParameter("name").toString();
                ArrayList<Object> listProductByIdType = new ArrayList<>();
                Product productObject = new Product();

                DBManager DB = new DBManager();
                DB.DBManager();
                ResultSet rs = DB.getWatchesByName(name);
                System.out.printf("search %s", name);
                try {
                    while(rs.next()){
                        String nameRs = rs.getString("Name");
                        String id = rs.getString("IDProduct");
                        String idType = rs.getString("IDType");
                        String detail = rs.getString("Detail");
                        String brand = rs.getString("Brand");
                        String modelNumber = rs.getString("ModelNumber");
                        String partNumber = rs.getString("PartNumber");
                        String itemShape = rs.getString("ItemShape");
                        String dialWindowMaterialType = rs.getString("DialWindowMaterialType");
                        String displayType = rs.getString("DisplayType");
                        String clasp = rs.getString("Clasp");
                        String caseMaterial = rs.getString("CaseMaterial");
                        String caseDiameter = rs.getString("CaseDiameter");
                        String caseThickness = rs.getString("CaseThickness");
                        String bandMaterial = rs.getString("BandMaterial");
                        String bandLength = rs.getString("BandLength");
                        String bandWidth = rs.getString("BandWidth");
                        String bandColor = rs.getString("BandColor");
                        String dialColor = rs.getString("DialColor");
                        String calendar = rs.getString("Calen");
                        String waterDepth = rs.getString("WaterDepth");
                        Double priceDefault = rs.getDouble("PriceDefault");
                        Double priceCurrent = rs.getDouble("PriceCurrent");
                        String image = rs.getString("images");
        //                
                        productObject = new Product(id, nameRs, idType, detail, brand,modelNumber, partNumber, displayType, itemShape, dialWindowMaterialType, clasp, caseMaterial, caseDiameter, caseThickness, bandMaterial, bandLength, bandWidth,bandColor, dialColor, calendar, waterDepth, priceCurrent, priceDefault, image);
                        listProductByIdType.add(productObject);

                    }
                } catch (Exception e) {
                }
                DB.disconnect();
                String json = new Gson().toJson(listProductByIdType);

                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(json);
        }
        if(request.getParameter("count").toString().equals("get_watches_sale")){
            String limitGet = request.getParameter("limit").toString();
            ArrayList<Object> listProductSale = new ArrayList<>();
            DBManager DB = new DBManager();
            DB.DBManager();
            ResultSet rs = DB.getWatchesSale(limitGet);
            try {
                while(rs.next()){
                    String name = rs.getString("Name");
                    String id = rs.getString("IDProduct");
                    String brand = rs.getString("Brand");
                    Double priceCurrent = rs.getDouble("PriceCurrent");
                    String image = rs.getString("images");
                    Double priceDefault = rs.getDouble("PriceDefault");
                    System.out.printf("what the fuckkkkkkkkkkkkkkk %s", priceDefault);
    //                
                    ProductSale productObject = new ProductSale(id, name, brand, priceCurrent, priceDefault, image);
                    listProductSale.add(productObject);

                }
            } catch (Exception e) {
            }
            DB.disconnect();
            String json = new Gson().toJson(listProductSale);

            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(json);
        }
        if(request.getParameter("count").toString().equals("get_watches_by_id_type")){
                String idGet = request.getParameter("id").toString();
                ArrayList<Object> listProductByIdType = new ArrayList<>();
                DBManager DB = new DBManager();
                DB.DBManager();
                ResultSet rs = DB.getWatchesByIdType(idGet);
                try {
                    while(rs.next()){
                        String name = rs.getString("Name");
                        String id = rs.getString("IDProduct");
                        String idType = rs.getString("IDType");
                        String detail = rs.getString("Detail");
                        String brand = rs.getString("Brand");
                        String modelNumber = rs.getString("ModelNumber");
                        String partNumber = rs.getString("PartNumber");
                        String itemShape = rs.getString("ItemShape");
                        String dialWindowMaterialType = rs.getString("DialWindowMaterialType");
                        String displayType = rs.getString("DisplayType");
                        String clasp = rs.getString("Clasp");
                        String caseMaterial = rs.getString("CaseMaterial");
                        String caseDiameter = rs.getString("CaseDiameter");
                        String caseThickness = rs.getString("CaseThickness");
                        String bandMaterial = rs.getString("BandMaterial");
                        String bandLength = rs.getString("BandLength");
                        String bandWidth = rs.getString("BandWidth");
                        String bandColor = rs.getString("BandColor");
                        String dialColor = rs.getString("DialColor");
                        String calendar = rs.getString("Calen");
                        String waterDepth = rs.getString("WaterDepth");
                        Double priceDefault = rs.getDouble("PriceDefault");
                        Double priceCurrent = rs.getDouble("PriceCurrent");
                        String image = rs.getString("images");
        //                
                        Product productObject = new Product(id, name, idType, detail, brand,modelNumber, partNumber, displayType, itemShape, dialWindowMaterialType, clasp, caseMaterial, caseDiameter, caseThickness, bandMaterial, bandLength, bandWidth,bandColor, dialColor, calendar, waterDepth, priceCurrent, priceDefault, image);
                        listProductByIdType.add(productObject);

                    }
                } catch (Exception e) {
                }
                DB.disconnect();
                String json = new Gson().toJson(listProductByIdType);

                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(json);
        }
        
        if(request.getParameter("count").toString().equals("categories")){
            ArrayList<Object> listCategory = new ArrayList<>();
            DBManager DB = new DBManager();
            DB.DBManager();
            String query = "SELECT * FROM category WHERE 1";
            ResultSet rs = DB.getWatches(query);
            try {
                while(rs.next()){
                    String idType = rs.getString("Id");
                    String name = rs.getString("Name");
                    Category cg = new Category(idType, name);
                    listCategory.add(cg);
                    
                }
            } catch (Exception e) {
            }
            DB.disconnect();
            String json = new Gson().toJson(listCategory);

            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(json);
        }
        
        
        if(request.getParameter("count").toString().equals("all")){
            ArrayList<Object> list = new ArrayList<>();
            DBManager DB = new DBManager();
            DB.DBManager();
            String query = "SELECT * from chitietsanpham";
            ResultSet rs = DB.getWatches(query);

            try {
                // temp
                while(rs.next()){
                    String name = rs.getString("Name");
                    String id = rs.getString("IDProduct");
                    String idType = rs.getString("IDType");
                    String detail = rs.getString("Detail");
                    String brand = rs.getString("Brand");
                    String modelNumber = rs.getString("ModelNumber");
                    String partNumber = rs.getString("PartNumber");
                    String itemShape = rs.getString("ItemShape");
                    String dialWindowMaterialType = rs.getString("DialWindowMaterialType");
                    String displayType = rs.getString("DisplayType");
                    String clasp = rs.getString("Clasp");
                    String caseMaterial = rs.getString("CaseMaterial");
                    String caseDiameter = rs.getString("CaseDiameter");
                    String caseThickness = rs.getString("CaseThickness");
                    String bandMaterial = rs.getString("BandMaterial");
                    String bandLength = rs.getString("BandLength");
                    String bandWidth = rs.getString("BandWidth");
                    String bandColor = rs.getString("BandColor");
                    String dialColor = rs.getString("DialColor");
                    String calendar = rs.getString("Calen");
                    String waterDepth = rs.getString("WaterDepth");
                    Double priceDefault = rs.getDouble("PriceDefault");
                    Double priceCurrent = rs.getDouble("PriceCurrent");
                    String image = rs.getString("images");
    //                
                    Product productObject = new Product(id, name, idType, detail, brand,modelNumber, partNumber, displayType, itemShape, dialWindowMaterialType, clasp, caseMaterial, caseDiameter, caseThickness, bandMaterial, bandLength, bandWidth,bandColor, dialColor, calendar, waterDepth, priceCurrent, priceDefault, image);
                    list.add(productObject);
                }
            } catch (SQLException ex) {
                Logger.getLogger(api.class.getName()).log(Level.SEVERE, null, ex);
            }
            DB.disconnect();
            String json = new Gson().toJson(list);

            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(json);
        }

        
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
        
        if(request.getParameter("scan").toString().equals("save_cookies")){
            String token = request.getParameter("token").toString();
            String idUser = request.getParameter("id").toString();
            DBManager DB = new DBManager();
            DB.DBManager();
            DB.SaveCookiesLogin(token, idUser);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("succes");
        }
        
        if(request.getParameter("scan").toString().equals("add_order")){
            String idUser = request.getParameter("idUser").toString();
            String id = request.getParameter("id").toString();
            String idWatch = request.getParameter("idWatch").toString();
            
            
            DBManager DB = new DBManager();
            DB.DBManager();
            DB.AddOrder(id, idUser, idWatch);
            Order od = new Order(id, idUser, idWatch, "1");
            DB.disconnect();
            
            String json = new Gson().toJson(od);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(json);
        }
        if(request.getParameter("scan").toString().equals("check_user_login")){
            String email = request.getParameter("email").toString();
            String password = request.getParameter("password").toString();
            User user = new User();
            DBManager DB = new DBManager();
            DB.DBManager();
            ResultSet rs = DB.checkUserLogin(email, password);
            
            try {
                while(rs.next()){
                    String idRs = rs.getString("id");
                    String userRs = rs.getString("username");
                    String passRs = rs.getString("password");
                    String emailRs = rs.getString("email");
    //                
                    user = new User(idRs, userRs, passRs, emailRs);
                }
            } catch (Exception e) {
            }
            DB.disconnect();
            String json = new Gson().toJson(user);

            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(json);
        }
        if(request.getParameter("scan").toString().equals("get_user_cookies")){
            String id = request.getParameter("id").toString();
            User user = new User();
            DBManager DB = new DBManager();
            DB.DBManager();
            ResultSet rs = DB.GetUserByIdCookie(id);
            System.out.println("dayyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy");
            try {
                while(rs.next()){
                    String idRs = rs.getString("id");
                    String nameRs = rs.getString("username");
                    String password = rs.getString("password");
                    String email = rs.getString("email");
                    user = new User(idRs, nameRs, password, email);
                    
                }
            } catch (Exception e) {
            }
            DB.disconnect();
            String json = new Gson().toJson(user);

            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(json);
        }
        
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
