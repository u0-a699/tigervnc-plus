#!/usr/bin/env python3
import pygame
pygame.init()
size=(2000,1200)
screen=pygame.display.set_mode(size)
pygame.display.set_caption("title")
a=True
while a:
    for event in pygame.event.get():
        if event.type==pygame.QUIT:
            a=False
    screen.fill((34,34,34))
    pygame.draw.rect(screen,(255,0,0),[0,0,70,50])
    pygame.draw.rect(screen,(255,255,0),[70,0,70,50])
    pygame.draw.rect(screen,(0,255,0),[0,50,70,50])
    pygame.draw.rect(screen,(0,0,255),[70,50,70,50])
    pygame.display.update()
pygame.quit()
