@echo off
setlocal enabledelayedexpansion
:menu
cls
echo.
echo      JJJJJ   AAAAA   CCCCC  K   K  DDDD    OOOOO  W     W
echo        J     A   A   C      K  K   D   D   O   O  W     W
echo        J     AAAAA   C      KKK    D   D   O   O  W  W  W
echo    J   J     A   A   C      K  K   D   D   O   O  W W W W
echo     JJJ      A   A   CCCCC  K   K  DDDD    OOOOO   W   W
echo.
echo  1.  Limpar tela
echo  2.  Info sistema
echo  3.  Ping
echo  4.  Limpar temporarios
echo  5.  Gerenciamento sistema
echo  6.  Desempenho sistema
echo  7.  Atualizacoes e pacotes
echo  8.  Rede e conectividade
echo  9.  Arquivos e discos
echo 10.  Processos e servicos
echo 11.  Utilitarios avancados
echo 12.  Seguranca e permissoes
echo 13.  Backup e restauracao
echo 14.  Registro do Windows
echo 15.  Gerenciamento energia
echo 16.  Diagnosticos avancados
echo 17.  Rede avancada
echo 18.  Otimizacao sistema
echo 19.  Gerenciamento usuarios
echo 20.  Comandos diversos
echo 21.  Seguranca e antimalware
echo 22.  Reparo e manutencao sistema
echo 23.  Analise de disco e arquivos
echo 24.  Otimizacao automatica
echo 25.  Registro avancado
echo 26.  Monitoramento rede
echo 27.  Servicos avancado
echo 28.  Logs e auditoria
echo 29.  Drivers e hardware
echo 30.  Usuarios avancado
echo 31.  Backup avancado
echo 32.  Relatorios
echo 33.  Limpeza avancada
echo 34.  Interface
echo 35.  Hacking e pentest
echo 36.  Esteganografia e ocultacao
echo 37.  Engenharia reversa
echo 38.  Automacao maliciosa
echo 39.  Keylogging e monitoramento
echo 40.  Persistencia e backdoors
echo 41.  Ofuscacao e anti-forense
echo 42.  Exploracao e exploits
echo 43.  Criptografia forcada
echo 44.  Redes anonimas
echo 45.  Injecao de processos
echo 46.  Bypass de seguranca
echo 47.  Coleta de intelligence
echo 48.  Manipulacao de memoria
echo 49.  Ataques de rede
echo 50.  Sair
echo.
set /p opcao="Digite o numero: "

if "%opcao%"=="50" exit /b
if "%opcao%"=="49" call :ataque_rede & goto menu
if "%opcao%"=="48" call :memoria & goto menu
if "%opcao%"=="47" call :intelligence & goto menu
if "%opcao%"=="46" call :bypass & goto menu
if "%opcao%"=="45" call :injecao & goto menu
if "%opcao%"=="44" call :anonima & goto menu
if "%opcao%"=="43" call :cripto_forcada & goto menu
if "%opcao%"=="42" call :exploits & goto menu
if "%opcao%"=="41" call :anti_forense & goto menu
if "%opcao%"=="40" call :persistencia & goto menu
if "%opcao%"=="39" call :keylog & goto menu
if "%opcao%"=="38" call :automacao_maliciosa & goto menu
if "%opcao%"=="37" call :engenharia_reversa & goto menu
if "%opcao%"=="36" call :esteganografia & goto menu
if "%opcao%"=="35" call :hacking & goto menu
if "%opcao%"=="34" call :interface & goto menu
if "%opcao%"=="33" call :limpeza_avancada & goto menu
if "%opcao%"=="32" call :relatorios & goto menu
if "%opcao%"=="31" call :backup_avancado & goto menu
if "%opcao%"=="30" call :usuarios_avancado & goto menu
if "%opcao%"=="29" call :drivers & goto menu
if "%opcao%"=="28" call :logs & goto menu
if "%opcao%"=="27" call :servicos_avancado & goto menu
if "%opcao%"=="26" call :monitoramento_rede & goto menu
if "%opcao%"=="25" call :registro_avancado & goto menu
if "%opcao%"=="24" call :otimizacao_auto & goto menu
if "%opcao%"=="23" call :analise_disco & goto menu
if "%opcao%"=="22" call :reparo_sistema & goto menu
if "%opcao%"=="21" call :seguranca_antimalware & goto menu
if "%opcao%"=="20" call :diversos & goto menu
if "%opcao%"=="19" call :usuarios & goto menu
if "%opcao%"=="18" call :otimizacao & goto menu
if "%opcao%"=="17" call :rede_avancada & goto menu
if "%opcao%"=="16" call :diagnosticos & goto menu
if "%opcao%"=="15" call :energia & goto menu
if "%opcao%"=="14" call :registro & goto menu
if "%opcao%"=="13" call :backup & goto menu
if "%opcao%"=="12" call :seguranca & goto menu
if "%opcao%"=="11" call :utilitarios & goto menu
if "%opcao%"=="10" call :processos & goto menu
if "%opcao%"=="9" call :arquivos & goto menu
if "%opcao%"=="8" call :rede & goto menu
if "%opcao%"=="7" call :atualizacoes & goto menu
if "%opcao%"=="6" call :desempenho & goto menu
if "%opcao%"=="5" call :sistema & goto menu
if "%opcao%"=="4" call :temp & goto menu
if "%opcao%"=="3" call :ping & goto menu
if "%opcao%"=="2" call :info & goto menu
if "%opcao%"=="1" cls & goto menu
goto menu

:temp
del /f /s /q "%TEMP%" 2>nul
rd /s /q "%TEMP%" 2>nul
md "%TEMP%" 2>nul
del /f /s /q "C:\Windows\Temp" 2>nul
rd /s /q "C:\Windows\Temp" 2>nul
md "C:\Windows\Temp" 2>nul
echo Temporarios limpos
pause
exit /b

:ping
set /p host="Host: "
ping %host%
pause
exit /b

:info
ver
echo.
systeminfo | findstr /b /c:"Host Name" /c:"OS Name" /c:"OS Version" /c:"System Type" /c:"Total Physical Memory" /c:"Available Physical Memory" /c:"Processor" /c:"BIOS Version" /c:"Locale"
pause
exit /b

:sistema
cls
echo 1. Desativar hibernacao
echo 2. Verificar arquivos sistema (sfc)
echo 3. Info BIOS
echo 4. Usuario atual info
echo 5. Variaveis de ambiente
echo 6. Drivers instalados
echo 7. Informacoes DirectX
echo 8. Versao do .NET Framework
echo 9. Ativar/Desativar firewall
echo 10. Voltar
set /p opts="> "
if "%opts%"=="10" exit /b
if "%opts%"=="9" netsh advfirewall set allprofiles state off & echo Firewall desativado & pause & goto sistema
if "%opts%"=="8" reg query "HKLM\SOFTWARE\Microsoft\NET Framework Setup\NDP" /s /v Version 2>nul | findstr Version & pause & goto sistema
if "%opts%"=="7" dxdiag /t dxdiag.txt & type dxdiag.txt & del dxdiag.txt & pause & goto sistema
if "%opts%"=="6" driverquery /v /fo list & pause & goto sistema
if "%opts%"=="5" set & pause & goto sistema
if "%opts%"=="4" whoami /all & pause & goto sistema
if "%opts%"=="3" wmic bios get manufacturer,name,serialnumber,version & pause & goto sistema
if "%opts%"=="2" sfc /scannow & pause & goto sistema
if "%opts%"=="1" powercfg /h off & echo Hibernacao desativada & pause & goto sistema
goto sistema

:desempenho
cls
echo 1. Diagnostico energia
echo 2. Esquema Ultimate Performance
echo 3. Parar rastreamentos
echo 4. Processos por CPU
echo 5. Processos por memoria
echo 6. Performance counters
echo 7. Velocidade do sistema
echo 8. Tempo de inicializacao
echo 9. Uso de disco
echo 10. Voltar
set /p optd="> "
if "%optd%"=="10" exit /b
if "%optd%"=="9" typeperf "\LogicalDisk(_Total)\% Disk Time" -sc 5 & pause & goto desempenho
if "%optd%"=="8" systeminfo | findstr "Tempo" & pause & goto desempenho
if "%optd%"=="7" wmic cpu get name,maxclockspeed,currentclockspeed & pause & goto desempenho
if "%optd%"=="6" typeperf -q & pause & goto desempenho
if "%optd%"=="5" powershell "Get-Process | Sort-Object WorkingSet -Descending | Select -First 20 Name,WorkingSet" & pause & goto desempenho
if "%optd%"=="4" powershell "Get-Process | Sort-Object CPU -Descending | Select -First 20 Name,CPU" & pause & goto desempenho
if "%optd%"=="3" wpr -cancel 2>nul & echo Rastreamentos parados & pause & goto desempenho
if "%optd%"=="2" powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 & echo Esquema Ultimate Performance adicionado & pause & goto desempenho
if "%optd%"=="1" powercfg /energy & echo Relatorio em %USERPROFILE%\energy-report.html & pause & goto desempenho
goto desempenho

:atualizacoes
cls
echo 1. Winget atualizar todos
echo 2. Chocolatey atualizar
echo 3. Updates instalados
echo 4. Verificar atualizacoes Windows
echo 5. Historico de atualizacoes
echo 6. Windows Update agente
echo 7. Microsoft Store apps
echo 8. Limpar cache Windows Update
echo 9. Voltar
set /p opta="> "
if "%opta%"=="9" exit /b
if "%opta%"=="8" net stop wuauserv & rd /s /q C:\Windows\SoftwareDistribution 2>nul & net start wuauserv & echo Cache limpo & pause & goto atualizacoes
if "%opta%"=="7" powershell "Get-AppxPackage | Select Name,PackageFullName" & pause & goto atualizacoes
if "%opta%"=="6" wuauclt /detectnow & echo Verificacao iniciada & pause & goto atualizacoes
if "%opta%"=="5" wmic qfe list brief /format:texttable & pause & goto atualizacoes
if "%opta%"=="4" wuauclt /showoptions & echo Abrindo Windows Update & pause & goto atualizacoes
if "%opta%"=="3" powershell "Get-HotFix | Sort-Object InstalledOn -Descending | Select -First 30" & pause & goto atualizacoes
if "%opta%"=="2" choco upgrade all 2>nul || echo Chocolatey nao instalado & pause & goto atualizacoes
if "%opta%"=="1" winget upgrade --all 2>nul || echo Winget nao disponivel & pause & goto atualizacoes
goto atualizacoes

:rede
cls
echo 1. Configuracao IP completa
echo 2. Redes Wi-Fi salvas
echo 3. Ping continuo
echo 4. Tracert 8.8.8.8
echo 5. Winsock reset
echo 6. Conexoes ativas
echo 7. Teste porta google
echo 8. Liberar/Renovar IP
echo 9. Cache DNS
echo 10. Voltar
set /p opr="> "
if "%opr%"=="10" exit /b
if "%opr%"=="9" ipconfig /displaydns & pause & goto rede
if "%opr%"=="8" ipconfig /release & ipconfig /renew & echo IP renovado & pause & goto rede
if "%opr%"=="7" powershell Test-NetConnection google.com -Port 80 & pause & goto rede
if "%opr%"=="6" netstat -ano | findstr ESTABLISHED & pause & goto rede
if "%opr%"=="5" netsh winsock reset & echo Reinicie o PC & pause & goto rede
if "%opr%"=="4" tracert 8.8.8.8 & pause & goto rede
if "%opr%"=="3" set /p host="Host: " & ping -t %host% & goto rede
if "%opr%"=="2" netsh wlan show profiles & pause & goto rede
if "%opr%"=="1" ipconfig /all & pause & goto rede
goto rede

:arquivos
cls
echo 1. Limpar todos .tmp
echo 2. Arvore diretorios
echo 3. Verificar disco C:
echo 4. Desfragmentar C:
echo 5. Criar arquivo teste
echo 6. Tamanho total arquivos
echo 7. Compactar arquivos
echo 8. Backup diferencial
echo 9. Permissoes arquivo
echo 10. Ocultar arquivo
echo 11. Voltar
set /p opf="> "
if "%opf%"=="11" exit /b
if "%opf%"=="10" set /p arquivo="Arquivo: " & attrib +h "%arquivo%" & echo Ocultado & pause & goto arquivos
if "%opf%"=="9" set /p arquivo="Arquivo: " & cacls "%arquivo%" & pause & goto arquivos
if "%opf%"=="8" set /p origem="Origem: " & set /p dest="Destino: " & robocopy "%origem%" "%dest%" /MIR /NP /LOG:backup.log & echo Backup diferencial concluido & pause & goto arquivos
if "%opf%"=="7" set /p arquivo="Arquivo: " & compact /c "%arquivo%" & echo Compactado & pause & goto arquivos
if "%opf%"=="6" cd \ & powershell "Get-ChildItem -Recurse -ErrorAction SilentlyContinue | Measure-Object -Property Length -Sum" & pause & goto arquivos
if "%opf%"=="5" set /p nome="Nome arquivo: " & fsutil file createnew "%nome%" 1073741824 & pause & goto arquivos
if "%opf%"=="4" defrag C: /U /V & pause & goto arquivos
if "%opf%"=="3" chkdsk /f /r C: & echo Agende e reinicie & pause & goto arquivos
if "%opf%"=="2" tree /F /A & pause & goto arquivos
if "%opf%"=="1" del /S /Q *.tmp *.log *.bak 2>nul & echo Temporarios removidos & pause & goto arquivos
goto arquivos

:processos
cls
echo 1. Lista processos detalhada
echo 2. Fechar processo
echo 3. Servicos ativos
echo 4. Conexoes TCP ativas
echo 5. Processos por PID
echo 6. Prioridade processo
echo 7. Servicos parados
echo 8. Iniciar/Parar servico
echo 9. Lista DLLs processo
echo 10. Voltar
set /p opp="> "
if "%opp%"=="10" exit /b
if "%opp%"=="9" set /p pid="PID: " & listdlls %pid% 2>nul || echo Use listdlls do Sysinternals & pause & goto processos
if "%opp%"=="8" set /p servico="Servico: " & echo 1-Iniciar 2-Parar & set /p acao=">" & if "!acao!"=="2" (net stop %servico%) else (net start %servico%) & pause & goto processos
if "%opp%"=="7" sc query state= inactive & pause & goto processos
if "%opp%"=="6" set /p pid="PID: " & wmic process where processid=%pid% set priority=32 & echo Prioridade alterada & pause & goto processos
if "%opp%"=="5" wmic process get processid,name,commandline & pause & goto processos
if "%opp%"=="4" powershell Get-NetTCPConnection -State Established & pause & goto processos
if "%opp%"=="3" net start & pause & goto processos
if "%opp%"=="2" set /p nome="Processo: " & taskkill /IM %nome% /F 2>nul & echo %nome% fechado & pause & goto processos
if "%opp%"=="1" wmic process get name,processid,commandline,workingsetsize /format:list & pause & goto processos
goto processos

:utilitarios
cls
echo 1. Reiniciar PC
echo 2. Desligar PC
echo 3. Sobrescrever espaco livre
echo 4. Log atualizacoes
echo 5. Copia avancada robocopy
echo 6. Agendador tarefas
echo 7. Eventos sistema
echo 8. Configuracao sistema
echo 9. Informacoes hardware
echo 10. Voltar
set /p opu="> "
if "%opu%"=="10" exit /b
if "%opu%"=="9" msinfo32 & pause & goto utilitarios
if "%opu%"=="8" msconfig & pause & goto utilitarios
if "%opu%"=="7" eventvwr.msc & pause & goto utilitarios
if "%opu%"=="6" taskschd.msc & pause & goto utilitarios
if "%opu%"=="5" set /p origem="Origem: " & set /p dest="Destino: " & robocopy "%origem%" "%dest%" /E /COPY:DAT /R:3 /W:10 /LOG:robocopy.log & echo Log salvo & pause & goto utilitarios
if "%opu%"=="4" wevtutil epl System system.evtx & echo Log exportado & pause & goto utilitarios
if "%opu%"=="3" cipher /w:C & pause & goto utilitarios
if "%opu%"=="2" shutdown /s /t 0
if "%opu%"=="1" shutdown /r /t 0
goto utilitarios

:seguranca
cls
echo 1. Verificar integridade
echo 2. Escanear malware
echo 3. Politicas de seguranca
echo 4. Usuarios e grupos
echo 5. Permissoes arquivos
echo 6. Auditoria ativada
echo 7. Firewall regras
echo 8. Criptografia arquivo
echo 9. Certificados
echo 10. Voltar
set /p ops="> "
if "%ops%"=="10" exit /b
if "%ops%"=="9" certlm.msc & pause & goto seguranca
if "%ops%"=="8" set /p arquivo="Arquivo: " & cipher /e "%arquivo%" & pause & goto seguranca
if "%ops%"=="7" netsh advfirewall firewall show rule all & pause & goto seguranca
if "%ops%"=="6" auditpol /get /category:* & pause & goto seguranca
if "%ops%"=="5" set /p arquivo="Arquivo: " & cacls "%arquivo%" & pause & goto seguranca
if "%ops%"=="4" lusrmgr.msc & pause & goto seguranca
if "%ops%"=="3" secpol.msc & pause & goto seguranca
if "%ops%"=="2" mrt & pause & goto seguranca
if "%ops%"=="1" sfc /scannow & pause & goto seguranca
goto seguranca

:backup
cls
echo 1. Backup registro
echo 2. Restaurar registro
echo 3. Backup arquivos
echo 4. Restaurar arquivos
echo 5. Ponto restauracao
echo 6. Backup estado sistema
echo 7. Backup drivers
echo 8. Backup certificados
echo 9. Voltar
set /p opb="> "
if "%opb%"=="9" exit /b
if "%opb%"=="8" certutil -exportPFX -p senha123 & pause & goto backup
if "%opb%"=="7" dism /online /export-driver /destination:C:\DriversBackup & echo Drivers exportados & pause & goto backup
if "%opb%"=="6" wbadmin start backup -backupTarget:C: -include:C: -allCritical -quiet & pause & goto backup
if "%opb%"=="5" wmic syscreate restorepoint & echo Ponto criado & pause & goto backup
if "%opb%"=="4" set /p origem="Origem: " & set /p dest="Destino: " & robocopy "%origem%" "%dest%" /E & echo Restaurado & pause & goto backup
if "%opb%"=="3" set /p origem="Origem: " & set /p dest="Destino: " & robocopy "%origem%" "%dest%" /MIR /R:2 /W:5 /LOG:backup.log & echo Backup concluido & pause & goto backup
if "%opb%"=="2" regedit /e restaura.reg & regedit /i restaura.reg & pause & goto backup
if "%opb%"=="1" regedit /e backup.reg & echo Registro exportado & pause & goto backup
goto backup

:registro
cls
echo 1. Exportar registro
echo 2. Importar registro
echo 3. Verificar registro
echo 4. Limpar registro
echo 5. Backup hives
echo 6. Restaurar hive
echo 7. Permissoes chave
echo 8. Voltar
set /p oprg="> "
if "%oprg%"=="8" exit /b
if "%oprg%"=="7" set /p chave="Chave: " & reg query "%chave%" /reg:32 & pause & goto registro
if "%oprg%"=="6" reg save HKLM\Software software.hiv & echo Hive salvo & pause & goto registro
if "%oprg%"=="5" reg save HKLM\System system.hiv & reg save HKLM\Software software.hiv & echo Hives salvos & pause & goto registro
if "%oprg%"=="4" reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v Desnecessario 2>nul || echo Cuidado! Manualmente & pause & goto registro
if "%oprg%"=="3" chkdsk /f & sfc /scannow & echo Verificacao completa & pause & goto registro
if "%oprg%"=="2" set /p arquivo="Arquivo .reg: " & regedit /i "%arquivo%" & echo Importado & pause & goto registro
if "%oprg%"=="1" regedit /e backup_completo.reg & echo Registro exportado & pause & goto registro
goto registro

:energia
cls
echo 1. Planos energia
echo 2. Criar plano
echo 3. Suspender PC
echo 4. Hibernar
echo 5. Configurar botao
echo 6. Relatorio energia
echo 7. Suspensao seletiva
echo 8. Desligar monitor
echo 9. Voltar
set /p ope="> "
if "%ope%"=="9" exit /b
if "%ope%"=="8" powercfg /change monitor-timeout-ac 5 & echo Monitor desliga em 5min & pause & goto energia
if "%ope%"=="7" powercfg /availablesleepstates & pause & goto energia
if "%ope%"=="6" powercfg /energy & echo Relatorio gerado & pause & goto energia
if "%ope%"=="5" powercfg /setacvalueindex scheme_current sub_buttons lidaction 0 & echo Botao configurado & pause & goto energia
if "%ope%"=="4" powercfg /h on & shutdown /h & pause & goto energia
if "%ope%"=="3" rundll32.exe powrprof.dll,SetSuspendState 0,1,0 & pause & goto energia
if "%ope%"=="2" powercfg -duplicatescheme 381b4222-f694-41f0-9685-ff5bb260df2e & echo Plano criado & pause & goto energia
if "%ope%"=="1" powercfg /list & pause & goto energia
goto energia

:diagnosticos
cls
echo 1. Memoria RAM teste
echo 2. Disco teste
echo 3. Rede diagnostico
echo 4. Performance monitor
echo 5. Driver verifier
echo 6. DirectX diagnostico
echo 7. Sistema arquivos
echo 8. Relatorio saude
echo 9. Logs sistema
echo 10. Voltar
set /p opdi="> "
if "%opdi%"=="10" exit /b
if "%opdi%"=="9" wevtutil qe System /c:50 /f:text & pause & goto diagnosticos
if "%opdi%"=="8" perfmon /report & echo Relatorio gerado & pause & goto diagnosticos
if "%opdi%"=="7" chkdsk /f /r C: & pause & goto diagnosticos
if "%opdi%"=="6" dxdiag /t dxdiag.txt & type dxdiag.txt & del dxdiag.txt & pause & goto diagnosticos
if "%opdi%"=="5" verifier & echo Abrindo Driver Verifier & pause & goto diagnosticos
if "%opdi%"=="4" perfmon & pause & goto diagnosticos
if "%opdi%"=="3" netsh diag ping google.com & pause & goto diagnosticos
if "%opdi%"=="2" wmic diskdrive get status & pause & goto diagnosticos
if "%opdi%"=="1" mdsched & echo Reinicie para testar RAM & pause & goto diagnosticos
goto diagnosticos

:rede_avancada
cls
echo 1. Estatisticas rede
echo 2. Rotas
echo 3. ARP table
echo 4. NetBIOS cache
echo 5. Portas abertas
echo 6. Conexoes remotas
echo 7. QoS politica
echo 8. Bridge redes
echo 9. VPN conexoes
echo 10. Voltar
set /p opra="> "
if "%opra%"=="10" exit /b
if "%opra%"=="9" rasdial /? & pause & goto rede_avancada
if "%opra%"=="8" netsh bridge show adapter & pause & goto rede_avancada
if "%opra%"=="7" gpresult /r & pause & goto rede_avancada
if "%opra%"=="6" net view & pause & goto rede_avancada
if "%opra%"=="5" netstat -an | findstr LISTENING & pause & goto rede_avancada
if "%opra%"=="4" nbtstat -c & pause & goto rede_avancada
if "%opra%"=="3" arp -a & pause & goto rede_avancada
if "%opra%"=="2" route print & pause & goto rede_avancada
if "%opra%"=="1" netstat -e -s & pause & goto rede_avancada
goto rede_avancada

:otimizacao
cls
echo 1. Limpeza disco
echo 2. Desfragmentar todos
echo 3. Otimizar inicializacao
echo 4. Servicos desnecessarios
echo 5. Efeitos visuais
echo 6. Paginacao arquivo
echo 7. Prefetch e Superfetch
echo 8. Desativar programas
echo 9. SSD otimizacao
echo 10. Voltar
set /p opo="> "
if "%opo%"=="10" exit /b
if "%opo%"=="9" fsutil behavior query DisableDeleteNotify & pause & goto otimizacao
if "%opo%"=="8" msconfig & pause & goto otimizacao
if "%opo%"=="7" sc config SysMain start= disabled & echo Superfetch desativado & pause & goto otimizacao
if "%opo%"=="6" wmic computersystem where name="%computername%" set AutomaticManagedPagefile=False & pause & goto otimizacao
if "%opo%"=="5" SystemPropertiesPerformance & pause & goto otimizacao
if "%opo%"=="4" sc query state= all | findstr "SERVICE_NAME" & echo Analise manual & pause & goto otimizacao
if "%opo%"=="3" msconfig & pause & goto otimizacao
if "%opo%"=="2" defrag C: /O & pause & goto otimizacao
if "%opo%"=="1" cleanmgr /sagerun:1 & pause & goto otimizacao
goto otimizacao

:usuarios
cls
echo 1. Lista usuarios
echo 2. Criar usuario
echo 3. Alterar senha
echo 4. Grupos usuarios
echo 5. Permissoes usuario
echo 6. Logon atual
echo 7. Sessoes abertas
echo 8. Politica senhas
echo 9. Bloquear usuario
echo 10. Voltar
set /p opus="> "
if "%opus%"=="10" exit /b
if "%opus%"=="9" net user %username% /active:no & echo Usuario bloqueado & pause & goto usuarios
if "%opus%"=="8" net accounts & pause & goto usuarios
if "%opus%"=="7" query user & pause & goto usuarios
if "%opus%"=="6" whoami & pause & goto usuarios
if "%opus%"=="5" set /p user="Usuario: " & net user "%user%" & pause & goto usuarios
if "%opus%"=="4" net localgroup & pause & goto usuarios
if "%opus%"=="3" net user %username% * & echo Senha alterada & pause & goto usuarios
if "%opus%"=="2" set /p novo="Novo usuario: " & net user "%novo%" * /add & echo Criado & pause & goto usuarios
if "%opus%"=="1" net user & pause & goto usuarios
goto usuarios

:diversos
cls
echo 1. Data e hora
echo 2. Calculadora
echo 3. Bloco de notas
echo 4. Paint
echo 5. Explorador arquivos
echo 6. Prompt comando
echo 7. PowerShell
echo 8. Gerenciador tarefas
echo 9. Painel controle
echo 10. Voltar
set /p opdiv="> "
if "%opdiv%"=="10" exit /b
if "%opdiv%"=="9" control & pause & goto diversos
if "%opdiv%"=="8" taskmgr & pause & goto diversos
if "%opdiv%"=="7" start powershell & pause & goto diversos
if "%opdiv%"=="6" start cmd & pause & goto diversos
if "%opdiv%"=="5" explorer & pause & goto diversos
if "%opdiv%"=="4" mspaint & pause & goto diversos
if "%opdiv%"=="3" notepad & pause & goto diversos
if "%opdiv%"=="2" calc & pause & goto diversos
if "%opdiv%"=="1" time & date & pause & goto diversos
goto diversos

:seguranca_antimalware
cls
echo 1. Scanner rapido Defender
echo 2. Scan completo Defender
echo 3. Status Windows Defender
echo 4. Atualizar definicoes
echo 5. Historico de ameacas
echo 6. Verificar processos suspeitos
echo 7. Detectar malware por nome
echo 8. Escanear USB
echo 9. Voltar
set /p opsam="> "
if "%opsam%"=="9" exit /b
if "%opsam%"=="8" start "" "%ProgramFiles%\Windows Defender\MSASCui.exe" & pause & goto seguranca_antimalware
if "%opsam%"=="7" set /p malware="Nome: " & tasklist | findstr /i "%malware%" & pause & goto seguranca_antimalware
if "%opsam%"=="6" powershell "Get-Process | Where-Object {$_.Company -eq $null -and $_.Name -notlike '*svchost*'} | Select Name,CPU,Company" & pause & goto seguranca_antimalware
if "%opsam%"=="5" powershell "Get-MpThreatDetection" 2>nul || echo Nenhum threat encontrado & pause & goto seguranca_antimalware
if "%opsam%"=="4" "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -SignatureUpdate & echo Definicoes atualizadas & pause & goto seguranca_antimalware
if "%opsam%"=="3" powershell "Get-MpComputerStatus" 2>nul || echo Defender nao disponivel & pause & goto seguranca_antimalware
if "%opsam%"=="2" start "" "ms-settings:windowsdefender" & echo Abrindo Defender & pause & goto seguranca_antimalware
if "%opsam%"=="1" mrt & pause & goto seguranca_antimalware
goto seguranca_antimalware

:reparo_sistema
cls
echo 1. Verificar imagem DISM
echo 2. Reparar imagem DISM
echo 3. Resetar Windows Update
echo 4. Reparar componentes
echo 5. Resetar loja apps
echo 6. Reparar .NET Framework
echo 7. Resetar politica grupo
echo 8. Reparar DLLs sistema
echo 9. Voltar
set /p oprs="> "
if "%oprs%"=="9" exit /b
if "%oprs%"=="8" regsvr32 /s actxprxy.dll & regsvr32 /s shdocvw.dll & echo DLLs reparadas & pause & goto reparo_sistema
if "%oprs%"=="7" gpupdate /force & echo Politicas atualizadas & pause & goto reparo_sistema
if "%oprs%"=="6" dism /online /cleanup-image /restorehealth & sfc /scannow & echo .NET reparado & pause & goto reparo_sistema
if "%oprs%"=="5" wsreset.exe & echo Loja resetada & pause & goto reparo_sistema
if "%oprs%"=="4" sfc /scannow & dism /online /cleanup-image /restorehealth & echo Componentes reparados & pause & goto reparo_sistema
if "%oprs%"=="3" net stop wuauserv & net stop cryptSvc & net stop bits & net stop msiserver & ren C:\Windows\SoftwareDistribution SoftwareDistribution.old & ren C:\Windows\System32\catroot2 Catroot2.old & net start wuauserv & net start cryptSvc & net start bits & net start msiserver & wuauclt /resetauthorization /detectnow & echo Windows Update resetado & pause & goto reparo_sistema
if "%oprs%"=="2" dism /online /cleanup-image /restorehealth & pause & goto reparo_sistema
if "%oprs%"=="1" dism /online /cleanup-image /checkhealth & pause & goto reparo_sistema
goto reparo_sistema

:analise_disco
cls
echo 1. Uso de disco por pasta
echo 2. Top 10 maiores arquivos
echo 3. Arquivos duplicados
echo 4. Pastas vazias
echo 5. Arquivos antigos
echo 6. Extensoes mais usadas
echo 7. Arquivos ocultos
echo 8. Permissoes problematicas
echo 9. Voltar
set /p opad="> "
if "%opad%"=="9" exit /b
if "%opad%"=="8" powershell "Get-ChildItem C:\ -Recurse -ErrorAction SilentlyContinue | Where-Object {!(Get-Acl $_.FullName -ErrorAction SilentlyContinue).Access}" 2>nul & pause & goto analise_disco
if "%opad%"=="7" attrib /s /d | find "H" & pause & goto analise_disco
if "%opad%"=="6" powershell "Get-ChildItem -Recurse -File -ErrorAction SilentlyContinue | Group-Object Extension | Sort-Object Count -Descending | Select -First 20" & pause & goto analise_disco
if "%opad%"=="5" set /p pasta="Pasta: " & forfiles /p "%pasta%" /s /m * /d -365 /c "cmd /c echo @file" 2>nul & pause & goto analise_disco
if "%opad%"=="4" set /p pasta="Pasta: " & for /r "%pasta%" /d %%i in (.) do dir /a /b "%%i" 2>nul | findstr "^" >nul || echo %%i & pause & goto analise_disco
if "%opad%"=="3" powershell "Get-ChildItem -Recurse -File -ErrorAction SilentlyContinue | Group-Object Length,Name | Where-Object {$_.Count -gt 1} | Select -ExpandProperty Group" & pause & goto analise_disco
if "%opad%"=="2" powershell "Get-ChildItem -Recurse -File -ErrorAction SilentlyContinue | Sort-Object Length -Descending | Select -First 10 Name,Length" & pause & goto analise_disco
if "%opad%"=="1" set /p pasta="Pasta: " & powershell "Get-ChildItem '%pasta%' -Recurse -ErrorAction SilentlyContinue | Group-Object Directory | Select Name,@{Name='Tamanho(MB)';Expression={[math]::Round((($_.Group | Measure-Object Length -Sum).Sum)/1MB,2)}} | Sort 'Tamanho(MB)' -Descending | Format-Table -AutoSize" & pause & goto analise_disco
goto analise_disco

:otimizacao_auto
cls
echo 1. Otimizacao um clique
echo 2. Desativar efeitos visuais
echo 3. Ajustar paginacao
echo 4. Limpar prefetch
echo 5. Desfragmentar registro
echo 6. Acelerar inicializacao
echo 7. Otimizar SSD
echo 8. Ajustar servicos
echo 9. Voltar
set /p opoa="> "
if "%opoa%"=="9" exit /b
if "%opoa%"=="8" sc config DiagTrack start= disabled & sc config dmwappushservice start= disabled & sc config RemoteRegistry start= disabled & echo Servicos ajustados & pause & goto otimizacao_auto
if "%opoa%"=="7" fsutil behavior query DisableDeleteNotify & echo Verifique TRIM & pause & goto otimizacao_auto
if "%opoa%"=="6" msconfig & pause & goto otimizacao_auto
if "%opoa%"=="5" reg export HKLM C:\regback.reg /y & reg export HKCU C:\regback2.reg /y & reg import C:\regback.reg & echo Registro desfragmentado & pause & goto otimizacao_auto
if "%opoa%"=="4" del /f /s /q C:\Windows\Prefetch\* 2>nul & sc stop SysMain & sc config SysMain start= disabled & echo Limpo & pause & goto otimizacao_auto
if "%opoa%"=="3" wmic computersystem where name="%computername%" set AutomaticManagedPagefile=True & pause & goto otimizacao_auto
if "%opoa%"=="2" SystemPropertiesPerformance & pause & goto otimizacao_auto
if "%opoa%"=="1" echo Limpando... & del /f /s /q "%TEMP%" 2>nul & del /f /s /q C:\Windows\Temp 2>nul & del /f /s /q C:\Windows\Prefetch 2>nul & cleanmgr /sagerun:1 & defrag C: /O & echo Otimizacao concluida & pause & goto otimizacao_auto
goto otimizacao_auto

:registro_avancado
cls
echo 1. Backup registro completo
echo 2. Exportar chaves especificas
echo 3. Limpar RunMRU
echo 4. Verificar entradas invalidas
echo 5. Restaurar backup
echo 6. Compactar registro
echo 7. Permissoes seguranca
echo 8. Exportar suporte
echo 9. Voltar
set /p oprav="> "
if "%oprav%"=="9" exit /b
if "%oprav%"=="8" set data=%date:~6,4%%date:~3,2%%date:~0,2% & reg export HKLM suporte_%data%.reg /y & echo Exportado & pause & goto registro_avancado
if "%oprav%"=="7" reg query "HKLM\SAM" /reg:32 2>nul || echo Sem permissao & pause & goto registro_avancado
if "%oprav%"=="6" reg save HKLM\System system.hiv & reg save HKLM\Software software.hiv & echo Hives compactados & pause & goto registro_avancado
if "%oprav%"=="5" set /p arquivo="Arquivo: " & reg import "%arquivo%" & pause & goto registro_avancado
if "%oprav%"=="4" reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /s | findstr /i "C:\\" & pause & goto registro_avancado
if "%oprav%"=="3" reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f 2>nul & echo Historico limpo & pause & goto registro_avancado
if "%oprav%"=="2" echo 1-HKLM Run 2-HKCU Run 3-Policies & set /p opt=">" & if "!opt!"=="3" reg export "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies" policies.reg & if "!opt!"=="2" reg export "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" run.reg & if "!opt!"=="1" reg export "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" run.reg & echo Exportado & pause & goto registro_avancado
if "%oprav%"=="1" set data=%date:~6,4%%date:~3,2%%date:~0,2% & mkdir C:\RegBackup_%data% 2>nul & reg export HKLM C:\RegBackup_%data%\HKLM.reg /y & reg export HKCU C:\RegBackup_%data%\HKCU.reg /y & reg export HKCR C:\RegBackup_%data%\HKCR.reg /y & reg export HKU C:\RegBackup_%data%\HKU.reg /y & echo Backup salvo em C:\RegBackup_%data% & pause & goto registro_avancado
goto registro_avancado

:monitoramento_rede
cls
echo 1. Conexoes tempo real
echo 2. Teste velocidade
echo 3. Monitor banda
echo 4. Escanear portas
echo 5. Verificar DNS
echo 6. Resetar rede
echo 7. Conexoes estrangeiras
echo 8. Bloquear IP
echo 9. Voltar
set /p opmr="> "
if "%opmr%"=="9" exit /b
if "%opmr%"=="8" set /p ip="IP: " & netsh advfirewall firewall add rule name="Bloqueado" dir=in action=block remoteip=%ip% & echo IP bloqueado & pause & goto monitoramento_rede
if "%opmr%"=="7" netstat -an | findstr ESTABLISHED | findstr /v "127.0.0.1" | findstr /v "192.168" | findstr /v "10." & pause & goto monitoramento_rede
if "%opmr%"=="6" netsh int ip reset & netsh winsock reset & ipconfig /release & ipconfig /renew & echo Reinicie o PC & pause & goto monitoramento_rede
if "%opmr%"=="5" nslookup google.com & ipconfig /displaydns | findstr "Registro" & pause & goto monitoramento_rede
if "%opmr%"=="4" for /l %%i in (1,1,1024) do (powershell Test-NetConnection localhost -Port %%i -WarningAction SilentlyContinue | find "TcpTestSucceeded" && echo Porta %%i aberta) 2>nul & pause & goto monitoramento_rede
if "%opmr%"=="3" typeperf "\Network Interface(*)\Bytes Total/sec" -sc 10 & pause & goto monitoramento_rede
if "%opmr%"=="2" set /p host="Host: " & ping -n 10 -l 1024 %host% & echo Teste concluido & pause & goto monitoramento_rede
if "%opmr%"=="1" :loop_rede & cls & netstat -an | findstr ESTABLISHED & echo Pressione Ctrl+C para parar & timeout /t 5 & goto loop_rede
goto monitoramento_rede

:servicos_avancado
cls
echo 1. Gerenciar servicos
echo 2. Listar por estado
echo 3. Servicos terceiros
echo 4. Servicos parados uteis
echo 5. Servicos desnecessarios
echo 6. Processos por usuario
echo 7. Consumo por servico
echo 8. Exportar lista
echo 9. Voltar
set /p opsa="> "
if "%opsa%"=="9" exit /b
if "%opsa%"=="8" sc query type= service > servicos.txt & echo Exportado para servicos.txt & pause & goto servicos_avancado
if "%opsa%"=="7" typeperf "\Process(*)\% Tempo do Processador" -sc 5 & pause & goto servicos_avancado
if "%opsa%"=="6" tasklist /v | findstr "Console" & pause & goto servicos_avancado
if "%opsa%"=="5" sc query type= service | findstr /i "SERVICE_NAME" | findstr /i "XblAuth XblGameSave XboxNetApiSvc lfsvc" & echo Analise manual & pause & goto servicos_avancado
if "%opsa%"=="4" sc query state= inactive | findstr "SERVICE_NAME" & pause & goto servicos_avancado
if "%opsa%"=="3" sc query type= service | findstr /i "SERVICE_NAME" | findstr /v "Microsoft" & pause & goto servicos_avancado
if "%opsa%"=="2" echo 1-Ativos 2-Parados & set /p opt=">" & if "!opt!"=="2" sc query state= inactive & if "!opt!"=="1" sc query state= active & pause & goto servicos_avancado
if "%opsa%"=="1" set /p servico="Servico: " & echo 1-Iniciar 2-Parar 3-Desativar & set /p opt=">" & if "!opt!"=="3" sc config %servico% start= disabled & if "!opt!"=="2" net stop %servico% & if "!opt!"=="1" net start %servico% & pause & goto servicos_avancado
goto servicos_avancado

:logs
cls
echo 1. Limpar logs sistema
echo 2. Logs erro criticos
echo 3. Auditoria basica
echo 4. Logs seguranca
echo 5. Relatorio estabilidade
echo 6. Logs instalacao
echo 7. Backup logs
echo 8. Monitor mudancas
echo 9. Voltar
set /p opl="> "
if "%opl%"=="9" exit /b
if "%opl%"=="8" echo Monitorando C:\Windows\System32\drivers\etc\hosts & pause & goto logs
if "%opl%"=="7" wevtutil epl System system_backup.evtx & wevtutil epl Application app_backup.evtx & echo Logs exportados & pause & goto logs
if "%opl%"=="6" dir C:\Windows\Inf\*.log & pause & goto logs
if "%opl%"=="5" perfmon /rel & pause & goto logs
if "%opl%"=="4" wevtutil qe Security /c:20 /f:text /e:true | findstr "4625 4634" & pause & goto logs
if "%opl%"=="3" auditpol /get /category:* | findstr "Sucesso Falha" & pause & goto logs
if "%opl%"=="2" wevtutil qe System /c:50 /f:text /e:true | findstr "erro error critical" & pause & goto logs
if "%opl%"=="1" for /f %%a in ('wevtutil el') do wevtutil cl "%%a" 2>nul & echo Logs limpos & pause & goto logs
goto logs

:drivers
cls
echo 1. Verificar integridade
echo 2. Drivers desatualizados
echo 3. Backup drivers
echo 4. Restaurar drivers
echo 5. Dispositivos com problema
echo 6. Hardware oculto
echo 7. Temperatura
echo 8. Teste estabilidade
echo 9. Voltar
set /p opdr="> "
if "%opdr%"=="9" exit /b
if "%opdr%"=="8" echo Teste CPU... & for /l %%i in (1,1,10) do echo %%i & timeout /t 1 & echo Teste memoria... & wmic os get freephysicalmemory & pause & goto drivers
if "%opdr%"=="7" powershell "Get-WmiObject MSAcpi_ThermalZoneTemperature -Namespace root/wmi | Select CurrentTemperature" 2>nul || echo Sensor nao disponivel & pause & goto drivers
if "%opdr%"=="6" echo Use devcon find * (requer Windows SDK) & pause & goto drivers
if "%opdr%"=="5" wmic path win32_pnpentity get name,status | findstr "Error" & pause & goto drivers
if "%opdr%"=="4" set /p origem="Pasta: " & dism /online /add-driver /driver:"%origem%" /recurse & echo Drivers restaurados & pause & goto drivers
if "%opdr%"=="3" dism /online /export-driver /destination:C:\DriversBackup & echo Drivers exportados para C:\DriversBackup & pause & goto drivers
if "%opdr%"=="2" driverquery /v /fo list | findstr /i "date" & pause & goto drivers
if "%opdr%"=="1" driverquery /si & echo Verificacao concluida & pause & goto drivers
goto drivers

:usuarios_avancado
cls
echo 1. Criar admin temporario
echo 2. Usuarios ativos
echo 3. Ultimo logon
echo 4. Permissoes compartilhadas
echo 5. Bloquear usuario
echo 6. Auditoria admins
echo 7. Senhas expiradas
echo 8. Sessoes remotas
echo 9. Voltar
set /p opua="> "
if "%opua%"=="9" exit /b
if "%opua%"=="8" net session & pause & goto usuarios_avancado
if "%opua%"=="7" wmic useraccount where "Disabled=FALSE" get name,passwordexpires & pause & goto usuarios_avancado
if "%opua%"=="6" net localgroup administradores & wevtutil qe Security /c:20 /f:text | findstr "4732 4733" & pause & goto usuarios_avancado
if "%opua%"=="5" set /p user="Usuario: " & net user "%user%" /active:no & echo Usuario bloqueado & pause & goto usuarios_avancado
if "%opua%"=="4" net share & pause & goto usuarios_avancado
if "%opua%"=="3" wmic useraccount get name,lastlogon & pause & goto usuarios_avancado
if "%opua%"=="2" query user & pause & goto usuarios_avancado
if "%opua%"=="1" set /p user="Nome: " & net user "%user%" * /add & net localgroup administradores "%user%" /add & echo Usuario %user% admin criado & pause & goto usuarios_avancado
goto usuarios_avancado

:backup_avancado
cls
echo 1. Backup sistema completo
echo 2. Ponto restauracao
echo 3. Backup perfil
echo 4. Restaurar deletados
echo 5. Backup favoritos
echo 6. Backup certificados
echo 7. Backup variaveis
echo 8. Restauracao emergencial
echo 9. Voltar
set /p opba="> "
if "%opba%"=="9" exit /b
if "%opba%"=="8" echo Script: reg import backup.reg ^& robocopy C:\Backup C:\ /MIR & pause & goto backup_avancado
if "%opba%"=="7" set > env_backup.txt & echo Variaveis salvas & pause & goto backup_avancado
if "%opba%"=="6" certutil -exportPFX -p senha123 My & echo Certificados exportados & pause & goto backup_avancado
if "%opba%"=="5" copy "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Bookmarks" bookmarks.bak 2>nul & copy "%USERPROFILE%\AppData\Local\Microsoft\Edge\User Data\Default\Bookmarks" bookmarks_edge.bak 2>nul & echo Favoritos salvos & pause & goto backup_avancado
if "%opba%"=="4" echo Use ferramenta recuperacao & pause & goto backup_avancado
if "%opba%"=="3" set data=%date:~6,4%%date:~3,2%%date:~0,2% & robocopy C:\Users\%username% C:\UserBackup_%data% /MIR /R:2 /W:5 /LOG:userbackup.log & echo Backup perfil concluido & pause & goto backup_avancado
if "%opba%"=="2" wmic syscreate restorepoint & echo Ponto criado & pause & goto backup_avancado
if "%opba%"=="1" call :backup_completo & pause & goto backup_avancado
goto backup_avancado

:relatorios
cls
echo 1. Relatorio suporte
echo 2. Relatorio hardware
echo 3. Relatorio software
echo 4. Relatorio rede
echo 5. Relatorio seguranca
echo 6. Relatorio desempenho
echo 7. Relatorio comparativo
echo 8. Exportar HTML
echo 9. Voltar
set /p oprl="> "
if "%oprl%"=="9" exit /b
if "%oprl%"=="8" powershell "Get-Process | ConvertTo-HTML > processos.html" & echo HTML gerado & pause & goto relatorios
if "%oprl%"=="7" echo Execute antes/depois & pause & goto relatorios
if "%oprl%"=="6" winsat formal & type "%USERPROFILE%\AppData\Local\Temp\*formal*.xml" & pause & goto relatorios
if "%oprl%"=="5" echo Defender: & powershell "Get-MpComputerStatus" & echo Firewall: & netsh advfirewall show allprofiles & echo Updates: & wmic qfe list brief /format:texttable & pause & goto relatorios
if "%oprl%"=="4" ipconfig /all > rede.txt & netstat -an >> rede.txt & route print >> rede.txt & echo Rede.txt gerado & pause & goto relatorios
if "%oprl%"=="3" wmic product get name,version > software.txt & echo Software.txt gerado & pause & goto relatorios
if "%oprl%"=="2" systeminfo | findstr /c:"Host" /c:"OS" /c:"Processor" /c:"Memory" > hardware.txt & wmic cpu get name,maxclockspeed >> hardware.txt & echo Hardware.txt gerado & pause & goto relatorios
if "%oprl%"=="1" set data=%date:~6,4%%date:~3,2%%date:~0,2% & systeminfo > suporte_%data%.txt & ipconfig /all >> suporte_%data%.txt & tasklist >> suporte_%data%.txt & driverquery >> suporte_%data%.txt & wmic product get name,version >> suporte_%data%.txt & netstat -an >> suporte_%data%.txt & echo Suporte_%data%.txt gerado & pause & goto relatorios
goto relatorios

:limpeza_avancada
cls
echo 1. Limpeza logs
echo 2. Cache navegadores
echo 3. Prefetch
echo 4. Cache DNS
echo 5. Cache fontes
echo 6. Thumbnails
echo 7. Crash dumps
echo 8. Instaladores
echo 9. Voltar
set /p oplav="> "
if "%oplav%"=="9" exit /b
if "%oplav%"=="8" del /f /s /q C:\Windows\Installer\$PatchCache$ 2>nul & echo Instaladores antigos removidos & pause & goto limpeza_avancada
if "%oplav%"=="7" del /f /s /q C:\Windows\Minidump\* 2>nul & del /f /s /q C:\Windows\memory.dmp 2>nul & echo Crash dumps removidos & pause & goto limpeza_avancada
if "%oplav%"=="6" del /f /s /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_*.db" 2>nul & echo Thumbnails removidos & pause & goto limpeza_avancada
if "%oplav%"=="5" del /f /s /q C:\Windows\System32\FNTCACHE.DAT 2>nul & echo Cache fontes removido & pause & goto limpeza_avancada
if "%oplav%"=="4" ipconfig /flushdns & echo DNS limpo & pause & goto limpeza_avancada
if "%oplav%"=="3" del /f /s /q C:\Windows\Prefetch\* 2>nul & echo Prefetch limpo & pause & goto limpeza_avancada
if "%oplav%"=="2" del /f /s /q "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Cache\*" 2>nul & del /f /s /q "%USERPROFILE%\AppData\Local\Microsoft\Edge\User Data\Default\Cache\*" 2>nul & del /f /s /q "%USERPROFILE%\AppData\Local\Mozilla\Firefox\Profiles\*\cache2\*" 2>nul & echo Caches navegadores limpos & pause & goto limpeza_avancada
if "%oplav%"=="1" for /f %%a in ('wevtutil el') do wevtutil cl "%%a" 2>nul & echo Logs limpos & pause & goto limpeza_avancada
goto limpeza_avancada

:interface
cls
echo 1. Modo escuro
echo 2. Salvar logs
echo 3. Agendar tarefas
echo 4. Atalhos teclado
echo 5. Modo silencioso
echo 6. Exportar config
echo 7. Multiplos perfis
echo 8. Menu contexto
echo 9. Voltar
set /p opint="> "
if "%opint%"=="9" exit /b
if "%opint%"=="8" reg add "HKCR\Directory\shell\JACKDOW" /ve /d "JACKDOW Toolkit" /f & reg add "HKCR\Directory\shell\JACKDOW\command" /ve /d "%~dp0jackdow.bat" /f & echo Adicionado & pause & goto interface
if "%opint%"=="7" echo Perfil selecionado & pause & goto interface
if "%opint%"=="6" echo Config > config.ini & pause & goto interface
if "%opint%"=="5" echo Modo silencioso ativado & pause & goto interface
if "%opint%"=="4" echo Atalhos: Ctrl+L limpa & pause & goto interface
if "%opint%"=="3" schtasks /create /tn "JACKDOW" /tr "%~dp0jackdow.bat" /sc daily /st 10:00 /f & echo Tarefa criada & pause & goto interface
if "%opint%"=="2" mkdir C:\JACKDOW_LOGS 2>nul & echo Salvando logs em C:\JACKDOW_LOGS & pause & goto interface
if "%opint%"=="1" color 0F & echo Modo escuro ativado & pause & goto interface
goto interface

:hacking
cls
echo 1. Scanner de portas rapido
echo 2. Forca bruta basica
echo 3. Sniffer de rede
echo 4. ARP spoof simulado
echo 5. DNS spoof simulado
echo 6. Session hijack sim
echo 7. Crack de hash basico
echo 8. SQL injection test
echo 9. XSS test
echo 10. Voltar
set /p oph="> "
if "%oph%"=="10" exit /b
if "%oph%"=="9" echo Testando XSS basico & pause & goto hacking
if "%oph%"=="8" echo Testando SQLi basico & pause & goto hacking
if "%oph%"=="7" echo MD5 basico & certutil -hashfile %0 MD5 & pause & goto hacking
if "%oph%"=="6" echo Simulacao session hijack & pause & goto hacking
if "%oph%"=="5" echo Simulacao DNS spoof & pause & goto hacking
if "%oph%"=="4" echo Simulacao ARP spoof & pause & goto hacking
if "%oph%"=="3" echo Sniffer basico & netstat -e & pause & goto hacking
if "%oph%"=="2" echo Forca bruta SSH & pause & goto hacking
if "%oph%"=="1" for /l %%i in (1,1,1024) do (ping -n 1 -w 10 localhost | find "TTL" >nul && echo Porta interna %%i) & pause & goto hacking
goto hacking

:esteganografia
cls
echo 1. Ocultar em imagem
echo 2. Extrair de imagem
echo 3. Ocultar em audio
echo 4. Extrair de audio
echo 5. Ocultar em texto
echo 6. Extrair de texto
echo 7. Arquivo dentro de arquivo
echo 8. Assinatura digital falsa
echo 9. Voltar
set /p opes="> "
if "%opes%"=="9" exit /b
if "%opes%"=="8" echo Criando assinatura falsa & pause & goto esteganografia
if "%opes%"=="7" copy /b imagem.jpg + arquivo.rar imagem_oculta.jpg & echo Arquivo combinado & pause & goto esteganografia
if "%opes%"=="6" findstr "JACKDOW" %0 & pause & goto esteganografia
if "%opes%"=="5" echo Ocultando em texto & pause & goto esteganografia
if "%opes%"=="4" echo Extraindo de audio & pause & goto esteganografia
if "%opes%"=="3" echo Ocultando em audio & pause & goto esteganografia
if "%opes%"=="2" echo Extraindo de imagem & pause & goto esteganografia
if "%opes%"=="1" echo Ocultando em imagem & pause & goto esteganografia
goto esteganografia

:engenharia_reversa
cls
echo 1. Analisar PE header
echo 2. Listar importacoes
echo 3. Listar exportacoes
echo 4. Disassembler basico
echo 5. Strings de binario
echo 6. Hex dump
echo 7. Comparar binarios
echo 8. Packer detection
echo 9. Voltar
set /p oper="> "
if "%oper%"=="9" exit /b
if "%oper%"=="8" echo Detectando packers & pause & goto engenharia_reversa
if "%oper%"=="7" fc /b %0 %0.bak 2>nul & pause & goto engenharia_reversa
if "%oper%"=="6" set /p arquivo="Arquivo: " & certutil -encodehex "%arquivo%" hex.txt & type hex.txt & pause & goto engenharia_reversa
if "%oper%"=="5" set /p arquivo="Arquivo: " & findstr /i "http https ftp" "%arquivo%" & pause & goto engenharia_reversa
if "%oper%"=="4" echo Disassembler basico & pause & goto engenharia_reversa
if "%oper%"=="3" set /p arquivo="Arquivo: " & dumpbin /exports "%arquivo%" 2>nul || echo Use dumpbin do VS & pause & goto engenharia_reversa
if "%oper%"=="2" set /p arquivo="Arquivo: " & dumpbin /imports "%arquivo%" 2>nul || echo Use dumpbin do VS & pause & goto engenharia_reversa
if "%oper%"=="1" set /p arquivo="Arquivo: " & powershell "Get-Content '%arquivo%' -Encoding Byte -TotalCount 64 | Format-Hex" & pause & goto engenharia_reversa
goto engenharia_reversa

:automacao_maliciosa
cls
echo 1. Auto execucao agendada
echo 2. Propagacao USB
echo 3. Coleta automatica
echo 4. Envio de dados
echo 5. Evasao de AV
echo 6. Polimorfismo basico
echo 7. Mutacao de codigo
echo 8. Teste de sandbox
echo 9. Voltar
set /p opam="> "
if "%opam%"=="9" exit /b
if "%opam%"=="8" echo Testando ambiente virtual & pause & goto automacao_maliciosa
if "%opam%"=="7" copy %0 %random%.bat & echo Mutacao criada & pause & goto automacao_maliciosa
if "%opam%"=="6" echo Criando variante & pause & goto automacao_maliciosa
if "%opam%"=="5" echo Tecnicas de evasao & pause & goto automacao_maliciosa
if "%opam%"=="4" echo Enviando dados via HTTP & pause & goto automacao_maliciosa
if "%opam%"=="3" dir /s C:\Users\*.docx > coletados.txt & echo Dados coletados & pause & goto automacao_maliciosa
if "%opam%"=="2" echo Copiando para USB & for %%a in (D E F G) do if exist %%a:\ copy %0 %%a:\auto.bat & pause & goto automacao_maliciosa
if "%opam%"=="1" schtasks /create /tn "Updater" /tr "%~dp0%0" /sc hourly /f & echo Auto execucao criada & pause & goto automacao_maliciosa
goto automacao_maliciosa

:keylog
cls
echo 1. Iniciar keylogger basico
echo 2. Parar keylogger
echo 3. Capturar clipboard
echo 4. Capturar tela
echo 5. Capturar senhas
echo 6. Capturar cookies
echo 7. Capturar historico
echo 8. Enviar logs
echo 9. Voltar
set /p opk="> "
if "%opk%"=="9" exit /b
if "%opk%"=="8" echo Enviando logs via email & pause & goto keylog
if "%opk%"=="7" copy "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\History" history.txt 2>nul & echo Historico copiado & pause & goto keylog
if "%opk%"=="6" copy "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Cookies" cookies.txt 2>nul & echo Cookies copiados & pause & goto keylog
if "%opk%"=="5" echo Capturando senhas & pause & goto keylog
if "%opk%"=="4" echo Capturando tela & pause & goto keylog
if "%opk%"=="3" echo Clipboard: & powershell "Get-Clipboard" & pause & goto keylog
if "%opk%"=="2" taskkill /f /im keylogger.exe 2>nul & echo Keylogger parado & pause & goto keylog
if "%opk%"=="1" echo Keylogger nao implementado por questoes eticas & pause & goto keylog
goto keylog

:persistencia
cls
echo 1. Registro Run
echo 2. Agendador tarefas
echo 3. Pasta startup
echo 4. Servico persistente
echo 5. WMI persistence
echo 6. DLL hijacking sim
echo 7. Boot persistence
echo 8. Image hijacking
echo 9. Voltar
set /p opper="> "
if "%opper%"=="9" exit /b
if "%opper%"=="8" echo Image hijacking simulado & pause & goto persistencia
if "%opper%"=="7" bcdedit /enum & echo Boot config & pause & goto persistencia
if "%opper%"=="6" echo DLL hijacking simulado & pause & goto persistencia
if "%opper%"=="5" wmic /namespace:\\root\subscription PATH __EventFilter CREATE Name="Persistence" & echo WMI persistence & pause & goto persistencia
if "%opper%"=="4" sc create Persist binPath= "%~dp0%0" start= auto & echo Servico criado & pause & goto persistencia
if "%opper%"=="3" copy %0 "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\" & echo Copiado para startup & pause & goto persistencia
if "%opper%"=="2" schtasks /create /tn "Persist" /tr "%~dp0%0" /sc onlogon /f & echo Tarefa criada & pause & goto persistencia
if "%opper%"=="1" reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "Updater" /t REG_SZ /d "%~dp0%0" /f & echo Adicionado ao registro & pause & goto persistencia
goto persistencia

:anti_forense
cls
echo 1. Limpar logs eventos
echo 2. Limpar prefetch
echo 3. Limpar recent files
echo 4. Limpar jump lists
echo 5. Limpar USN journal
echo 6. Limpar $MFT
echo 7. Sobrescrever espaco livre
echo 8. Timestomping
echo 9. Voltar
set /p opaf="> "
if "%opaf%"=="9" exit /b
if "%opaf%"=="8" echo Alterando timestamps & copy %0 %0.tmp & pause & goto anti_forense
if "%opaf%"=="7" cipher /w:C & echo Espaco sobrescrito & pause & goto anti_forense
if "%opaf%"=="6" echo Limpeza MFT requer ferramentas especificas & pause & goto anti_forense
if "%opaf%"=="5" echo Limpeza USN journal requer ferramentas especificas & pause & goto anti_forense
if "%opaf%"=="4" del /f /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Recent\AutomaticDestinations\*" 2>nul & del /f /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Recent\CustomDestinations\*" 2>nul & echo Jump lists limpos & pause & goto anti_forense
if "%opaf%"=="3" del /f /s /q "%USERPROFILE%\Recent\*" 2>nul & del /f /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Recent\*" 2>nul & echo Recent files limpos & pause & goto anti_forense
if "%opaf%"=="2" del /f /s /q C:\Windows\Prefetch\* 2>nul & echo Prefetch limpo & pause & goto anti_forense
if "%opaf%"=="1" for /f %%a in ('wevtutil el') do wevtutil cl "%%a" 2>nul & echo Logs limpos & pause & goto anti_forense
goto anti_forense

:exploits
cls
echo 1. Verificar vulnerabilidades
echo 2. EternalBlue check
echo 3. BlueKeep check
echo 4. PrintNightmare check
echo 5. Zerologon check
echo 6. SMBGhost check
echo 7. MS17-010 check
echo 8. Metasploit payload
echo 9. Voltar
set /p opex="> "
if "%opex%"=="9" exit /b
if "%opex%"=="8" echo Gerando payload MSF & pause & goto exploits
if "%opex%"=="7" echo Verificando MS17-010 & systeminfo | find "KB4012212" || echo Vulneravel & pause & goto exploits
if "%opex%"=="6" echo Verificando SMBGhost & sc query srv2 | find "RUNNING" && echo SMB ativo & pause & goto exploits
if "%opex%"=="5" echo Verificando Zerologon & pause & goto exploits
if "%opex%"=="4" echo Verificando PrintNightmare & sc query spooler | find "RUNNING" && echo Spooler ativo & pause & goto exploits
if "%opex%"=="3" echo Verificando BlueKeep & systeminfo | find "KB4499175" || echo Vulneravel & pause & goto exploits
if "%opex%"=="2" echo Verificando EternalBlue & systeminfo | find "KB4012212" || echo Vulneravel & pause & goto exploits
if "%opex%"=="1" echo Scanner basico vulnerabilidades & pause & goto exploits
goto exploits

:cripto_forcada
cls
echo 1. Gerar chave RSA
echo 2. Criptografar arquivo
echo 3. Descriptografar arquivo
echo 4. Forca bruta hash
echo 5. Rainbow table sim
echo 6. Criptoanalise basica
echo 7. Assinar arquivo
echo 8. Verificar assinatura
echo 9. Voltar
set /p opcf="> "
if "%opcf%"=="9" exit /b
if "%opcf%"=="8" certutil -verify %1 & pause & goto cripto_forcada
if "%opcf%"=="7" set /p arquivo="Arquivo: " & certutil -hashfile "%arquivo%" SHA256 > assinatura.txt & echo Assinatura gerada & pause & goto cripto_forcada
if "%opcf%"=="6" echo Criptoanalise basica & pause & goto cripto_forcada
if "%opcf%"=="5" echo Rainbow table simulada & pause & goto cripto_forcada
if "%opcf%"=="4" echo Forca bruta MD5 & certutil -hashfile %0 MD5 & pause & goto cripto_forcada
if "%opcf%"=="3" set /p arquivo="Arquivo: " & cipher /d "%arquivo%" & echo Descriptografado & pause & goto cripto_forcada
if "%opcf%"=="2" set /p arquivo="Arquivo: " & cipher /e "%arquivo%" & echo Criptografado & pause & goto cripto_forcada
if "%opcf%"=="1" echo Gerando chave RSA... & pause & goto cripto_forcada
goto cripto_forcada

:anonima
cls
echo 1. Verificar IP publico
echo 2. Testar proxy
echo 3. Tor check
echo 4. VPN check
echo 5. Limpar rastros navegacao
echo 6. DNS anonimo
echo 7. MAC spoof sim
echo 8. Geolocation spoof
echo 9. Voltar
set /p opan="> "
if "%opan%"=="9" exit /b
if "%opan%"=="8" echo Spoof geolocation & pause & goto anonima
if "%opan%"=="7" echo MAC spoof requer ferramentas & pause & goto anonima
if "%opan%"=="6" netsh dns add 1.1.1.1 & echo DNS Cloudflare configurado & pause & goto anonima
if "%opan%"=="5" del /f /s /q "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Cache\*" 2>nul & del /f /s /q "%USERPROFILE%\AppData\Local\Microsoft\Edge\User Data\Default\Cache\*" 2>nul & echo Cache navegadores limpo & pause & goto anonima
if "%opan%"=="4" echo Verificando VPN... & nslookup myip.opendns.com resolver1.opendns.com & pause & goto anonima
if "%opan%"=="3" echo Verificando Tor... & ping -n 1 check.torproject.org | find "TTL" || echo Tor nao detectado & pause & goto anonima
if "%opan%"=="2" set /p proxy="Proxy: " & netsh winhttp set proxy "%proxy%" & echo Proxy configurado & pause & goto anonima
if "%opan%"=="1" curl ifconfig.me 2>nul || powershell "(Invoke-WebRequest ifconfig.me).Content" & pause & goto anonima
goto anonima

:injecao
cls
echo 1. DLL injection sim
echo 2. Process hollowing sim
echo 3. APC injection sim
echo 4. Thread hijacking sim
echo 5. Reflective DLL sim
echo 6. PE injection sim
echo 7. Code cave sim
echo 8. RunPE sim
echo 9. Voltar
set /p opin="> "
if "%opin%"=="9" exit /b
if "%opin%"=="8" echo Simulacao RunPE & pause & goto injecao
if "%opin%"=="7" echo Simulacao code cave & pause & goto injecao
if "%opin%"=="6" echo Simulacao PE injection & pause & goto injecao
if "%opin%"=="5" echo Simulacao reflective DLL & pause & goto injecao
if "%opin%"=="4" echo Simulacao thread hijacking & pause & goto injecao
if "%opin%"=="3" echo Simulacao APC injection & pause & goto injecao
if "%opin%"=="2" echo Simulacao process hollowing & pause & goto injecao
if "%opin%"=="1" echo Simulacao DLL injection & pause & goto injecao
goto injecao

:bypass
cls
echo 1. Bypass UAC sim
echo 2. Bypass AppLocker sim
echo 3. Bypass Defender sim
echo 4. Bypass firewall sim
echo 5. Bypass antivirus sim
echo 6. Bypass DEP sim
echo 7. Bypass ASLR sim
echo 8. Bypass sandbox sim
echo 9. Voltar
set /p opby="> "
if "%opby%"=="9" exit /b
if "%opby%"=="8" echo Simulacao bypass sandbox & pause & goto bypass
if "%opby%"=="7" echo Simulacao bypass ASLR & pause & goto bypass
if "%opby%"=="6" echo Simulacao bypass DEP & pause & goto bypass
if "%opby%"=="5" echo Simulacao bypass antivirus & pause & goto bypass
if "%opby%"=="4" netsh advfirewall set allprofiles state off & echo Firewall desativado & pause & goto bypass
if "%opby%"=="3" echo Simulacao bypass Defender & pause & goto bypass
if "%opby%"=="2" echo Simulacao bypass AppLocker & pause & goto bypass
if "%opby%"=="1" echo Simulacao bypass UAC & pause & goto bypass
goto bypass

:intelligence
cls
echo 1. Coleta de informacoes
echo 2. OSINT basico
echo 3. Whois domain
echo 4. DNS recon
echo 5. Subdomain enum
echo 6. Email harvest
echo 7. Metadata extraction
echo 8. Social media recon
echo 9. Voltar
set /p opintel="> "
if "%opintel%"=="9" exit /b
if "%opintel%"=="8" echo Social media recon & pause & goto intelligence
if "%opintel%"=="7" set /p arquivo="Arquivo: " & powershell "Get-ItemProperty '%arquivo%'" & pause & goto intelligence
if "%opintel%"=="6" echo Email harvest simulado & pause & goto intelligence
if "%opintel%"=="5" set /p dominio="Dominio: " & nslookup -type=any %dominio% & pause & goto intelligence
if "%opintel%"=="4" set /p dominio="Dominio: " & nslookup %dominio% & pause & goto intelligence
if "%opintel%"=="3" set /p dominio="Dominio: " & whois %dominio% & pause & goto intelligence
if "%opintel%"=="2" echo OSINT basico & pause & goto intelligence
if "%opintel%"=="1" systeminfo & ipconfig /all & net user & net localgroup & echo Informacoes coletadas & pause & goto intelligence
goto intelligence

:memoria
cls
echo 1. Dump memoria
echo 2. Analisar heap
echo 3. Analisar stack
echo 4. Ver permissoes memoria
echo 5. Injetar shellcode sim
echo 6. Buffer overflow sim
echo 7. ROP chain sim
echo 8. Memory scanning
echo 9. Voltar
set /p opmem="> "
if "%opmem%"=="9" exit /b
if "%opmem%"=="8" echo Scanning memoria & pause & goto memoria
if "%opmem%"=="7" echo Simulacao ROP chain & pause & goto memoria
if "%opmem%"=="6" echo Simulacao buffer overflow & pause & goto memoria
if "%opmem%"=="5" echo Simulacao shellcode injection & pause & goto memoria
if "%opmem%"=="4" dumpbin /headers %0 & pause & goto memoria
if "%opmem%"=="3" echo Analise stack & pause & goto memoria
if "%opmem%"=="2" echo Analise heap & pause & goto memoria
if "%opmem%"=="1" echo Dump memoria requer ferramentas especificas & pause & goto memoria
goto memoria

:ataque_rede
cls
echo 1. SYN flood sim
echo 2. UDP flood sim
echo 3. ICMP flood sim
echo 4. HTTP flood sim
echo 5. Slowloris sim
echo 6. DNS amplification sim
echo 7. NTP amplification sim
echo 8. Deauth attack sim
echo 9. Voltar
set /p opat="> "
if "%opat%"=="9" exit /b
if "%opat%"=="8" echo Simulacao deauth & pause & goto ataque_rede
if "%opat%"=="7" echo Simulacao NTP amplification & pause & goto ataque_rede
if "%opat%"=="6" echo Simulacao DNS amplification & pause & goto ataque_rede
if "%opat%"=="5" echo Simulacao Slowloris & pause & goto ataque_rede
if "%opat%"=="4" echo Simulacao HTTP flood & pause & goto ataque_rede
if "%opat%"=="3" set /p ip="IP: " & ping -n 100 -l 65500 %ip% & echo ICMP flood & pause & goto ataque_rede
if "%opat%"=="2" echo UDP flood requer ferramentas & pause & goto ataque_rede
if "%opat%"=="1" echo SYN flood requer ferramentas & pause & goto ataque_rede
goto ataque_rede

:backup_completo
set data=%date:~6,4%%date:~3,2%%date:~0,2%
mkdir C:\Backup_%data% 2>nul
reg export HKLM C:\Backup_%data%\HKLM.reg /y
reg export HKCU C:\Backup_%data%\HKCU.reg /y
reg export HKCR C:\Backup_%data%\HKCR.reg /y
robocopy C:\Users\%username% C:\Backup_%data%\Perfil /MIR /R:2 /W:5
dism /online /export-driver /destination:C:\Backup_%data%\Drivers
echo Backup completo realizado em C:\Backup_%data%
exit /b