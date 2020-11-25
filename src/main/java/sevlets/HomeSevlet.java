package sevlets;

import models.SanPham;
import sevices.MyService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/product")
public class HomeSevlet extends HttpServlet {
    List<SanPham> listSP = MyService.listSP;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action){
            case "edit":
                editProduct(req, resp);
                break;
            case "create":
                showFormCreate(req, resp);
                break;
            default:showCreateForm(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action){
            case "create":
                create(req, resp);
                break;
            default:showCreateForm(req, resp);
        }
    }

    private void create(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String id = req.getParameter("idSP");
        String name = req.getParameter("nameSP");
        float price = Float.parseFloat(req.getParameter("giaSP"));

        listSP.add(new SanPham(id,name,price));

        resp.sendRedirect("/product");

//        req.setAttribute("listProduct", listSP);
//        RequestDispatcher dispatcher;
//        dispatcher = req.getRequestDispatcher("ListProduct.jsp");
//
//        try {
//            dispatcher.forward(req, resp);
//        } catch (ServletException e) {
//            e.printStackTrace();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }


    }

    private void showFormCreate(HttpServletRequest req, HttpServletResponse resp) {
        RequestDispatcher dispatcher;
        dispatcher = req.getRequestDispatcher("createProduct.jsp");

        try {
            dispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("listProduct", listSP);
        RequestDispatcher dispatcher;
        dispatcher = request.getRequestDispatcher("ListProduct.jsp");

        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void editProduct(HttpServletRequest request, HttpServletResponse response){
        String id = request.getParameter("id");
        SanPham sanPham = null;
        for (SanPham sp: listSP){
            if (id.equals(sp.getIdSP())){
                sanPham= sp;
            }
        }
        request.setAttribute("Product", sanPham);
        RequestDispatcher dispatcher;
        dispatcher = request.getRequestDispatcher("editProduct.jsp");

        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
