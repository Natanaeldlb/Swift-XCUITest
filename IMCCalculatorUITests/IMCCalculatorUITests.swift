//
//  IMCCalculatorUITests.swift
//  IMCCalculatorUITests
//
//  Created by Natanael  de Lima Batista on 25/03/24.
//  Copyright © 2024 Eduardo Finotti. All rights reserved.
//

import XCTest

final class IMCCalculatorUITests: XCTestCase {

    override func setUpWithError() throws {
       
        continueAfterFailure = false

        
    }

    override func tearDownWithError() throws {
        
    }

    func testExample() throws {
        
        // irá iniciar o app IMCCalculator
        let app = XCUIApplication()
        app.launch()
        
        // Irá clicar no campo nome e Preencher
        let campoNomeTextField = app.textFields["campo_nome"]
        campoNomeTextField.tap()
        campoNomeTextField.typeText("Natanael")
        
        // Irá clicar no campo Altura e Preencher
        let campoAlturaTextField = app.textFields["campo_altura"]
        campoAlturaTextField.tap()
        campoAlturaTextField.typeText("1.81")
        
        //Irá clicar no campo Peso e Preencher
        let campoPesoTextField = app.textFields["campo_peso"]
        campoPesoTextField.tap()
        campoPesoTextField.typeText("70")
        
        //Irá clicar no campo Idade e Preencher
        let campoIdadeTextField = app.textFields["campo_idade"]
        campoIdadeTextField.tap()
        campoIdadeTextField.typeText("23")
        
        // irá clicar no botao Calcular
        app.staticTexts["Calcular"].tap()
        XCTAssert(app.staticTexts["21.37"].exists)
        
    }

    
}
