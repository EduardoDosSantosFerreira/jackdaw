// ============================================
// WINDOWS 95 - JACKDOW HACKER EDITION
// ============================================

class Windows95 {
    constructor() {
        this.zIndex = 100;
        this.isDragging = false;
        this.dragOffset = { x: 0, y: 0 };
        this.bootScreen = document.getElementById('boot-screen');
        this.desktopIcons = document.getElementById('desktop-icons');
        this.taskbar = document.getElementById('taskbar');
        this.explorerWindow = document.getElementById('explorer-window');
        this.taskbarExplorer = document.getElementById('taskbar-explorer');
        this.startMenu = document.getElementById('start-menu');
        this.hackerOverlay = document.getElementById('hacker-overlay');
        this.hackerContent = document.getElementById('hacker-content');
        this.clock = document.getElementById('clock');
        this.bootStarted = false;

        // Sons
        this.startupSound = document.getElementById('startup-sound');
        this.clickSound = document.getElementById('click-sound');
        this.errorSound = document.getElementById('error-sound');
        this.shutdownSound = document.getElementById('shutdown-sound');
        this.beepSound = document.getElementById('beep-sound');
        this.typingSound = document.getElementById('typing-sound');

        this.init();
    }

    playStartupSound() {
        // Configurar o áudio
        this.startupSound.volume = 0.7;
        this.startupSound.currentTime = 0;

        // Tentar reproduzir
        const playPromise = this.startupSound.play();

        if (playPromise !== undefined) {
            playPromise.catch(error => {
                console.log('Áudio bloqueado pelo navegador. Aguardando interação...', error);
                // Se falhou, vai tocar na primeira interação
            });
        }
    }

    playClick() {
        this.clickSound.currentTime = 0;
        this.clickSound.play().catch(e => { });
    }

    playError() {
        this.errorSound.currentTime = 0;
        this.errorSound.play().catch(e => { });
    }

    playBeep() {
        this.beepSound.currentTime = 0;
        this.beepSound.play().catch(e => { });
    }

    playTyping() {
        this.typingSound.volume = 0.3;
        this.typingSound.currentTime = 0;
        this.typingSound.play().catch(e => { });
    }

    init() {
        // PRIMEIRO: Esconder tudo exceto a tela de boot
        this.bootScreen.style.display = 'flex';
        this.desktopIcons.style.display = 'none';
        this.taskbar.style.display = 'none';

        // SEGUNDO: Tentar tocar o som de boot
        setTimeout(() => {
            this.playStartupSound();
        }, 500);

        // TERCEIRO: Configurar evento de clique global para forçar o som
        const playBootSoundOnInteraction = () => {
            // Se o som ainda não começou ou foi bloqueado, tenta tocar
            if (this.startupSound.paused) {
                this.startupSound.currentTime = 0;
                this.startupSound.play().catch(e => console.log('Falha ao tocar som na interação'));
            }

            // Remove o listener após a primeira interação
            document.removeEventListener('click', playBootSoundOnInteraction);
            document.removeEventListener('keydown', playBootSoundOnInteraction);
            document.removeEventListener('touchstart', playBootSoundOnInteraction);
        };

        // Adiciona listeners para a primeira interação do usuário
        document.addEventListener('click', playBootSoundOnInteraction);
        document.addEventListener('keydown', playBootSoundOnInteraction);
        document.addEventListener('touchstart', playBootSoundOnInteraction);

        // QUARTO: Iniciar a animação de boot
        this.startBootSequence();
    }

    startBootSequence() {
        // Barra de progresso animada
        const progressBar = document.getElementById('boot-progress-bar');
        let width = 0;
        const interval = setInterval(() => {
            if (width >= 100) {
                clearInterval(interval);

                // Após 3.5 segundos, mostra a área de trabalho
                setTimeout(() => {
                    this.bootScreen.style.display = 'none';
                    this.desktopIcons.style.display = 'flex';
                    this.taskbar.style.display = 'flex';
                    this.initClock();
                    this.initDesktopIcons();
                    this.initStartMenu();
                    this.initTaskbar();
                    this.initWindowDrag();
                    this.initWindowControls();

                    // Tenta tocar o som de boot mais uma vez (se ainda não tocou)
                    if (this.startupSound.paused) {
                        this.playStartupSound();
                    }
                }, 500);

            } else {
                width += 2;
                if (progressBar) {
                    progressBar.style.width = width + '%';
                }
            }
        }, 70); // 70ms * 50 = 3500ms (3.5 segundos)
    }

    // ===== RELÓGIO =====
    initClock() {
        this.updateClock();
        setInterval(() => this.updateClock(), 1000);
    }

    updateClock() {
        const now = new Date();
        this.clock.textContent = now.toLocaleTimeString('pt-BR', {
            hour: '2-digit',
            minute: '2-digit'
        });
    }

    // ===== ÍCONES DA ÁREA DE TRABALHO =====
    initDesktopIcons() {
        document.querySelectorAll('.desktop-icon').forEach(icon => {
            icon.addEventListener('dblclick', (e) => {
                this.playClick();
                const app = e.currentTarget.dataset.app;

                // ATIVA HACKING apenas para Meu Computador (explorer) e Lixeira (recycle)
                if (app === 'explorer' || app === 'recycle') {
                    this.startHackSequence(app);
                } else if (app === 'ie') {
                    // Internet Explorer abre direto (sem hacking)
                    this.openExplorer();
                }
            });
        });
    }

    // ===== MENU INICIAR =====
    initStartMenu() {
        document.querySelector('.start-button').addEventListener('click', () => {
            this.playClick();
            this.startMenu.classList.toggle('active');
        });

        document.querySelectorAll('.start-menu-item').forEach(item => {
            item.addEventListener('click', (e) => {
                this.playClick();
                const app = e.currentTarget.dataset.app;

                if (app === 'explorer') {
                    this.startHackSequence('explorer');
                } else if (app === 'ie') {
                    this.openExplorer();
                } else if (e.currentTarget.id === 'shutdown') {
                    this.shutdown();
                }
                this.startMenu.classList.remove('active');
            });
        });

        // Fechar menu ao clicar fora
        document.addEventListener('click', (e) => {
            if (!e.target.closest('.start-button') && !e.target.closest('.start-menu')) {
                this.startMenu.classList.remove('active');
            }
        });
    }

    // ===== BARRA DE TAREFAS =====
    initTaskbar() {
        this.taskbarExplorer.addEventListener('click', () => {
            this.playClick();
            this.restoreExplorer();
        });
    }

    // ===== DRAG DA JANELA =====
    initWindowDrag() {
        const titleBar = document.getElementById('explorer-title-bar');

        titleBar.addEventListener('mousedown', (e) => {
            if (e.target.tagName === 'BUTTON') return;

            this.isDragging = true;
            const rect = this.explorerWindow.getBoundingClientRect();
            this.dragOffset.x = e.clientX - rect.left;
            this.dragOffset.y = e.clientY - rect.top;
            this.explorerWindow.style.zIndex = ++this.zIndex;
        });

        document.addEventListener('mousemove', (e) => {
            if (!this.isDragging) return;

            const newX = e.clientX - this.dragOffset.x;
            const newY = e.clientY - this.dragOffset.y;

            const maxX = window.innerWidth - this.explorerWindow.offsetWidth;
            const maxY = window.innerHeight - this.explorerWindow.offsetHeight - 40;

            this.explorerWindow.style.left = Math.min(Math.max(0, newX), maxX) + 'px';
            this.explorerWindow.style.top = Math.min(Math.max(0, newY), maxY) + 'px';
        });

        document.addEventListener('mouseup', () => {
            this.isDragging = false;
        });
    }

    // ===== CONTROLES DA JANELA =====
    initWindowControls() {
        const win = this.explorerWindow;
        const minimize = win.querySelector('.minimize');
        const maximize = win.querySelector('.maximize');
        const close = win.querySelector('.close');

        minimize.addEventListener('click', () => {
            this.playClick();
            win.style.display = 'none';
            this.taskbarExplorer.classList.remove('active');
        });

        maximize.addEventListener('click', () => {
            this.playClick();
            if (!win.classList.contains('maximized')) {
                win.dataset.top = win.style.top;
                win.dataset.left = win.style.left;
                win.dataset.width = win.style.width;
                win.dataset.height = win.style.height;

                win.style.top = '0';
                win.style.left = '0';
                win.style.width = '100%';
                win.style.height = 'calc(100% - 40px)';
                win.classList.add('maximized');
            } else {
                win.style.top = win.dataset.top || '60px';
                win.style.left = win.dataset.left || '80px';
                win.style.width = win.dataset.width || '600px';
                win.style.height = win.dataset.height || '400px';
                win.classList.remove('maximized');
            }
        });

        close.addEventListener('click', () => {
            this.playClick();
            win.style.display = 'none';
            this.taskbarExplorer.classList.remove('active');
        });
    }

    // ===== ABRIR EXPLORER =====
    openExplorer() {
        this.explorerWindow.style.display = 'block';
        this.explorerWindow.style.zIndex = ++this.zIndex;

        if (!this.explorerWindow.style.top) {
            this.explorerWindow.style.top = '60px';
            this.explorerWindow.style.left = '80px';
            this.explorerWindow.style.width = '600px';
            this.explorerWindow.style.height = '400px';
        }

        this.taskbarExplorer.style.display = 'flex';
        this.taskbarExplorer.classList.add('active');

        // Carregar o site original
        const iframe = document.getElementById('explorer-iframe');
        iframe.src = 'site-original.html';
    }

    restoreExplorer() {
        this.explorerWindow.style.display = 'block';
        this.explorerWindow.style.zIndex = ++this.zIndex;
        this.taskbarExplorer.classList.add('active');
    }

    // ===== SEQUÊNCIA HACKER CINEMATOGRÁFICA =====
    startHackSequence(app) {
        this.playError();
        this.hackerOverlay.classList.add('active');
        this.hackerContent.innerHTML = '';

        const lines = [
            { text: 'Microsoft Windows 95 [Versão 4.00.950]', class: '' },
            { text: '(C) Copyright Microsoft Corp 1981-1996.', class: '' },
            { text: '', class: '' },
            { text: 'C:\\WINDOWS\\SYSTEM32>', class: '' },
            { text: '', class: '' },
            { text: '> ACCESSING REMOTE HOST...', class: 'warning-line', delay: 300 },
            { text: '> CONNECTION ESTABLISHED (189.23.45.2:31337)', class: 'success-line', delay: 200 },
            { text: '', class: '' },
            { text: '> INICIANDO EXPLORAÇÃO DE VULNERABILIDADES...', class: 'warning-line', delay: 200 },
            { text: '  - Scanning ports... [████████░░░░] 52%', class: '', delay: 150 },
            { text: '  - Porta 139 (NETBIOS): ABERTA', class: 'error-line', delay: 150 },
            { text: '  - Porta 445 (SMB): ABERTA', class: 'error-line', delay: 100 },
            { text: '  - Porta 3389 (RDP): FILTRADA', class: '', delay: 100 },
            { text: '', class: '' },
            { text: '> EXPLORANDO MS08-067 (CONFIRMADO VULNERÁVEL)', class: 'error-line', delay: 200 },
            { text: '  - Buffer overflow em andamento...', class: '', delay: 200 },
            { text: '  - Shellcode injetado: 0x7C345A80', class: '', delay: 150 },
            { text: '  - Payload: windows/exec CMD=JACKDOW', class: '', delay: 150 },
            { text: '', class: '' },
            { text: '> [!] ACESSO NÃO AUTORIZADO DETECTADO!', class: 'error-line glitch-text', delay: 200 },
            { text: '> [!] TENTATIVA DE INVASÃO EM ANDAMENTO', class: 'error-line', delay: 100 },
            { text: '', class: '' },
            { text: '> BYPASSANDO FIREWALL...', class: 'warning-line', delay: 150 },
            { text: '  - Desativando regras de filtragem... OK', class: '', delay: 150 },
            { text: '  - Abrindo porta reversa (4444)... OK', class: '', delay: 150 },
            { text: '', class: '' },
            { text: '> ACESSO REMOTO CONCEDIDO COMO NT AUTHORITY\\SYSTEM', class: 'success-line', delay: 200 },
            { text: '', class: '' },
            { text: 'C:\\WINDOWS\\SYSTEM32> whoami', class: '', delay: 150 },
            { text: 'nt authority\\system', class: 'success-line', delay: 200 },
            { text: '', class: '' },
            { text: 'C:\\WINDOWS\\SYSTEM32> ipconfig', class: '', delay: 150 },
            { text: 'Ethernet adapter Local Area Connection:', class: '', delay: 100 },
            { text: '   IP Address. . . . . . . . . . . . : 192.168.1.45', class: '', delay: 100 },
            { text: '   Subnet Mask . . . . . . . . . . . : 255.255.255.0', class: '', delay: 100 },
            { text: '   Default Gateway . . . . . . . . . : 192.168.1.1', class: '', delay: 100 },
            { text: '', class: '' },
            { text: 'C:\\WINDOWS\\SYSTEM32> netstat -an', class: '', delay: 150 },
            { text: 'TCP    0.0.0.0:135     0.0.0.0:0     LISTENING', class: '', delay: 80 },
            { text: 'TCP    0.0.0.0:445     0.0.0.0:0     LISTENING', class: '', delay: 80 },
            { text: 'TCP    192.168.1.45:139    189.23.45.2:31337    ESTABLISHED', class: 'error-line', delay: 80 },
            { text: 'TCP    192.168.1.45:4444    189.23.45.2:6667     ESTABLISHED', class: 'error-line', delay: 80 },
            { text: '', class: '' },
            { text: '> CARREGANDO MÓDULOS DO JACKDOW...', class: 'warning-line', delay: 200 },
            { text: '  - keylogger.dll       [CARREGADO]', class: '', delay: 150 },
            { text: '  - screen_capture.sys   [CARREGADO]', class: '', delay: 150 },
            { text: '  - rootkit.sys          [CARREGADO]', class: '', delay: 150 },
            { text: '  - ransomware.exe       [PRONTO]', class: 'error-line', delay: 150 },
            { text: '', class: '' },
            { text: '> [!] SISTEMA COMPROMETIDO!', class: 'error-line glitch-text', delay: 300 },
            { text: '> [!] DADOS CRIPTOGRAFADOS? Iniciando recuperação...', class: 'error-line', delay: 300 }
        ];

        let lineIndex = 0;
        let charIndex = 0;

        // Efeitos visuais durante a invasão
        this.applyHackerEffects();

        const typeLine = () => {
            if (lineIndex >= lines.length) {
                this.finalizeHack();
                return;
            }

            const currentLine = lines[lineIndex];

            if (charIndex === 0 && currentLine.delay) {
                setTimeout(typeLine, currentLine.delay);
                return;
            }

            if (charIndex < currentLine.text.length) {
                const span = document.createElement('span');
                span.textContent = currentLine.text[charIndex];
                span.className = currentLine.class || '';

                this.hackerContent.appendChild(span);
                this.hackerContent.scrollTop = this.hackerContent.scrollHeight;

                // Som de digitação
                if (Math.random() > 0.7) {
                    this.playTyping();
                }

                charIndex++;
                setTimeout(typeLine, 15 + Math.random() * 20);
            } else {
                this.hackerContent.appendChild(document.createElement('br'));
                this.hackerContent.scrollTop = this.hackerContent.scrollHeight;

                lineIndex++;
                charIndex = 0;

                // Intensifica efeitos em momentos críticos
                if (currentLine.text.includes('ACESSO NÃO AUTORIZADO') ||
                    currentLine.text.includes('SISTEMA COMPROMETIDO')) {
                    this.hackerOverlay.classList.add('hacker-flash');
                    this.playError();
                }

                setTimeout(typeLine, 100);
            }
        };

        typeLine();
    }

    applyHackerEffects() {
        // Tela tremendo
        setTimeout(() => {
            this.hackerOverlay.classList.add('hacker-shake');
        }, 2000);

        // Primeiro glitch
        setTimeout(() => {
            this.hackerOverlay.classList.add('hacker-glitch');
            this.playError();
        }, 4000);

        // Flash vermelho
        setTimeout(() => {
            this.hackerOverlay.classList.add('hacker-flash');
            this.playError();
        }, 6000);

        // Intensifica
        setTimeout(() => {
            this.hackerContent.style.fontSize = '18px';
            this.hackerContent.style.transform = 'scale(1.02)';
        }, 8000);

        // Efeito de ruído
        setTimeout(() => {
            const noise = setInterval(() => {
                if (Math.random() > 0.7) {
                    this.hackerContent.style.opacity = '0.5';
                    setTimeout(() => this.hackerContent.style.opacity = '1', 50);
                }
            }, 200);

            setTimeout(() => clearInterval(noise), 3000);
        }, 9000);
    }

    finalizeHack() {
        // Fim da animação - abre o site original
        setTimeout(() => {
            this.hackerOverlay.classList.remove('active', 'hacker-shake', 'hacker-glitch', 'hacker-flash');
            this.hackerContent.innerHTML = '';
            this.hackerContent.style.fontSize = '14px';
            this.hackerContent.style.transform = 'scale(1)';

            // Abre o Explorer com o site original
            this.openExplorer();
        }, 2000);
    }

    // ===== DESLIGAR =====
    shutdown() {
        this.shutdownSound.play().catch(e => { });
        if (confirm('Deseja realmente desligar o Windows?')) {
            document.body.innerHTML = '<div style="background:#000080;color:white;height:100vh;display:flex;align-items:center;justify-content:center;font-size:24px;font-family:MS Sans Serif;">Windows está sendo desligado...</div>';
        }
    }
}

// Inicializar quando o DOM estiver pronto
document.addEventListener('DOMContentLoaded', () => {
    new Windows95();
});