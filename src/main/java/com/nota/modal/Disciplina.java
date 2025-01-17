package com.nota.modal;

public class Disciplina {
    private int id;
    private String nome;

    public Disciplina() {

    }

    public Disciplina(String nome) {
	this.nome = nome;
    }

    public Disciplina(int id, String nome) {
	this.id = id;
	this.nome = nome;
    }

    public String getNome() {
	return nome;
    }

    public void setNome(String nome) {
	this.nome = nome;
    }

    public int getId() {
	return id;
    }

    public void setId(int id) {
	this.id = id;
    }

    @Override
    public String toString() {
	return "Disciplina [id=" + id + ", nome=" + nome + "]";
    }

}
