package com.nota.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import com.nota.interfaces.AlunoInterfaces;
import com.nota.modal.Aluno;
import com.nota.modal.Disciplina;
import com.nota.modal.Nota;
import com.nota.service.ConnectionFactory;

public class AlunoDao implements AlunoInterfaces {

    private Connection conn;
    private ConnectionFactory cf = new ConnectionFactory();
    // private AlunoInterfaces iAluno = new AlunoDao();

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
	    System.err.println("Erro ao inserir aluno: " + e);
	}

    }

    @Override
    public Aluno consultar(int idAluno) {
    	String sql = "SELECT * FROM Aluno WHERE ID_ALUNO = ?";
    	Aluno aluno = null;
    	
    	try {
    	   PreparedStatement ps = conn.prepareStatement(sql);
    	   ps.setInt(1, idAluno);
    	   ResultSet rs = ps.executeQuery();
    	   //JOptionPane.showMessageDialog(null, "1");
    	   if(rs.next()) {
    			idAluno = rs.getInt("id_aluno");
    			
    			String nome = rs.getString("nome");
    			String email = rs.getString("email");
    			String statusAluno = rs.getString("status_aluno");
    			aluno = new Aluno(idAluno, nome, email, statusAluno);
    		    }

    	} catch (SQLException e) {
    	    System.err.println("Erro ao consultar aluno: " + e);
    	}
    	return aluno;
    }

    @Override
    public void editar(Aluno aluno) {
    	String sql = "UPDATE ALUNO SET NOME = ?, EMAIL = ?, status_aluno = ? WHERE ID_ALUNO = ?;";    	
    	try {
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, aluno.getNome());
		    ps.setString(2, aluno.getEmail());
		    ps.setString(3, aluno.getStatus_aluno());
		    ps.setInt(4, aluno.getId_aluno());
		    ps.executeUpdate();
		    
		} catch (SQLException e) {
		    System.err.println("Erro ao editar aluno: " + e);

		}
    }

    
    @Override
    public void excluir(int idAluno) {
        // Primeiro, exclua todas as notas do aluno
        NotaDao notaDao = new NotaDao();
        List<Nota> notas = notaDao.list(); // Obtenha todas as notas

        for (Nota nota : notas) {
            if (nota.getAluno().getId_aluno() == idAluno) {
                notaDao.excluir(nota.getId_nota()); // Exclua a nota se o aluno corresponder
            }
        }

        // Depois, exclua o aluno
        String sql = "DELETE FROM ALUNO WHERE ID_ALUNO = ?;";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, idAluno);
            ps.executeUpdate();
            System.out.println("Aluno excluído com sucesso!");
        } catch (Exception e) {
            System.out.println("Erro ao excluir Aluno: " + e.getMessage());
        }
    }


    @Override
    public List<Aluno> list() {
    	String sql = "SELECT * FROM ALUNO ORDER BY Id_aluno ASC";
    	List<Aluno> list = null;
    	
    	try {
    	    PreparedStatement ps = conn.prepareStatement(sql);
    	    ResultSet rs = ps.executeQuery();
    	    list = new ArrayList<>();
    	    while(rs.next()) {
    	    	int id = rs.getInt("id_aluno");	
    			String nome = rs.getString("nome");
    			String email = rs.getString("email");
    			String statusAluno = rs.getString("status_aluno");
    			Aluno aluno = new Aluno(id, nome, email, statusAluno);
    		
    		list.add(aluno);
    	    }
    	    
    	}catch(SQLException e){
    	    System.err.println(">>> "+e.getMessage());
    	}
    	return list;
    }

}
