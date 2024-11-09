package com.nota.modal;

public class Aluno {
    private int id_aluno;
    private String nome;
    private String email;
    private String status_aluno;

    public Aluno() {

    }
    
    public Aluno(String nome, String email) {
	this.nome = nome;
	this.email = email;
}
    

    public Aluno(String nome, String email, String status_aluno) {
		this.nome = nome;
		this.email = email;
		this.status_aluno = status_aluno;
	}


	public Aluno(int id_aluno, String nome, String email, String status_aluno) {
	this.id_aluno = id_aluno;
	this.nome = nome;
	this.email = email;
	this.status_aluno = status_aluno;
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

    public String getEmail() {
	return email;
    }

    public void setEmail(String email) {
	this.email = email;
    }

    public String getStatus_aluno() {
	return status_aluno;
    }

    public void setStatus_aluno(String status_aluno) {
	this.status_aluno = status_aluno;
    }

	@Override
	public String toString() {
		return "Aluno [id_aluno=" + id_aluno + ", nome=" + nome + ", email=" + email + ", status_aluno=" + status_aluno
				+ "]";
	}

   

}
