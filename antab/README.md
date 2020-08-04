# EHT 2017 Calibration Metadata: ANTAB tables for flux density calibration

**Primary References:**
- [The Event Horizon Telescope Collaboration, et al. 2019c, ApJL, 875, L3 (M87 Paper III)](https://doi.org/10.3847/2041-8213/ab0c57)
- [Issaoun, S., Folkers, T., Blackburn, L., et al. 2017, EHT Memo 2017-CE-02](https://eventhorizontelescope.org/for-astronomers/memos)
- [Janssen, M., Blackburn, L., Issaoun, S., et al. 2019, EHT Memo 2019-CE-01](https://eventhorizontelescope.org/for-astronomers/memos)

**Brief Description:**

We provide a set of ANTAB tables based on metadata from each EHT station for the
a priori flux density calibration. The ANTAB format is described in Janssen et al., 2019.
Here, we provide separate tables for ALMA marked as .AA.AN and all other stations (.EHT.AN)
per track and sideband (1==lo and 2==hi).
The files contain DPFUs, polynomial gain curves, and time-dependent opacity-corrected system
temperatures. Station-specific peculiarities and uncertainty estimates for the gains are given
in the ANTAB comment blocks. Correction factors for various data issues (EHT et al., 2019c)
are already incorporated here.

A detailed description of the ANTAB format can be found in the
[AIPS online documentation](http://www.aips.nrao.edu/cgi-bin/ZXHLP2.PL?antab).
For the files provided here, a minimal description is given in Janssen et al, 2019.

The flux density calibration can be done with AIPS, CASA, or the apcal tools from
https://github.com/sao-eht/eat (recommended).

**Station Code Table:**

| Station Code | Station Name                  | Location |
| -----------  | ----------------------------- | -------- |
| AA           | ALMA                          | Chile    |
| AP           | APEX                          | Chile    |
| AZ           | Submillimeter Telescope       | Arizona  |
| JC           | James Clerk Maxwell Telescope | Hawai'i  |
| LM           | Large Millimeter Telescope    | Mexico   |
| PV           | IRAM 30m                      | Spain    |
| SM           | Submillimeter Array           | Hawai'i  |
| SR           | SMA Reference Antenna         | Hawai'i  |
| SP           | South Pole Telescope          | S. Pole  |
