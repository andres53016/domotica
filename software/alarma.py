import zmq,json,time
import pygame
import RPi.GPIO as GPIO
pygame.mixer.init()
GPIO.setmode(GPIO.BCM)
GPIO.setup(25,GPIO.OUT)
GPIO.setup(8,GPIO.OUT)
GPIO.output(25,0)
GPIO.output(8,0)
entradas={"puerta":17,"ventanaCocina":27,"ventanaDormitorio":22}
for entrada in entradas.values():
    GPIO.setup(entrada,GPIO.IN,pull_up_down=GPIO.PUD_UP)
def reproducir2(archivo):
    s = pygame.mixer.Sound(archivo)
    s.play()

cont = zmq.Context()
s = cont.socket(zmq.REP)
s.bind("tcp://127.0.0.1:5001")
tags=["alarma","focoCocina","focoDormitorio"]
alarma="true"
irrumpieron=0
while True:
    try:
        
        msg = s.recv(zmq.NOBLOCK)
        vector=json.loads(msg.decode())
        print(vector)
        if vector[0]=="w":
            if vector[1]=="focoCocina":
                if vector[2]=="true":
                    GPIO.output(25,1)
                elif vector[2]=="false":
                    GPIO.output(25,0)
            elif vector[1]=="focoDormitorio":
                if vector[2]=="true":
                    GPIO.output(8,1)
                elif vector[2]=="false":
                    GPIO.output(8,0)
            elif vector[1]=="alarma":
                alarma=vector[2]
                if alarma=="true":
                    reproducir2("activada.wav")
                elif alarma=="false":
                    reproducir2("desactivada.wav")       
                    irrumpieron=0  

            s.send("ok".encode())
        elif vector[0]=="r":
            msg={}
            for entrada in entradas.keys():
                msg[entrada]=GPIO.input(entradas[entrada])
            msg["alarma"]=alarma
            msg["focoCocina"]=GPIO.input(25)
            msg["focoDormitorio"]=GPIO.input(8)
            s.send(json.dumps(msg).encode())
    except:
        pass
    if alarma=="true":
        for entrada in entradas.values():
            irrumpieron+=GPIO.input(entrada)
        if irrumpieron:
            reproducir2("alarma.wav")
        pass
    time.sleep(0.1)
 
