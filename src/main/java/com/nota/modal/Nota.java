package com.nota.modal;

public class Nota {
    private int id_nota;
    private double nota1;
    private double nota2;
    private double nota3;
    private double prova;
    private Disciplina disciplina;
    private Aluno aluno;
    
    public Nota() {
	
    }
    
    public Nota(int id_nota, double nota1, double nota2, double nota3, double prova, Disciplina disciplina,
			Aluno aluno) {
		this.id_nota = id_nota;
		this.nota1 = nota1;
		this.nota2 = nota2;
		this.nota3 = nota3;
		this.prova = prova;
		this.disciplina = disciplina;
		this.aluno = aluno;
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
    public Disciplina getDisciplina() {
		return disciplina;
	}
	public void setDisciplina(Disciplina disciplina) {
		this.disciplina = disciplina;
	}
	public Aluno getAluno() {
		return aluno;
	}
	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}
	public double getProva() {
        return prova;
    }
    public void setProva(double prova) {
        this.prova = prova;
    }


	@Override
	public String toString() {
		return "Nota [id_nota=" + id_nota + ", nota1=" + nota1 + ", nota2=" + nota2 + ", nota3=" + nota3 + ", prova="
				+ prova + ", disciplina=" + disciplina + ", aluno=" + aluno + "]";
	}
    
    
    
    };
    
   