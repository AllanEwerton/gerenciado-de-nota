package com.nota.modal;

public class Nota {
    private int id_nota;
    private String nota1;
    private int nome1;
    private int nome2;
    private int nome3;
    private int prova;
    private String disciplina_id;
    private String aluno_id;
   
    public Nota() {
	
    };
    
    public Nota(int id_nota, String nota1, int nome1, int nome2, int nome3, int prova, String disciplina_id,
	    String aluno_id) {
	this.id_nota = id_nota;
	this.nota1 = nota1;
	this.nome1 = nome1;
	this.nome2 = nome2;
	this.nome3 = nome3;
	this.prova = prova;
	this.disciplina_id = disciplina_id;
	this.aluno_id = aluno_id;
    }
    
    public int getId_nota() {
        return id_nota;
    }

    public void setId_nota(int id_nota) {
        this.id_nota = id_nota;
    }

    public String getNota1() {
        return nota1;
    }

    public void setNota1(String nota1) {
        this.nota1 = nota1;
    }

    public int getNome1() {
        return nome1;
    }

    public void setNome1(int nome1) {
        this.nome1 = nome1;
    }

    public int getNome2() {
        return nome2;
    }

    public void setNome2(int nome2) {
        this.nome2 = nome2;
    }


    public int getNome3() {
        return nome3;
    }


    public void setNome3(int nome3) {
        this.nome3 = nome3;
    }


    public int getProva() {
        return prova;
    }

    public void setProva(int prova) {
        this.prova = prova;
    }

    public String getDisciplina_id() {
        return disciplina_id;
    }

    public void setDisciplina_id(String disciplina_id) {
        this.disciplina_id = disciplina_id;
    }

    public String getAluno_id() {
        return aluno_id;
    }

    public void setAluno_id(String aluno_id) {
        this.aluno_id = aluno_id;
    }


    





    @Override
    public String toString() {
	return "Nota [id_nota=" + id_nota + ", nota1=" + nota1 + ", nome1=" + nome1 + ", nome2=" + nome2 + ", nome3="
		+ nome3 + ", prova=" + prova + ", disciplina_id=" + disciplina_id + ", aluno_id=" + aluno_id + "]";
    }
}

