# Astra S9 FPGA - Universal Zynq-7010 Platform

## Описание
Универсальная отладочная платформа на базе Antminer S9 (Xilinx Zynq-7010 SoC + FPGA)

## Реализованные интерфейсы
- ✅ HDMI / VGA
- ✅ I2S Audio  
- ✅ I2C
- ✅ SPI
- ✅ UART
- ✅ GPIO
- ✅ Ethernet
- ✅ Web Server (Flarum forum)

## Структура проекта
- `fpga/` - Verilog/VHDL исходники для Xilinx Vivado
- `arm/` - C/C++ код для ARM Cortex-A9
- `docs/` - Документация и распиновка
- `examples/` - Примеры использования интерфейсов

## Инструменты разработки
- Xilinx Vivado 2023.2
- Vitis 2023.2
- Target: Xilinx Zynq-7010 (XC7Z010)

## Применение
- SDR (Software Defined Radio)
- POCSAG pager transmitter
- FPGA отладка
- Встраиваемые системы на Zynq

## Ресурсы
- Сайт проекта: https://astra.org.ru
- Форум: https://astra.org.ru/forum

## Лицензия
MIT License

## Автор
Проект ASTRA S9