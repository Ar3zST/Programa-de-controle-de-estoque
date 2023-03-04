/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package projetointerr;


public class Cliente {

	private int codigo;
	private String nome;
	private int qntCompras;
	private Venda[] compras;
	
	public Cliente(int codigo,String nome) {
		this.codigo=codigo;
		this.nome=nome;
		this.qntCompras=0;
		compras = new Venda[50];
	}
	void Comprar(Venda venda) {
		compras[qntCompras] = venda;
		qntCompras++;
	}
	public int getCodigo() {
		return codigo;
	}
	public String getNome() {
		return nome;
	}
	public int getQntCompras() {
		return qntCompras;
	}
	public Venda[] getCompras() {
		return compras;
	}
}
