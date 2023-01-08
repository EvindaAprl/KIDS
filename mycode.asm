name "Program Evinda Apriliani"
org 100h

jmp tanya1
soal1 db 'Selamat Datang di Program!!'
      db 13,10,13,10,'Kuis Informatika'
      db 13,10,'1. Yang termasuk input device adalah...'
      db 13,10,'   a. Speaker'
      db 13,10,'   b. Proyektor'
      db 13,10,'   c. Mouse'
      db 13,10,' Jawabanmu : $'
           
      jawab1 db 2
      jawaban1 db 'c'
      skor dw 0
      akhir db 13,10,'Skor kamu : $'
      hasil dw 0
      
tanya1:
    mov ah,09h
    lea dx,soal1
    int 21h
    
    mov ah,0ah
    lea dx,jawab1
    int 21h
    
    mov ax,0ah
    mov al,[jawab1]
    mov al,[jawaban1]
    mov cx,1
    cld
    rep cmpsb
    je benar1
    jne kuis2
    
benar1:
    mov ax, skor
    add ax, 25
    mov skor, ax

kuis2: jmp tanya2
soal2  db 13,10,13,10,'2. Sistem operasi dan aplikasi merupakan...'
       db 13,10,'   a. Brainware'
       db 13,10,'   b. Software'
       db 13,10,'   c. Hardware'
       db 13,10,' Jawabanmu : $'
           
       jawab2 db 2
       jawaban2 db 'a'

tanya2:
    mov ah,09h
    lea dx,soal2
    int 21h
    
    mov ah,0ah
    lea dx,jawab2
    int 21h
    
    mov ax,0ah
    mov al,[jawab2]
    mov al,[jawaban2]
    cld
    rep cmpsb
    je benar2
    jne kuis3
    
benar2:
    mov ax, skor
    add ax, 25
    mov skor, ax    
    
kuis3: jmp tanya3
soal3  db 13,10,13,10,'3. Bilangan aritmatika berbasis 10 adalah...'
       db 13,10,'   a. Biner'
       db 13,10,'   b. Oktal'
       db 13,10,'   c. Desimal'
       db 13,10,' Jawabanmu : $'
           
       jawab3 db 2
       jawaban3 db 'c'
           
tanya3:
    mov ah,09h
    lea dx,soal3
    int 21h
    
    mov ah,0ah
    lea dx,jawab3
    int 21h
    
    mov ax,0ah
    mov al,[jawab3]
    mov al,[jawaban3]
    cld
    rep cmpsb
    je benar3
    jne kuis4
    
benar3:
    mov ax, skor
    add ax, 25
    mov skor, ax

kuis4: jmp tanya4
soal4   db 13,10,13,10,'4. Di bawah ini karateristik sistem cloud computing, kecuali...'
        db 13,10,'   a. Resource Polling'
        db 13,10,'   b. Self Love'
        db 13,10,'   c. Measured Service'
        db 13,10,' Jawabanmu : $'
           
        jawab4 db 2
        jawaban4 db 'b'
        
tanya4:
    mov ah,09h
    lea dx,soal4
    int 21h
    
    mov ah,0ah
    lea dx,jawab4
    int 21h
    
    mov ax,0ah
    mov al,[jawab4]
    mov al,[jawaban4]
    mov cx,1
    cld
    rep cmpsb
    je benar4
    jne last
    
benar4:
    mov ax, skor
    add ax, 25
    mov skor, ax
        
last:
    mov ax, skor
    mov hasil, ax
    
    mov ah, 00h
    mov al, hasil
    aam
    
    mov ah, 09h
    lea dx, akhir 
    int 21h
    
    mov ah, 02h
    mov hasil, al
    mov dl, hasil 
    int 21h
    
    int 20h                
ret

          