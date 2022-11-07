adapter driver dirtyjtag
adapter speed 1000
transport select jtag

jtag newtap pp5002 cpu -irlen 4 -expected-id 0x2f1f0f0f
jtag newtap pp5002 cop -irlen 4 -expected-id 0x2f1f0f0f

target create pp5002.cpu arm7tdmi -chain-position pp5002.cpu
target create pp5002.cop arm7tdmi -chain-position pp5002.cop

