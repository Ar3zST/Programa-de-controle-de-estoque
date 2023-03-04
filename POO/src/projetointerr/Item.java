/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package projetointerr;

/**
 *
 * @author jonas
 */
    public class Item extends Produto{

	private int qntVendida;
	
	public Item(int codigo1, String nome1, int qntEmEstoque1, double preco1, int qntVendida1) {
		super(codigo1,nome1,qntEmEstoque1,preco1);
		qntVendida = qntVendida1;
		this.qntEmEstoque = this.qntEmEstoque - qntVendida;
	}
	
	public int getQntVendida() {
		return qntVendida;
	}
	public void setQntVendida(int qntVendida) {
		this.qntVendida = qntVendida;
	}
}

