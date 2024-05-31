package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Wallet;

public class WalletServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private Wallet wallet = new Wallet();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            response.sendRedirect("index.jsp");
        } else {
            switch (action) {
                case "deposit":
                    double depositAmount = Double.parseDouble(request.getParameter("amount"));
                    wallet.deposit(depositAmount);
                    break;
                case "withdraw":
                    double withdrawAmount = Double.parseDouble(request.getParameter("amount"));
                    wallet.withdraw(withdrawAmount);
                    break;
                default:
                    break;
            }
            request.setAttribute("balance", wallet.getBalance());
            request.getRequestDispatcher("balance.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
