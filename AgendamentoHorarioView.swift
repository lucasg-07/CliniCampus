import SwiftUI

struct AgendamentoHorarioView: View {
    
    @State private var selectedDate = Date()
    @State private var selectedHorario: String?
    @State private var selectedOftalmologista: Oftalmologista?
    @State private var showingDatePicker = false
    @State private var showingConfirmationPopup = false
    @State private var navigateToMain = false  // Novo estado para controlar a navegação para a MainView
    
    let oftalmologistas: [Oftalmologista] = [
        Oftalmologista(nome: "Dr. Osvaldo Junior", dia: "Qua 03/04", horarios: ["10:00", "13:00", "16:00"]),
        Oftalmologista(nome: "Dr. Irineu Machado", dia: "Qua 03/04", horarios: ["07:30", "13:30", "16:30"]),
        Oftalmologista(nome: "Dra. Marcelle Pinheiro", dia: "Qui 04/04", horarios: ["08:30", "09:30", "14:00"])
    ]
    
    var body: some View {
        NavigationStack {
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
                        .foregroundColor(.black)
                        .padding(.vertical, 0.5)){
                            Text(oftalmologista.dia)
                                .font(.subheadline)
                                .foregroundColor(.black.opacity(2))
                            
                            HStack {
                                ForEach(oftalmologista.horarios, id: \.self) { horario in
                                    Button(action: {
                                        selectedHorario = horario
                                        selectedOftalmologista = oftalmologista
                                        showingConfirmationPopup = true
                                    }) {
                                        Text(horario)
                                            .padding()
                                            .background(
                                                selectedHorario == horario && selectedOftalmologista?.id == oftalmologista.id
                                                ? Color.blue : Color.cabecalho
                                            )
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                }
                            }
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
            .sheet(isPresented: $showingConfirmationPopup) {
                if let selectedOftalmologista = selectedOftalmologista, let selectedHorario = selectedHorario {
                    ConfirmacaoView(oftalmologista: selectedOftalmologista, horario: selectedHorario, showingConfirmationPopup: $showingConfirmationPopup, navigateToMain: $navigateToMain)
                }
            }
            .navigationDestination(isPresented: $navigateToMain) {
                InformacoesGeraisConsultaAgendada()
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

#Preview{
    AgendamentoHorarioView()
}

