import UIKit

class ScreenColorViewController: BaseViewController {
    
    @IBOutlet weak var viewBorder: UIView!
    @IBOutlet weak var SwitWhiteborder: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! ResultViewController
        viewController.message = message
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    @IBAction func changeBorder(_ sender: UISwitch) {
        viewBorder.backgroundColor = sender.isOn ? .white : .clear
    }
    
}

