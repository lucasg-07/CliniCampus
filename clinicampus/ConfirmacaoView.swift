import SwiftUI

struct ConfirmacaoView: View {
    var oftalmologista: Oftalmologista
    var horario: String
    @State private var showAlert = false
    
    var body: some View {
        NavigationView{
            VStack(spacing: 20) {
                Text("Confirmando Agendamento")
                    .font(.headline)
                
                Image("Bia") // substitua pelo nome correto da sua imagem
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
                                
                NavigationLink(destination: ContentView()){
                    Button(action: {
                        showAlert = true
                    }) {
                        Text("Confirmar")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .alert(isPresented : $showAlert){
                        Alert(
                            title: Text("Sucesso"),
                            message: Text("Consulta marcada com sucesso"),
                            dismissButton: .default(Text("OK"))
                        )
                        
                    }
                }
                .padding()
            }
            .padding()
        }
    }
}


#Preview {
    ConfirmacaoView(oftalmologista:Oftalmologista(nome: "Dr. Osvaldo Junior", dia: "Qua 03/04", horarios: ["10:00", "13:00", "16:00"]), horario: "10:00")
}
