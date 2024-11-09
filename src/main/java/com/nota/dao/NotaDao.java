package com.nota.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.nota.interfaces.AlunoInterfaces;
import com.nota.interfaces.DisciplinaInterfaces;
import com.nota.interfaces.NotaInterfaces;
import com.nota.modal.Aluno;
import com.nota.modal.Disciplina;
import com.nota.modal.Nota;
import com.nota.service.ConnectionFactory;

public class NotaDao implements NotaInterfaces {

    private Connection conn;
    private ConnectionFactory cf = new ConnectionFactory();
    private AlunoInterfaces iAluno = new AlunoDao();
    DisciplinaInterfaces idisc = new DisciplinaDao();

    public NotaDao() {
	try {
	    conn = cf.getConexao();
	} catch (ClassNotFoundException e) {
	    System.err.println(">>> " + e);
	}
    }

    @Override
    public void inserir(Nota nota) {
	String sql = "INSERT INTO NOTA (NOTA1, NOTA2, NOTA3, PROVA, disciplina_id, aluno_id) VALUES (?,?,?,?,?,?);";

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
    	String sql = "SELECT * FROM NOTA WHERE id_nota = ?";
    	Nota nota = null;
    	
    	try {
    	    PreparedStatement ps = conn.prepareStatement(sql);
    	    ps.setInt(1, idNota);
    	    ResultSet rs = ps.executeQuery();
    	    
    	    if(rs.next()) {
    		idNota = rs.getInt("id_nota");	
    		double nota1 = rs.getDouble("nota1");
    		double nota2 = rs.getDouble("nota2");
    		double nota3 = rs.getDouble("nota3");
    		double prova = rs.getDouble("prova");
    		int iddisciplina_id = rs.getInt("disciplina_id");
    		int aluno_id = rs.getInt("aluno_id");
    		Disciplina disciplina = idisc.consultar(iddisciplina_id);
    		Aluno aluno = iAluno.consultar(aluno_id);
    		nota = new Nota(idNota, nota1, nota2, nota3, prova, disciplina, aluno);
    	    }

    	} catch (SQLException e) {
    	    System.err.println("Erro ao inserir nota: " + e);
    	}
    	return nota;
    }

    @Override
    public void editar(Nota nota) {
    	String sql = "UPDATE NOTA SET NOTA1 = ?, NOTA2 = ?, NOTA3 = ?, PROVA = ?, disciplina_id = ?, aluno_id = ? WHERE id_nota = ?;";
    	
    	try {
    	    PreparedStatement ps = conn.prepareStatement(sql);

    	    ps.setDouble(1, nota.getNota1());
    	    ps.setDouble(2, nota.getNota2());
    	    ps.setDouble(3, nota.getNota3());
    	    ps.setDouble(4, nota.getProva());
    	    ps.setInt(5, nota.getDisciplina().getId());
    	    ps.setInt(6, nota.getAluno().getId_aluno());
    	    ps.setInt(7, nota.getId_nota());
    	    ps.execute();
    	} catch (SQLException e) {
    	    System.err.println("Erro ao inserir nota: " + e);
    	}
    	
    }

    @Override
    public void excluir(int idNota) {

    	String sql = "DELETE FROM NOTA WHERE id_nota = ?;";
		
		try {
			
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, idNota);
            ps.executeUpdate();
            
        } catch (Exception e) {
            System.out.println("Erro ao excluir nota: "+e.getMessage());
        }

    }

    @Override
    public List<Nota> list() {
    	String sql = "SELECT * FROM NOTA ORDER BY id_nota ASC";
    	List<Nota> list = null;
    	
    	try {
    	    PreparedStatement ps = conn.prepareStatement(sql);
    	    ResultSet rs = ps.executeQuery();
    	    list = new ArrayList<>();
    	    while(rs.next()) {
        		int id = rs.getInt("id_nota");	
        		double nota1 = rs.getDouble("nota1");
        		double nota2 = rs.getDouble("nota2");
        		double nota3 = rs.getDouble("nota3");
        		double prova = rs.getDouble("prova");
        		int iddisciplina_id = rs.getInt("disciplina_id");
        		int aluno_id = rs.getInt("aluno_id");
        		Disciplina disciplina = idisc.consultar(iddisciplina_id);
        		Aluno aluno = iAluno.consultar(aluno_id);
        		Nota nota = new Nota(id, nota1, nota2, nota3, prova, disciplina, aluno);
    		
    		list.add(nota);
    	    }
    	    
    	}catch(SQLException e){
    	    System.err.println(">>> "+e.getMessage());
    	}
    	return list;
    }

}
