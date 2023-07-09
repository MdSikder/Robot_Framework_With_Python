*** Settings ***
Documentation   Sikuli with Robot
#Library            SikuliLibrary     mode=NEW

Resource    ../DesktopAppAutomation/inherit/base.robot
Suite Setup        Start Sikuli Process
Suite Teardown     Stop Remote Server


*** Test Cases ***
Test Application actions
    Inicia Sessao

    log    Nao testei nada
    [Teardown]      Finaliza Teste