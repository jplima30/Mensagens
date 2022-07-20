import UIKit

class MessageViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        message = Message()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! MessageColorViewController
        viewController.message = message
    }
    
    override func changeColor(_ sender: UIButton) {
        let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
        colorPicker.modalPresentationStyle = .overCurrentContext
        colorPicker.reference = self
        present(colorPicker, animated: true, completion: nil)
    }
    
    func applyColor(color: UIColor) {
        lbMessage.textColor = color
        message.textColor = color
    }
    
}

extension MessageViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        message.text = textField.text!
        lbMessage.text = textField.text!
        textField.resignFirstResponder()
        
        return true
    }
}
