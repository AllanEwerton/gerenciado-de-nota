package com.nota.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.nota.interfaces.AlunoInterfaces;
import com.nota.modal.Aluno;
import com.nota.service.ConnectionFactory;

public class AlunoDao implements AlunoInterfaces{
	
	private Connection conn;
	private ConnectionFactory cf = new ConnectionFactory();
	//private AlunoInterfaces iAluno = new AlunoDao();
	

	public AlunoDao() {
		try {
			conn = cf.getConexao();
		} catch (ClassNotFoundException e) {
			System.err.println(">>> " + e);
		}
	}
	
	@Override
	public void inserir(Aluno aluno) {
String sql = "INSERT INTO ALUNO (nome, email, status_aluno) VALUES (?,?,?);";
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, aluno.getNome());
			ps.setString(2, aluno.getEmail());
			ps.setString(3, aluno.getStatus_aluno());
			ps.execute();
			
		} catch (SQLException e) {
			System.err.println("Erro ao inserir nota: " + e);
		}
		
	}

	@Override
	public Aluno consultar(int idAluno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void editar(Aluno aluno) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void excluir(int idAluno) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Aluno> list() {
		// TODO Auto-generated method stub
		return null;
	}
	

}
