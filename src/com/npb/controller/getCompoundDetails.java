package com.npb.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.npb.database.dbcon;
import com.npb.domian.CompoundDetails;
/**
 * Servlet implementation class getCompoundDetails
 */
@WebServlet("/getCompoundDetails")
public class getCompoundDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private dbcon dbcon;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getCompoundDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		String NPB_NO=request.getParameter("NPB_NO");
		CompoundDetails comp=null;
		List<CompoundDetails> clist = new ArrayList<CompoundDetails>();
		try {
			dbcon dbcon=new dbcon();
			Connection con=dbcon.open();
			String sql="SELECT * FROM details WHERE NPB_No=?";
			PreparedStatement pstmt=con.prepareStatement(sql);
			pstmt.setString(1,NPB_NO);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {
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
			response.setContentType("text/html;charset=UFT-8");
			response.getWriter().print("<script type='text/javascript'>alert('获取信息失败，请稍后再试');history.back(-1)</script>");
			e.printStackTrace();
			System.out.println("获取详情失败");
		}
		if(clist!=null&&!clist.isEmpty()){
			System.out.println("查询成功");
			Gson gson = new Gson();
			request.setAttribute("CompoundDetailsList", gson.toJson(clist));
			request.getRequestDispatcher("CompoundDetails.jsp").forward(request, response);
			return;
		}else
		{
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().print("<script type='text/javascript'>alert('获取信息失败，请稍后再试');history.back(-1)</script>");
			System.out.println("获取详情失败 ");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
