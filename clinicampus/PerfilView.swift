////
////  ConsultasView.swift
////  CliniCampus
////
////  Created by found on 09/08/24.
////
//
//
//import SwiftUI
//
//struct PerfilView: View {
//
// @State private var mostrarInformacoesMedicas = false
//
//    var body: some View {
//        VStack {
//
//            Image("Bia")
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .frame(width: 120, height: 120)
//                .clipShape(Circle())
//                .overlay(Circle().stroke(Color.white.opacity(0.2), lineWidth: 4))
//                .shadow(radius: 10)
//                .padding(.top, 40)
//
//
//            Text("Beatriz")
//                .font(.title)
//                .fontWeight(.medium)
//                .frame(maxWidth: .infinity, alignment: .center)
//
//            Button(action: {
//                //ação para editar perfil
//            }) {
//                Text("Editar perfil")
//                    .foregroundColor(.gray)
//                    .font(.subheadline)
//                    .frame(maxWidth: .infinity, alignment: .center)
//            }
//
//
//            VStack(alignment: .leading, spacing: 10) {
//                Text("Nascimento: 06/11/2006")
//                Text("Sexo: Feminino")
//                Text("Matrícula: 202200011101")
//                Text("Telefone: (85) 01234-5678")
//            }
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .padding(.horizontal)
//            .padding(.top, 20)
//
//            Divider()
//                .padding(.vertical)
//
//
//            VStack(alignment: .leading, spacing: 10) {
//                HStack {
//                    Text("Informações médicas")
//                        .font(.headline)
//                    Spacer()
//                    Button(action: {
//                        withAnimation {
//                            mostrarInformacoesMedicas.toggle()
//                    }
//                }) {
//                    Image(systemName: mostrarInformacoesMedicas ? "chevron.up" : "chevron.down")
//                        .foregroundColor(.gray)
//                }
//            }
//                .padding(.bottom, 10)
//                .frame(maxWidth: .infinity, alignment: .center)
//
//
//            if mostrarInformacoesMedicas {
//            VStack(alignment: .leading, spacing: 10) {
//                HStack {
//                    Text("Alergias: Poeira e Pelos de animais")
//                    Spacer()
//                    Text("Altura: 153 cm")
//                }
//                HStack {
//                    Text("Tipo Sanguíneo: O-")
//                    Spacer()
//                    Text("Peso: 52 kg")
//                    }
//                    Text("Observações:")
//                    .font(.headline)
//                }
//                    .frame(maxWidth: .infinity, alignment: .leading)
//            }
//        }
//                    .padding(.horizontal)
//
//                    Spacer()
//        }
//    }
//}
import SwiftUI

struct PerfilView: View {
    @State private var nome = "Beatriz"
    @State private var nascimento = "06/11/2006"
    @State private var sexo = "Feminino"
    @State private var matricula = "202200011101"
    @State private var telefone = "(85) 01234-5678"
    @State private var mostrarInformacoesMedicas = false
    @State private var alergias = "Poeira e Pêlos de animais"
    @State private var altura = "153 cm"
    @State private var peso = "52 kg"
    @State private var tipoSanguineo = "O-"
    @State private var observacoes = ""
    @State private var editandoPerfil = false
    
    
    var body: some View {
        ScrollView{
           
            Image("Bia")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white.opacity(0.2), lineWidth: 4))
                .shadow(radius: 10)
                .padding(.top, 40)
            
           
            Text(nome)
                .font(.title)
                .fontWeight(.medium)
                .frame(maxWidth: .infinity, alignment: .center)
            
           
            Button(action: {
                editandoPerfil.toggle()
            }) {
                Text("Editar perfil")
                    .foregroundColor(.gray)
                    .font(.subheadline)
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            
            // Informações pessoais (com possibilidade de edição)
            VStack(alignment: .leading, spacing: 10) {
                if editandoPerfil {
                    TextField("Nascimento", text: $nascimento)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Sexo", text: $sexo)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Matrícula", text: $matricula)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Telefone", text: $telefone)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                } else{
                    Text("Nascimento: \(nascimento)")
                    Text("Sexo: \(sexo)")
                    Text("Matrícula: \(matricula)")
                    Text("Telefone: \(telefone)")
                    
                }
            }
                    
                    
                    
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            .padding(.top, 20)
            
            Divider()
                .padding(.vertical)
            
            // Informações médicas
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text("Informações médicas")
                        .font(.headline)
                    Spacer()
                    Button(action: {
                        withAnimation {
                            mostrarInformacoesMedicas.toggle()
                        }
                    }) {
                        Image(systemName: mostrarInformacoesMedicas ? "chevron.up" : "chevron.down")
                            .foregroundColor(.gray)
                    }
                }
                .padding(.bottom, 10)
                .frame(maxWidth: .infinity, alignment: .center)
                
                if mostrarInformacoesMedicas {
                    VStack(alignment: .leading, spacing: 10) {
                    if editandoPerfil {
                        TextField("Alergias", text: $alergias)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        TextField("Altura", text: $altura)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        TextField("Peso", text: $peso)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        TextField("Tipo Sanguíneo", text: $tipoSanguineo)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        TextField("Observações", text: $observacoes)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }  else {
                        Text("Alergias: \(alergias)")
                        Text("Altura: \(altura)")
                        Text("Peso: \(peso)")
                        Text("Tipo Sanguíneo: \(tipoSanguineo)")
                        Text("Observações: \(observacoes)")
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
                .padding(.horizontal)
                                
            // Botão de salvar
                if editandoPerfil {
                    Button(action: {
                    editandoPerfil.toggle()
                }) {
                    Text("Salvar")
                    .foregroundColor(.blue)
                    .font(.subheadline)
                    .frame(maxWidth: .infinity, alignment: .center)
                }
                    .padding(.top, 10)
                }
                    
                    Spacer()
            }
                    .padding()
        }
    }

#Preview{
   PerfilView()
}
