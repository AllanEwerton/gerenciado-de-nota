package com.nota.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.nota.interfaces.NotaInterfaces;
import com.nota.modal.Nota;
import com.nota.service.ConnectionFactory;

public class NotaDao implements NotaInterfaces{

	private Connection conn;
	private ConnectionFactory cf = new ConnectionFactory();
	private NotaInterfaces iNota = new NotaDao();
	
	
	public NotaDao() {
		try {
			conn = cf.getConexao();
		} catch (ClassNotFoundException e) {
			System.err.println(">>> " + e);
		}
	}
	

	@Override
	public void inserir(Nota nota) {
		String sql = "INSERT INTO NOTA (NOTA1, NOTA2, NOTA3, PROVA, ID_DISCIPLINA, ID_ALUNO) VALUES (?,?,?,?,?,?);";
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setDouble(1, nota.getNota1());
			ps.setDouble(2, nota.getNota2());
			ps.setDouble(3, nota.getNota3());
			ps.setDouble(4, nota.getProva());
			ps.setInt(5, nota.getDisciplina().getId());
			ps.setInt(6, nota.getAluno().getId_aluno());
			ps.execute();
		} catch (SQLException e) {
			System.err.println("Erro ao inserir nota: " + e);
		}
		
	}

	@Override
	public Nota consultar(int idNota) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void editar(Nota nota) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void excluir(int idNota) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Nota> list() {
		// TODO Auto-generated method stub
		return null;
	}

}
