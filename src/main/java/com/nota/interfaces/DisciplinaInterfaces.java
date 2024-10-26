package com.nota.interfaces;

import java.util.List;

import com.nota.modal.Disciplina;

public interface DisciplinaInterfaces {
	void inserir(Disciplina disciplina);
	Disciplina consultar(int idDisciplina);
	void editar(Disciplina disciplina);
	void excluir(int idDisciplina);
	List<Disciplina> list();
}
