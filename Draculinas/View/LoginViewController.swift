//
//  ViewController.swift
//  Draculinas
//
//  Created by Jose David Torres Perez on 02/03/23.
//

import UIKit

class LoginViewController: UIViewController {

    private let imagenLoginView: UIImageView = {
       let imagen = UIImageView()
        imagen.translatesAutoresizingMaskIntoConstraints = false
        imagen.image = UIImage(named: "Draculinas")
        return imagen
    }()
 
    private let stackViewContainer : UIStackView =  {
       let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 15
        return stack
    }()
    
    private let emailTextField : UITextField =  {
       let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.backgroundColor = .white
        email.font = UIFont.systemFont(ofSize: 20)
        email.placeholder = "Escribe tu correo"
        email.layer.cornerRadius = 10
        return email
    }()
    
    private let passwordTextField : UITextField =  {
       let password = UITextField()
        password.font = UIFont.systemFont(ofSize: 20)
        password.backgroundColor = .white
        password.placeholder = "Escribe de tu contraseña"
        password.layer.cornerRadius = 10
        password.isSecureTextEntry = true
        return password
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Log In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        let tap = UITapGestureRecognizer(target: self, action: #selector(goToMenuView))
        button.addGestureRecognizer(tap)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.cornerRadius = 10
        return button
    }()
    
    private let forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("forgot your password?", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.layer.cornerRadius = 10
        return button
    }()
    
    private let signIntPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign Up", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.layer.cornerRadius = 10
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Draculinas"
        //view.backgroundColor =
        setupUI()
    }


    func setupUI(){
        view.addSubview(imagenLoginView)
        view.addSubview(stackViewContainer)
        stackViewContainer.addArrangedSubview(emailTextField)
        stackViewContainer.addArrangedSubview(passwordTextField)
        stackViewContainer.addArrangedSubview(loginButton)
        stackViewContainer.addArrangedSubview(forgotPasswordButton)
        stackViewContainer.addArrangedSubview(signIntPasswordButton)
        contraintsUI()
    }
    func contraintsUI(){
        
        NSLayoutConstraint.activate([
            imagenLoginView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            imagenLoginView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imagenLoginView.heightAnchor.constraint(equalToConstant: 200),
            imagenLoginView.widthAnchor.constraint(equalToConstant: 100),
            
            stackViewContainer.topAnchor.constraint(equalTo: imagenLoginView.bottomAnchor, constant: 20),
            stackViewContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackViewContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            forgotPasswordButton.heightAnchor.constraint(equalToConstant: 25),
            signIntPasswordButton.heightAnchor.constraint(equalToConstant: 25)
        
        ])
    }
    
    @objc func goToMenuView(){
        let menu = MainViewController()
        self.navigationController?.pushViewController(menu, animated: true)
    }
    
}

