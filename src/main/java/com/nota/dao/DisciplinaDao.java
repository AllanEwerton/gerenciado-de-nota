package com.nota.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.nota.interfaces.DisciplinaInterfaces;
import com.nota.modal.Disciplina;
import com.nota.service.ConnectionFactory;

public class DisciplinaDao implements DisciplinaInterfaces {

    private Connection conn;
    private ConnectionFactory cf = new ConnectionFactory();
    // private DisciplinaInterfaces iDisciplina = new DisciplinaDao();

    public DisciplinaDao() {
	try {
	    conn = cf.getConexao();
	} catch (ClassNotFoundException e) {
	    System.err.println(">>> " + e);
	}
    }

    @Override
    public void inserir(Disciplina disciplina) {
	String sql = "INSERT INTO DISCIPLINA (NOME) VALUES (?);";

	try {
	    PreparedStatement ps = conn.prepareStatement(sql);

	    ps.setString(1, disciplina.getNome());
	    ps.execute();

	} catch (SQLException e) {
	    System.err.println("Erro ao inserir nota: " + e);
	}

    }

    @Override
    public Disciplina consultar(int idDisciplina) {
	String sql = "SELECT * FROM DISCIPLINA WHERE ID_DISCIPLINA = ?";
	Disciplina disciplina = null;
	
	try {
	    PreparedStatement ps = conn.prepareStatement(sql);
	    ps.setInt(1, idDisciplina);
	    ResultSet rs = ps.executeQuery();
	    
	    if(rs.next()) {
		idDisciplina = rs.getInt("id_disciplina");	
		String nome = rs.getString("nome");
		disciplina = new Disciplina(idDisciplina, nome);
	    }

	} catch (SQLException e) {
	    System.err.println("Erro ao inserir nota: " + e);
	}
	return disciplina;
    }

    public List<Disciplina> list() {
	
	String sql = "SELECT * FROM DISCIPLINA ORDER BY NOME ASC";
	List<Disciplina> list = null;
	
	try {
	    PreparedStatement ps = conn.prepareStatement(sql);
	    ResultSet rs = ps.executeQuery();
	    list = new ArrayList<>();
	    while(rs.next()) {
		int id = rs.getInt("id_disciplina");
		String nome = rs.getString("nome");
		Disciplina disciplina = new Disciplina(id, nome);
		list.add(disciplina);
	    }
	    
	}catch(SQLException e){
	    System.err.println(">>> "+e.getMessage());
	}
	return list;
    }

	@Override
	public void editar(Disciplina disciplina) {
	// TODO Auto-generated method stub
	
	}

	@Override
	public void excluir(int idDisciplina) {
	// TODO Auto-generated method stub
	
	}

}
