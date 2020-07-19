# ns2-src_audio_comm_16
Data Program Tugas Akhir. NS2

#information
ns-allinone-2.35: core/root simulator ns2. 
src: program simulasi

#src info
folder:
    awk: folder hasil perhitungan delay dan packet loss disini. script awk perhitungan packet loss dan delay untuk masing-masing codec juga disini.
    BTtraffic: background traffic (optional).
    osmfiles: files mobilitas node, network files, ns2config dari SUMO, route files, sumocfg disini.
    outputs: (optional)
    R: folder hasil perhitungan R factor dan hasil konversinya ke MOS. hasil dalam bentuk csv/

files:
    penting:
    !bash script
    @python script
    $tcl script
        generate_mobility!: generate pergerakan untuk node, berdasarkan file SUMO. akan menghasilkan file tcl.
        ln@: file perhitungan untuk R factor dan MOS.
        main$: file konfigurasi utuk proses simulasi/node pada simulasi. pemanggilan ns2voip disini
        start!: x
        
