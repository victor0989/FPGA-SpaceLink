module top_module (
    input wire clk,              // Reloj de sistema
    input wire reset,            // Reset de sistema
    input wire sw,               // Señal de control de entrada
    output wire db,              // Señal de salida
    output wire [2:0] eth_state, // Estado del FSM de Ethernet
    output wire [2:0] led_status // Estado de los LEDs Ethernet
);

wire LED_2, LED_1, LED_0;

// Instancia del módulo FSM de Ethernet
ethernet_fsm eth_fsm (
    .clk(clk),
    .reset(reset),
    .sw(sw),
    .db(db),
    .eth_state(eth_state)
);

// Instancia del módulo de LEDs Ethernet
ethernet_led_interface eth_led (
    .clk(clk),
    .rst(reset),
    .LED_2(LED_2),
    .LED_1(LED_1),
    .LED_0(LED_0),
    .a(eth_state[0]), // Ejemplo de asignación de señales
    .b(eth_state[1]), // Ejemplo de asignación de señales
    .led_status(led_status),
    .yo(),
    .yl()
);

endmodule

