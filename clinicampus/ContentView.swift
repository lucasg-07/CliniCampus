import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("CliniCampus")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(.top,40)
                
                Spacer()
                
                Image("Bia")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
            }
            .padding()
            .background(Color.red)
            
            VStack(alignment: .leading) {
                HStack {
                    ScrollView(.horizontal){
                        HStack {
                            
                            VStack{
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
                
                Spacer().frame(height: 20)
                
                VStack(alignment: .leading) {
                    Text("Próximos agendamentos")
                        .font(.headline)
                    
                    HStack {
                        Text("Sem agendamentos próximos")
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                        Button(action: {
                        }) {
                            Text("Agendar")
                                .foregroundColor(.white)
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                                .background(Color.red)
                                .cornerRadius(10)
                        }
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
