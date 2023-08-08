//
//  HomeViewController.swift
//  Learn
//
//  Created by aryan kumar on 26/07/23.
//

import UIKit

class HomeViewController: UIViewController {
    ///true for "O" and false for "X"
    var currentTurn = true
    
    private let resetButton : UIButton={
        let button = UIButton()
        button.setTitle("Reset", for: .normal)
        button.setTitleColor( .black, for: .normal)
        button.backgroundColor = .white
        return button
    }()
    
    
    
    
    private let nameLabel : UILabel={
       let label=UILabel()
        label.text = "  Tic-Tac-Toe"
        label.textColor = .white
        label.layer.borderColor = UIColor.white.cgColor
        label.layer.borderWidth = 3
        return label
    }()
    
    private let chanceLabel:UILabel={
        let label=UILabel()
        label.text="current turn : O"
        label.textColor = .white
        return label
    }()
    
    private let FirstButton:UIButton={
        let button=UIButton()
        button.backgroundColor = .white
        button.setTitle(".", for: .normal)
        return button
    }()
    var tapped1 = true
    
    private let SecondButton:UIButton={
        let button=UIButton()
        button.backgroundColor = .white
        button.setTitle("..", for: .normal)
        return button
    }()
    var tapped2 = true
    
    private let ThirdButton:UIButton={
        let button=UIButton()
        button.backgroundColor = .white
        button.setTitle("...", for: .normal)
        return button
    }()
    var tapped3 = true
    
    private let FourthButton:UIButton={
        let button=UIButton()
        button.backgroundColor = .white
        button.setTitle("....", for: .normal)
        return button
    }()
    var tapped4 = true
    
    private let FifthButton:UIButton={
        let button=UIButton()
        button.backgroundColor = .white
        button.setTitle(".....", for: .normal)
        return button
    }()
    var tapped5 = true
    
    private let SixthButton:UIButton={
        let button=UIButton()
        button.backgroundColor = .white
        button.setTitle("......", for: .normal)
        return button
    }()
    var tapped6 = true
    
    private let SeventhButton:UIButton={
        let button=UIButton()
        button.backgroundColor = .white
        button.setTitle(".......", for: .normal)
        return button
    }()
    var tapped7 = true
    
    private let EightButton:UIButton={
        let button=UIButton()
        button.backgroundColor = .white
        button.setTitle("........", for: .normal)
        return button
    }()
    var tapped8 = true
    
    private let NinthButton:UIButton={
        let button=UIButton()
        button.backgroundColor = .white
        button.setTitle(".........", for: .normal)
        return button
    }()
    var tapped9 = true





    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        AddSubView()
        FirstButton.addTarget(self, action: #selector(didtapFirstButton), for: .touchUpInside)
        SecondButton.addTarget(self, action: #selector(didtapSecondButton), for: .touchUpInside)
        ThirdButton.addTarget(self, action: #selector(didtapThirdButton), for: .touchUpInside)
        FourthButton.addTarget(self, action: #selector(didtapFourthButton), for: UIControl.Event.touchUpInside)
        FifthButton.addTarget(self, action: #selector(didtapFifthButton), for: .touchUpInside)
        SixthButton.addTarget(self, action: #selector(didtapSixthButton), for: .touchUpInside)
        SeventhButton.addTarget(self, action: #selector(didtapSeventhButton), for: .touchUpInside)
        EightButton.addTarget(self, action: #selector(didtapEightButton), for: .touchUpInside)
        NinthButton.addTarget(self, action: #selector(didtapNinthButton), for: .touchUpInside)
        resetButton.addTarget(self, action: #selector(didTapResetButton), for: .touchUpInside)
        
    }
    
    //MARK: adding subViews
    
    private func AddSubView(){
        view.addSubview(nameLabel)
        view.addSubview(chanceLabel)
        view.addSubview(FirstButton)
        view.addSubview(SecondButton)
        view.addSubview(ThirdButton)
        view.addSubview(FourthButton)
        view.addSubview(FifthButton)
        view.addSubview(SixthButton)
        view.addSubview(SeventhButton)
        view.addSubview(EightButton)
        view.addSubview(NinthButton)
        view.addSubview(resetButton)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let widthSize=view.frame.size.width
        let heightSize=view.frame.size.height
        nameLabel.frame = CGRect(x: (widthSize/2)-50, y: heightSize/4-60, width: widthSize/3.0-20, height: 52)
        chanceLabel.frame = CGRect(x: (widthSize/2)-50, y: heightSize/4, width: 400, height: 50)
        FirstButton.frame = CGRect(x: Int((widthSize/2)-130), y: Int(heightSize/6+nameLabel.height+chanceLabel.height+30), width: Int((widthSize/6)+20), height: Int((widthSize/6)+20))
        SecondButton.frame = CGRect(x: Int((widthSize/2)-40), y: Int(heightSize/6+nameLabel.height+chanceLabel.height+30), width: Int((widthSize/6)+20), height: Int((widthSize/6)+20))
        ThirdButton.frame = CGRect(x: Int((widthSize/2)+50), y: Int(heightSize/6+nameLabel.height+chanceLabel.height+30), width: Int((widthSize/6)+20), height: Int((widthSize/6)+20))
        FourthButton.frame = CGRect(x: Int((widthSize/2)-130), y: Int(heightSize/6+nameLabel.height+chanceLabel.height+ThirdButton.height+35), width: Int((widthSize/6)+20), height: Int((widthSize/6)+20))
        FifthButton.frame = CGRect(x: Int((widthSize/2)-40), y: Int(heightSize/6+nameLabel.height+chanceLabel.height+ThirdButton.height+35), width: Int((widthSize/6)+20), height: Int((widthSize/6)+20))
        SixthButton.frame = CGRect(x: Int((widthSize/2)+50), y: Int(heightSize/6+nameLabel.height+chanceLabel.height+ThirdButton.height+35), width: Int((widthSize/6)+20), height: Int((widthSize/6)+20))
        SeventhButton.frame = CGRect(x: Int((widthSize/2)-130), y: Int(heightSize/6+nameLabel.height+chanceLabel.height+ThirdButton.height+FourthButton.height+40), width: Int((widthSize/6)+20), height: Int((widthSize/6)+20))
        EightButton.frame = CGRect(x: Int((widthSize/2)-40), y: Int(heightSize/6+nameLabel.height+chanceLabel.height+ThirdButton.height+FourthButton.height+40), width: Int((widthSize/6)+20), height: Int((widthSize/6)+20))
        NinthButton.frame = CGRect(x: Int((widthSize/2)+50), y: Int(heightSize/6+nameLabel.height+chanceLabel.height+ThirdButton.height+FourthButton.height+40), width: Int((widthSize/6)+20), height: Int((widthSize/6)+20))
        resetButton.frame = CGRect(x: (widthSize/2)-45, y: heightSize/6+nameLabel.height+chanceLabel.height+ThirdButton.height+FourthButton.height+100+NinthButton.height, width: 100, height: 50)
    }
    
    
    @objc private func didtapFirstButton(){
        print(FirstButton.currentTitle!)
        if(tapped1){
            tapped1=false
            if(currentTurn){
                currentTurn=false
                FirstButton.setTitle("O", for: .normal)
                FirstButton.setTitleColor(.black, for: .normal)
                chanceLabel.text="current turn : X"
                let win=winLogic()
                if(win){
                    presentalert()
                }
            }else{
                currentTurn=true
                FirstButton.setTitle("X", for: .normal)
                FirstButton.setTitleColor(.black, for: .normal)
                chanceLabel.text="current turn : O"
                let win=winLogic()
                if(win){
                    presentalert()
                }
            }

        }else{
            return
        }
    }
    
    @objc private func didtapSecondButton(){
        if(tapped2){
            tapped2=false
            if(currentTurn){
                currentTurn=false
                SecondButton.setTitle("O", for: .normal)
                SecondButton.setTitleColor(.black, for: .normal)
                chanceLabel.text="current turn : X"
                let win = winLogic()
                if(win){
                    presentalert()
                }
            }else{
                currentTurn=true
                SecondButton.setTitle("X", for: .normal)
                SecondButton.setTitleColor(.black, for: .normal)
                chanceLabel.text="current turn : O"
                let win=winLogic()
                if(win){
                    presentalert()
                }
            }
        }else{
            return
        }
    }
    
    @objc private func didtapThirdButton(){
        if(tapped3){
            tapped3=false
            if(currentTurn){
                currentTurn=false
                ThirdButton.setTitle("O", for: .normal)
                ThirdButton.setTitleColor(.black, for: .normal)
                chanceLabel.text="current turn : X"
                let win=winLogic()
                if(win){
                    presentalert()
                }

            }else{
                currentTurn=true
                ThirdButton.setTitle("X", for: .normal)
                ThirdButton.setTitleColor(.black, for: .normal)
                chanceLabel.text="current turn : O"
                let win=winLogic()
                if(win){
                    presentalert()
                }
            }
        }else{
            return
        }
    }
    
    @objc private func didtapFourthButton(){
        if(tapped4){
            tapped4=false
            if(currentTurn){
                currentTurn=false
                FourthButton.setTitle("O", for: .normal)
                FourthButton.setTitleColor(.black, for: .normal)
                chanceLabel.text="current turn : X"
                let win=winLogic()
                if(win){
                    presentalert()
                }
            }else{
                currentTurn=true
                FourthButton.setTitle("X", for: .normal)
                FourthButton.setTitleColor(.black, for: .normal)
                chanceLabel.text="current turn : O"
                let win=winLogic()
                if(win){
                    presentalert()
                }
            }
        }else{
            return
        }
    }
    
    @objc private func didtapFifthButton(){
        if(tapped5){
            tapped5=false
            if(currentTurn){
                currentTurn=false
                FifthButton.setTitle("O", for: .normal)
                FifthButton.setTitleColor(.black, for: .normal)
                chanceLabel.text="current turn : X"
                let win=winLogic()
                if(win){
                    presentalert()
                }
            }else{
                currentTurn=true
                FifthButton.setTitle("X", for: .normal)
                FifthButton.setTitleColor(.black, for: .normal)
                chanceLabel.text="current turn : O"
                let win=winLogic()
                if(win){
                    presentalert()
                }
            }
        }else{
            return
        }
    }
    
    @objc private func didtapSixthButton(){
        if(tapped6){
            tapped6=false
            if(currentTurn){
                currentTurn=false
                SixthButton.setTitle("O", for: .normal)
                SixthButton.setTitleColor(.black, for: .normal)
                chanceLabel.text="current turn : X"
                let win=winLogic()
                if(win){
                    presentalert()
                }
            }else{
                currentTurn=true
                SixthButton.setTitle("X", for: .normal)
                SixthButton.setTitleColor(.black, for: .normal)
                chanceLabel.text="current turn : O"
                let win=winLogic()
                if(win){
                    presentalert()
                }
            }
        }else{
            return
        }
    }
    
    @objc private func didtapSeventhButton(){
        if(tapped7){
            tapped7=false
            if(currentTurn){
                currentTurn=false
                SeventhButton.setTitle("O", for: .normal)
                SeventhButton.setTitleColor(.black, for: .normal)
                chanceLabel.text="current turn : X"
                let win=winLogic()
                if(win){
                    presentalert()
                }
            }else{
                currentTurn=true
                SeventhButton.setTitle("X", for: .normal)
                SeventhButton.setTitleColor(.black, for: .normal)
                chanceLabel.text="current turn : O"
                let win=winLogic()
                if(win){
                    presentalert()
                }
            }
        }else{
            return
        }
    }
    
    @objc private func didtapEightButton(){
        if(tapped8){
            tapped8=false
            if(currentTurn){
                currentTurn=false
                EightButton.setTitle("O", for: .normal)
                EightButton.setTitleColor(.black, for: .normal)
                chanceLabel.text="current turn : X"
                let win=winLogic()
                if(win){
                    presentalert()
                }
            }else{
                currentTurn=true
                EightButton.setTitle("X", for: .normal)
                EightButton.setTitleColor(.black, for: .normal)
                chanceLabel.text="current turn : O"
                let win=winLogic()
                if(win){
                    presentalert()
                }
            }
        }else{
            return
        }
    }
    
    @objc private func didtapNinthButton(){
        if(tapped9){
            tapped9=false
            if(currentTurn){
                currentTurn=false
                NinthButton.setTitle("O", for: .normal)
                NinthButton.setTitleColor(.black, for: .normal)
                chanceLabel.text="current turn : X"
                let win=winLogic()
                if(win){
                    presentalert()
                }
            }else{
                currentTurn=true
                NinthButton.setTitle("X", for: .normal)
                NinthButton.setTitleColor(.black, for: .normal)
                chanceLabel.text="current turn : O"
                let win=winLogic()
                if(win){
                    presentalert()
                }
            }
        }else{
            return 
        }
    }


    private func winLogic()->Bool{
        let button1 = FirstButton.currentTitle!
        let button2 = SecondButton.currentTitle!
        let button3 = ThirdButton.currentTitle!
        let button4 = FourthButton.currentTitle!
        let button5 = FifthButton.currentTitle!
        let button6 = SixthButton.currentTitle!
        let button7 = SeventhButton.currentTitle!
        let button8 = EightButton.currentTitle!
        let button9 = NinthButton.currentTitle!
                
        if(button1==button2 && button2==button3 && button1==button3){
            print("won")
            return true
        }else if(button4==button5 && button5==button6 && button4==button6){
            print("won")
            return true
        }else if(button7==button8 && button8==button9 && button7==button9){
            print("won")
            return true
        }else if(button1==button4 && button4==button7 && button1==button7){
            print("won")
            return true
        }else if(button2==button5 && button5==button8 && button2==button8){
            print("won")
            return true
        }else if(button3==button6 && button6==button9 && button3==button9){
            print("won")
            return true
        }else if(button1==button5 && button5==button9 && button1==button9){
            print("won")
            return true
        }else if(button3==button5 && button5==button7 && button3==button7){
            print("won")
            return true
        }
        
        return false
    }
    
    private func presentalert(){
        if(currentTurn){
            perform("X")
        }else{
            perform("O")
        }
    }
    
    private func perform(_ player:String){
        let alert = UIAlertController(title: "Game Over", message: "player \(player) won", preferredStyle: .alert)
        let action = UIAlertAction(title: "Done", style: .default) { (action) in
            print("reset elements")
            self.resetElements()
            self.dismiss(animated: true)
        }
        alert.addAction(action)
        present(alert,animated: true,completion: nil)

    }
    
    private func resetElements(){
        FirstButton.setTitle(".", for: .normal)
        FirstButton.setTitleColor(.white, for: .normal)
        SecondButton.setTitle("..", for: .normal)
        SecondButton.setTitleColor(.white, for: .normal)
        ThirdButton.setTitle("...", for: .normal)
        ThirdButton.setTitleColor(.white, for: .normal)
        FourthButton.setTitle("....", for: .normal)
        FourthButton.setTitleColor(.white, for: .normal)
        FifthButton.setTitle(".....", for: .normal)
        FifthButton.setTitleColor(.white, for: .normal)
        SixthButton.setTitle("......", for: .normal)
        SixthButton.setTitleColor(.white, for: .normal)
        SeventhButton.setTitle(".......", for: .normal)
        SeventhButton.setTitleColor(.white, for: .normal)
        EightButton.setTitle("........", for: .normal)
        EightButton.setTitleColor(.white, for: .normal)
        NinthButton.setTitle(".........", for: .normal)
        NinthButton.setTitleColor(.white, for: .normal)
        tapped1=true
        tapped2=true
        tapped3=true
        tapped4=true
        tapped5=true
        tapped6=true
        tapped7=true
        tapped8=true
        tapped9=true

    }
    
    
    @objc private func didTapResetButton(){
        if(tapped1==false && tapped2==false && tapped3==false && tapped4==false && tapped5==false && tapped6==false && tapped7==false && tapped8==false && tapped9==false){
            resetElements()
        }else{
            let alert = UIAlertController(title: "Cannot", message: "Chances are still left", preferredStyle: .alert)
            
            let action = UIAlertAction(title: "Done", style: .default) { (action) in
                self.dismiss(animated: true)
            }
            
            alert.addAction(action)
            
            present(alert,animated: true)
        }
    }


    

}
