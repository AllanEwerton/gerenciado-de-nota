package com.nota.modal;

public class Disciplina {
	private int id;
    private Aluno aluno;
    private String nome;
    
    public Disciplina() {

    }
    public Disciplina(Aluno aluno, String nome) {
		this.aluno = aluno;
		this.nome = nome;
	}
	public Disciplina(int id, Aluno aluno, String nome) {
		this.id = id;
		this.aluno = aluno;
		this.nome = nome;
	}
	
	public Aluno getAluno() {
		return aluno;
	}
	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}
	public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    
	@Override
	public String toString() {
		return "Disciplina [aluno=" + aluno + ", nome=" + nome + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
}
    
   