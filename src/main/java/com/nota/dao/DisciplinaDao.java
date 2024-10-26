package com.nota.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.nota.interfaces.DisciplinaInterfaces;
import com.nota.modal.Disciplina;
import com.nota.service.ConnectionFactory;

public class DisciplinaDao implements DisciplinaInterfaces{
	
	private Connection conn;
	private ConnectionFactory cf = new ConnectionFactory();
	//private DisciplinaInterfaces iDisciplina = new DisciplinaDao();
	
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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void editar(Disciplina disciplina) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void excluir(int idDisciplina) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Disciplina> list() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
