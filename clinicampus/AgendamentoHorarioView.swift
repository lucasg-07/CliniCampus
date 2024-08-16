//
//  AgendamentoHorarioView.swift
//  clinicampus
//
//  Created by found on 16/08/24.
//

import SwiftUI

struct AgendamentoHorarioView: View {
    
    let oftalmologistas: [Oftalmologista] = [
        Oftalmologista(nome: "Dr. Osvaldo Junior", dia: "Qua 03/04", horarios: ["10:00", "13:00", "16:00"]),
    Oftalmologista(nome: "Dr. Irineu Machado", dia: "Qua 03/04", horarios: ["07:30", "13:30", "16:30"]),
    Oftalmologista(nome: "Dra. Marcelle Pinheiro", dia: "Qui 04/04", horarios: ["08:30", "09:30", "14:00"])
]
    var body: some View {
        
        NavigationView {
                    VStack {
                        HStack {
                            Spacer()
                            Button(action: {
                            
                            }) {
                                HStack {
                                    Text("Alterar Datas")
                                    Image(systemName: "calendar")
                                }
                            }
                            .padding(.trailing)
                        }
                        .padding(.top)
                        
                        List(oftalmologistas) { oftalmologista in
                            Section(header: Text(oftalmologista.nome)
                                        .font(.headline)
                                        .padding(.horizontal, 5)) {
                                Text(oftalmologista.dia)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                
                                HStack {
                                    ForEach(oftalmologista.horarios, id: \.self) { horario in
                                        Button(action: {
                                            // Ação para selecionar o horário
                                        }) {
                                            Text(horario)
                                                .padding()
                                                .background(Color.red)
                                                .foregroundColor(.white)
                                                .cornerRadius(10)
                                        }
                                    }
                                }
                                .padding(.vertical)
                            }
                        }
                        .listStyle(GroupedListStyle())
                        .navigationTitle("Horários de Oftalmologistas")
                    }
                }
            }
        }

        struct Oftalmologista: Identifiable {
            let id = UUID()
            let nome: String
            let dia: String
            let horarios: [String]
        }

        
    


#Preview {
        AgendamentoHorarioView()
    }

