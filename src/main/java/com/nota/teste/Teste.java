package com.nota.teste;

import com.nota.dao.AlunoDao;
import com.nota.dao.DisciplinaDao;
import com.nota.dao.NotaDao;
import com.nota.interfaces.AlunoInterfaces;
import com.nota.interfaces.DisciplinaInterfaces;
import com.nota.interfaces.NotaInterfaces;
import com.nota.modal.Aluno;
import com.nota.modal.Disciplina;
import com.nota.modal.Nota;

public class Teste {
public static void main(String[] args) {
    // Cria instâncias dos DAOs
    AlunoDao alunoDao = new AlunoDao();
    alunoDao.excluir(12);
}
}
