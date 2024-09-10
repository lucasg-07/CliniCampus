import SwiftUI

struct ConfirmacaoView: View {
    var oftalmologista: Oftalmologista
    var horario: String
    @State private var showAlert = false
    @Binding var showingConfirmationPopup : Bool
    @Binding var navigateToMain: Bool  // Binding para controlar a navegação na view anterior
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Confirmando Agendamento")
                .font(.headline)
            
            Image("Bia")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            
            Text(oftalmologista.nome)
                .font(.title2)
            
            Text("Oftalmologista")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            HStack {
                Image(systemName: "calendar")
                Text("Quarta-Feira, \(oftalmologista.dia) às \(horario)")
            }
            .font(.subheadline)
                            
            Button(action: {
                showAlert = true

            }) {
                Text("Confirmar")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.cabecalho)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Sucesso"),
                    message: Text("Consulta marcada com sucesso"),
                    dismissButton: .default(Text("OK")) {
                        // Ao fechar o alerta, a navegação é ativada
                        navigateToMain = true
                        showingConfirmationPopup = false

                    }
                )
            }
        }
        .padding()
    }
}

#Preview {
    ConfirmacaoView(oftalmologista: Oftalmologista(nome: "Dr. Osvaldo Junior", dia: "Qua 03/04", horarios: ["10:00", "13:00", "16:00"]), horario: "10:00",showingConfirmationPopup: .constant(false), navigateToMain: .constant(false))
}
