module tb;
    dff_if sif();  // Instantiate interface

    d_ff dut (
        .clk(sif.clk),
        .reset(sif.reset),
        .d(sif.d),
        .q(sif.q)
    );

    generator gen;
    driver drv;
    mailbox mb;

    initial begin
        gen = new();
        drv = new();
        mb = new();

        gen.mb = mb;
        drv.mb = mb;
        drv.vif = sif;

        // Start generator and driver
        fork
            gen.run();
            drv.run();
        join_none

        #200 $finish;
    end
endmodule

