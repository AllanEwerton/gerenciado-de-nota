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
	String sql = "INSERT INTO DISCIPLINA (nome) VALUE (?)";

	try {
	    PreparedStatement ps = conn.prepareStatement(sql);

	    ps.setString(1, disciplina.getNome());
	    ps.execute();

	} catch (SQLException e) {
	    System.err.println("Erro ao inserir disciplina: " + e);
	}

    }

    @Override
    public Disciplina consultar(int idDisciplina) {
	String sql = "SELECT * FROM DISCIPLINA WHERE id_disciplina = ?";
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
	    System.err.println("Erro ao exibir nota: " + e);
	}
	return disciplina;
    }

    public List<Disciplina> list() {
	
	String sql = "SELECT * FROM DISCIPLINA ORDER BY id_disciplina ASC";
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
		String sql = "UPDATE DISCIPLINA SET NOME = ? WHERE id_disciplina = ?;";
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);

		    ps.setString(1, disciplina.getNome());
		    ps.setInt(2, disciplina.getId());
		    ps.execute();
		} catch (SQLException e) {
		    System.err.println(">>> "+e.getMessage());
		}
	
	}

	@Override
		public void excluir(int idDisciplina) {
		    String deleteNotasSql = "DELETE FROM NOTA WHERE DISCIPLINA_ID = ?";
		    String deleteDisciplinaSql = "DELETE FROM DISCIPLINA WHERE id_disciplina = ?";

		    try {
		        // Excluir as notas associadas à disciplina
		        PreparedStatement psNotas = conn.prepareStatement(deleteNotasSql);
		        psNotas.setInt(1, idDisciplina);
		        psNotas.executeUpdate();

		        // Excluir a disciplina
		        PreparedStatement psDisciplina = conn.prepareStatement(deleteDisciplinaSql);
		        psDisciplina.setInt(1, idDisciplina);
		        psDisciplina.executeUpdate();

		        System.out.println("Disciplina e notas associadas excluídas com sucesso!");

		    } catch (SQLException e) {
		        System.err.println("Erro ao excluir disciplina: " + e.getMessage());
		    }
		}


}
