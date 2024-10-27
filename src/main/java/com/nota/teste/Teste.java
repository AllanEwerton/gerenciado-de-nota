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
	 // Configurando um Aluno existente para editar
    Aluno aluno = new Aluno();
    aluno.setId_aluno(1);  // ID do aluno que será atualizado
    aluno.setNome("Maria Silva");
    aluno.setEmail("maria.silva@email.com");
    aluno.setStatus_aluno("Ativo");

    // Criando uma instância do AlunoDao para editar o aluno
    AlunoDao alunoDao = new AlunoDao();

    // Tentando atualizar o aluno no banco
    alunoDao.editar(aluno);

    System.out.println("Teste de atualização de aluno finalizadoo.");;
    
}
}
