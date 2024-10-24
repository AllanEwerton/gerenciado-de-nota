package com.nota.modal;

public class Nota {
    private int id_nota;
    private double nota1;
    private double nota2;
    private double nota3;
    private double prova;
    private int disciplina_id;
    private int aluno_id;
    
    public Nota() {
	
    }
    
    public Nota(int id_nota, double nota1, double nota2, double nota3, double prova, int disciplina_id, int aluno_id) {
	this.id_nota = id_nota;
	this.nota1 = nota1;
	this.nota2 = nota2;
	this.nota3 = nota3;
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
    public double getNota1() {
        return nota1;
    }
    public void setNota1(double nota1) {
        this.nota1 = nota1;
    }
    public double getNota2() {
        return nota2;
    }
    public void setNota2(double nota2) {
        this.nota2 = nota2;
    }
    public double getNota3() {
        return nota3;
    }
    public void setNota3(double nota3) {
        this.nota3 = nota3;
    }
    public double getProva() {
        return prova;
    }
    public void setProva(double prova) {
        this.prova = prova;
    }
    public int getDisciplina_id() {
        return disciplina_id;
    }
    public void setDisciplina_id(int disciplina_id) {
        this.disciplina_id = disciplina_id;
    }
    public int getAluno_id() {
        return aluno_id;
    }
    public void setAluno_id(int aluno_id) {
        this.aluno_id = aluno_id;
    }

    @Override
    public String toString() {
	return "Nota [id_nota=" + id_nota + ", nota1=" + nota1 + ", nota2=" + nota2 + ", nota3=" + nota3 + ", prova="
		+ prova + ", disciplina_id=" + disciplina_id + ", aluno_id=" + aluno_id + "]";
    }
    
    
    };
    
   