#!/usr/bin/env python3
print("你居然找到了")
import pygame
pygame.init()
size=(700,500)
screen=pygame.display.set_mode(size)
run=True
while run:
    for event in pygame.event.get():
        if event.type==pygame.QUIT:
            run=False
    screen.fill((34,34,34))
    pygame.draw.rect(screen,(255,0,255),[0,0,350,250])
    pygame.draw.rect(screen,(255,255,0),[350,0,350,250])
    pygame.draw.rect(screen,(0,255,255),[0,250,350,250])
    pygame.draw.rect(screen,(0,0,0),[350,250,350,250])
    pygame.display.update()
pygame.quit()
