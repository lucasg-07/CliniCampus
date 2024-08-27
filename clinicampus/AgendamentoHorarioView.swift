//
//  AgendamentoHorarioView.swift
//  clinicampus
//
//  Created by found on 16/08/24.


import SwiftUI

struct AgendamentoHorarioView: View {
    
    @State private var selectedDate = Date()
    @State private var selectedHorario: String?
    @State private var showingDatePicker = false
    @State private var index = 0
    
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
                        
                            showingDatePicker.toggle()
                        
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
                        .padding(.vertical, 5)) {
                            Text(oftalmologista.dia)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            
                            HStack {
                                ForEach(oftalmologista.horarios, id: \.self) { horario in
                                    Button(action: {
                                        selectedHorario = horario
                                        withAnimation(.spring()){
                                            self.index = 0
                                        }
                                    }) {
                                        Text(horario)
                                            .padding()
                                            .background(selectedHorario == horario ? Color.blue: Color.red)
                                            .foregroundColor(self.index == 0 ? .white : .gray)
                                            .cornerRadius(10)
                                            .frame(width: (UIScreen.main.bounds.width - 50) / 4)
                                    }
                                    
                                   //.animation(.easeInOut, value: selectedHorario)
                                }
                            }
                            .padding(.vertical)
                        }
                    }
                .listStyle(GroupedListStyle())
                .navigationTitle("Horários de Oftalmologistas")
                .navigationBarTitleDisplayMode(.inline)
            }
            .sheet(isPresented: $showingDatePicker) {
                DatePicker("Selecionar Data", selection: $selectedDate, displayedComponents: .date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding()
                
                Button("Confirmar") {
                    
                    showingDatePicker = false
                }
                .padding()
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
    
    
    
    
    struct AgendamentoHorarioView_Previews: PreviewProvider {
        static var previews: some View {
            AgendamentoHorarioView()
    }
    
}

