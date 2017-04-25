

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Cliente;
import service.ClienteService;

/**
 * Servlet implementation class CrudClientesServlet
 */
@WebServlet("/crudClientes")
public class CrudClienteServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrudClienteServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("idCliente"));
		String nome = (request.getParameter("nomeCliente"));
		String fone = (request.getParameter("foneCliente"));
		String email = (request.getParameter("emailCliente"));
		String oQueFazer = (request.getParameter("oQueFazer"));
		Cliente cliente = new Cliente(id, nome, email, fone);
		String button = "button";
		String href = "http://localhost:8080/crud_clientes/clientes.html";
		//ClienteService service = new ClienteService();
		PrintWriter out  = response.getWriter();
		switch(oQueFazer)
		{     
		case "Cadastrar":
			//service.criar(cliente);
			out.println("<html> "
					+ "<body> <header> <h1>Cadastro realizado com sucesso</h1> </header> "
					+ "<p>O cliente com o ID <b>" + id + "</b> foi cadastrado com sucesso</p>"
					+ "<form action="+ href +">"
					+ "<input type="+"submit"+" value="+"Voltar"+" />"
					+ "</body> </html>");			
			out.close();
			break;
		case "Consultar":
			//service.carregar(cliente.getId());
			out.println("<html> "
					+ "<body> <header> <h1>Consulta</h1> </header> "
					+ "<p>Dados do cliente com o ID <b>" + id + "</b>:</p><br>"
					+ "<p>Nome:" + nome +"</p>"
					+ "<p>Telefone:" + fone +"</p>"
					+ "<p>E-mail:" + email +"</p>"
					+ "<form action="+ href +">"
					+ "<input type="+"submit"+" value="+"Voltar"+" />"
					+ "</body> </html>");			
			out.close();
			break;
		case "Remover":
			//service.excluir(cliente.getId());
			out.println("<html> "
					+ "<body> <header> <h1>Cliente removido com sucesso</h1> </header> "
					+ "<p>O cliente com o ID <b>" + id + "</b> foi removido com sucesso.</p>"
					+ "<form action="+ href +">"
					+ "<input type="+"submit"+" value="+"Voltar"+" />"
					+ "</body> </html>");			
			out.close();
			break;
		case "Atualizar":
			//service.atualizar(cliente);
			out.println("<html> "
					+ "<body> <header> <h1>Cadastro atualizado com sucesso</h1> </header> "
					+ "<p>O cadastro do cliente com o ID <b>" + id + "</b> foi atualizado com sucesso.</p><br>"
					+ "<p>Dados:<p><br>"
					+ "<p>Nome:" + nome +"</p>"
					+ "<p>Telefone:" + fone +"</p>"
					+ "<p>E-mail:" + email +"</p>"
					+ "<form action="+ href +">"
					+ "<input type="+"submit"+" value="+"Voltar"+" />"
					+ "</body> </html>");			
			out.close();
			break;
		}
		

		
	}

}
