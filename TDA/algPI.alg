Projeto Inter
    inteiro qntCompras,codigo,qntVendida,qntClientes,qntProdutos,qntVendas,qntEmEstoque,qntDeProdutosDiferentes;
    literal nome,data;
    real preco;
	literal	venda[500],cliente[500],produto[500],item[500]	//não sabia como declarar os vetores de objeto então vou deixa-los aqui :)5
    início
        faça{
            escreva("Menu Principal"
				+"\n0- Sair"
                +"\n1- Cadastrar cliente"
                +"\n2- Consultor produto"
                +"\n3- Realizar venda"
                +"\n4- Aumentar estoque de um produto"
                +"\n5- Listar clientes cadastrados"
				+"\n6- Listar produtos cadastrados"
				+"\n7- Listar produtos em estoque"
				+"\n8- Listar produtos esgotados"
				+"\n9- Listar vendas realizadas"
				+"\n10- Listar compras realizadas por um cliente"
                +"\nDigite uma opção: ")
				se(op==1){
                loja.cadastraCliente();
               }senao(op==2){
                loja.cadastraProduto();
               }senao(op==3){
                loja.realizarVenda();
               }senao(op==4){
                loja.aumentarQuantidadeEmEstoque();
               }senao(op==5){
                loja.listarClientes();
               }senao(op==6){
                loja.listarProdutos();
               }senao(op==7){
                loja.listarProdutosEmEstoque();
               }senao(op==8){
                loja.listarProdutosEsgotados();
               }senao(op==9){
                loja.listarVendas();
               }senao(op==10){
                loja.listarVendasCliente();
               }senao(op==0){
                escreva("ate logo");
				pare
               }

            }enquanto(verdadeiro);
    fim

//métodos


void cadastrarCliente() 
	inicio 
	{
		
		escreva("*****Cadastrando cliente*****");
		escreva("Codigo do cliente: ");
		leia(codigo);
		escreva("Nome: ");
		leia(nome);
		Cliente[] = (codigo,nome);  
		Clientes[qntClientes] = Cliente;
		qntClientes++;
		escreva("**************************************");
	}
	fim

void cadastrarProduto() 
	inicio
	{
		
		escreva("*****Cadastrando Produto*****");
		escreva("Codigo do produto: ");
		leia(codigo);
		escreva("Nome: ");
		leia(nome);
		escreva("Quantidade em estoque: ");
		leia(quant);
		escreva("Preco: ");
		Produto[]=(codigo,nome,quant,));
		produtos[qntProdutos] = produto;
		qntProdutos++;
		escreva("**************************************");
	}
	fim
	void realizarVenda() 
	inicio
	{
		escreva("*****Realizando venda*****");
		escreva("Codigo da venda: ");
		leia(venda);
		escreva("Nome do cliente: ");
		leia(nome);
		escreva("Data da venda: ");
		leia(data);
		escreva("Quantidade de produtos diferentes: ");
		leia(quant);
		Item[]=[quant];
		int cont1 = 0;
		para(int i=0;i<quant;i++) 
		{
			int test = 0;
			enquanto(test==0 || test==2) 
			{
				escreva("Nome do produto "+i+": ");
				leia(nome1);
				se(nome1 == "cancelar") {
					escreva("Venda cancelada.");
					retorne
				}
				escreva("Quantidade: ");
				leia(quant1);
				para(int j=0;j<qntProdutos;j++) 
				{
					se(nome1==(produtos[j])) 
					{
						test = 1;
						se(produtos[j].getQntEmEstoque() < quant1) 
						{
							escreva(">ERRO: Quantidade em estoque deste produto eh insuficiente para a venda.");
							escreva(">Digite o produto novamente ou digite \"Cancelar\" para cancelar a operacao de venda.");
							test = 2;
							pare
						}
						entao
						{
							produtos[j].vender(quant1);
							itens[cont1] = Item(produtos[j].Codigo(),nome1,produtos[j].QntEmEstoque(),produtos[j].Preco(),quant1);
							cont1++;
						}
					}
				}
				se(test==0)
				{
					escreva(">ERRO: Produto Invalido.");
					escreva(">Digite o produto novamente ou digite \"Cancelar\" para cancelar a operacao de venda.");
				}
			}
		}
		int test = 0;
		enquanto(test == 0) 
		{
		para(int i=0;i<qntClientes;i++) 
			{
				se(nome==(clientes[i].Nome())) 
				{
					test = 1;
					Venda[] =Venda(codigo,clientes[i],data,itens,quant);
					clientes[i].Comprar(venda);
					vendas[qntVendas] = venda;
					qntVendas++;
					pare
				}
			}
			se(test == 0) 
			{
				escreva(">ERRO: Cliente inserido invalido.");
				escreva(">Digite o nome novamente ou digite \"Cancelar\" para cancelar a operacao de venda.");
				leia(nome);
				if(nome == "cancelar"){
					escreva("Venda cancelada.");
					retorne
				}
			}
		}
		escreva("**************************************");
	}
	fim
	
	Void aumentarQuantidadeemEstoque()
	inicio
	{
	Escreva(“aumentando estoque de um produto”)
	Escreva(“digite o nome do produto ”)
	Boleano test = falso
	Leia(literal nome)
	Escreva(“quantidade adicionada”)
	Leia(int quant)
		Para(inteiro j =0;j<qntProdutos;j++){
			Se{nome==produtos[j]){
			Test = true
			Produtos[j].qntEmEstoque += quant
			Pare 
			}
		}
	Se(test == false){
	Escreva(“erro produto inválido ”)
	}
	fim
	
	Void listarClientes()
	inicio
	{
	Escreva(“lista de clientes ”)
		Para(i = 0;i <qntClientes;i++){
		Escreva(clientes[i])
		Escreva(“quantidade de compras”+clientes[i]+Qntcompras())
		}
	}
	fim
	
	Void listarProdutos()
	inicio
	{
	Escreva(”lista de produtos ”)
		Para(inteiro i =0;i<qntProdutos;i++){
		Escreva(produtos[i].Nome())
		Escreva(“código”+produtos[i].Código()
				+”Quantidade em estoque”+
				Produtos[i].QntEmEstoque()+”Preço “+produtos[i].preco())
	}
	fim
	
	void listarProdutosEsgotados()
	inicio
	{
	Escreva(“lista de produtos esgotados”)
		Para(inteiro i=0;i <qntProdutos;i++){
			Se (produtos[i]).QntEmEstoque()<1){
			Escreva(“código”+produtos[i].Código()+”Qusntidade em estoque(esgotado).preço:”+produtos[i].preco())
				}
		}
	}
	fim
	
	Void listarVendas()
	inicio
	{
	Escreva(“quantidade de vendas realizadas ”+qntVendas)
	Escreva(“lista de vendas realizadas “)
		Para(inteiro i=0;i < qntVendas;i++){
		Item[] = vendas[i].itens();
		Escreva(“venda de código “+vendas[i].codigo()+”<”);
		Escreva(“comparador:”+vendas[i].Comprador().Nome())
		Escreva(“produtos vendidos:”)
			Para (inteiro j = 0;j < vendas[i].QntProdutosDiferentes();j++){
			Escreva(“item[i].QntVendida())
			}
	}
	fim
	
	Void listarVendasCliente()
	inicio
	{
	Escreva(“nome do cliente “)
	Leia(literal nome)
	Boleano test = falso
		Para(inteiro i =0;i<qntClientes;i++){
			Se(nome ==clientes[i].Nome()){
			Test = true
			Escreva(“número de compras”+clientes[i].ntCompras());
			Escreva(“lista de compras”);
				Para(inteiro j=0;j<clientes [i].QntCompras();j++){
				Escreva(“Compra de código “+clientes[i].Compras()[j].Codigo()+”<”)
				Escreva(“/tData”+clientes[i].Compras()[j].Data());
				Escreva(“/tProdutos”)
					Para(inteiro k =0;k<clientes[i].Compras()[j].QntProdutosDiferentes();k++){
					Escreva(“/t”+clientes[i].Compras()[j].itens()[k].Nome());
					Escreva(“—>quantidade”+clientes[i].Compras()[j].itens()[k].QntVendida());
											}
																}
											}		
								}
							Se(test == falso){
							Escreva(“erro cliente invalido “)
								}
				}
	}
	fim
