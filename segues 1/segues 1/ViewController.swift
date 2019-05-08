import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func button(_ sender: UIButton) {
    }
    
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    _ = segue.destination as! SecondViewController
    _ = sender as? ViewController
    
}

}



