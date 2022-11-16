;******************
; Programme vide
;******************

pile    segment stack     ; Segment de pile
pile    ends

donnees segment public    ; Segment de donnees
donnees ends

code    segment public    ; Segment de code
assume  cs:code,ds:donnees,es:code,ss:pile

myprog:			; debut de la zone instructions

	mov AH,07h  ; 07h -> Appel de la fonction write qui va stocker sur le registre AL
	int 21h     ; Appel de la main

	mov AH,02h  ; O2h = fonction putchar DOS
	mov DL,AL   ; Afficher ce qui a ete tape
	int 21h     ; Appel de la main


	mov AH,07h  ; 07h -> Appel de la fonction write
	int 21h     ; Appel de la main

	mov AH,02h  ; O2h = fonction putchar DOS
	mov DL,AL   ; Afficher ce qui a ete tape
	int 21h     ; Appel de la main


	mov AH,07h  ; 07h -> Appel de la fonction write
	int 21h     ; Appel de la main

	mov AH,02h  ; O2h = fonction putchar DOS
	mov DL,AL   ; Afficher ce qui a ete tape
	int 21h     ; Appel de la main


fin:
	mov AH,4Ch  ; 4Ch = fonction exit DOS
	mov AL,00h  ; code de sortie 0 (OK)
	int 21h

code    ends               ; Fin du segment de code
end myprog                 ; Fin du programme
