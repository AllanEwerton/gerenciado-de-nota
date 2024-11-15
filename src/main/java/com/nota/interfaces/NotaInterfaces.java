package com.nota.interfaces;

import java.util.List;

import com.nota.modal.Nota;

public interface NotaInterfaces {
	void inserir(Nota nota);
	Nota consultar(int idNota);
	void editar(Nota nota);
	void excluir(int idNota);
	List<Nota> list();	
}
