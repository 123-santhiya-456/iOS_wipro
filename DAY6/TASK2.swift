import Foundation
class Downloader{
    var name: String
    var onFinish: (() -> Void)?
    init(name: String){
        self.name = name
    }
    deinit{
        print("Downloader object is deleted")
    }
    func start() {
    onFinish = {
        print("Finished \(self.name)")
    }
}
}
var downloader: Downloader? = Downloader(name: "DomsDay")
downloader?.start()
downloader?.onFinish?()

downloader = nil
