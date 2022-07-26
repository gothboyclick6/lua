
LARGURA_T = 320
ALTURA_T = 480

bis14 = {
    src = "image/14bis.png", 
    largura = 64,
    altura = 64,
    x=LARGURA_T/2 - 64/2,
    y=ALTURA_T - 64/2
}

meteoros = {}
function criaMeteoro()
    meteoro={
        x=math.random(LARGURA_T),
        y=0
    }
    table.insert(meteoros, meteoro)
end

function moveMeteoros()
    for k,meteoro in pairs(meteoros) do
        meteoro.y = meteoro.y +1
    end
end

function movebis14()
    if love.keyboard.isDown('w') then
        bis14.y = bis14.y-3
    end
    if love.keyboard.isDown('s') then
        bis14.y = bis14.y+3
    end
    if love.keyboard.isDown('a') then
        bis14.x= bis14.x-3
    end
    if love.keyboard.isDown('d') then
        bis14.x = bis14.x+3
    end
end

function love.load()
    x, y, w, h = 0, 0, 60, 20

    love.window.setMode(LARGURA_T,ALTURA_T,{resizable= false})
    love.window.setTitle("14 Bis vs. Meteoros")

    background = love.graphics.newImage("/image/background.png")--cria o tipo imagem
    bis14.image = love.graphics.newImage(bis14.src)--cria o tipo imagem
    meteoro_img = love.graphics.newImage("/image/meteoro.png")--cria o tipo imagem


end

function love.update(dt)
    if love.keyboard.isDown('w','s','a','d') then
        movebis14()
    end
    criaMeteoro()
    moveMeteoros()
end

function love.draw()
    love.graphics.draw(background, 0,0)
    love.graphics.draw(bis14.image, bis14.x,bis14.y)
    love.graphics.draw(meteoro_img, x,y)

    for k, meteoro in pairs(meteoros) do
        love.graphics.draw(meteoro_img, meteoro.x, meteoro.y)
    end
end

