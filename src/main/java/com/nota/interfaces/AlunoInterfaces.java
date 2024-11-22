package com.nota.interfaces;

import java.sql.SQLException;
import java.util.List;

import com.nota.modal.Aluno;

public interface AlunoInterfaces {
	void inserir(Aluno aluno) throws SQLException;
	Aluno consultar(int idAluno);
	void editar(Aluno aluno);
	void excluir(int idAluno);
	List<Aluno> list();
}
