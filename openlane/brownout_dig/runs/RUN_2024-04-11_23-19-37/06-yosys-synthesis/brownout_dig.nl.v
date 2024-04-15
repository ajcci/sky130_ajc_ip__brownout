/* Generated by Yosys 0.38 (git sha1 543faed9c8c, clang++ 16.0.6 -fPIC -Os) */

module brownout_dig(otrip, vtrip, ena, force_ena_rc_osc, force_dis_rc_osc, force_short_oneshot, dcomp, brout_filt, osc_ck, osc_ena, outb_unbuf, otrip_decoded, vtrip_decoded, timed_out);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  input brout_filt;
  wire brout_filt;
  wire clr_cnt;
  wire clr_cnt_sb;
  wire clr_cnt_sb_stg1;
  wire \cnt[0] ;
  wire \cnt[10] ;
  wire \cnt[11] ;
  wire \cnt[1] ;
  wire \cnt[2] ;
  wire \cnt[3] ;
  wire \cnt[4] ;
  wire \cnt[5] ;
  wire \cnt[6] ;
  wire \cnt[7] ;
  wire \cnt[8] ;
  wire \cnt[9] ;
  input dcomp;
  wire dcomp;
  wire dcomp_ena_rsb;
  wire dcomp_retimed;
  input ena;
  wire ena;
  input force_dis_rc_osc;
  wire force_dis_rc_osc;
  input force_ena_rc_osc;
  wire force_ena_rc_osc;
  input force_short_oneshot;
  wire force_short_oneshot;
  input osc_ck;
  wire osc_ck;
  output osc_ena;
  wire osc_ena;
  input [2:0] otrip;
  wire [2:0] otrip;
  output [7:0] otrip_decoded;
  wire [7:0] otrip_decoded;
  output outb_unbuf;
  wire outb_unbuf;
  output timed_out;
  wire timed_out;
  input [2:0] vtrip;
  wire [2:0] vtrip;
  output [7:0] vtrip_decoded;
  wire [7:0] vtrip_decoded;
  sky130_fd_sc_hd__inv_2 _043_ (
    .A(clr_cnt),
    .Y(_028_)
  );
  sky130_fd_sc_hd__inv_2 _044_ (
    .A(force_dis_rc_osc),
    .Y(_029_)
  );
  sky130_fd_sc_hd__inv_2 _045_ (
    .A(brout_filt),
    .Y(_000_)
  );
  sky130_fd_sc_hd__nand2_2 _046_ (
    .A(\cnt[1] ),
    .B(\cnt[0] ),
    .Y(_030_)
  );
  sky130_fd_sc_hd__and4_2 _047_ (
    .A(\cnt[1] ),
    .B(\cnt[0] ),
    .C(\cnt[3] ),
    .D(\cnt[2] ),
    .X(_031_)
  );
  sky130_fd_sc_hd__and2_2 _048_ (
    .A(\cnt[4] ),
    .B(_031_),
    .X(_032_)
  );
  sky130_fd_sc_hd__and2_2 _049_ (
    .A(\cnt[5] ),
    .B(\cnt[6] ),
    .X(_033_)
  );
  sky130_fd_sc_hd__nand2_2 _050_ (
    .A(_032_),
    .B(_033_),
    .Y(_034_)
  );
  sky130_fd_sc_hd__and4_2 _051_ (
    .A(\cnt[4] ),
    .B(\cnt[7] ),
    .C(_031_),
    .D(_033_),
    .X(_035_)
  );
  sky130_fd_sc_hd__and2_2 _052_ (
    .A(\cnt[9] ),
    .B(\cnt[10] ),
    .X(_036_)
  );
  sky130_fd_sc_hd__and4_2 _053_ (
    .A(\cnt[8] ),
    .B(\cnt[11] ),
    .C(_035_),
    .D(_036_),
    .X(timed_out)
  );
  sky130_fd_sc_hd__and2b_2 _054_ (
    .A_N(dcomp_retimed),
    .B(timed_out),
    .X(outb_unbuf)
  );
  sky130_fd_sc_hd__nor3_2 _055_ (
    .A(otrip[2]),
    .B(otrip[0]),
    .C(otrip[1]),
    .Y(otrip_decoded[0])
  );
  sky130_fd_sc_hd__nor3b_2 _056_ (
    .A(otrip[2]),
    .B(otrip[1]),
    .C_N(otrip[0]),
    .Y(otrip_decoded[1])
  );
  sky130_fd_sc_hd__nor3b_2 _057_ (
    .A(otrip[2]),
    .B(otrip[0]),
    .C_N(otrip[1]),
    .Y(otrip_decoded[2])
  );
  sky130_fd_sc_hd__and3b_2 _058_ (
    .A_N(otrip[2]),
    .B(otrip[0]),
    .C(otrip[1]),
    .X(otrip_decoded[3])
  );
  sky130_fd_sc_hd__nor3b_2 _059_ (
    .A(otrip[0]),
    .B(otrip[1]),
    .C_N(otrip[2]),
    .Y(otrip_decoded[4])
  );
  sky130_fd_sc_hd__and3b_2 _060_ (
    .A_N(otrip[1]),
    .B(otrip[0]),
    .C(otrip[2]),
    .X(otrip_decoded[5])
  );
  sky130_fd_sc_hd__and3b_2 _061_ (
    .A_N(otrip[0]),
    .B(otrip[1]),
    .C(otrip[2]),
    .X(otrip_decoded[6])
  );
  sky130_fd_sc_hd__and3_2 _062_ (
    .A(otrip[2]),
    .B(otrip[0]),
    .C(otrip[1]),
    .X(otrip_decoded[7])
  );
  sky130_fd_sc_hd__nor3_2 _063_ (
    .A(vtrip[2]),
    .B(vtrip[1]),
    .C(vtrip[0]),
    .Y(vtrip_decoded[0])
  );
  sky130_fd_sc_hd__nor3b_2 _064_ (
    .A(vtrip[2]),
    .B(vtrip[1]),
    .C_N(vtrip[0]),
    .Y(vtrip_decoded[1])
  );
  sky130_fd_sc_hd__nor3b_2 _065_ (
    .A(vtrip[2]),
    .B(vtrip[0]),
    .C_N(vtrip[1]),
    .Y(vtrip_decoded[2])
  );
  sky130_fd_sc_hd__and3b_2 _066_ (
    .A_N(vtrip[2]),
    .B(vtrip[1]),
    .C(vtrip[0]),
    .X(vtrip_decoded[3])
  );
  sky130_fd_sc_hd__nor3b_2 _067_ (
    .A(vtrip[1]),
    .B(vtrip[0]),
    .C_N(vtrip[2]),
    .Y(vtrip_decoded[4])
  );
  sky130_fd_sc_hd__and3b_2 _068_ (
    .A_N(vtrip[1]),
    .B(vtrip[0]),
    .C(vtrip[2]),
    .X(vtrip_decoded[5])
  );
  sky130_fd_sc_hd__and3b_2 _069_ (
    .A_N(vtrip[0]),
    .B(vtrip[1]),
    .C(vtrip[2]),
    .X(vtrip_decoded[6])
  );
  sky130_fd_sc_hd__and3_2 _070_ (
    .A(vtrip[2]),
    .B(vtrip[1]),
    .C(vtrip[0]),
    .X(vtrip_decoded[7])
  );
  sky130_fd_sc_hd__or3b_2 _071_ (
    .A(dcomp_retimed),
    .B(dcomp),
    .C_N(timed_out),
    .X(_037_)
  );
  sky130_fd_sc_hd__a31o_2 _072_ (
    .A1(ena),
    .A2(_029_),
    .A3(_037_),
    .B1(force_ena_rc_osc),
    .X(osc_ena)
  );
  sky130_fd_sc_hd__and2_2 _073_ (
    .A(dcomp),
    .B(ena),
    .X(dcomp_ena_rsb)
  );
  sky130_fd_sc_hd__nor2_2 _074_ (
    .A(force_short_oneshot),
    .B(timed_out),
    .Y(_038_)
  );
  sky130_fd_sc_hd__a21oi_2 _075_ (
    .A1(\cnt[0] ),
    .A2(_038_),
    .B1(clr_cnt),
    .Y(_002_)
  );
  sky130_fd_sc_hd__or2_2 _076_ (
    .A(\cnt[1] ),
    .B(\cnt[0] ),
    .X(_039_)
  );
  sky130_fd_sc_hd__nand2_2 _077_ (
    .A(_030_),
    .B(_039_),
    .Y(_040_)
  );
  sky130_fd_sc_hd__a21oi_2 _078_ (
    .A1(_038_),
    .A2(_040_),
    .B1(clr_cnt),
    .Y(_003_)
  );
  sky130_fd_sc_hd__xor2_2 _079_ (
    .A(\cnt[2] ),
    .B(_030_),
    .X(_041_)
  );
  sky130_fd_sc_hd__a21oi_2 _080_ (
    .A1(_038_),
    .A2(_041_),
    .B1(clr_cnt),
    .Y(_004_)
  );
  sky130_fd_sc_hd__a31o_2 _081_ (
    .A1(\cnt[1] ),
    .A2(\cnt[0] ),
    .A3(\cnt[2] ),
    .B1(\cnt[3] ),
    .X(_042_)
  );
  sky130_fd_sc_hd__nand2b_2 _082_ (
    .A_N(_031_),
    .B(_042_),
    .Y(_014_)
  );
  sky130_fd_sc_hd__a21oi_2 _083_ (
    .A1(_038_),
    .A2(_014_),
    .B1(clr_cnt),
    .Y(_005_)
  );
  sky130_fd_sc_hd__nor2_2 _084_ (
    .A(\cnt[4] ),
    .B(_031_),
    .Y(_015_)
  );
  sky130_fd_sc_hd__or2_2 _085_ (
    .A(_032_),
    .B(_015_),
    .X(_016_)
  );
  sky130_fd_sc_hd__a21oi_2 _086_ (
    .A1(_038_),
    .A2(_016_),
    .B1(clr_cnt),
    .Y(_006_)
  );
  sky130_fd_sc_hd__xnor2_2 _087_ (
    .A(\cnt[5] ),
    .B(_032_),
    .Y(_017_)
  );
  sky130_fd_sc_hd__a21oi_2 _088_ (
    .A1(_038_),
    .A2(_017_),
    .B1(clr_cnt),
    .Y(_007_)
  );
  sky130_fd_sc_hd__a31o_2 _089_ (
    .A1(\cnt[5] ),
    .A2(\cnt[4] ),
    .A3(_031_),
    .B1(\cnt[6] ),
    .X(_018_)
  );
  sky130_fd_sc_hd__nand2_2 _090_ (
    .A(_034_),
    .B(_018_),
    .Y(_019_)
  );
  sky130_fd_sc_hd__a21oi_2 _091_ (
    .A1(_038_),
    .A2(_019_),
    .B1(clr_cnt),
    .Y(_008_)
  );
  sky130_fd_sc_hd__xor2_2 _092_ (
    .A(\cnt[7] ),
    .B(_034_),
    .X(_020_)
  );
  sky130_fd_sc_hd__a21oi_2 _093_ (
    .A1(_038_),
    .A2(_020_),
    .B1(clr_cnt),
    .Y(_009_)
  );
  sky130_fd_sc_hd__xnor2_2 _094_ (
    .A(\cnt[8] ),
    .B(_035_),
    .Y(_021_)
  );
  sky130_fd_sc_hd__a21oi_2 _095_ (
    .A1(_038_),
    .A2(_021_),
    .B1(clr_cnt),
    .Y(_010_)
  );
  sky130_fd_sc_hd__a21o_2 _096_ (
    .A1(\cnt[8] ),
    .A2(_035_),
    .B1(force_short_oneshot),
    .X(_022_)
  );
  sky130_fd_sc_hd__xor2_2 _097_ (
    .A(\cnt[9] ),
    .B(_022_),
    .X(_023_)
  );
  sky130_fd_sc_hd__o21a_2 _098_ (
    .A1(timed_out),
    .A2(_023_),
    .B1(_028_),
    .X(_011_)
  );
  sky130_fd_sc_hd__a21o_2 _099_ (
    .A1(\cnt[9] ),
    .A2(_022_),
    .B1(\cnt[10] ),
    .X(_024_)
  );
  sky130_fd_sc_hd__a21oi_2 _100_ (
    .A1(_036_),
    .A2(_022_),
    .B1(clr_cnt),
    .Y(_025_)
  );
  sky130_fd_sc_hd__a22o_2 _101_ (
    .A1(_028_),
    .A2(timed_out),
    .B1(_024_),
    .B2(_025_),
    .X(_012_)
  );
  sky130_fd_sc_hd__and3b_2 _102_ (
    .A_N(\cnt[11] ),
    .B(_036_),
    .C(_022_),
    .X(_026_)
  );
  sky130_fd_sc_hd__a21boi_2 _103_ (
    .A1(_036_),
    .A2(_022_),
    .B1_N(\cnt[11] ),
    .Y(_027_)
  );
  sky130_fd_sc_hd__o31a_2 _104_ (
    .A1(timed_out),
    .A2(_026_),
    .A3(_027_),
    .B1(_028_),
    .X(_013_)
  );
  sky130_fd_sc_hd__inv_2 _105_ (
    .A(brout_filt),
    .Y(_001_)
  );
  sky130_fd_sc_hd__dfstp_2 _106_ (
    .CLK(osc_ck),
    .D(_002_),
    .Q(\cnt[0] ),
    .SET_B(ena)
  );
  sky130_fd_sc_hd__dfstp_2 _107_ (
    .CLK(osc_ck),
    .D(_003_),
    .Q(\cnt[1] ),
    .SET_B(ena)
  );
  sky130_fd_sc_hd__dfstp_2 _108_ (
    .CLK(osc_ck),
    .D(_004_),
    .Q(\cnt[2] ),
    .SET_B(ena)
  );
  sky130_fd_sc_hd__dfstp_2 _109_ (
    .CLK(osc_ck),
    .D(_005_),
    .Q(\cnt[3] ),
    .SET_B(ena)
  );
  sky130_fd_sc_hd__dfstp_2 _110_ (
    .CLK(osc_ck),
    .D(_006_),
    .Q(\cnt[4] ),
    .SET_B(ena)
  );
  sky130_fd_sc_hd__dfstp_2 _111_ (
    .CLK(osc_ck),
    .D(_007_),
    .Q(\cnt[5] ),
    .SET_B(ena)
  );
  sky130_fd_sc_hd__dfstp_2 _112_ (
    .CLK(osc_ck),
    .D(_008_),
    .Q(\cnt[6] ),
    .SET_B(ena)
  );
  sky130_fd_sc_hd__dfstp_2 _113_ (
    .CLK(osc_ck),
    .D(_009_),
    .Q(\cnt[7] ),
    .SET_B(ena)
  );
  sky130_fd_sc_hd__dfstp_2 _114_ (
    .CLK(osc_ck),
    .D(_010_),
    .Q(\cnt[8] ),
    .SET_B(ena)
  );
  sky130_fd_sc_hd__dfstp_2 _115_ (
    .CLK(osc_ck),
    .D(_011_),
    .Q(\cnt[9] ),
    .SET_B(ena)
  );
  sky130_fd_sc_hd__dfstp_2 _116_ (
    .CLK(osc_ck),
    .D(_012_),
    .Q(\cnt[10] ),
    .SET_B(ena)
  );
  sky130_fd_sc_hd__dfstp_2 _117_ (
    .CLK(osc_ck),
    .D(_013_),
    .Q(\cnt[11] ),
    .SET_B(ena)
  );
  sky130_fd_sc_hd__dfstp_2 _118_ (
    .CLK(osc_ck),
    .D(1'b0),
    .Q(clr_cnt),
    .SET_B(clr_cnt_sb)
  );
  sky130_fd_sc_hd__dfrtp_2 _119_ (
    .CLK(osc_ck),
    .D(1'b1),
    .Q(clr_cnt_sb_stg1),
    .RESET_B(_000_)
  );
  sky130_fd_sc_hd__dfrtp_2 _120_ (
    .CLK(osc_ck),
    .D(clr_cnt_sb_stg1),
    .Q(clr_cnt_sb),
    .RESET_B(_001_)
  );
  sky130_fd_sc_hd__dfrtp_2 _121_ (
    .CLK(osc_ck),
    .D(dcomp),
    .Q(dcomp_retimed),
    .RESET_B(dcomp_ena_rsb)
  );
endmodule
