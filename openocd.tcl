adapter driver dirtyjtag
adapter speed 1000
transport select jtag

jtag newtap pp5020 cpu -irlen 4 -expected-id 0x3f0f0f0f
jtag newtap pp5020 cop -irlen 4 -expected-id 0x3f0f0f0f

target create pp5020.cop arm7tdmi -chain-position pp5020.cop
target create pp5020.cpu arm7tdmi -chain-position pp5020.cpu

arm7_9 dcc_downloads enable
arm7_9 fast_memory_access enable
