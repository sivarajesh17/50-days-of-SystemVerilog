class driver;
    virtual dff_if vif;
    mailbox mb;
    logic [1:0] temp;
    logic d, reset;

    task run();
        forever begin
            mb.get(temp);
            {reset, d} = temp;
            vif.reset = reset;
            vif.d = d;

            // Provide clock edge
            vif.clk = 0;
            #5;
            vif.clk = 1;
            #5;

            $display("Driven -> clk: %0b, reset: %0b, d: %0b, q: %0b",
                      vif.clk, vif.reset, vif.d, vif.q);
        end
    endtask
endclass

