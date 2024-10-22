package com.nota.modal;

public class Aluno {
    private int id_aluno;
    private String nome;
    private String aluno;
    public int getId_aluno() {
    return id_aluno;
    }
    
    public Aluno() {
	
    }
    
    public Aluno(int id_aluno, String nome, String aluno) {
	this.id_aluno = id_aluno;
	this.nome = nome;
	this.aluno = aluno;
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
    public String getAluno() {
        return aluno;
    }
    public void setAluno(String aluno) {
        this.aluno = aluno;
    }
    
    
    @Override
    public String toString() {
	return "Aluno [id_aluno=" + id_aluno + ", nome=" + nome + ", aluno=" + aluno + "]";
    }
    
    
    
    
}
