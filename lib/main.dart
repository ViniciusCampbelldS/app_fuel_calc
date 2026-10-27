import 'package:flutter/material.dart';
import 'sobre.dart';
import 'calculadora.dart';

void main() {
  runApp(MaterialApp(home: Home(), debugShowCheckedModeBanner: false));
  
}

class Home extends StatefulWidget {
	const Home({super.key});
	
	@override
	State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // controladores para os campos de texto
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  // variável para o resultado da informação do IMC
  String _infoText = 'Informe seus dados!';
  // função para resetar os campos de texto e a variável de resultado
  void _resetFields() {
    pesoController.text = '';
    alturaController.text = '';
    setState(() {
      _infoText = 'Informe seus dados!';
    });
  }
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			// opções de menu superior
			drawer: Drawer (
				child: ListView(
					children:[
						DrawerHeader(
							decoration: BoxDecoration(
								color: Colors.green,
							), // decoration: BoxDecoration
							child: Text(
								'Menu',
								style: TextStyle(
									color: Colors.white,
									fontSize: 24,
								), // TextStyle
							), // Text
						), // DrawerHeader
						ListTile(
							leading:Icon(
								Icons.calculate,
								color: Colors.green
							), // Icon
							title: Text('Calculo IMC'),
							onTap: () {
								Navigator.pop(context); // Fecha o Drawer
								Navigator.push(
									context,
									MaterialPageRoute(builder: (context) => const CalculadoraPage()),
								); // Navigator.push
							}, // onTap 
						), // ListTitle
						ListTile(
							trailing:Icon(Icons.info, color: Colors.green),
							title: Text('Sobre'),
							onTap: () {
							Navigator.pop(context); // Fecha o Drawer
							Navigator.push( 
								context,
								MaterialPageRoute(builder: (context) => const SobrePage()),
								); // Navigator.push
							} // onTap
						), // ListTitle
					] // children
				) // child: ListView
			), // Drawer
			body: const Center(
				child: Text('Calculadora de IMC'),
			), // 
			appBar: AppBar(
				title: Text(
					'Calculadora de IMC',
					textAlign: TextAlign.center,
					style: TextStyle(
						fontSize: 30,
						color: Colors.white,
						//backgroundColor: const Color(0xFF109940),
						fontWeight: FontWeight.bold,
					), // TextStyle
				), // Text
				centerTitle: true,
				backgroundColor: const Color(0xFF109940),
			), // AppBar
			bottomNavigationBar: BottomAppBar(
				padding: EdgeInsets.all(0),
				child: Container(
				height: 30,
				color: Colors.green,
				child: Center(
					child: Text(
							'Desenvolvido por Elias Santos',
							style: TextStyle(color: Colors.white, fontSize: 18),
						), // child: Text
					), // child: Center
				), // child: Container
			), // BottomAppBar
		); // return Scaffold(
	}// build (){
} // _HomeState

/*
Exercício: Calculadora de Consumo de Combustível 

Objetivo 

Criar um aplicativo que calcule quantos quilômetros por litro um veículo faz. 

Crie um app denominado: app_combustivel 

Tela Principal 

O usuário deve informar: 

    Quilômetros percorridos 

    Litros de combustível consumidos 

Campos: 

Quilômetros: [] 

Litros: [] 

[ CALCULAR ] 

Cálculo 

Fórmula: Consumo = Quilômetros / Litros 

Classificação 

Se o resultado for: 

Consumo 
	

Mensagem 

Menor que 8 km/l 
	

Consumo Alto 

Entre 8 e 12 km/l 
	

Consumo Médio 

Acima de 12 km/l 
	

Consumo Econômico 

Exemplo: 

Consumo: 13,5 km/l 

Classificação: 

Econômico 🚗 

 

Segunda Tela: Sobre 

Criar uma tela informando: 

    Nome do aluno 

    Turma 

    Objetivo do aplicativo 

Semelhante ao arquivo sobre.dart. [senacrio-m...epoint.com] 

Atenção: 

Adicionar um botão: 

[LIMPAR] 

Que apague os campos e o resultado. 
*/