import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack{
            VStack {
                HStack {
                    Text("CliniCampus")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.top,40)
                        .padding(.leading)
                    
                    Spacer()
                    
                    Image("Bia")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .padding(.bottom)
                        .padding(.horizontal,15)
                }
                .background(Color.cabecalho)
                
                VStack(alignment: .leading) {
                    HStack {
                        ScrollView(.horizontal){
                            HStack {
                                NavigationLink(destination:AreaConsultaView()){
                                    VStack {
                                        Image(systemName: "calendar.badge.plus")
                                            .font(.largeTitle)
                                            .foregroundColor(.red)
                                        
                                        
                                        Text("Agendar consulta")
                                            .font(.subheadline)
                                            .foregroundColor(.black)
                                    }
                                    
                                    .padding(10)
                                    .padding(.vertical,40)
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(10)
                                }
                                NavigationLink(destination: ConsultasAgendadas()) {
                                    VStack{
                                        Image(systemName: "list.bullet")
                                            .font(.largeTitle)
                                            .foregroundColor(.red)
                                        
                                            .padding(.bottom,6)
                                        Text("Consultas agendadas")
                                            .font(.subheadline)
                                            .foregroundColor(.black)
                                    }
                                    .padding(.horizontal,2)
                                    .padding(.vertical,51)
                                    .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                                }
                                
                                NavigationLink(destination:HistoricoConsultasView()) {
                                    VStack{
                                        Image(systemName: "doc.text")
                                            .font(.largeTitle)
                                            .foregroundColor(.red)
                                        
                                        Text("Histórico de consultas")
                                            .font(.subheadline)
                                            .foregroundColor(.black)
                                    }
                                    .padding(.horizontal,2)
                                    .padding(.vertical,51)
                                    .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                                }
                            }
                            
                        }
                    }
                    
                    Spacer().frame(height: 20)
                    
                    VStack(alignment: .leading) {
                        Text("Próximos agendamentos")
                            .font(.headline)
                        
                        HStack {
                            Text("Sem agendamentos próximos")
                                .foregroundColor(.gray)
                            
                            Spacer()
                            
                            NavigationLink(destination: AreaConsultaView()){
                                    Text("Agendar")
                                    Image(systemName: "plus")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 11.5)
                                }
                                .padding(.horizontal,10)
                                .padding(.vertical, 8)
                                .background(Color.red)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            }

                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    }
                    
                    Spacer().frame(height: 20)
                    
                    VStack(alignment: .leading) {
                        Text("Campanhas")
                            .font(.headline)
                        
                        Image("campanha1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                    }
                    
                    Spacer()
                }
                .padding()
                
            }
        }
        .navigationBarBackButtonHidden(true) 

    }
}

#Preview {
    MainView()
}
