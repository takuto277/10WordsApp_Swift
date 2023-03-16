//
//  _0wordsApp_SwiftTests.swift
//  10wordsApp_SwiftTests
//
//  Created by 小野拓人 on 2023/03/15.
//

import XCTest
@testable import _0wordsApp_Swift

final class QuizAddPresenterTests: XCTestCase {

    private let quizWordsRepository = MockQuizWordsRepository()
    private var presneter: QuizAddProtocol!
    
    override func setUp() {
        super.setUp()
        
        self.presneter = QuizAddPresenter(quizWordsRepository: quizWordsRepository)
    }
    
    func Test_saveQuizWord() {
        // Given
        let quizWordEntity = QuizWordEntity(english: "Hello", japanese: "こんにちは")
        // When
        self.presneter.saveQuizWord(quizWordEntity)
        // Then
        XCTAssertEqual(quizWordsRepository.mockFunctionCalled, true)
    }
}
