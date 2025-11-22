@if exist "x-emu-devector\rom\sabot1.rom" (
  del "x-emu-devector\rom\sabot1.rom"
)

copy sabot1.rom "x-emu-devector\rom\sabot1.rom"

start x-emu-devector\devector -path "x-emu-devector\rom\sabot1.rom"