import SwiftUI
import PlaygroundSupport

struct Stock {
    let ticker: String
    let allocation: String
}

struct RebalanceView: View {
    @State var ticker = ""
    @State var allocation = ""
    
    var stock = [Stock]()
    
    var body: some View {
        Text("Rebalance")
            .font(.largeTitle)
        HStack {
            TextField("Ticker Symbol", text: $ticker)
            TextField("Target Allocation", text: $allocation)
        }
        Button("Add", action: add)
    }
    
    func add() {
        //stock.append(Stock(ticker: ticker, allocation: allocation))
    }
}

PlaygroundPage.current.setLiveView(RebalanceView().padding(300))
