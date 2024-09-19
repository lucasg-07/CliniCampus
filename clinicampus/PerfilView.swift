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
    @State private var botaoEditar : String = "Editar"

    var body: some View {
        NavigationStack{
            ScrollView {
                Image("Bia")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white.opacity(0.2), lineWidth: 4))
                    .padding(.top, 5)

                Text(nome)
                    .font(.title)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity, alignment: .center)


                VStack(alignment: .leading, spacing: 10) {
                    Text("Informações Pessoais")
                        .font(.headline)
                    if editandoPerfil {
                        HStack {
                            Text("Nascimento")
                                .frame(width: 100, alignment: .leading)
                            TextField("", text: $nascimento)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        
                        HStack {
                            Text("Sexo")
                                .frame(width: 100, alignment: .leading)
                            TextField("", text: $sexo)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        
                        HStack {
                            Text("Matrícula")
                                .frame(width: 100, alignment: .leading)
                            TextField("", text: $matricula)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        
                        HStack {
                            Text("Telefone")
                                .frame(width: 100, alignment: .leading)
                            TextField("", text: $telefone)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                    } else {
                        Text("Nascimento: \(nascimento)")
                        Text("Sexo: \(sexo)")
                        Text("Matrícula: \(matricula)")
                        Text("Telefone: \(telefone)")
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.top, 15)

                Divider()
                    .padding(.vertical)

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
                    .padding(.bottom, 5)
                    .frame(maxWidth: .infinity, alignment: .center)

                    if mostrarInformacoesMedicas {
                        VStack(alignment: .leading, spacing: 10) {
                            if editandoPerfil {
                                HStack {
                                    Text("Alergias")
                                        .frame(width: 120, alignment: .leading)
                                    TextField("", text: $alergias)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                }
                                
                                HStack {
                                    Text("Altura")
                                        .frame(width: 120, alignment: .leading)
                                    TextField("", text: $altura)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                }
                                
                                HStack {
                                    Text("Peso")
                                        .frame(width: 120, alignment: .leading)
                                    TextField("", text: $peso)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                }
                                
                                HStack {
                                    Text("Tipo Sanguíneo")
                                        .frame(width: 120, alignment: .leading)
                                    TextField("", text: $tipoSanguineo)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                }
                                
                                HStack {
                                    Text("Observações")
                                        .frame(width: 120, alignment: .leading)
                                    TextField("", text: $observacoes)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                }
                            } else {
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

            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        editandoPerfil.toggle()
                        mostrarInformacoesMedicas = true
                        if(botaoEditar == "Editar"){
                            botaoEditar = "Salvar"
                        }else{
                            botaoEditar = "Editar"
                        }
                    }) {
                        Text(botaoEditar)
                    }
                }
            }
        }
    }
}

#Preview{
    PerfilView()
}
