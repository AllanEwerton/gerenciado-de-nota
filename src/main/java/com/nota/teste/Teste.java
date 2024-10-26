package com.nota.teste;

import com.nota.dao.AlunoDao;
import com.nota.dao.DisciplinaDao;
import com.nota.dao.NotaDao;
import com.nota.interfaces.AlunoInterfaces;
import com.nota.interfaces.NotaInterfaces;
import com.nota.modal.Aluno;
import com.nota.modal.Disciplina;
import com.nota.modal.Nota;

public class Teste {
public static void main(String[] args) {
	NotaInterfaces iNota = new NotaDao();
	// Criando uma instância de Nota para teste
    Nota nota = new Nota();
    nota.setNota1(8.0);
    nota.setNota2(7.5);
    nota.setNota3(9.0);
    nota.setProva(8.5);
    
    Disciplina disciplina = new Disciplina();
    disciplina.setId(1); // Defina o ID da disciplina correspondente
    nota.setDisciplina(disciplina);
    
    Aluno aluno = new Aluno();
    aluno.setId_aluno(1); // Defina o ID do aluno correspondente
    nota.setAluno(aluno);
    
    // Inserindo a nota
    iNota.inserir(nota);
    System.out.println("Nota inserida com sucesso!");
    
}
}
