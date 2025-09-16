class generator;
    mailbox mb;
    rand logic d;
    rand logic reset;

    task run();
        for (int i = 0; i < 10; i++) begin
            d = $random;
            reset = $random;
            mb.put({reset, d});
            $display("Generated -> reset: %0b, d: %0b", reset, d);
        end
    endtask
endclass

