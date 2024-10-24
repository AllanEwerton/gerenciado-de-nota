package com.nota.modal;

public class Disciplina {
    private int id_aluno;
    private String nome;
    
    public Disciplina() {

    }
    
    public Disciplina(int id_aluno, String nome) {
	this.id_aluno = id_aluno;
	this.nome = nome;
    }
    
    public int getId_aluno() {
        return id_aluno;
    }
    public void setId_aluno(int id_aluno) {
        this.id_aluno = id_aluno;
    }
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }

    @Override
    public String toString() {
	return "Disciplina [id_aluno=" + id_aluno + ", nome=" + nome + "]";
    }
    
    

    }
    
   