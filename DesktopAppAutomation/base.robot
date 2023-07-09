*** Settings ***
Documentation   Sikuli with Robot Framework
Library            SikuliLibrary     mode=NEW


*** Variable ***
${OPEN_APP}  C:/Windows/write.exe


*** Keywords ***
Carrega os Elementos do App
    Add Image Path      ${EXECDIR}//DesktopAppAutomation//img

Inicia Sessao
    Carrega os Elementos do App
    Open Application    ${OPEN_APP}
    Input text	${EMPTY}	Sikuli
#    Input text	    blank_page.png	    Sikuli


#    Double click       windows_icon.png
#    Double click       multiscreen.png

Encerrar Sessao
    Stop Remote Server

Finaliza Teste
    Capture Screen
#    Close Application