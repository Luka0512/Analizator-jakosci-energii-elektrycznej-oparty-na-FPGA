library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

library work;
  use work.PkgNiUtilities.all;
  use work.PkgRegPortAxiFlat.all;
  use work.PkgRegPort.all;

library UNISIM;
  use UNISIM.vcomponents.all;

entity CLIP is
  port(
    ---------------------------------------------------------------
    --LabVIEW Port: DI_SYNC_1
    ---------------------------------------------------------------
    DI_SYNC_1_lv_in : out std_logic_vector(0 downto 0);
    DI_SYNC_1_lv_out : in std_logic_vector(0 downto 0);
    DI_SYNC_1_lv_enable : in std_logic_vector(0 downto 0);


    ---------------------------------------------------------------
    --LabVIEW Port: DI_SYNC_2
    ---------------------------------------------------------------
    DI_SYNC_2_lv_in : out std_logic_vector(0 downto 0);
    DI_SYNC_2_lv_out : in std_logic_vector(0 downto 0);
    DI_SYNC_2_lv_enable : in std_logic_vector(0 downto 0);


    ---------------------------------------------------------------
    --LabVIEW Port: DI_SYNC_3
    ---------------------------------------------------------------
    DI_SYNC_3_lv_in : out std_logic_vector(0 downto 0);
    DI_SYNC_3_lv_out : in std_logic_vector(0 downto 0);
    DI_SYNC_3_lv_enable : in std_logic_vector(0 downto 0);


    ---------------------------------------------------------------
    --LabVIEW Port: DI_SYNC_4
    ---------------------------------------------------------------
    DI_SYNC_4_lv_in : out std_logic_vector(0 downto 0);
    DI_SYNC_4_lv_out : in std_logic_vector(0 downto 0);
    DI_SYNC_4_lv_enable : in std_logic_vector(0 downto 0);


    ---------------------------------------------------------------
    --LabVIEW Port: DI_SYNC_5
    ---------------------------------------------------------------
    DI_SYNC_5_lv_in : out std_logic_vector(0 downto 0);
    DI_SYNC_5_lv_out : in std_logic_vector(0 downto 0);
    DI_SYNC_5_lv_enable : in std_logic_vector(0 downto 0);


    ---------------------------------------------------------------
    --LabVIEW Port: DI_SYNC_6
    ---------------------------------------------------------------
    DI_SYNC_6_lv_in : out std_logic_vector(0 downto 0);
    DI_SYNC_6_lv_out : in std_logic_vector(0 downto 0);
    DI_SYNC_6_lv_enable : in std_logic_vector(0 downto 0);


    ---------------------------------------------------------------
    --LabVIEW Port: DA
    ---------------------------------------------------------------
    DA_lv_in : out std_logic_vector(0 downto 0);
    DA_lv_out : in std_logic_vector(0 downto 0);
    DA_lv_enable : in std_logic_vector(0 downto 0);


    ---------------------------------------------------------------
    --LabVIEW Port: DI_SYNC_7
    ---------------------------------------------------------------
    DI_SYNC_7_lv_in : out std_logic_vector(0 downto 0);
    DI_SYNC_7_lv_out : in std_logic_vector(0 downto 0);
    DI_SYNC_7_lv_enable : in std_logic_vector(0 downto 0);


    ---------------------------------------------------------------
    --LabVIEW Port: DI_SYNC_8
    ---------------------------------------------------------------
    DI_SYNC_8_lv_in : out std_logic_vector(0 downto 0);
    DI_SYNC_8_lv_out : in std_logic_vector(0 downto 0);
    DI_SYNC_8_lv_enable : in std_logic_vector(0 downto 0);


    ---------------------------------------------------------------
    --LabVIEW Port: DB
    ---------------------------------------------------------------
    DB_lv_in : out std_logic_vector(0 downto 0);
    DB_lv_out : in std_logic_vector(0 downto 0);
    DB_lv_enable : in std_logic_vector(0 downto 0);


    ---------------------------------------------------------------
    --LabVIEW Port: DF
    ---------------------------------------------------------------
    DF_lv_in : out std_logic_vector(0 downto 0);
    DF_lv_out : in std_logic_vector(0 downto 0);
    DF_lv_enable : in std_logic_vector(0 downto 0);


    ---------------------------------------------------------------
    --LabVIEW Port: DH
    ---------------------------------------------------------------
    DH_lv_in : out std_logic_vector(0 downto 0);
    DH_lv_out : in std_logic_vector(0 downto 0);
    DH_lv_enable : in std_logic_vector(0 downto 0);


    ---------------------------------------------------------------
    --LabVIEW Port: DD
    ---------------------------------------------------------------
    DD_lv_in : out std_logic_vector(0 downto 0);
    DD_lv_out : in std_logic_vector(0 downto 0);
    DD_lv_enable : in std_logic_vector(0 downto 0);


    ---------------------------------------------------------------
    --LabVIEW Port: DG
    ---------------------------------------------------------------
    DG_lv_in : out std_logic_vector(0 downto 0);
    DG_lv_out : in std_logic_vector(0 downto 0);
    DG_lv_enable : in std_logic_vector(0 downto 0);


    ---------------------------------------------------------------
    --LabVIEW Port: DC
    ---------------------------------------------------------------
    DC_lv_in : out std_logic_vector(0 downto 0);
    DC_lv_out : in std_logic_vector(0 downto 0);
    DC_lv_enable : in std_logic_vector(0 downto 0);


    ---------------------------------------------------------------
    --LabVIEW Port: DE
    ---------------------------------------------------------------
    DE_lv_in : out std_logic_vector(0 downto 0);
    DE_lv_out : in std_logic_vector(0 downto 0);
    DE_lv_enable : in std_logic_vector(0 downto 0);


    ---------------------------------------------------------------
    --LabVIEW Port: FCO_ADC
    ---------------------------------------------------------------
    FCO_ADC_lv_in : out std_logic_vector(0 downto 0);
    FCO_ADC_lv_out : in std_logic_vector(0 downto 0);
    FCO_ADC_lv_enable : in std_logic_vector(0 downto 0);


    ---------------------------------------------------------------
    --LabVIEW Port: CLK_10MHZ_FPGA_OUT
    ---------------------------------------------------------------
    CLK_10MHZ_FPGA_OUT_lv_in : out std_logic_vector(0 downto 0);
    CLK_10MHZ_FPGA_OUT_lv_out : in std_logic_vector(0 downto 0);
    CLK_10MHZ_FPGA_OUT_lv_enable : in std_logic_vector(0 downto 0);


    ---------------------------------------------------------------
    --LabVIEW Port: DCO_ADC
    ---------------------------------------------------------------
    DCO_ADC_lv_in : out std_logic_vector(0 downto 0);
    DCO_ADC_lv_out : in std_logic_vector(0 downto 0);
    DCO_ADC_lv_enable : in std_logic_vector(0 downto 0);


    ---------------------------------------------------------------
    --LabVIEW Port: SCO_ADC
    ---------------------------------------------------------------
    SCO_ADC_lv_in : out std_logic_vector(0 downto 0);
    SCO_ADC_lv_out : in std_logic_vector(0 downto 0);
    SCO_ADC_lv_enable : in std_logic_vector(0 downto 0);


    ---------------------------------------------------------------
    --LabVIEW Clock Port: CLK_10MHZ_FPGA_IN
    ---------------------------------------------------------------
    CLK_10MHZ_FPGA_IN_lvc : out std_logic;


    ---------------------------------------------------------------
    --LabVIEW Clock Port: DIO_85_MRCC
    ---------------------------------------------------------------
    DIO_85_MRCC_lvc : in std_logic;


    ---------------------------------------------------------------
    --LabVIEW Clock Port: DIO_86_MRCC
    ---------------------------------------------------------------
    DIO_86_MRCC_lvc : in std_logic;


    aReset : in std_logic;
    aDio : inout std_logic_vector(87 downto 0);
    aDio_n : inout std_logic_vector(87 downto 16);

    --connect these to pins for CAN ports
    CAN0_rx : out std_logic;
    CAN0_tx : in std_logic;
    CAN0_rs : in std_logic;
    CAN1_rx : out std_logic;
    CAN1_tx : in std_logic;
    CAN1_rs : in std_logic;

    --common clocks
    EnetClk125 : in std_logic;
    SerialClk : in std_logic;

    --zynq's ethernet1 MAC
    GBE1_GMII_COL : out std_logic;
    GBE1_GMII_CRS : out std_logic;
    GBE1_GMII_RX_CLK : out std_logic;
    GBE1_GMII_RX_DV : out std_logic;
    GBE1_GMII_RX_ER : out std_logic;
    GBE1_GMII_RX_D : out std_logic_vector(7 downto 0);
    GBE1_GMII_TX_CLK : out std_logic;
    GBE1_GMII_TX_EN : in std_logic;
    GBE1_GMII_TX_ER : in std_logic;
    GBE1_GMII_TX_D : in std_logic_vector(7 downto 0);
    GBE1_MDC : in std_logic;
    GBE1_MDIO_In : out std_logic;
    GBE1_MDIO_Out : in std_logic;
    GBE1_MDIO_Enable : in std_logic;
    aEth1AtGigabit_n : in std_logic;
    aEth1At10Mb_n : in std_logic;
    GBE1_IRQ : out std_logic;

    --connect this to soft serial components
    sSerialRegPortIn : in std_logic_vector(100 downto 0);
    sSerialRegPortOut : out std_logic_vector(64 downto 0);

    --the modem lines from Serial1, connect to pins if desired
    aSerial1Dtr_n : in std_logic;
    aSerial1Rts_n : in std_logic;
    aSerial1Cts_n : out std_logic;
    aSerial1Dsr_n : out std_logic;
    aSerial1Ri_n : out std_logic;
    aSerial1Dcd_n : out std_logic;
    aSerial2Irq : out std_logic;
    aSerial3Irq : out std_logic;
    aSerial4Irq : out std_logic;
    aSerial5Irq : out std_logic;
    aSerial6Irq : out std_logic

  );

end CLIP;

architecture RTL of CLIP is

  signal sSerial2RegPortOut, sSerial3RegPortOut, sSerial4RegPortOut, sSerial5RegPortOut, sSerial6RegPortOut : RegPortOut_t;

  ---------------------------------------------------------------
  -- Eth2 Signals
  ---------------------------------------------------------------
  signal eEth1AtMegabit, eEth1AtGigabit, eEth1At10Megabit : std_logic;
  signal aDiffData, aDiffDataTristate, aDiffData_p, aDiffData_n : std_logic_vector(9 downto 0);
  signal EnetClk125TxFb,EnetClkRxFb : std_logic;
  signal Eth2GmiiTxClkDly : std_logic;
  signal Eth2GmiiRxClk, Eth2GmiiRxClk_bufg, Eth2GmiiRxClk_bufio : std_logic;
  signal Eth2GmiiRxd, Eth2GmiiRxdDly : std_logic_vector(7 downto 0);
  signal Eth2GmiiRxEr, Eth2GmiiRxErDly : std_logic;
  signal Eth2GmiiRxDv, Eth2GmiiRxDvDly : std_logic;
   -- Using dont_touch to prevent Vivado from inserting a BUFG after the PLL that
  -- used to delay TxClk. Vivado doesn't reliable insert the BUFG (based on
  -- resource usage) and can lead to timing violations. Another option is to
  -- explicitly instantiate a BUFG and compensate the PLL phase.
  attribute dont_touch : string;
  attribute dont_touch of Eth2GmiiTxClkDly : signal is "true";

  ---------------------------------------------------------------
  -- I/O Signals
  ---------------------------------------------------------------
  signal aDio_in : std_logic_vector(87 downto 0);
  signal aDio_out : std_logic_vector(87 downto 0);
  signal aDio_enable : std_logic_vector(87 downto 0);
  signal aDio_n_in : std_logic_vector(87 downto 16);
  signal aDio_n_out : std_logic_vector(87 downto 16);
  signal aDio_n_enable : std_logic_vector(87 downto 16);


  -- Negated signals of aDio_enable and aDio_n_enable for VSIM compliance  
  signal aDio_enable_n : std_logic_vector(87 downto 0);
  signal aDio_n_enable_n : std_logic_vector(87 downto 16);

  -- Forcing input buffers on PUDC configuration pin to prevent glitching
  signal aFpgaPudcInternal : std_logic;
  attribute dont_touch of aFpgaPudcInternal : signal is "true";

begin

  aFpgaPudcInternal <= aDio_in(35);

  aDio_enable_n <= not aDio_enable;
  aDio_n_enable_n <= not aDio_n_enable;

  sSerialRegPortOut <= AxiRegPortToSlv(sSerial2RegPortOut or sSerial3RegPortOut or sSerial4RegPortOut or sSerial5RegPortOut or sSerial6RegPortOut);

  ---------------------------------------------------------------
  --LabVIEW Port: DI_SYNC_1
  ---------------------------------------------------------------
  aDio_out(16) <= DI_SYNC_1_lv_out(0);
  aDio_enable(16) <= DI_SYNC_1_lv_enable(0);
  DI_SYNC_1_lv_in(0) <= aDio_in(16);


  ---------------------------------------------------------------
  --LabVIEW Port: DI_SYNC_2
  ---------------------------------------------------------------
  aDio_n_out(16) <= DI_SYNC_2_lv_out(0);
  aDio_n_enable(16) <= DI_SYNC_2_lv_enable(0);
  DI_SYNC_2_lv_in(0) <= aDio_n_in(16);


  ---------------------------------------------------------------
  --LabVIEW Port: DI_SYNC_3
  ---------------------------------------------------------------
  aDio_out(17) <= DI_SYNC_3_lv_out(0);
  aDio_enable(17) <= DI_SYNC_3_lv_enable(0);
  DI_SYNC_3_lv_in(0) <= aDio_in(17);


  ---------------------------------------------------------------
  --LabVIEW Port: DI_SYNC_4
  ---------------------------------------------------------------
  aDio_n_out(17) <= DI_SYNC_4_lv_out(0);
  aDio_n_enable(17) <= DI_SYNC_4_lv_enable(0);
  DI_SYNC_4_lv_in(0) <= aDio_n_in(17);


  ---------------------------------------------------------------
  --LabVIEW Port: DI_SYNC_5
  ---------------------------------------------------------------
  aDio_out(18) <= DI_SYNC_5_lv_out(0);
  aDio_enable(18) <= DI_SYNC_5_lv_enable(0);
  DI_SYNC_5_lv_in(0) <= aDio_in(18);


  ---------------------------------------------------------------
  --LabVIEW Port: DI_SYNC_6
  ---------------------------------------------------------------
  aDio_n_out(18) <= DI_SYNC_6_lv_out(0);
  aDio_n_enable(18) <= DI_SYNC_6_lv_enable(0);
  DI_SYNC_6_lv_in(0) <= aDio_n_in(18);


  ---------------------------------------------------------------
  --LabVIEW Port: DA
  ---------------------------------------------------------------
  aDio_out(19) <= DA_lv_out(0);
  aDio_enable(19) <= DA_lv_enable(0);
  DA_lv_in(0) <= aDio_in(19);


  ---------------------------------------------------------------
  --LabVIEW Port: DI_SYNC_7
  ---------------------------------------------------------------
  aDio_out(20) <= DI_SYNC_7_lv_out(0);
  aDio_enable(20) <= DI_SYNC_7_lv_enable(0);
  DI_SYNC_7_lv_in(0) <= aDio_in(20);


  ---------------------------------------------------------------
  --LabVIEW Port: DI_SYNC_8
  ---------------------------------------------------------------
  aDio_n_out(20) <= DI_SYNC_8_lv_out(0);
  aDio_n_enable(20) <= DI_SYNC_8_lv_enable(0);
  DI_SYNC_8_lv_in(0) <= aDio_n_in(20);


  ---------------------------------------------------------------
  --LabVIEW Port: DB
  ---------------------------------------------------------------
  aDio_out(25) <= DB_lv_out(0);
  aDio_enable(25) <= DB_lv_enable(0);
  DB_lv_in(0) <= aDio_in(25);


  ---------------------------------------------------------------
  --LabVIEW Port: DF
  ---------------------------------------------------------------
  aDio_out(27) <= DF_lv_out(0);
  aDio_enable(27) <= DF_lv_enable(0);
  DF_lv_in(0) <= aDio_in(27);


  ---------------------------------------------------------------
  --LabVIEW Port: DH
  ---------------------------------------------------------------
  aDio_out(28) <= DH_lv_out(0);
  aDio_enable(28) <= DH_lv_enable(0);
  DH_lv_in(0) <= aDio_in(28);


  ---------------------------------------------------------------
  --LabVIEW Port: DD
  ---------------------------------------------------------------
  aDio_out(29) <= DD_lv_out(0);
  aDio_enable(29) <= DD_lv_enable(0);
  DD_lv_in(0) <= aDio_in(29);


  ---------------------------------------------------------------
  --LabVIEW Port: DG
  ---------------------------------------------------------------
  aDio_out(31) <= DG_lv_out(0);
  aDio_enable(31) <= DG_lv_enable(0);
  DG_lv_in(0) <= aDio_in(31);


  ---------------------------------------------------------------
  --LabVIEW Port: DC
  ---------------------------------------------------------------
  aDio_out(32) <= DC_lv_out(0);
  aDio_enable(32) <= DC_lv_enable(0);
  DC_lv_in(0) <= aDio_in(32);


  ---------------------------------------------------------------
  --LabVIEW Port: DE
  ---------------------------------------------------------------
  aDio_out(33) <= DE_lv_out(0);
  aDio_enable(33) <= DE_lv_enable(0);
  DE_lv_in(0) <= aDio_in(33);


  ---------------------------------------------------------------
  --LabVIEW Port: FCO_ADC
  ---------------------------------------------------------------
  aDio_out(36) <= FCO_ADC_lv_out(0);
  aDio_enable(36) <= FCO_ADC_lv_enable(0);
  FCO_ADC_lv_in(0) <= aDio_in(36);


  ---------------------------------------------------------------
  --LabVIEW Port: CLK_10MHZ_FPGA_OUT
  ---------------------------------------------------------------
  aDio_out(38) <= CLK_10MHZ_FPGA_OUT_lv_out(0);
  aDio_enable(38) <= CLK_10MHZ_FPGA_OUT_lv_enable(0);
  CLK_10MHZ_FPGA_OUT_lv_in(0) <= aDio_in(38);


  ---------------------------------------------------------------
  --LabVIEW Port: DCO_ADC
  ---------------------------------------------------------------
  aDio_out(39) <= DCO_ADC_lv_out(0);
  aDio_enable(39) <= DCO_ADC_lv_enable(0);
  DCO_ADC_lv_in(0) <= aDio_in(39);


  ---------------------------------------------------------------
  --LabVIEW Port: SCO_ADC
  ---------------------------------------------------------------
  aDio_out(60) <= SCO_ADC_lv_out(0);
  aDio_enable(60) <= SCO_ADC_lv_enable(0);
  SCO_ADC_lv_in(0) <= aDio_in(60);


  ---------------------------------------------------------------
  --LabVIEW Clock Port: CLK_10MHZ_FPGA_IN
  ---------------------------------------------------------------
  CLK_10MHZ_FPGA_IN_lvc <= aDio_in(37);


  ---------------------------------------------------------------
  --LabVIEW Clock Port: DIO_85_MRCC
  ---------------------------------------------------------------
  aDio_out(85) <= DIO_85_MRCC_lvc;
  aDio_enable(85) <= '1';


  ---------------------------------------------------------------
  --LabVIEW Clock Port: DIO_86_MRCC
  ---------------------------------------------------------------
  aDio_out(86) <= DIO_86_MRCC_lvc;
  aDio_enable(86) <= '1';


  ---------------------------------------------------------------
  --Peripheral : CAN0
  ---------------------------------------------------------------
  CAN0_rx <= '0';



  ---------------------------------------------------------------
  --Peripheral : CAN1
  ---------------------------------------------------------------
  CAN1_rx <= '0';



  ---------------------------------------------------------------
  --Peripheral : Serial2
  ---------------------------------------------------------------
  sSerial2RegPortOut <= kRegPortOutZero;
  aSerial2Irq <= '0';




  ---------------------------------------------------------------
  --Peripheral : Serial3
  ---------------------------------------------------------------
  sSerial3RegPortOut <= kRegPortOutZero;
  aSerial3Irq <= '0';




  ---------------------------------------------------------------
  --Peripheral : Serial4
  ---------------------------------------------------------------
  sSerial4RegPortOut <= kRegPortOutZero;
  aSerial4Irq <= '0';




  ---------------------------------------------------------------
  --Peripheral : Serial5
  ---------------------------------------------------------------
  sSerial5RegPortOut <= kRegPortOutZero;
  aSerial5Irq <= '0';




  ---------------------------------------------------------------
  --Peripheral : Serial6
  ---------------------------------------------------------------
  sSerial6RegPortOut <= kRegPortOutZero;
  aSerial6Irq <= '0';




  ---------------------------------------------------------------
  --Peripheral : Serial1
  ---------------------------------------------------------------
  aSerial1Cts_n <= '0';
  aSerial1Dsr_n <= '0';
  aSerial1Ri_n <= '1';
  aSerial1Dcd_n <= '0';



  ---------------------------------------------------------------
  --Peripheral : Eth2
  ---------------------------------------------------------------
  GBE1_IRQ <= '1';
  -- End Eth 1



  ---------------------------------------------------------------
  --I/O Buffer: DIO_00
  ---------------------------------------------------------------
  IOBUF_0 : IOBUF
  port map (
    O  => aDio_in(0),
    IO => aDio(0),
    I  => aDio_out(0),
    T  => aDio_enable_n(0));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_01
  ---------------------------------------------------------------
  IOBUF_1 : IOBUF
  port map (
    O  => aDio_in(1),
    IO => aDio(1),
    I  => aDio_out(1),
    T  => aDio_enable_n(1));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_02
  ---------------------------------------------------------------
  IOBUF_2 : IOBUF
  port map (
    O  => aDio_in(2),
    IO => aDio(2),
    I  => aDio_out(2),
    T  => aDio_enable_n(2));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_03
  ---------------------------------------------------------------
  IOBUF_3 : IOBUF
  port map (
    O  => aDio_in(3),
    IO => aDio(3),
    I  => aDio_out(3),
    T  => aDio_enable_n(3));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_04
  ---------------------------------------------------------------
  IOBUF_4 : IOBUF
  port map (
    O  => aDio_in(4),
    IO => aDio(4),
    I  => aDio_out(4),
    T  => aDio_enable_n(4));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_05
  ---------------------------------------------------------------
  IOBUF_5 : IOBUF
  port map (
    O  => aDio_in(5),
    IO => aDio(5),
    I  => aDio_out(5),
    T  => aDio_enable_n(5));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_06
  ---------------------------------------------------------------
  IOBUF_6 : IOBUF
  port map (
    O  => aDio_in(6),
    IO => aDio(6),
    I  => aDio_out(6),
    T  => aDio_enable_n(6));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_07
  ---------------------------------------------------------------
  IOBUF_7 : IOBUF
  port map (
    O  => aDio_in(7),
    IO => aDio(7),
    I  => aDio_out(7),
    T  => aDio_enable_n(7));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_08
  ---------------------------------------------------------------
  IOBUF_8 : IOBUF
  port map (
    O  => aDio_in(8),
    IO => aDio(8),
    I  => aDio_out(8),
    T  => aDio_enable_n(8));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_09
  ---------------------------------------------------------------
  IOBUF_9 : IOBUF
  port map (
    O  => aDio_in(9),
    IO => aDio(9),
    I  => aDio_out(9),
    T  => aDio_enable_n(9));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_10
  ---------------------------------------------------------------
  IOBUF_10 : IOBUF
  port map (
    O  => aDio_in(10),
    IO => aDio(10),
    I  => aDio_out(10),
    T  => aDio_enable_n(10));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_11
  ---------------------------------------------------------------
  IOBUF_11 : IOBUF
  port map (
    O  => aDio_in(11),
    IO => aDio(11),
    I  => aDio_out(11),
    T  => aDio_enable_n(11));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_12
  ---------------------------------------------------------------
  IOBUF_12 : IOBUF
  port map (
    O  => aDio_in(12),
    IO => aDio(12),
    I  => aDio_out(12),
    T  => aDio_enable_n(12));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_13
  ---------------------------------------------------------------
  IOBUF_13 : IOBUF
  port map (
    O  => aDio_in(13),
    IO => aDio(13),
    I  => aDio_out(13),
    T  => aDio_enable_n(13));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_14
  ---------------------------------------------------------------
  IOBUF_14 : IOBUF
  port map (
    O  => aDio_in(14),
    IO => aDio(14),
    I  => aDio_out(14),
    T  => aDio_enable_n(14));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_15
  ---------------------------------------------------------------
  IOBUF_15 : IOBUF
  port map (
    O  => aDio_in(15),
    IO => aDio(15),
    I  => aDio_out(15),
    T  => aDio_enable_n(15));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_16
  ---------------------------------------------------------------
  IOBUF_16 : IOBUF
  port map (
    O  => aDio_in(16),
    IO => aDio(16),
    I  => aDio_out(16),
    T  => aDio_enable_n(16));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_16_N
  ---------------------------------------------------------------
  IOBUF_16_N : IOBUF
  port map (
    O  => aDio_n_in(16),
    IO => aDio_n(16),
    I  => aDio_n_out(16),
    T  => aDio_n_enable_n(16));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_17
  ---------------------------------------------------------------
  IOBUF_17 : IOBUF
  port map (
    O  => aDio_in(17),
    IO => aDio(17),
    I  => aDio_out(17),
    T  => aDio_enable_n(17));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_17_N
  ---------------------------------------------------------------
  IOBUF_17_N : IOBUF
  port map (
    O  => aDio_n_in(17),
    IO => aDio_n(17),
    I  => aDio_n_out(17),
    T  => aDio_n_enable_n(17));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_18
  ---------------------------------------------------------------
  IOBUF_18 : IOBUF
  port map (
    O  => aDio_in(18),
    IO => aDio(18),
    I  => aDio_out(18),
    T  => aDio_enable_n(18));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_18_N
  ---------------------------------------------------------------
  IOBUF_18_N : IOBUF
  port map (
    O  => aDio_n_in(18),
    IO => aDio_n(18),
    I  => aDio_n_out(18),
    T  => aDio_n_enable_n(18));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_19
  ---------------------------------------------------------------
  IOBUF_19 : IBUFDS
  port map (
    O   => aDio_in(19),
    I   => aDio(19),
    IB  => aDio_n(19));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_20
  ---------------------------------------------------------------
  IOBUF_20 : IOBUF
  port map (
    O  => aDio_in(20),
    IO => aDio(20),
    I  => aDio_out(20),
    T  => aDio_enable_n(20));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_20_N
  ---------------------------------------------------------------
  IOBUF_20_N : IOBUF
  port map (
    O  => aDio_n_in(20),
    IO => aDio_n(20),
    I  => aDio_n_out(20),
    T  => aDio_n_enable_n(20));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_21
  ---------------------------------------------------------------
  IOBUF_21 : IOBUF
  port map (
    O  => aDio_in(21),
    IO => aDio(21),
    I  => aDio_out(21),
    T  => aDio_enable_n(21));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_21_N
  ---------------------------------------------------------------
  IOBUF_21_N : IOBUF
  port map (
    O  => aDio_n_in(21),
    IO => aDio_n(21),
    I  => aDio_n_out(21),
    T  => aDio_n_enable_n(21));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_22
  ---------------------------------------------------------------
  IOBUF_22 : IOBUF
  port map (
    O  => aDio_in(22),
    IO => aDio(22),
    I  => aDio_out(22),
    T  => aDio_enable_n(22));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_22_N
  ---------------------------------------------------------------
  IOBUF_22_N : IOBUF
  port map (
    O  => aDio_n_in(22),
    IO => aDio_n(22),
    I  => aDio_n_out(22),
    T  => aDio_n_enable_n(22));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_23
  ---------------------------------------------------------------
  IOBUF_23 : IOBUF
  port map (
    O  => aDio_in(23),
    IO => aDio(23),
    I  => aDio_out(23),
    T  => aDio_enable_n(23));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_23_N
  ---------------------------------------------------------------
  IOBUF_23_N : IOBUF
  port map (
    O  => aDio_n_in(23),
    IO => aDio_n(23),
    I  => aDio_n_out(23),
    T  => aDio_n_enable_n(23));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_24
  ---------------------------------------------------------------
  IOBUF_24 : IOBUF
  port map (
    O  => aDio_in(24),
    IO => aDio(24),
    I  => aDio_out(24),
    T  => aDio_enable_n(24));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_24_N
  ---------------------------------------------------------------
  IOBUF_24_N : IOBUF
  port map (
    O  => aDio_n_in(24),
    IO => aDio_n(24),
    I  => aDio_n_out(24),
    T  => aDio_n_enable_n(24));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_25
  ---------------------------------------------------------------
  IOBUF_25 : IBUFDS
  port map (
    O   => aDio_in(25),
    I   => aDio(25),
    IB  => aDio_n(25));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_26
  ---------------------------------------------------------------
  IOBUF_26 : IOBUF
  port map (
    O  => aDio_in(26),
    IO => aDio(26),
    I  => aDio_out(26),
    T  => aDio_enable_n(26));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_26_N
  ---------------------------------------------------------------
  IOBUF_26_N : IOBUF
  port map (
    O  => aDio_n_in(26),
    IO => aDio_n(26),
    I  => aDio_n_out(26),
    T  => aDio_n_enable_n(26));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_27
  ---------------------------------------------------------------
  IOBUF_27 : IBUFDS
  port map (
    O   => aDio_in(27),
    I   => aDio(27),
    IB  => aDio_n(27));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_28
  ---------------------------------------------------------------
  IOBUF_28 : IBUFDS
  port map (
    O   => aDio_in(28),
    I   => aDio(28),
    IB  => aDio_n(28));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_29
  ---------------------------------------------------------------
  IOBUF_29 : IBUFDS
  port map (
    O   => aDio_in(29),
    I   => aDio(29),
    IB  => aDio_n(29));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_30
  ---------------------------------------------------------------
  IOBUF_30 : IOBUF
  port map (
    O  => aDio_in(30),
    IO => aDio(30),
    I  => aDio_out(30),
    T  => aDio_enable_n(30));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_30_N
  ---------------------------------------------------------------
  IOBUF_30_N : IOBUF
  port map (
    O  => aDio_n_in(30),
    IO => aDio_n(30),
    I  => aDio_n_out(30),
    T  => aDio_n_enable_n(30));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_31
  ---------------------------------------------------------------
  IOBUF_31 : IBUFDS
  port map (
    O   => aDio_in(31),
    I   => aDio(31),
    IB  => aDio_n(31));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_32
  ---------------------------------------------------------------
  IOBUF_32 : IBUFDS
  port map (
    O   => aDio_in(32),
    I   => aDio(32),
    IB  => aDio_n(32));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_33
  ---------------------------------------------------------------
  IOBUF_33 : IBUFDS
  port map (
    O   => aDio_in(33),
    I   => aDio(33),
    IB  => aDio_n(33));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_34
  ---------------------------------------------------------------
  IOBUF_34 : IOBUF
  port map (
    O  => aDio_in(34),
    IO => aDio(34),
    I  => aDio_out(34),
    T  => aDio_enable_n(34));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_34_N
  ---------------------------------------------------------------
  IOBUF_34_N : IOBUF
  port map (
    O  => aDio_n_in(34),
    IO => aDio_n(34),
    I  => aDio_n_out(34),
    T  => aDio_n_enable_n(34));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_35
  ---------------------------------------------------------------
  -- Using a Bidirectional buffer for PUDC pin because it prevents a glitch.
    IOBUF_35 : IOBUF
  port map (
    O  => aDio_in(35),
    IO => aDio(35),
    I  => aDio_out(35),
    T  => aDio_enable_n(35));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_35_N
  ---------------------------------------------------------------
  IOBUF_35_N : IOBUF
  port map (
    O  => aDio_n_in(35),
    IO => aDio_n(35),
    I  => aDio_n_out(35),
    T  => aDio_n_enable_n(35));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_36
  ---------------------------------------------------------------
  IOBUF_36 : IBUFDS
  port map (
    O   => aDio_in(36),
    I   => aDio(36),
    IB  => aDio_n(36));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_37
  ---------------------------------------------------------------
  IOBUF_37 : IBUFGDS
  port map (
    O  => aDio_in(37),
    I   => aDio(37),
    IB  => aDio_n(37));

    ---------------------------------------------------------------
  --I/O Buffer: DIO_38
  ---------------------------------------------------------------
  IOBUF_38 : OBUFTDS
  port map (
    O   => aDio(38),
    OB  => aDio_n(38),
    I   => aDio_out(38),
    T   => aDio_enable_n(38));

  aDio_in(38) <= aDio_out(38);

  ---------------------------------------------------------------
  --I/O Buffer: DIO_39
  ---------------------------------------------------------------
  IOBUF_39 : IBUFDS
  port map (
    O   => aDio_in(39),
    I   => aDio(39),
    IB  => aDio_n(39));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_40
  ---------------------------------------------------------------
  IOBUF_40 : IOBUF
  port map (
    O  => aDio_in(40),
    IO => aDio(40),
    I  => aDio_out(40),
    T  => aDio_enable_n(40));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_40_N
  ---------------------------------------------------------------
  IOBUF_40_N : IOBUF
  port map (
    O  => aDio_n_in(40),
    IO => aDio_n(40),
    I  => aDio_n_out(40),
    T  => aDio_n_enable_n(40));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_41
  ---------------------------------------------------------------
  IOBUF_41 : IOBUF
  port map (
    O  => aDio_in(41),
    IO => aDio(41),
    I  => aDio_out(41),
    T  => aDio_enable_n(41));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_41_N
  ---------------------------------------------------------------
  IOBUF_41_N : IOBUF
  port map (
    O  => aDio_n_in(41),
    IO => aDio_n(41),
    I  => aDio_n_out(41),
    T  => aDio_n_enable_n(41));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_42
  ---------------------------------------------------------------
  IOBUF_42 : IOBUF
  port map (
    O  => aDio_in(42),
    IO => aDio(42),
    I  => aDio_out(42),
    T  => aDio_enable_n(42));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_42_N
  ---------------------------------------------------------------
  IOBUF_42_N : IOBUF
  port map (
    O  => aDio_n_in(42),
    IO => aDio_n(42),
    I  => aDio_n_out(42),
    T  => aDio_n_enable_n(42));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_43
  ---------------------------------------------------------------
  IOBUF_43 : IOBUF
  port map (
    O  => aDio_in(43),
    IO => aDio(43),
    I  => aDio_out(43),
    T  => aDio_enable_n(43));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_43_N
  ---------------------------------------------------------------
  IOBUF_43_N : IOBUF
  port map (
    O  => aDio_n_in(43),
    IO => aDio_n(43),
    I  => aDio_n_out(43),
    T  => aDio_n_enable_n(43));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_44
  ---------------------------------------------------------------
  IOBUF_44 : IOBUF
  port map (
    O  => aDio_in(44),
    IO => aDio(44),
    I  => aDio_out(44),
    T  => aDio_enable_n(44));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_44_N
  ---------------------------------------------------------------
  IOBUF_44_N : IOBUF
  port map (
    O  => aDio_n_in(44),
    IO => aDio_n(44),
    I  => aDio_n_out(44),
    T  => aDio_n_enable_n(44));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_45
  ---------------------------------------------------------------
  IOBUF_45 : IOBUF
  port map (
    O  => aDio_in(45),
    IO => aDio(45),
    I  => aDio_out(45),
    T  => aDio_enable_n(45));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_45_N
  ---------------------------------------------------------------
  IOBUF_45_N : IOBUF
  port map (
    O  => aDio_n_in(45),
    IO => aDio_n(45),
    I  => aDio_n_out(45),
    T  => aDio_n_enable_n(45));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_46
  ---------------------------------------------------------------
  IOBUF_46 : IOBUF
  port map (
    O  => aDio_in(46),
    IO => aDio(46),
    I  => aDio_out(46),
    T  => aDio_enable_n(46));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_46_N
  ---------------------------------------------------------------
  IOBUF_46_N : IOBUF
  port map (
    O  => aDio_n_in(46),
    IO => aDio_n(46),
    I  => aDio_n_out(46),
    T  => aDio_n_enable_n(46));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_47
  ---------------------------------------------------------------
  IOBUF_47 : IOBUF
  port map (
    O  => aDio_in(47),
    IO => aDio(47),
    I  => aDio_out(47),
    T  => aDio_enable_n(47));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_47_N
  ---------------------------------------------------------------
  IOBUF_47_N : IOBUF
  port map (
    O  => aDio_n_in(47),
    IO => aDio_n(47),
    I  => aDio_n_out(47),
    T  => aDio_n_enable_n(47));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_48
  ---------------------------------------------------------------
  IOBUF_48 : IOBUF
  port map (
    O  => aDio_in(48),
    IO => aDio(48),
    I  => aDio_out(48),
    T  => aDio_enable_n(48));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_48_N
  ---------------------------------------------------------------
  IOBUF_48_N : IOBUF
  port map (
    O  => aDio_n_in(48),
    IO => aDio_n(48),
    I  => aDio_n_out(48),
    T  => aDio_n_enable_n(48));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_49
  ---------------------------------------------------------------
  IOBUF_49 : IOBUF
  port map (
    O  => aDio_in(49),
    IO => aDio(49),
    I  => aDio_out(49),
    T  => aDio_enable_n(49));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_49_N
  ---------------------------------------------------------------
  IOBUF_49_N : IOBUF
  port map (
    O  => aDio_n_in(49),
    IO => aDio_n(49),
    I  => aDio_n_out(49),
    T  => aDio_n_enable_n(49));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_50
  ---------------------------------------------------------------
  IOBUF_50 : IOBUF
  port map (
    O  => aDio_in(50),
    IO => aDio(50),
    I  => aDio_out(50),
    T  => aDio_enable_n(50));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_50_N
  ---------------------------------------------------------------
  IOBUF_50_N : IOBUF
  port map (
    O  => aDio_n_in(50),
    IO => aDio_n(50),
    I  => aDio_n_out(50),
    T  => aDio_n_enable_n(50));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_51
  ---------------------------------------------------------------
  IOBUF_51 : IOBUF
  port map (
    O  => aDio_in(51),
    IO => aDio(51),
    I  => aDio_out(51),
    T  => aDio_enable_n(51));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_51_N
  ---------------------------------------------------------------
  IOBUF_51_N : IOBUF
  port map (
    O  => aDio_n_in(51),
    IO => aDio_n(51),
    I  => aDio_n_out(51),
    T  => aDio_n_enable_n(51));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_52
  ---------------------------------------------------------------
  IOBUF_52 : IOBUF
  port map (
    O  => aDio_in(52),
    IO => aDio(52),
    I  => aDio_out(52),
    T  => aDio_enable_n(52));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_52_N
  ---------------------------------------------------------------
  IOBUF_52_N : IOBUF
  port map (
    O  => aDio_n_in(52),
    IO => aDio_n(52),
    I  => aDio_n_out(52),
    T  => aDio_n_enable_n(52));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_53
  ---------------------------------------------------------------
  IOBUF_53 : IOBUF
  port map (
    O  => aDio_in(53),
    IO => aDio(53),
    I  => aDio_out(53),
    T  => aDio_enable_n(53));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_53_N
  ---------------------------------------------------------------
  IOBUF_53_N : IOBUF
  port map (
    O  => aDio_n_in(53),
    IO => aDio_n(53),
    I  => aDio_n_out(53),
    T  => aDio_n_enable_n(53));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_54
  ---------------------------------------------------------------
  IOBUF_54 : IOBUF
  port map (
    O  => aDio_in(54),
    IO => aDio(54),
    I  => aDio_out(54),
    T  => aDio_enable_n(54));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_54_N
  ---------------------------------------------------------------
  IOBUF_54_N : IOBUF
  port map (
    O  => aDio_n_in(54),
    IO => aDio_n(54),
    I  => aDio_n_out(54),
    T  => aDio_n_enable_n(54));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_55
  ---------------------------------------------------------------
  IOBUF_55 : IOBUF
  port map (
    O  => aDio_in(55),
    IO => aDio(55),
    I  => aDio_out(55),
    T  => aDio_enable_n(55));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_55_N
  ---------------------------------------------------------------
  IOBUF_55_N : IOBUF
  port map (
    O  => aDio_n_in(55),
    IO => aDio_n(55),
    I  => aDio_n_out(55),
    T  => aDio_n_enable_n(55));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_56
  ---------------------------------------------------------------
  IOBUF_56 : IOBUF
  port map (
    O  => aDio_in(56),
    IO => aDio(56),
    I  => aDio_out(56),
    T  => aDio_enable_n(56));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_56_N
  ---------------------------------------------------------------
  IOBUF_56_N : IOBUF
  port map (
    O  => aDio_n_in(56),
    IO => aDio_n(56),
    I  => aDio_n_out(56),
    T  => aDio_n_enable_n(56));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_57
  ---------------------------------------------------------------
  IOBUF_57 : IOBUF
  port map (
    O  => aDio_in(57),
    IO => aDio(57),
    I  => aDio_out(57),
    T  => aDio_enable_n(57));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_57_N
  ---------------------------------------------------------------
  IOBUF_57_N : IOBUF
  port map (
    O  => aDio_n_in(57),
    IO => aDio_n(57),
    I  => aDio_n_out(57),
    T  => aDio_n_enable_n(57));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_58
  ---------------------------------------------------------------
  IOBUF_58 : IOBUF
  port map (
    O  => aDio_in(58),
    IO => aDio(58),
    I  => aDio_out(58),
    T  => aDio_enable_n(58));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_58_N
  ---------------------------------------------------------------
  IOBUF_58_N : IOBUF
  port map (
    O  => aDio_n_in(58),
    IO => aDio_n(58),
    I  => aDio_n_out(58),
    T  => aDio_n_enable_n(58));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_59
  ---------------------------------------------------------------
  IOBUF_59 : IOBUF
  port map (
    O  => aDio_in(59),
    IO => aDio(59),
    I  => aDio_out(59),
    T  => aDio_enable_n(59));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_59_N
  ---------------------------------------------------------------
  IOBUF_59_N : IOBUF
  port map (
    O  => aDio_n_in(59),
    IO => aDio_n(59),
    I  => aDio_n_out(59),
    T  => aDio_n_enable_n(59));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_60
  ---------------------------------------------------------------
  IOBUF_60 : OBUFTDS
  port map (
    O   => aDio(60),
    OB  => aDio_n(60),
    I   => aDio_out(60),
    T   => aDio_enable_n(60));

  aDio_in(60) <= aDio_out(60);

  ---------------------------------------------------------------
  --I/O Buffer: DIO_61
  ---------------------------------------------------------------
  IOBUF_61 : IOBUF
  port map (
    O  => aDio_in(61),
    IO => aDio(61),
    I  => aDio_out(61),
    T  => aDio_enable_n(61));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_61_N
  ---------------------------------------------------------------
  IOBUF_61_N : IOBUF
  port map (
    O  => aDio_n_in(61),
    IO => aDio_n(61),
    I  => aDio_n_out(61),
    T  => aDio_n_enable_n(61));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_62
  ---------------------------------------------------------------
  IOBUF_62 : IOBUF
  port map (
    O  => aDio_in(62),
    IO => aDio(62),
    I  => aDio_out(62),
    T  => aDio_enable_n(62));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_62_N
  ---------------------------------------------------------------
  IOBUF_62_N : IOBUF
  port map (
    O  => aDio_n_in(62),
    IO => aDio_n(62),
    I  => aDio_n_out(62),
    T  => aDio_n_enable_n(62));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_63
  ---------------------------------------------------------------
  IOBUF_63 : IOBUF
  port map (
    O  => aDio_in(63),
    IO => aDio(63),
    I  => aDio_out(63),
    T  => aDio_enable_n(63));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_63_N
  ---------------------------------------------------------------
  IOBUF_63_N : IOBUF
  port map (
    O  => aDio_n_in(63),
    IO => aDio_n(63),
    I  => aDio_n_out(63),
    T  => aDio_n_enable_n(63));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_64
  ---------------------------------------------------------------
  IOBUF_64 : IOBUF
  port map (
    O  => aDio_in(64),
    IO => aDio(64),
    I  => aDio_out(64),
    T  => aDio_enable_n(64));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_64_N
  ---------------------------------------------------------------
  IOBUF_64_N : IOBUF
  port map (
    O  => aDio_n_in(64),
    IO => aDio_n(64),
    I  => aDio_n_out(64),
    T  => aDio_n_enable_n(64));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_65
  ---------------------------------------------------------------
  IOBUF_65 : IOBUF
  port map (
    O  => aDio_in(65),
    IO => aDio(65),
    I  => aDio_out(65),
    T  => aDio_enable_n(65));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_65_N
  ---------------------------------------------------------------
  IOBUF_65_N : IOBUF
  port map (
    O  => aDio_n_in(65),
    IO => aDio_n(65),
    I  => aDio_n_out(65),
    T  => aDio_n_enable_n(65));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_66
  ---------------------------------------------------------------
  IOBUF_66 : IOBUF
  port map (
    O  => aDio_in(66),
    IO => aDio(66),
    I  => aDio_out(66),
    T  => aDio_enable_n(66));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_66_N
  ---------------------------------------------------------------
  IOBUF_66_N : IOBUF
  port map (
    O  => aDio_n_in(66),
    IO => aDio_n(66),
    I  => aDio_n_out(66),
    T  => aDio_n_enable_n(66));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_67
  ---------------------------------------------------------------
  IOBUF_67 : IOBUF
  port map (
    O  => aDio_in(67),
    IO => aDio(67),
    I  => aDio_out(67),
    T  => aDio_enable_n(67));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_67_N
  ---------------------------------------------------------------
  IOBUF_67_N : IOBUF
  port map (
    O  => aDio_n_in(67),
    IO => aDio_n(67),
    I  => aDio_n_out(67),
    T  => aDio_n_enable_n(67));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_68
  ---------------------------------------------------------------
  IOBUF_68 : IOBUF
  port map (
    O  => aDio_in(68),
    IO => aDio(68),
    I  => aDio_out(68),
    T  => aDio_enable_n(68));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_68_N
  ---------------------------------------------------------------
  IOBUF_68_N : IOBUF
  port map (
    O  => aDio_n_in(68),
    IO => aDio_n(68),
    I  => aDio_n_out(68),
    T  => aDio_n_enable_n(68));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_69
  ---------------------------------------------------------------
  IOBUF_69 : IOBUF
  port map (
    O  => aDio_in(69),
    IO => aDio(69),
    I  => aDio_out(69),
    T  => aDio_enable_n(69));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_69_N
  ---------------------------------------------------------------
  IOBUF_69_N : IOBUF
  port map (
    O  => aDio_n_in(69),
    IO => aDio_n(69),
    I  => aDio_n_out(69),
    T  => aDio_n_enable_n(69));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_70
  ---------------------------------------------------------------
  IOBUF_70 : IOBUF
  port map (
    O  => aDio_in(70),
    IO => aDio(70),
    I  => aDio_out(70),
    T  => aDio_enable_n(70));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_70_N
  ---------------------------------------------------------------
  IOBUF_70_N : IOBUF
  port map (
    O  => aDio_n_in(70),
    IO => aDio_n(70),
    I  => aDio_n_out(70),
    T  => aDio_n_enable_n(70));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_71
  ---------------------------------------------------------------
  IOBUF_71 : IOBUF
  port map (
    O  => aDio_in(71),
    IO => aDio(71),
    I  => aDio_out(71),
    T  => aDio_enable_n(71));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_71_N
  ---------------------------------------------------------------
  IOBUF_71_N : IOBUF
  port map (
    O  => aDio_n_in(71),
    IO => aDio_n(71),
    I  => aDio_n_out(71),
    T  => aDio_n_enable_n(71));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_72
  ---------------------------------------------------------------
  IOBUF_72 : IOBUF
  port map (
    O  => aDio_in(72),
    IO => aDio(72),
    I  => aDio_out(72),
    T  => aDio_enable_n(72));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_72_N
  ---------------------------------------------------------------
  IOBUF_72_N : IOBUF
  port map (
    O  => aDio_n_in(72),
    IO => aDio_n(72),
    I  => aDio_n_out(72),
    T  => aDio_n_enable_n(72));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_73
  ---------------------------------------------------------------
  IOBUF_73 : IOBUF
  port map (
    O  => aDio_in(73),
    IO => aDio(73),
    I  => aDio_out(73),
    T  => aDio_enable_n(73));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_73_N
  ---------------------------------------------------------------
  IOBUF_73_N : IOBUF
  port map (
    O  => aDio_n_in(73),
    IO => aDio_n(73),
    I  => aDio_n_out(73),
    T  => aDio_n_enable_n(73));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_74
  ---------------------------------------------------------------
  IOBUF_74 : IOBUF
  port map (
    O  => aDio_in(74),
    IO => aDio(74),
    I  => aDio_out(74),
    T  => aDio_enable_n(74));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_74_N
  ---------------------------------------------------------------
  IOBUF_74_N : IOBUF
  port map (
    O  => aDio_n_in(74),
    IO => aDio_n(74),
    I  => aDio_n_out(74),
    T  => aDio_n_enable_n(74));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_75
  ---------------------------------------------------------------
  IOBUF_75 : IOBUF
  port map (
    O  => aDio_in(75),
    IO => aDio(75),
    I  => aDio_out(75),
    T  => aDio_enable_n(75));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_75_N
  ---------------------------------------------------------------
  IOBUF_75_N : IOBUF
  port map (
    O  => aDio_n_in(75),
    IO => aDio_n(75),
    I  => aDio_n_out(75),
    T  => aDio_n_enable_n(75));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_76
  ---------------------------------------------------------------
  IOBUF_76 : IOBUF
  port map (
    O  => aDio_in(76),
    IO => aDio(76),
    I  => aDio_out(76),
    T  => aDio_enable_n(76));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_76_N
  ---------------------------------------------------------------
  IOBUF_76_N : IOBUF
  port map (
    O  => aDio_n_in(76),
    IO => aDio_n(76),
    I  => aDio_n_out(76),
    T  => aDio_n_enable_n(76));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_77
  ---------------------------------------------------------------
  IOBUF_77 : IOBUF
  port map (
    O  => aDio_in(77),
    IO => aDio(77),
    I  => aDio_out(77),
    T  => aDio_enable_n(77));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_77_N
  ---------------------------------------------------------------
  IOBUF_77_N : IOBUF
  port map (
    O  => aDio_n_in(77),
    IO => aDio_n(77),
    I  => aDio_n_out(77),
    T  => aDio_n_enable_n(77));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_78
  ---------------------------------------------------------------
  IOBUF_78 : IOBUF
  port map (
    O  => aDio_in(78),
    IO => aDio(78),
    I  => aDio_out(78),
    T  => aDio_enable_n(78));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_78_N
  ---------------------------------------------------------------
  IOBUF_78_N : IOBUF
  port map (
    O  => aDio_n_in(78),
    IO => aDio_n(78),
    I  => aDio_n_out(78),
    T  => aDio_n_enable_n(78));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_79
  ---------------------------------------------------------------
  IOBUF_79 : IOBUF
  port map (
    O  => aDio_in(79),
    IO => aDio(79),
    I  => aDio_out(79),
    T  => aDio_enable_n(79));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_79_N
  ---------------------------------------------------------------
  IOBUF_79_N : IOBUF
  port map (
    O  => aDio_n_in(79),
    IO => aDio_n(79),
    I  => aDio_n_out(79),
    T  => aDio_n_enable_n(79));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_80
  ---------------------------------------------------------------
  IOBUF_80 : IOBUF
  port map (
    O  => aDio_in(80),
    IO => aDio(80),
    I  => aDio_out(80),
    T  => aDio_enable_n(80));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_80_N
  ---------------------------------------------------------------
  IOBUF_80_N : IOBUF
  port map (
    O  => aDio_n_in(80),
    IO => aDio_n(80),
    I  => aDio_n_out(80),
    T  => aDio_n_enable_n(80));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_81
  ---------------------------------------------------------------
  IOBUF_81 : IOBUF
  port map (
    O  => aDio_in(81),
    IO => aDio(81),
    I  => aDio_out(81),
    T  => aDio_enable_n(81));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_81_N
  ---------------------------------------------------------------
  IOBUF_81_N : IOBUF
  port map (
    O  => aDio_n_in(81),
    IO => aDio_n(81),
    I  => aDio_n_out(81),
    T  => aDio_n_enable_n(81));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_82
  ---------------------------------------------------------------
  IOBUF_82 : IOBUF
  port map (
    O  => aDio_in(82),
    IO => aDio(82),
    I  => aDio_out(82),
    T  => aDio_enable_n(82));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_82_N
  ---------------------------------------------------------------
  IOBUF_82_N : IOBUF
  port map (
    O  => aDio_n_in(82),
    IO => aDio_n(82),
    I  => aDio_n_out(82),
    T  => aDio_n_enable_n(82));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_83
  ---------------------------------------------------------------
  IOBUF_83 : IOBUF
  port map (
    O  => aDio_in(83),
    IO => aDio(83),
    I  => aDio_out(83),
    T  => aDio_enable_n(83));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_83_N
  ---------------------------------------------------------------
  IOBUF_83_N : IOBUF
  port map (
    O  => aDio_n_in(83),
    IO => aDio_n(83),
    I  => aDio_n_out(83),
    T  => aDio_n_enable_n(83));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_84
  ---------------------------------------------------------------
  IOBUF_84 : IOBUF
  port map (
    O  => aDio_in(84),
    IO => aDio(84),
    I  => aDio_out(84),
    T  => aDio_enable_n(84));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_84_N
  ---------------------------------------------------------------
  IOBUF_84_N : IOBUF
  port map (
    O  => aDio_n_in(84),
    IO => aDio_n(84),
    I  => aDio_n_out(84),
    T  => aDio_n_enable_n(84));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_85
  ---------------------------------------------------------------
  IOBUF_85 : OBUFTDS
  port map (
    O   => aDio(85),
    OB  => aDio_n(85),
    I   => aDio_out(85),
    T   => aDio_enable_n(85));

  aDio_in(85) <= aDio_out(85);

  ---------------------------------------------------------------
  --I/O Buffer: DIO_86
  ---------------------------------------------------------------
  IOBUF_86 : OBUFTDS
  port map (
    O   => aDio(86),
    OB  => aDio_n(86),
    I   => aDio_out(86),
    T   => aDio_enable_n(86));

  aDio_in(86) <= aDio_out(86);

  ---------------------------------------------------------------
  --I/O Buffer: DIO_87
  ---------------------------------------------------------------
  IOBUF_87 : IOBUF
  port map (
    O  => aDio_in(87),
    IO => aDio(87),
    I  => aDio_out(87),
    T  => aDio_enable_n(87));

  ---------------------------------------------------------------
  --I/O Buffer: DIO_87_N
  ---------------------------------------------------------------
  IOBUF_87_N : IOBUF
  port map (
    O  => aDio_n_in(87),
    IO => aDio_n(87),
    I  => aDio_n_out(87),
    T  => aDio_n_enable_n(87));




end RTL;
