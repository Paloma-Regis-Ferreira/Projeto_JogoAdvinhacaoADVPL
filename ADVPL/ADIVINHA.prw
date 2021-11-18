#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

/**
    FWInputBox("mensagem", "entrada") - recebe uma mensagem do usuario no segundo campo, recebe em caracter
    VAL() - Converte o caracter recebido para numero
**/

User Function ADIVINHA()

    Local nNum := RANDOMIZE( 1, 100 )
    Local nChute := 0
    Local nCount := 0

    WHILE nChute != nNum
    nChute := Val(FWInputBox("Escolha um numero [1 - 100]", ""))
        IF nChute == nNum
            MsgInfo("Voce acertou - <b>" + CValToChar(nChute) + "</b><br>ERROS: " + CValToChar(nCount), "Fim de jogo" )
        ELSEIF nChute > nNum
            MsgAlert("Valor alto", "Tente novamente")
            nCount++
        ELSE
            MsgAlert("Valor baixo", "Tente novamente")
            nCount++
        ENDIF
    END




RETURN
