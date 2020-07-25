# ns2-src_audio_comm_16
Data Program Tugas Akhir. NS2

## information
ns-allinone-2.35: core/root simulator ns2. 
src: program simulasi

### src info

folder:

    +---awk
    |   +---delay
    |   \---packetloss
    +---BTraffic
    |   +---25
    |   +---35
    |   +---45
    |   +---55
    |   +---65
    |   \---75
    +---osmfiles
    |   +---mobility
    |   |   +---25
    |   |   +---35
    |   |   +---45
    |   |   +---55
    |   |   +---65
    |   |   \---75
    |   +---netfiles
    |   +---ns2config
    |   +---polyfiles
    |   +---roufiles
    |   +---sumocfg
    |   \---sumoxml
    +---outputs
    +---R
    \---temp

    1. awk: folder hasil perhitungan delay dan packet loss disini. script awk perhitungan packet loss dan delay untuk masing-masing codec juga disini.
    2. BTtraffic: background traffic (optional).
    3. osmfiles: files mobilitas node, network files, ns2config dari SUMO, route files, sumocfg disini.
    4. outputs: (optional)
    5. R: folder hasil perhitungan R factor dan hasil konversinya ke MOS. hasil dalam bentuk csv/

files:
penting:

    |   generate_mobility
    |   generate_mobility_rep
    |   generate_only_mobility
    |   ln.py
    |   lnbak.py
    |   main.tcl
    |   main_rep.tcl
    |   mos_calculate
    |   script-n
    |   script_n_rep
    |   start
    |   start_rep
    |   time
    |   trace_AOMDV_log_gsm_amr
    |   trace_AOMDV_log_g_711
    |   trace_AOMDV_log_g_723_1
    |   trace_PA_AOMDV_log_gsm_amr
    |   trace_PA_AOMDV_log_g_711
    |   trace_PA_AOMDV_log_g_723_1
    |   vnode.tcl
    |   vnode_n.tcl
    |   voip.tcl
    |   voip_rep.tcl
    |   
    +---awk
    |   |   .txt
    |   |   calculate
    |   |   e2e.awk
    |   |   g711_delay
    |   |   g711_packetloss
    |   |   g723_1_delay
    |   |   g723_1_packetloss
    |   |   gsmamr_delay
    |   |   gsmamr_packetloss
    |   |   packetloss.awk
    |   |   
    |   +---delay
    |   |       AOMDV_g711_delay_25.txt
    |   |       AOMDV_g711_delay_35.txt
    |   |       AOMDV_g711_delay_45.txt
    |   |       AOMDV_g711_delay_55.txt
    |   |       AOMDV_g711_delay_65.txt
    |   |       AOMDV_g711_delay_75.txt
    |   |       AOMDV_g723_1_delay_25.txt
    |   |       AOMDV_g723_1_delay_35.txt
    |   |       AOMDV_g723_1_delay_45.txt
    |   |       AOMDV_g723_1_delay_55.txt
    |   |       AOMDV_g723_1_delay_65.txt
    |   |       AOMDV_g723_1_delay_75.txt
    |   |       PA_AOMDV_g711_delay_25.txt
    |   |       PA_AOMDV_g711_delay_35.txt
    |   |       PA_AOMDV_g711_delay_45.txt
    |   |       PA_AOMDV_g711_delay_55.txt
    |   |       PA_AOMDV_g711_delay_65.txt
    |   |       PA_AOMDV_g711_delay_75.txt
    |   |       PA_AOMDV_g723_1_delay_25.txt
    |   |       PA_AOMDV_g723_1_delay_35.txt
    |   |       PA_AOMDV_g723_1_delay_45.txt
    |   |       PA_AOMDV_g723_1_delay_55.txt
    |   |       PA_AOMDV_g723_1_delay_65.txt
    |   |       PA_AOMDV_g723_1_delay_75.txt
    |   |       
    |   \---packetloss
    |           AOMDV_g711_pktloss_25.txt
    |           AOMDV_g711_pktloss_35.txt
    |           AOMDV_g711_pktloss_45.txt
    |           AOMDV_g711_pktloss_55.txt
    |           AOMDV_g711_pktloss_65.txt
    |           AOMDV_g711_pktloss_75.txt
    |           AOMDV_g723_1_pktloss_25.txt
    |           AOMDV_g723_1_pktloss_35.txt
    |           AOMDV_g723_1_pktloss_45.txt
    |           AOMDV_g723_1_pktloss_55.txt
    |           AOMDV_g723_1_pktloss_65.txt
    |           AOMDV_g723_1_pktloss_75.txt
    |           PA_AOMDV_g711_pktloss_25.txt
    |           PA_AOMDV_g711_pktloss_35.txt
    |           PA_AOMDV_g711_pktloss_45.txt
    |           PA_AOMDV_g711_pktloss_55.txt
    |           PA_AOMDV_g711_pktloss_65.txt
    |           PA_AOMDV_g711_pktloss_75.txt
    |           PA_AOMDV_g723_1_pktloss_25.txt
    |           PA_AOMDV_g723_1_pktloss_35.txt
    |           PA_AOMDV_g723_1_pktloss_45.txt
    |           PA_AOMDV_g723_1_pktloss_55.txt
    |           PA_AOMDV_g723_1_pktloss_65.txt
    |           PA_AOMDV_g723_1_pktloss_75.txt
    |           
    +---BTraffic           
    +---osmfiles   
    |   +---mobility
    |   |   |   mobility_25.tcl
    |   |   |   mobility_35.tcl
    |   |   |   mobility_45.tcl
    |   |   |   mobility_50.tcl
    |   |   |   mobility_55.tcl
    |   |   |   mobility_65.tcl
    |   |   |   mobility_70.tcl
    |   |   |   mobility_75.tcl
    |   |   |   mobility_80.tcl
    |   +---netfiles
    |   |       sebudi_edit.net.xml
    |   |       type.add.xml
    |   |       
    |   +---ns2config
    |   |       config_25.tcl
    |   |       config_35.tcl
    |   |       config_45.tcl
    |   |       config_55.tcl
    |   |       config_65.tcl
    |   |       config_75.tcl
    |   |       
    |   +---polyfiles
    |   |       25.poly.xml
    |   |       35.poly.xml
    |   |       45.poly.xml
    |   |       55.poly.xml
    |   |       65.poly.xml
    |   |       75.poly.xml
    |   |       
    |   +---roufiles
    |   |       25.rou.alt.xml
    |   |       25.rou.xml
    |   |       35.rou.alt.xml
    |   |       35.rou.xml
    |   |       45.rou.alt.xml
    |   |       45.rou.xml
    |   |       55.rou.alt.xml
    |   |       55.rou.xml
    |   |       65.rou.alt.xml
    |   |       65.rou.xml
    |   |       75.rou.alt.xml
    |   |       75.rou.xml
    |   |       
    |   +---sumocfg
    |   |       25.sumo.cfg
    |   |       35.sumo.cfg
    |   |       45.sumo.cfg
    |   |       55.sumo.cfg
    |   |       65.sumo.cfg
    |   |       75.sumo.cfg
    |   |       
    |   \---sumoxml
    |           25.sumo.xml
    |           35.sumo.xml
    |           45.sumo.xml
    |           55.sumo.xml
    |           65.sumo.xml
    |           75.sumo.xml
    +---outputs
    |       
    +---R
    |       AOMDV_Rfactor_g711_25.csv
    |       AOMDV_Rfactor_g711_35.csv
    |       AOMDV_Rfactor_g711_45.csv
    |       AOMDV_Rfactor_g711_55.csv
    |       AOMDV_Rfactor_g711_65.csv
    |       AOMDV_Rfactor_g711_75.csv
    |       AOMDV_Rfactor_g723_1_25.csv
    |       AOMDV_Rfactor_g723_1_35.csv
    |       AOMDV_Rfactor_g723_1_45.csv
    |       AOMDV_Rfactor_g723_1_55.csv
    |       AOMDV_Rfactor_g723_1_65.csv
    |       AOMDV_Rfactor_g723_1_75.csv
    |       PA_AOMDV_Rfactor_g711_25.csv
    |       PA_AOMDV_Rfactor_g711_35.csv
    |       PA_AOMDV_Rfactor_g711_45.csv
    |       PA_AOMDV_Rfactor_g711_55.csv
    |       PA_AOMDV_Rfactor_g711_65.csv
    |       PA_AOMDV_Rfactor_g711_75.csv
    |       PA_AOMDV_Rfactor_g723_1_25.csv
    |       PA_AOMDV_Rfactor_g723_1_35.csv
    |       PA_AOMDV_Rfactor_g723_1_45.csv
    |       PA_AOMDV_Rfactor_g723_1_55.csv
    |       PA_AOMDV_Rfactor_g723_1_65.csv
    |       PA_AOMDV_Rfactor_g723_1_75.csv
    |       
    \---temp
            all-2.awk
            e2edelay.awk
            Endtoenddelay.awk
            metrics.awk
            statistics.awk
            
### Script Explanation
penjelasan script selain dari SUMO.
script dibuat dengan menggunakan beberapa bahasa pemrograman. bash, python dan tcl serta awk.

    #### bash script
    1. maskahsakj