package com.nota.interfaces;

import java.util.List;

import com.nota.modal.Aluno;

public interface AlunoInterfaces {
	void inserir(Aluno aluno);
	Aluno consultar(int idAluno);
	void editar(Aluno aluno);
	void excluir(int idAluno);
	List<Aluno> list();
}
