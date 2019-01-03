package com.npb.controller;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import com.google.gson.Gson;
import com.npb.database.*;
import com.npb.domian.CompoundDetails;

/**
 * Servlet implementation class search
 * author JiangCY
 * date 2018/12/26
 */
@WebServlet("/search")
public class search extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private dbcon dbcon;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public search() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String start = request.getParameter("start");
		String num = request.getParameter("num");
		int startint=0;
		int numint=0;
		
		try{
			startint = Integer.parseInt(start);
			numint = Integer.parseInt(num);
		}catch(Exception e){
			startint = 0;
			numint = 9;
			e.printStackTrace();
		}
		dbcon dbcon = new dbcon();
		Connection con;
		try {
			con = dbcon.open();
		String sql;
		sql="SELECT * FROM  LIMIT ?,?";
		PreparedStatement pstmt;
		pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		List<CompoundDetails> list = new ArrayList<CompoundDetails>();
		CompoundDetails comp = null;
		while(rs.next()){
			comp = new CompoundDetails();
			comp.setCas_no(rs.getString("cas_no"));
			comp.setDescrip(rs.getString("descrip"));
			comp.setDocTypes(rs.getString("docTypes"));
			comp.setInchiKey(rs.getString("inchiKey"));
			comp.setMolecular_Formula(rs.getString("molecular_Formula"));
			comp.setMolecular_Weight(rs.getString("molecular_Weight"));
			comp.setNPB_No(rs.getString("NPB_No"));
			comp.setProduct_name(rs.getString("product_name"));
			comp.setPubChem_ID(rs.getString("pubChem_ID"));
			comp.setSmiles(rs.getString("smiles"));
			comp.setSpecies(rs.getString("species"));
			comp.setStructure(rs.getString("structure"));	
			list.add(comp);
		}	
			Gson gson = new Gson();
			response.getWriter().print(gson.toJson(list));
			//request.getRequestDispatcher("AllCommodity.jsp").forward(request, response);
			return;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
			}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTf-8");
		//获取搜索关键字
		String keyword=request.getParameter("keyword");
		//获取选中的复选框的value
		String[] st_checkbox = request.getParameterValues("docTypes");
		System.out.println(keyword);
		System.out.println(Arrays.toString(st_checkbox));
		//搜索内容
		List<CompoundDetails> clist = new ArrayList<CompoundDetails>();
		
		try {
			dbcon=new dbcon();
			Connection con;
			con = dbcon.open();
			String sql="SELECT * FROM details WHERE smiles like ?";//SQL语句为select * from details where smiles like '%C%'; 注意有单引号
			//String sql="select * from details";
			String Sst_checkbox="\'";
			//动态sql语句
			if(st_checkbox!=null) {		
				for(int i=0;i<st_checkbox.length;i++)
				{
					Sst_checkbox+=st_checkbox[i]+"\',\'";
				}
			String trueCondition=Sst_checkbox.substring(0,Sst_checkbox.length()-2);
			//SELECT * FROM details WHERE smiles like '%C' And docTypes in ('Food', 'EdiblePlant', 'OrnamentalPlant')
			sql="SELECT * FROM details WHERE smiles like ? And docTypes in ("+trueCondition+")";
			}
				
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%"+keyword+"%");
			//下列返回的结果集应该是"天然产物"对象的集合,此时尚无该类,故注释
			ResultSet rs = pstmt.executeQuery();
			CompoundDetails comp = null;
			while(rs.next()){
				comp = new CompoundDetails();
				comp.setCas_no(rs.getString("cas_no"));
				comp.setDescrip(rs.getString("descrip"));
				comp.setDocTypes(rs.getString("docTypes"));
				comp.setInchiKey(rs.getString("inchiKey"));
				comp.setMolecular_Formula(rs.getString("molecular_Formula"));
				comp.setMolecular_Weight(rs.getString("molecular_Weight"));
				comp.setNPB_No(rs.getString("nPB_No"));
				comp.setProduct_name(rs.getString("product_name"));
				comp.setPubChem_ID(rs.getString("pubChem_ID"));
				comp.setSmiles(rs.getString("smiles"));
				comp.setSpecies(rs.getString("species"));
				comp.setStructure(rs.getString("structure"));	
				clist.add(comp);
				}	
		} catch (ClassNotFoundException | SQLException e) {
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().print("<script type='text/javascript'>alert('查无结果,请尝试输入全称再试一次');history.back(-1)</script>");
			e.printStackTrace();
			System.out.println("查询失败 ");
		}
		if(clist!=null&&!clist.isEmpty()){
			System.out.println("查询成功");
			Gson gson = new Gson();
			request.setAttribute("Compoundlist", gson.toJson(clist));
			request.getRequestDispatcher("searchOutCome.jsp").forward(request, response);
//			response.sendRedirect("search.jsp");
			return;
		}else
		{
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().print("<script type='text/javascript'>alert('查无结果,请尝试输入全称再试一次');history.back(-1)</script>");
			System.out.println("查询失败 ");
		}
	//结束
	}

}
